; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mvpp2/mvpp2_prs.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvpp2/mvpp2_prs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mvpp2_prs_entry = type { i32, [6 x i32], [4 x i32] }
%struct.mvpp2 = type { ptr, ptr, ptr, [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [30 x i8], ptr, ptr, ptr, [8 x ptr], [32 x ptr], i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mvpp2_prs_shadow = type { i8, i8, i32, i32, i32, i32 }
%struct.mvpp2_port = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, [9 x %struct.spinlock], [9 x %struct.spinlock], i32, i16, i16, ptr, ptr, i32, %struct.mutex, %struct.delayed_work, ptr, i32, ptr, %struct.phylink_config, %struct.phylink_pcs, %struct.phylink_pcs, ptr, ptr, ptr, i8, [9 x %struct.mvpp2_queue_vector], i32, i8, i32, [4 x ptr], i32, [8 x i32], i8, i8, i32, [2 x %struct.mvpp2_hwtstamp_queue], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.mvpp2_queue_vector = type { i32, %struct.napi_struct, i32, i32, i16, i32, i32, i32, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mvpp2_hwtstamp_queue = type { [32 x ptr], i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.129, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.129 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.177 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 16, i64 4, i64 6, i64 17, i64 58]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 6, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr nocapture noundef %pe, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %tid)
  %cmp = icmp sgt i32 %tid, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %pe, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tid, ptr %pe, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4352, i32 noundef %tid) #7
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4376) #7
  %arrayidx = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp sgt i32 %call, -1
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4356) #7
  %arrayidx9 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call7, ptr %arrayidx9, align 4
  %call7.1 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4360) #7
  %arrayidx9.1 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call7.1, ptr %arrayidx9.1, align 4
  %call7.2 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4364) #7
  %arrayidx9.2 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7.2, ptr %arrayidx9.2, align 4
  %call7.3 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4368) #7
  %arrayidx9.3 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7.3, ptr %arrayidx9.3, align 4
  %call7.4 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4372) #7
  %arrayidx9.4 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7.4, ptr %arrayidx9.4, align 4
  %call7.5 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4376) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call7.5, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pe, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4608, i32 noundef %11) #7
  %call16 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4612) #7
  %arrayidx17 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call16, ptr %arrayidx17, align 4
  %call16.1 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4616) #7
  %arrayidx17.1 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call16.1, ptr %arrayidx17.1, align 4
  %call16.2 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4620) #7
  %arrayidx17.2 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call16.2, ptr %arrayidx17.2, align 4
  %call16.3 = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4624) #7
  %arrayidx17.3 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call16.3, ptr %arrayidx17.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvpp2_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvpp2_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mvpp2_prs_tcam_port_map_get(ptr nocapture noundef readonly %pe) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %1, -1
  %shr = lshr i32 %neg, 24
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mvpp2_prs_tcam_data_byte_get(ptr nocapture noundef readonly %pe, i32 noundef %offs, ptr nocapture noundef writeonly %byte, ptr nocapture noundef writeonly %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = shl i32 %offs, 3
  %mul = and i32 %rem, 8
  %div11 = lshr i32 %offs, 1
  %arrayidx = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 %div11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %1, %mul
  %conv = trunc i32 %shr to i8
  %2 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %byte, align 1
  %3 = load i32, ptr %arrayidx, align 4
  %add = or i32 %mul, 16
  %shr4 = lshr i32 %3, %add
  %conv6 = trunc i32 %shr4 to i8
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %enable, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_prs_mac_promisc_set(ptr noundef %priv, i32 noundef %port, i32 noundef %l2_cast, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l2_cast)
  %cmp = icmp eq i32 %l2_cast, 0
  %not.cmp = xor i1 %cmp, true
  %.12 = select i1 %cmp, i32 0, i32 512
  %.13 = select i1 %cmp, i32 254, i32 253
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %2, i32 %.13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else2, label %if.then1

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %.13)
  br label %if.end4

if.else2:                                         ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %pe, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 36)
  %arrayidx.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 983041, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.13, ptr %pe, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2048, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else2
  %i.034.i = phi i32 [ 0, %if.else2 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i = and i32 %shl.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %and2.i = and i32 %shl.i, %.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i = lshr i32 %i.034.i, 5
  %div.i29.zext.i = and i32 %div.i293031.i, 7
  %arrayidx.i.i14 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i
  %10 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i14, align 4
  %or.i.i15 = or i32 %11, %shl.i
  store i32 %or.i.i15, ptr %arrayidx.i.i14, align 4
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %12 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i16 = and i32 %13, %neg.i.i
  store i32 %and.i.i16, ptr %arrayidx.i19.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %14 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i23.i, align 4
  %or.i24.i = or i32 %15, %shl.i
  store i32 %or.i24.i, ptr %arrayidx.i23.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %mvpp2_prs_sram_ri_update.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mvpp2_prs_sram_ri_update.exit:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i17 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i17, align 4
  %and6.i = and i32 %17, -16711936
  %conv.i = zext i1 %not.cmp to i32
  %or.i18 = or i32 %and6.i, %conv.i
  %or17.i = or i32 %or.i18, 65536
  store i32 %or17.i, ptr %arrayidx.i17, align 4
  %arrayidx.i.i19 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i19, align 4
  %.masked.i = and i32 %19, -39846157
  %or.i5.i = or i32 %.masked.i, 2097164
  store i32 %or.i5.i, ptr %arrayidx.i.i19, align 4
  %arrayidx.i25 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i25, align 4
  %and3.i26 = and i32 %21, 16711935
  %or.i27 = or i32 %and3.i26, -16777216
  store i32 %or.i27, ptr %arrayidx.i25, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prs_shadow, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %24, i32 %.13, i32 2
  %25 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %lu3.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %mvpp2_prs_sram_ri_update.exit, %if.then1
  %shl2.i = shl i32 16777216, %port
  br i1 %add, label %if.then.i, label %if.else.i32

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i32 %shl2.i, -1
  %arrayidx.i29 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i29, align 4
  %and.i30 = and i32 %27, %neg.i
  store i32 %and.i30, ptr %arrayidx.i29, align 4
  br label %mvpp2_prs_tcam_port_set.exit

if.else.i32:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i, align 4
  %or.i31 = or i32 %29, %shl2.i
  store i32 %or.i31, ptr %arrayidx7.i, align 4
  br label %mvpp2_prs_tcam_port_set.exit

mvpp2_prs_tcam_port_set.exit:                     ; preds = %if.else.i32, %if.then.i
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp2_prs_sram_ri_update(ptr nocapture noundef %pe, i32 noundef %bits, i32 noundef %mask) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.034
  %and = and i32 %shl, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and2 = and i32 %shl, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031 = lshr i32 %i.034, 5
  %div.i29.zext = and i32 %div.i293031, 7
  %arrayidx.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %1, %shl
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i32 %shl, -1
  %div.i18252633 = lshr i32 %i.034, 5
  %div.i1825.zext = and i32 %div.i18252633, 7
  %arrayidx.i19 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext
  %2 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i19, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %arrayidx.i19, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %div.i2227.lhs.trunc = add nuw nsw i32 %i.034, 32
  %div.i22272832 = lshr i32 %div.i2227.lhs.trunc, 5
  %div.i2227.zext = and i32 %div.i22272832, 7
  %arrayidx.i23 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext
  %4 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i23, align 4
  %or.i24 = or i32 %5, %shl
  store i32 %or.i24, ptr %arrayidx.i23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr nocapture noundef %pe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 2147483647
  store i32 %and, ptr %arrayidx, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4608, i32 noundef %1) #7
  %arrayidx3 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4612, i32 noundef %5) #7
  %arrayidx3.1 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.1, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4616, i32 noundef %7) #7
  %arrayidx3.2 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.2, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4620, i32 noundef %9) #7
  %arrayidx3.3 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.3, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4624, i32 noundef %11) #7
  %12 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pe, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4352, i32 noundef %13) #7
  %arrayidx11 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4356, i32 noundef %15) #7
  %arrayidx11.1 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.1, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4360, i32 noundef %17) #7
  %arrayidx11.2 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11.2, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4364, i32 noundef %19) #7
  %arrayidx11.3 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.3, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4368, i32 noundef %21) #7
  %arrayidx11.4 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.4, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4372, i32 noundef %23) #7
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4376, i32 noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_vid_entry_add(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 8
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 11
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %4 = call ptr @memset(ptr %pe, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %5 = call ptr @memset(ptr %pe.i, i32 255, i32 44)
  %add.i = add nuw nsw i32 %mul, 192
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 1
  %conv32.i = zext i16 %vid to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.09.i = phi i32 [ %add.i, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %9, i32 %tid.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lu.i = getelementptr %struct.mvpp2_prs_shadow, ptr %9, i32 %tid.09.i, i32 2
  %12 = ptrtoint ptr %lu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp10.not.i = icmp eq i32 %13, 4
  br i1 %cmp10.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %7, ptr noundef nonnull %pe.i, i32 noundef %tid.09.i) #7
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %15, 8
  %16 = shl i32 %15, 8
  %shl.i = and i32 %16, 3840
  %conv20.i = and i32 %shr.i.i, 255
  %add21.i = or i32 %shl.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %conv32.i)
  %cmp33.not.i = icmp eq i32 %add21.i, %conv32.i
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false35.i:                                ; preds = %if.end.i
  %shr4.i3.i = lshr i32 %15, 24
  %shl26.i = and i32 %shr.i.i, 3840
  %add29.i = or i32 %shl26.i, %shr4.i3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add29.i)
  %cmp38.not.i = icmp eq i32 %add29.i, 4095
  br i1 %cmp38.not.i, label %lor.lhs.false35.i.mvpp2_prs_vid_range_find.exit_crit_edge, label %lor.lhs.false35.i.for.inc.i_crit_edge

lor.lhs.false35.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false35.i.mvpp2_prs_vid_range_find.exit_crit_edge: ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vid_range_find.exit

for.inc.i:                                        ; preds = %lor.lhs.false35.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tid.09.i, 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port, align 8
  %conv2.i = zext i8 %18 to i32
  %mul3.i = mul nuw nsw i32 %conv2.i, 11
  %add5.i = add nuw nsw i32 %mul3.i, 201
  %cmp.not.not.i = icmp ult i32 %tid.09.i, %add5.i
  br i1 %cmp.not.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mvpp2_prs_vid_range_find.exit_crit_edge

for.inc.i.mvpp2_prs_vid_range_find.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vid_range_find.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mvpp2_prs_vid_range_find.exit:                    ; preds = %for.inc.i.mvpp2_prs_vid_range_find.exit_crit_edge, %lor.lhs.false35.i.mvpp2_prs_vid_range_find.exit_crit_edge
  %retval.0.ph.i = phi i32 [ %tid.09.i, %lor.lhs.false35.i.mvpp2_prs_vid_range_find.exit_crit_edge ], [ -2, %for.inc.i.mvpp2_prs_vid_range_find.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port, align 8
  %conv4 = zext i8 %20 to i32
  %mul5 = shl nuw nsw i32 %conv4, 2
  %add6 = add nuw nsw i32 %mul5, 20544
  %call7 = tail call i32 @mvpp2_read(ptr noundef %3, i32 noundef %add6) #7
  %and = and i32 %call7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %cmp = icmp slt i32 %retval.0.ph.i, 0
  br i1 %cmp, label %if.then9, label %if.else18

if.then9:                                         ; preds = %mvpp2_prs_vid_range_find.exit
  %21 = trunc i32 %mul to i8
  %conv10 = add i8 %21, -64
  %conv12 = add i8 %21, -55
  %22 = tail call i8 @llvm.umin.i8(i8 %conv10, i8 %conv12) #7
  %23 = tail call i8 @llvm.umax.i8(i8 %conv10, i8 %conv12) #7
  %conv3.i = zext i8 %22 to i32
  %prs_shadow.i45 = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  %conv4.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %prs_shadow.i45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prs_shadow.i45, align 4
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.inc.i50.for.body.i48_crit_edge, %if.then9
  %tid.017.i = phi i32 [ %conv3.i, %if.then9 ], [ %inc.i49, %for.inc.i50.for.body.i48_crit_edge ]
  %arrayidx.i46 = getelementptr %struct.mvpp2_prs_shadow, ptr %25, i32 %tid.017.i
  %26 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i46, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i47 = icmp eq i8 %27, 0
  br i1 %tobool.not.i47, label %if.end17, label %for.inc.i50

for.inc.i50:                                      ; preds = %for.body.i48
  %inc.i49 = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %tid.017.i, %conv4.i
  br i1 %exitcond.not, label %for.inc.i50.cleanup_crit_edge, label %for.inc.i50.for.body.i48_crit_edge

for.inc.i50.for.body.i48_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i48

for.inc.i50.cleanup_crit_edge:                    ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i51 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i51, align 4
  %and3.i = and i32 %29, -983056
  %or9.i = or i32 %and3.i, 983044
  store i32 %or9.i, ptr %arrayidx.i51, align 4
  %30 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tid.017.i, ptr %pe, align 4
  %arrayidx.i52 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i52, align 4
  %and3.i53 = and i32 %32, 16711935
  %or.i54 = or i32 %and3.i53, -16777216
  store i32 %or.i54, ptr %arrayidx.i52, align 4
  br label %if.end20

if.else18:                                        ; preds = %mvpp2_prs_vid_range_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %3, ptr noundef nonnull %pe, i32 noundef %retval.0.ph.i)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.end17
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port, align 8
  %conv22 = zext i8 %34 to i32
  %shl2.i = shl i32 16777216, %conv22
  %neg.i = xor i32 %shl2.i, -1
  %arrayidx.i55 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i55, align 4
  %and.i = and i32 %36, %neg.i
  store i32 %and.i, ptr %arrayidx.i55, align 4
  %arrayidx.i.i57 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i57, align 4
  %arrayidx.i.i58 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i58, align 4
  %.masked.i = and i32 %40, 27262719
  %and.i3.i = select i1 %tobool.not, i32 2097156, i32 2097160
  %or.i5.i = or i32 %and.i3.i, %.masked.i
  %arrayidx.i.i63 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %41 = and i16 %vid, 4095
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #7
  %or17.i.i = zext i16 %42 to i32
  %or17.i5.i = or i32 %or17.i.i, -15794176
  %43 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or17.i5.i, ptr %arrayidx.i.i63, align 4
  %44 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i5.i, ptr %arrayidx.i.i58, align 4
  %or.i24.5.i = and i32 %38, -16384
  %or.i24.7.i = or i32 %or.i24.5.i, 6140
  %45 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i24.7.i, ptr %arrayidx.i.i57, align 4
  %46 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pe, align 4
  %prs_shadow.i67 = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  %48 = ptrtoint ptr %prs_shadow.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prs_shadow.i67, align 4
  %arrayidx.i68 = getelementptr %struct.mvpp2_prs_shadow, ptr %49, i32 %47
  %50 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx.i68, align 4
  %51 = load ptr, ptr %prs_shadow.i67, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %51, i32 %47, i32 2
  %52 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %3, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %for.inc.i50.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %for.inc.i50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_prs_vid_entry_remove(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %2 = call ptr @memset(ptr %pe.i, i32 255, i32 44)
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 8
  %conv.i = zext i8 %4 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 11
  %add.i = add nuw nsw i32 %mul.i, 192
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 1
  %conv32.i = zext i16 %vid to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.09.i = phi i32 [ %add.i, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 4
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %8, i32 %tid.09.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lu.i = getelementptr %struct.mvpp2_prs_shadow, ptr %8, i32 %tid.09.i, i32 2
  %11 = ptrtoint ptr %lu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp10.not.i = icmp eq i32 %12, 4
  br i1 %cmp10.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %6, ptr noundef nonnull %pe.i, i32 noundef %tid.09.i) #7
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %14, 8
  %15 = shl i32 %14, 8
  %shl.i = and i32 %15, 3840
  %conv20.i = and i32 %shr.i.i, 255
  %add21.i = or i32 %shl.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %conv32.i)
  %cmp33.not.i = icmp eq i32 %add21.i, %conv32.i
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false35.i:                                ; preds = %if.end.i
  %shr4.i3.i = lshr i32 %14, 24
  %shl26.i = and i32 %shr.i.i, 3840
  %add29.i = or i32 %shl26.i, %shr4.i3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add29.i)
  %cmp38.not.i = icmp eq i32 %add29.i, 4095
  br i1 %cmp38.not.i, label %if.end, label %lor.lhs.false35.i.for.inc.i_crit_edge

lor.lhs.false35.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false35.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tid.09.i, 1
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port, align 8
  %conv2.i = zext i8 %17 to i32
  %mul3.i = mul nuw nsw i32 %conv2.i, 11
  %add5.i = add nuw nsw i32 %mul3.i, 201
  %cmp.not.not.i = icmp ult i32 %tid.09.i, %add5.i
  br i1 %cmp.not.not.i, label %for.inc.i.for.body.i_crit_edge, label %mvpp2_prs_vid_range_find.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mvpp2_prs_vid_range_find.exit.thread:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 4352, i32 noundef %tid.09.i) #7
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 4376, i32 noundef -2147483648) #7
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %19, i32 %tid.09.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mvpp2_prs_vid_range_find.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_prs_vid_remove_all(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
for.body.lr.ph:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 8
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 11
  %add = add nuw nsw i32 %mul, 192
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tid.023 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %5, i32 %tid.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 4352, i32 noundef %tid.023) #7
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 4376, i32 noundef -2147483648) #7
  %8 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prs_shadow, align 4
  %arrayidx9 = getelementptr %struct.mvpp2_prs_shadow, ptr %9, i32 %tid.023
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %tid.023, 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port, align 8
  %conv3 = zext i8 %12 to i32
  %mul4 = mul nuw nsw i32 %conv3, 11
  %add6 = add nuw nsw i32 %mul4, 201
  %cmp.not.not = icmp ult i32 %tid.023, %add6
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_prs_vid_disable_filtering(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 8
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 11
  %add1 = add nuw nsw i32 %mul, 202
  %priv2 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  tail call void @mvpp2_write(ptr noundef %3, i32 noundef 4352, i32 noundef %add1) #7
  tail call void @mvpp2_write(ptr noundef %3, i32 noundef 4376, i32 noundef -2147483648) #7
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %5, i32 %add1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_prs_vid_enable_filtering(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 8
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 11
  %add1 = add nuw nsw i32 %mul, 202
  %priv2 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %5, i32 %add1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr inbounds i8, ptr %pe, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 32)
  %10 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add1, ptr %pe, align 4
  %mul5 = shl nuw nsw i32 %conv, 2
  %add6 = add nuw nsw i32 %mul5, 20544
  %call = tail call i32 @mvpp2_read(ptr noundef %3, i32 noundef %add6) #7
  %and = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %arrayidx.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 983044, ptr %arrayidx.i, align 4
  %arrayidx.i25 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port, align 8
  %conv11 = zext i8 %13 to i32
  %shl2.i = shl i32 16777216, %conv11
  %and.i = xor i32 %shl2.i, -16777216
  %14 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i, ptr %arrayidx.i25, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5120, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i29 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %and.i3.i = select i1 %tobool7.not, i32 2097156, i32 2097160
  %16 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i3.i, ptr %arrayidx.i.i29, align 4
  %arrayidx.i.i34 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 0
  %17 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i34, align 4
  %or.i.i35 = or i32 %18, -2147483648
  store i32 %or.i.i35, ptr %arrayidx.i.i34, align 4
  %arrayidx.i23.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i23.i, align 4
  %or.i24.i = or i32 %20, -2147483648
  store i32 %or.i24.i, ptr %arrayidx.i23.i, align 4
  %21 = load i32, ptr %arrayidx.i.i29, align 4
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.5.i = and i32 %21, 67108863
  store i32 %and.i.5.i, ptr %arrayidx.i.i29, align 4
  %or.i24.5.i = and i32 %22, -1024
  %or.i24.7.i = or i32 %or.i24.5.i, 1020
  store i32 %or.i24.7.i, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i43 = getelementptr %struct.mvpp2_prs_shadow, ptr %24, i32 %add1
  %25 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx.i43, align 4
  %26 = load ptr, ptr %prs_shadow, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %26, i32 %add1, i32 2
  %27 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %3, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_default_init(ptr noundef %pdev, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %pe.i.i162 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i163 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i140 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i132 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i115 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i109 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i103 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i16.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i97 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i92 = alloca %struct.mvpp2_prs_entry, align 4
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4656, i32 noundef 1) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %index.0226 = phi i32 [ 0, %entry ], [ %inc13, %for.body.for.body_crit_edge ]
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4352, i32 noundef %index.0226) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4356, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4360, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4364, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4368, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4372, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4376, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4608, i32 noundef %index.0226) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4612, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4616, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4620, i32 noundef 0) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4624, i32 noundef 0) #7
  %inc13 = add nuw nsw i32 %index.0226, 1
  %exitcond.not = icmp eq i32 %inc13, 256
  br i1 %exitcond.not, label %for.body.for.body17_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.body17_crit_edge:                    ; preds = %for.body
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body.for.body17_crit_edge
  %index.1227 = phi i32 [ %inc19, %for.body17.for.body17_crit_edge ], [ 0, %for.body.for.body17_crit_edge ]
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4352, i32 noundef %index.1227) #7
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4376, i32 noundef -2147483648) #7
  %inc19 = add nuw nsw i32 %index.1227, 1
  %exitcond257.not = icmp eq i32 %inc19, 256
  br i1 %exitcond257.not, label %for.end20, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.end20:                                        ; preds = %for.body17
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 5120, i32 noundef 3520) #7
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5.i.i, ptr %prs_shadow, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %for.end20.cleanup_crit_edge, label %for.end20.for.body24_crit_edge

for.end20.for.body24_crit_edge:                   ; preds = %for.end20
  br label %for.body24

for.end20.cleanup_crit_edge:                      ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.end20.for.body24_crit_edge
  %index.2228 = phi i32 [ %inc26, %for.body24.for.body24_crit_edge ], [ 0, %for.end20.for.body24_crit_edge ]
  %call.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4096) #7
  %mul.i = shl i32 %index.2228, 2
  %shl.i = shl i32 255, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i, %neg.i
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4096, i32 noundef %and.i) #7
  %and3.i = and i32 %index.2228, 4
  %add.i = add nuw nsw i32 %and3.i, 4108
  %call4.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef %add.i) #7
  %rem.i = shl i32 %index.2228, 3
  %shl6.i = shl i32 255, %rem.i
  %neg7.i = xor i32 %shl6.i, -1
  %and8.i = and i32 %call4.i, %neg7.i
  %shl11.i = shl i32 15, %rem.i
  %or12.i = or i32 %and8.i, %shl11.i
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef %add.i, i32 noundef %or12.i) #7
  %add16.i = add nuw nsw i32 %and3.i, 4100
  %call17.i = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef %add16.i) #7
  %shl20.i = shl i32 63, %rem.i
  %neg21.i = xor i32 %shl20.i, -1
  %and22.i = and i32 %call17.i, %neg21.i
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef %add16.i, i32 noundef %and22.i) #7
  %inc26 = add nuw nsw i32 %index.2228, 1
  %exitcond258.not = icmp eq i32 %inc26, 4
  br i1 %exitcond258.not, label %for.end27, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.end27:                                        ; preds = %for.body24
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 5
  %arrayidx.i6.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 4
  %arrayidx.i19.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 2, i32 2
  %arrayidx.i23.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 2, i32 3
  %1 = getelementptr inbounds i8, ptr %pe.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 983049, ptr %arrayidx.i.i, align 4
  %4 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 234, ptr %pe.i, align 4
  %5 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -16777216, ptr %arrayidx.i6.i, align 4
  %6 = ptrtoint ptr %arrayidx.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx.i19.i.i, align 4
  %7 = ptrtoint ptr %arrayidx.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16636, ptr %arrayidx.i23.i.i, align 4
  %8 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i11.i = getelementptr %struct.mvpp2_prs_shadow, ptr %9, i32 234
  %10 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx.i11.i, align 4
  %11 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i = getelementptr %struct.mvpp2_prs_shadow, ptr %11, i32 234, i32 2
  %12 = ptrtoint ptr %lu3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9, ptr %lu3.i.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i) #7
  %13 = call ptr @memset(ptr %1, i32 0, i32 32)
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 983049, ptr %arrayidx.i.i, align 4
  %15 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 233, ptr %pe.i, align 4
  %16 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -16777216, ptr %arrayidx.i6.i, align 4
  %17 = ptrtoint ptr %arrayidx.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108864, ptr %arrayidx.i19.i.i, align 4
  %18 = ptrtoint ptr %arrayidx.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16636, ptr %arrayidx.i23.i.i, align 4
  %19 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i11.i.1 = getelementptr %struct.mvpp2_prs_shadow, ptr %20, i32 233
  %21 = ptrtoint ptr %arrayidx.i11.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx.i11.i.1, align 4
  %22 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i.1 = getelementptr %struct.mvpp2_prs_shadow, ptr %22, i32 233, i32 2
  %23 = ptrtoint ptr %lu3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 9, ptr %lu3.i.i.1, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i) #7
  %24 = call ptr @memset(ptr %1, i32 0, i32 32)
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 983049, ptr %arrayidx.i.i, align 4
  %26 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 232, ptr %pe.i, align 4
  %27 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -16777216, ptr %arrayidx.i6.i, align 4
  %28 = ptrtoint ptr %arrayidx.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 134217728, ptr %arrayidx.i19.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16636, ptr %arrayidx.i23.i.i, align 4
  %30 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i11.i.2 = getelementptr %struct.mvpp2_prs_shadow, ptr %31, i32 232
  %32 = ptrtoint ptr %arrayidx.i11.i.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx.i11.i.2, align 4
  %33 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i.2 = getelementptr %struct.mvpp2_prs_shadow, ptr %33, i32 232, i32 2
  %34 = ptrtoint ptr %lu3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 9, ptr %lu3.i.i.2, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i) #7
  %35 = call ptr @memset(ptr %1, i32 0, i32 32)
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 983049, ptr %arrayidx.i.i, align 4
  %37 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 231, ptr %pe.i, align 4
  %38 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -16777216, ptr %arrayidx.i6.i, align 4
  %39 = ptrtoint ptr %arrayidx.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 201326592, ptr %arrayidx.i19.i.i, align 4
  %40 = ptrtoint ptr %arrayidx.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16636, ptr %arrayidx.i23.i.i, align 4
  %41 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i11.i.3 = getelementptr %struct.mvpp2_prs_shadow, ptr %42, i32 231
  %43 = ptrtoint ptr %arrayidx.i11.i.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayidx.i11.i.3, align 4
  %44 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i.3 = getelementptr %struct.mvpp2_prs_shadow, ptr %44, i32 231, i32 2
  %45 = ptrtoint ptr %lu3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 9, ptr %lu3.i.i.3, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i92) #7
  %46 = getelementptr inbounds i8, ptr %pe.i92, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 32)
  %48 = ptrtoint ptr %pe.i92 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 243, ptr %pe.i92, align 4
  %arrayidx.i.i93 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i92, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 983040, ptr %arrayidx.i.i93, align 4
  %arrayidx.i.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i92, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2097154, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i9.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i92, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1024, ptr %arrayidx.i.i9.i, align 4
  %arrayidx.i11.i94 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i92, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i13.i = getelementptr %struct.mvpp2_prs_shadow, ptr %53, i32 243
  %54 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %arrayidx.i13.i, align 4
  %55 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i96 = getelementptr %struct.mvpp2_prs_shadow, ptr %55, i32 243, i32 2
  %56 = ptrtoint ptr %lu3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %lu3.i.i96, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i92) #7
  %57 = ptrtoint ptr %pe.i92 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 225, ptr %pe.i92, align 4
  %58 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i93, align 4
  %and3.i15.i = and i32 %59, -983056
  %or9.i16.i = or i32 %and3.i15.i, 983040
  store i32 %or9.i16.i, ptr %arrayidx.i.i93, align 4
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i, align 4
  %.masked.i20.i = and i32 %61, -39846147
  %or.i5.i22.i = or i32 %.masked.i20.i, 2097154
  store i32 %or.i5.i22.i, ptr %arrayidx.i.i.i, align 4
  %62 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i9.i, align 4
  %or.i.i = and i32 %63, -48129
  %or.i.i26.i = or i32 %or.i.i, 41984
  store i32 %or.i.i26.i, ptr %arrayidx.i.i9.i, align 4
  %64 = ptrtoint ptr %arrayidx.i11.i94 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i11.i94, align 4
  %and3.i28.i = and i32 %65, 16711935
  %or.i29.i = or i32 %and3.i28.i, -16777216
  store i32 %or.i29.i, ptr %arrayidx.i11.i94, align 4
  %66 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i31.i = getelementptr %struct.mvpp2_prs_shadow, ptr %67, i32 225
  %68 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %arrayidx.i31.i, align 4
  %69 = load ptr, ptr %prs_shadow, align 4
  %lu3.i32.i = getelementptr %struct.mvpp2_prs_shadow, ptr %69, i32 225, i32 2
  %70 = ptrtoint ptr %lu3.i32.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %lu3.i32.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i92) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i92) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i97) #7
  %71 = getelementptr inbounds i8, ptr %pe.i97, i32 4
  %72 = call ptr @memset(ptr %71, i32 0, i32 36)
  %73 = ptrtoint ptr %pe.i97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 255, ptr %pe.i97, align 4
  %arrayidx.i.i98 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i97, i32 0, i32 1, i32 5
  %74 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 983041, ptr %arrayidx.i.i98, align 4
  %arrayidx.i.i.i99 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i97, i32 0, i32 2, i32 0
  %75 = ptrtoint ptr %arrayidx.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -2147483648, ptr %arrayidx.i.i.i99, align 4
  %arrayidx.i23.i.i100 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i97, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %arrayidx.i23.i.i100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -2147483648, ptr %arrayidx.i23.i.i100, align 4
  %arrayidx.i7.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i97, i32 0, i32 2, i32 3
  %77 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 41984, ptr %arrayidx.i7.i, align 4
  %78 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i14.i = getelementptr %struct.mvpp2_prs_shadow, ptr %79, i32 255
  %80 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %arrayidx.i14.i, align 4
  %81 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i102 = getelementptr %struct.mvpp2_prs_shadow, ptr %81, i32 255, i32 2
  %82 = ptrtoint ptr %lu3.i.i102 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %lu3.i.i102, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i97) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i.i) #7
  %83 = getelementptr inbounds i8, ptr %pe.i.i, i32 16
  %84 = call ptr @memset(ptr %83, i32 0, i32 24)
  %85 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 252, ptr %pe.i.i, align 4
  %arrayidx.i.i15.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 1, i32 5
  %86 = ptrtoint ptr %arrayidx.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 983041, ptr %arrayidx.i.i15.i, align 4
  %arrayidx.i5.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 1, i32 2
  %87 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -65280, ptr %arrayidx.i5.i.i, align 4
  %arrayidx.i5.2.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx.i5.2.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -65342, ptr %arrayidx.i5.2.i.i, align 4
  %arrayidx.i5.4.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 1, i32 0
  %89 = ptrtoint ptr %arrayidx.i5.4.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -32767, ptr %arrayidx.i5.4.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 2, i32 0
  %90 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -2147483648, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx.i23.i.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %arrayidx.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -2147483648, ptr %arrayidx.i23.i.i.i, align 4
  %arrayidx.i7.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i, i32 0, i32 2, i32 3
  %92 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 41984, ptr %arrayidx.i7.i.i, align 4
  %93 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i14.i.i = getelementptr %struct.mvpp2_prs_shadow, ptr %94, i32 252
  %95 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %arrayidx.i14.i.i, align 4
  %96 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i.i = getelementptr %struct.mvpp2_prs_shadow, ptr %96, i32 252, i32 2
  %97 = ptrtoint ptr %lu3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %lu3.i.i.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i.i) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i16.i) #7
  %98 = call ptr @memset(ptr %pe.i16.i, i32 255, i32 44)
  %99 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prs_shadow, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i18.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i18.i, label %if.else.i20.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe.i16.i, i32 noundef 0) #7
  br label %mvpp2_prs_mac_init.exit

if.else.i20.i:                                    ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  %103 = getelementptr inbounds i8, ptr %pe.i16.i, i32 4
  %104 = call ptr @memset(ptr %103, i32 0, i32 36)
  %arrayidx.i.i19.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i16.i, i32 0, i32 1, i32 5
  %105 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 983041, ptr %arrayidx.i.i19.i, align 4
  %106 = ptrtoint ptr %pe.i16.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %pe.i16.i, align 4
  %arrayidx.i.i.i26.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i16.i, i32 0, i32 2, i32 0
  %107 = ptrtoint ptr %arrayidx.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -2147483648, ptr %arrayidx.i.i.i26.i, align 4
  %arrayidx.i23.i.i28.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i16.i, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %arrayidx.i23.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -2147483648, ptr %arrayidx.i23.i.i28.i, align 4
  %arrayidx.i1.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i16.i, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %arrayidx.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 41984, ptr %arrayidx.i1.i.i, align 4
  %110 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %100, align 4
  %111 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i30.i = getelementptr %struct.mvpp2_prs_shadow, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %lu3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %lu3.i.i30.i, align 4
  %arrayidx.i7.i31.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i16.i, i32 0, i32 1, i32 4
  %114 = ptrtoint ptr %arrayidx.i7.i31.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -16777216, ptr %arrayidx.i7.i31.i, align 4
  br label %mvpp2_prs_mac_init.exit

mvpp2_prs_mac_init.exit:                          ; preds = %if.else.i20.i, %if.then.i.i
  %arrayidx7.i.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i16.i, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or.i10.i.i = or i32 %116, 16777216
  store i32 %or.i10.i.i, ptr %arrayidx7.i.i.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i16.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i16.i) #7
  tail call void @mvpp2_prs_mac_promisc_set(ptr noundef %priv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #7
  tail call void @mvpp2_prs_mac_promisc_set(ptr noundef %priv, i32 noundef 0, i32 noundef 1, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i97) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i103) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_ethertype_set(ptr noundef %priv, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_ethertype_set(ptr noundef %priv, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_ethertype_set(ptr noundef %priv, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call fastcc void @mvpp2_prs_dsa_tag_ethertype_set(ptr noundef %priv, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %117 = getelementptr inbounds i8, ptr %pe.i103, i32 4
  %118 = call ptr @memset(ptr %117, i32 0, i32 32)
  %arrayidx.i.i104 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i103, i32 0, i32 1, i32 5
  %119 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 983042, ptr %arrayidx.i.i104, align 4
  %120 = ptrtoint ptr %pe.i103 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 244, ptr %pe.i103, align 4
  %arrayidx.i.i.i105 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i103, i32 0, i32 2, i32 3
  %arrayidx.i.i11.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i103, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i14.i107 = getelementptr %struct.mvpp2_prs_shadow, ptr %122, i32 244
  %123 = ptrtoint ptr %arrayidx.i14.i107 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %arrayidx.i14.i107, align 4
  %124 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i108 = getelementptr %struct.mvpp2_prs_shadow, ptr %124, i32 244, i32 2
  %125 = ptrtoint ptr %lu3.i.i108 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %lu3.i.i108, align 4
  %126 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2097152, ptr %arrayidx.i.i11.i, align 4
  %127 = ptrtoint ptr %arrayidx.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4092, ptr %arrayidx.i.i.i105, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i103) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i103) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i109) #7
  %128 = getelementptr inbounds i8, ptr %pe.i109, i32 4
  %129 = call ptr @memset(ptr %128, i32 0, i32 32)
  %130 = ptrtoint ptr %pe.i109 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 248, ptr %pe.i109, align 4
  %arrayidx.i.i110 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i109, i32 0, i32 1, i32 5
  %131 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 983044, ptr %arrayidx.i.i110, align 4
  %arrayidx.i8.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i109, i32 0, i32 1, i32 4
  %arrayidx.i.i.i111 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i109, i32 0, i32 2, i32 2
  %arrayidx.i23.i.i112 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i109, i32 0, i32 2, i32 3
  %132 = ptrtoint ptr %arrayidx.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2097156, ptr %arrayidx.i.i.i111, align 4
  %133 = ptrtoint ptr %arrayidx.i23.i.i112 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 6140, ptr %arrayidx.i23.i.i112, align 4
  %134 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 65536, ptr %arrayidx.i8.i, align 4
  %135 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i15.i = getelementptr %struct.mvpp2_prs_shadow, ptr %136, i32 248
  %137 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %arrayidx.i15.i, align 4
  %138 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i114 = getelementptr %struct.mvpp2_prs_shadow, ptr %138, i32 248, i32 2
  %139 = ptrtoint ptr %lu3.i.i114 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 4, ptr %lu3.i.i114, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i109) #7
  %140 = call ptr @memset(ptr %128, i32 0, i32 32)
  %141 = ptrtoint ptr %pe.i109 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 249, ptr %pe.i109, align 4
  %142 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 983044, ptr %arrayidx.i.i110, align 4
  %143 = ptrtoint ptr %arrayidx.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 2097160, ptr %arrayidx.i.i.i111, align 4
  %144 = ptrtoint ptr %arrayidx.i23.i.i112 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 6140, ptr %arrayidx.i23.i.i112, align 4
  %145 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 65537, ptr %arrayidx.i8.i, align 4
  %146 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i67.i = getelementptr %struct.mvpp2_prs_shadow, ptr %147, i32 249
  %148 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %arrayidx.i67.i, align 4
  %149 = load ptr, ptr %prs_shadow, align 4
  %lu3.i68.i = getelementptr %struct.mvpp2_prs_shadow, ptr %149, i32 249, i32 2
  %150 = ptrtoint ptr %lu3.i68.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 4, ptr %lu3.i68.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i109) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i109) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i115) #7
  %151 = call ptr @memset(ptr %pe.i115, i32 255, i32 44)
  %152 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i.i118

for.body.i.i118:                                  ; preds = %for.inc.i.i121.for.body.i.i118_crit_edge, %mvpp2_prs_mac_init.exit
  %tid.017.i.i = phi i32 [ 1, %mvpp2_prs_mac_init.exit ], [ %inc.i.i119, %for.inc.i.i121.for.body.i.i118_crit_edge ]
  %arrayidx.i.i117 = getelementptr %struct.mvpp2_prs_shadow, ptr %153, i32 %tid.017.i.i
  %154 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i.i117, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %for.inc.i.i121

for.inc.i.i121:                                   ; preds = %for.body.i.i118
  %inc.i.i119 = add nuw nsw i32 %tid.017.i.i, 1
  %exitcond.not.i120 = icmp eq i32 %inc.i.i119, 112
  br i1 %exitcond.not.i120, label %for.inc.i.i121.mvpp2_prs_etype_init.exit.thread_crit_edge, label %for.inc.i.i121.for.body.i.i118_crit_edge

for.inc.i.i121.for.body.i.i118_crit_edge:         ; preds = %for.inc.i.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i118

for.inc.i.i121.mvpp2_prs_etype_init.exit.thread_crit_edge: ; preds = %for.inc.i.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_etype_init.exit.thread

if.end.i:                                         ; preds = %for.body.i.i118
  %156 = getelementptr inbounds i8, ptr %pe.i115, i32 8
  %157 = call ptr @memset(ptr %156, i32 0, i32 28)
  %arrayidx.i139.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 1, i32 5
  %158 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 983045, ptr %arrayidx.i139.i, align 4
  %159 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %tid.017.i.i, ptr %pe.i115, align 4
  %arrayidx.i.i.i122 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 1, i32 0
  %160 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -39800, ptr %arrayidx.i.i.i122, align 4
  %arrayidx.i.i140.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 2
  %161 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 2097160, ptr %arrayidx.i.i140.i, align 4
  %arrayidx.i.i142.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 3
  %162 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 6144, ptr %arrayidx.i.i142.i, align 4
  %arrayidx.i.i146.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 0
  %arrayidx.i23.i.i123 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 1
  br label %for.body.i145.i

for.body.i145.i:                                  ; preds = %for.inc.i150.i.for.body.i145.i_crit_edge, %if.end.i
  %163 = phi i32 [ 0, %if.end.i ], [ %167, %for.inc.i150.i.for.body.i145.i_crit_edge ]
  %164 = phi i32 [ 0, %if.end.i ], [ %168, %for.inc.i150.i.for.body.i145.i_crit_edge ]
  %i.034.i.i124 = phi i32 [ 0, %if.end.i ], [ %inc.i149.i, %for.inc.i150.i.for.body.i145.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.034.i.i124)
  %tobool.not.i144.not.i = icmp eq i32 %i.034.i.i124, 11
  br i1 %tobool.not.i144.not.i, label %if.end6.i.i, label %for.body.i145.i.for.inc.i150.i_crit_edge

for.body.i145.i.for.inc.i150.i_crit_edge:         ; preds = %for.body.i145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i150.i

if.end6.i.i:                                      ; preds = %for.body.i145.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i147.i = or i32 %164, 2048
  %165 = ptrtoint ptr %arrayidx.i.i146.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or.i.i147.i, ptr %arrayidx.i.i146.i, align 4
  %or.i24.i.i125 = or i32 %163, 2048
  %166 = ptrtoint ptr %arrayidx.i23.i.i123 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or.i24.i.i125, ptr %arrayidx.i23.i.i123, align 4
  br label %for.inc.i150.i

for.inc.i150.i:                                   ; preds = %if.end6.i.i, %for.body.i145.i.for.inc.i150.i_crit_edge
  %167 = phi i32 [ %or.i24.i.i125, %if.end6.i.i ], [ %163, %for.body.i145.i.for.inc.i150.i_crit_edge ]
  %168 = phi i32 [ %or.i.i147.i, %if.end6.i.i ], [ %164, %for.body.i145.i.for.inc.i150.i_crit_edge ]
  %inc.i149.i = add nuw nsw i32 %i.034.i.i124, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i149.i, 32
  br i1 %exitcond.not.i.i, label %mvpp2_prs_sram_ri_update.exit.i127, label %for.inc.i150.i.for.body.i145.i_crit_edge

for.inc.i150.i.for.body.i145.i_crit_edge:         ; preds = %for.inc.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i145.i

mvpp2_prs_sram_ri_update.exit.i127:               ; preds = %for.inc.i150.i
  %169 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %arrayidx.i.i117, align 4
  %170 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i126 = getelementptr %struct.mvpp2_prs_shadow, ptr %171, i32 %tid.017.i.i, i32 2
  %172 = ptrtoint ptr %lu3.i.i126 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 5, ptr %lu3.i.i126, align 4
  %173 = load ptr, ptr %prs_shadow, align 4
  %174 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pe.i115, align 4
  %udf.i = getelementptr %struct.mvpp2_prs_shadow, ptr %173, i32 %175, i32 3
  %176 = ptrtoint ptr %udf.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 2, ptr %udf.i, align 4
  %177 = load ptr, ptr %prs_shadow, align 4
  %178 = load i32, ptr %pe.i115, align 4
  %finish.i = getelementptr %struct.mvpp2_prs_shadow, ptr %177, i32 %178, i32 1
  %179 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %finish.i, align 1
  %180 = load i32, ptr %pe.i115, align 4
  %181 = load ptr, ptr %prs_shadow, align 4
  %ri_mask1.i.i = getelementptr %struct.mvpp2_prs_shadow, ptr %181, i32 %180, i32 5
  %182 = ptrtoint ptr %ri_mask1.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2048, ptr %ri_mask1.i.i, align 4
  %183 = load ptr, ptr %prs_shadow, align 4
  %ri4.i.i = getelementptr %struct.mvpp2_prs_shadow, ptr %183, i32 %180, i32 4
  %184 = ptrtoint ptr %ri4.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2048, ptr %ri4.i.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i115) #7
  %185 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i158.i

for.body.i158.i:                                  ; preds = %for.inc.i161.i.for.body.i158.i_crit_edge, %mvpp2_prs_sram_ri_update.exit.i127
  %tid.017.i155.i = phi i32 [ 1, %mvpp2_prs_sram_ri_update.exit.i127 ], [ %inc.i159.i, %for.inc.i161.i.for.body.i158.i_crit_edge ]
  %arrayidx.i156.i = getelementptr %struct.mvpp2_prs_shadow, ptr %186, i32 %tid.017.i155.i
  %187 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx.i156.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i157.i = icmp eq i8 %188, 0
  br i1 %tobool.not.i157.i, label %if.end11.i, label %for.inc.i161.i

for.inc.i161.i:                                   ; preds = %for.body.i158.i
  %inc.i159.i = add nuw nsw i32 %tid.017.i155.i, 1
  %exitcond526.not.i = icmp eq i32 %inc.i159.i, 112
  br i1 %exitcond526.not.i, label %for.inc.i161.i.mvpp2_prs_etype_init.exit.thread_crit_edge, label %for.inc.i161.i.for.body.i158.i_crit_edge

for.inc.i161.i.for.body.i158.i_crit_edge:         ; preds = %for.inc.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i158.i

for.inc.i161.i.mvpp2_prs_etype_init.exit.thread_crit_edge: ; preds = %for.inc.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_etype_init.exit.thread

if.end11.i:                                       ; preds = %for.body.i158.i
  %189 = call ptr @memset(ptr %156, i32 0, i32 32)
  %190 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 983045, ptr %arrayidx.i139.i, align 4
  %191 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %tid.017.i155.i, ptr %pe.i115, align 4
  %192 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -63992, ptr %arrayidx.i.i.i122, align 4
  %193 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 41984, ptr %arrayidx.i.i142.i, align 4
  br label %for.body.i183.i

for.body.i183.i:                                  ; preds = %for.inc.i206.i.for.body.i183.i_crit_edge, %if.end11.i
  %i.034.i179.i = phi i32 [ 0, %if.end11.i ], [ %inc.i204.i, %for.inc.i206.i.for.body.i183.i_crit_edge ]
  %shl.i180.i = shl nuw i32 1, %i.034.i179.i
  %and.i181.i = and i32 %shl.i180.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181.i)
  %tobool.not.i182.i = icmp eq i32 %and.i181.i, 0
  br i1 %tobool.not.i182.i, label %for.body.i183.i.for.inc.i206.i_crit_edge, label %if.end.i186.i

for.body.i183.i.for.inc.i206.i_crit_edge:         ; preds = %for.body.i183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i206.i

if.end.i186.i:                                    ; preds = %for.body.i183.i
  %and2.i184.i = and i32 %shl.i180.i, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i184.i)
  %tobool3.not.i185.i = icmp eq i32 %and2.i184.i, 0
  br i1 %tobool3.not.i185.i, label %if.else.i197.i, label %if.then4.i191.i

if.then4.i191.i:                                  ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i187.i = lshr i32 %i.034.i179.i, 5
  %div.i29.zext.i188.i = and i32 %div.i293031.i187.i, 7
  %arrayidx.i.i189.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i29.zext.i188.i
  %194 = ptrtoint ptr %arrayidx.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i.i189.i, align 4
  %or.i.i190.i = or i32 %195, %shl.i180.i
  store i32 %or.i.i190.i, ptr %arrayidx.i.i189.i, align 4
  br label %if.end6.i203.i

if.else.i197.i:                                   ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i192.i = xor i32 %shl.i180.i, -1
  %div.i18252633.i193.i = lshr i32 %i.034.i179.i, 5
  %div.i1825.zext.i194.i = and i32 %div.i18252633.i193.i, 7
  %arrayidx.i19.i195.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i1825.zext.i194.i
  %196 = ptrtoint ptr %arrayidx.i19.i195.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.i19.i195.i, align 4
  %and.i.i196.i = and i32 %197, %neg.i.i192.i
  store i32 %and.i.i196.i, ptr %arrayidx.i19.i195.i, align 4
  br label %if.end6.i203.i

if.end6.i203.i:                                   ; preds = %if.else.i197.i, %if.then4.i191.i
  %div.i2227.lhs.trunc.i198.i = add nuw nsw i32 %i.034.i179.i, 32
  %div.i22272832.i199.i = lshr i32 %div.i2227.lhs.trunc.i198.i, 5
  %div.i2227.zext.i200.i = and i32 %div.i22272832.i199.i, 7
  %arrayidx.i23.i201.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i2227.zext.i200.i
  %198 = ptrtoint ptr %arrayidx.i23.i201.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i23.i201.i, align 4
  %or.i24.i202.i = or i32 %199, %shl.i180.i
  store i32 %or.i24.i202.i, ptr %arrayidx.i23.i201.i, align 4
  br label %for.inc.i206.i

for.inc.i206.i:                                   ; preds = %if.end6.i203.i, %for.body.i183.i.for.inc.i206.i_crit_edge
  %inc.i204.i = add nuw nsw i32 %i.034.i179.i, 1
  %exitcond.not.i205.i = icmp eq i32 %inc.i204.i, 32
  br i1 %exitcond.not.i205.i, label %mvpp2_prs_sram_ri_update.exit207.i, label %for.inc.i206.i.for.body.i183.i_crit_edge

for.inc.i206.i.for.body.i183.i_crit_edge:         ; preds = %for.inc.i206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i183.i

mvpp2_prs_sram_ri_update.exit207.i:               ; preds = %for.inc.i206.i
  %200 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i.i140.i, align 4
  %and.i3.i211.i = and i32 %201, -60816897
  %and.i12.i.i = or i32 %and.i3.i211.i, 263168
  store i32 %and.i12.i.i, ptr %arrayidx.i.i140.i, align 4
  %202 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 1, ptr %arrayidx.i156.i, align 4
  %203 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %prs_shadow, align 4
  %lu3.i217.i = getelementptr %struct.mvpp2_prs_shadow, ptr %204, i32 %tid.017.i155.i, i32 2
  %205 = ptrtoint ptr %lu3.i217.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 5, ptr %lu3.i217.i, align 4
  %206 = load ptr, ptr %prs_shadow, align 4
  %207 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pe.i115, align 4
  %udf17.i = getelementptr %struct.mvpp2_prs_shadow, ptr %206, i32 %208, i32 3
  %209 = ptrtoint ptr %udf17.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 2, ptr %udf17.i, align 4
  %210 = load ptr, ptr %prs_shadow, align 4
  %211 = load i32, ptr %pe.i115, align 4
  %finish21.i = getelementptr %struct.mvpp2_prs_shadow, ptr %210, i32 %211, i32 1
  %212 = ptrtoint ptr %finish21.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %finish21.i, align 1
  %213 = load i32, ptr %pe.i115, align 4
  %214 = load ptr, ptr %prs_shadow, align 4
  %ri_mask1.i219.i = getelementptr %struct.mvpp2_prs_shadow, ptr %214, i32 %213, i32 5
  %215 = ptrtoint ptr %ri_mask1.i219.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 28672, ptr %ri_mask1.i219.i, align 4
  %216 = load ptr, ptr %prs_shadow, align 4
  %ri4.i220.i = getelementptr %struct.mvpp2_prs_shadow, ptr %216, i32 %213, i32 4
  %217 = ptrtoint ptr %ri4.i220.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 24576, ptr %ri4.i220.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i115) #7
  %218 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i225.i

for.body.i225.i:                                  ; preds = %for.inc.i228.i.for.body.i225.i_crit_edge, %mvpp2_prs_sram_ri_update.exit207.i
  %tid.017.i222.i = phi i32 [ 1, %mvpp2_prs_sram_ri_update.exit207.i ], [ %inc.i226.i, %for.inc.i228.i.for.body.i225.i_crit_edge ]
  %arrayidx.i223.i = getelementptr %struct.mvpp2_prs_shadow, ptr %219, i32 %tid.017.i222.i
  %220 = ptrtoint ptr %arrayidx.i223.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i223.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i224.i = icmp eq i8 %221, 0
  br i1 %tobool.not.i224.i, label %if.end27.i, label %for.inc.i228.i

for.inc.i228.i:                                   ; preds = %for.body.i225.i
  %inc.i226.i = add nuw nsw i32 %tid.017.i222.i, 1
  %exitcond527.not.i = icmp eq i32 %inc.i226.i, 112
  br i1 %exitcond527.not.i, label %for.inc.i228.i.mvpp2_prs_etype_init.exit.thread_crit_edge, label %for.inc.i228.i.for.body.i225.i_crit_edge

for.inc.i228.i.for.body.i225.i_crit_edge:         ; preds = %for.inc.i228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i225.i

for.inc.i228.i.mvpp2_prs_etype_init.exit.thread_crit_edge: ; preds = %for.inc.i228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_etype_init.exit.thread

if.end27.i:                                       ; preds = %for.body.i225.i
  %222 = call ptr @memset(ptr %156, i32 0, i32 32)
  %223 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 983045, ptr %arrayidx.i139.i, align 4
  %224 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %tid.017.i222.i, ptr %pe.i115, align 4
  %225 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 -1281, ptr %arrayidx.i.i.i122, align 4
  %226 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 41984, ptr %arrayidx.i.i142.i, align 4
  br label %for.body.i250.i

for.body.i250.i:                                  ; preds = %for.inc.i273.i.for.body.i250.i_crit_edge, %if.end27.i
  %i.034.i246.i = phi i32 [ 0, %if.end27.i ], [ %inc.i271.i, %for.inc.i273.i.for.body.i250.i_crit_edge ]
  %shl.i247.i = shl nuw i32 1, %i.034.i246.i
  %and.i248.i = and i32 %shl.i247.i, 3145840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i248.i)
  %tobool.not.i249.i = icmp eq i32 %and.i248.i, 0
  br i1 %tobool.not.i249.i, label %for.body.i250.i.for.inc.i273.i_crit_edge, label %if.end.i253.i

for.body.i250.i.for.inc.i273.i_crit_edge:         ; preds = %for.body.i250.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i273.i

if.end.i253.i:                                    ; preds = %for.body.i250.i
  %and2.i251.i = and i32 %shl.i247.i, 2097168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i251.i)
  %tobool3.not.i252.i = icmp eq i32 %and2.i251.i, 0
  br i1 %tobool3.not.i252.i, label %if.else.i264.i, label %if.then4.i258.i

if.then4.i258.i:                                  ; preds = %if.end.i253.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i254.i = lshr i32 %i.034.i246.i, 5
  %div.i29.zext.i255.i = and i32 %div.i293031.i254.i, 7
  %arrayidx.i.i256.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i29.zext.i255.i
  %227 = ptrtoint ptr %arrayidx.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx.i.i256.i, align 4
  %or.i.i257.i = or i32 %228, %shl.i247.i
  store i32 %or.i.i257.i, ptr %arrayidx.i.i256.i, align 4
  br label %if.end6.i270.i

if.else.i264.i:                                   ; preds = %if.end.i253.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i259.i = xor i32 %shl.i247.i, -1
  %div.i18252633.i260.i = lshr i32 %i.034.i246.i, 5
  %div.i1825.zext.i261.i = and i32 %div.i18252633.i260.i, 7
  %arrayidx.i19.i262.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i1825.zext.i261.i
  %229 = ptrtoint ptr %arrayidx.i19.i262.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx.i19.i262.i, align 4
  %and.i.i263.i = and i32 %230, %neg.i.i259.i
  store i32 %and.i.i263.i, ptr %arrayidx.i19.i262.i, align 4
  br label %if.end6.i270.i

if.end6.i270.i:                                   ; preds = %if.else.i264.i, %if.then4.i258.i
  %div.i2227.lhs.trunc.i265.i = add nuw nsw i32 %i.034.i246.i, 32
  %div.i22272832.i266.i = lshr i32 %div.i2227.lhs.trunc.i265.i, 5
  %div.i2227.zext.i267.i = and i32 %div.i22272832.i266.i, 7
  %arrayidx.i23.i268.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i2227.zext.i267.i
  %231 = ptrtoint ptr %arrayidx.i23.i268.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i23.i268.i, align 4
  %or.i24.i269.i = or i32 %232, %shl.i247.i
  store i32 %or.i24.i269.i, ptr %arrayidx.i23.i268.i, align 4
  br label %for.inc.i273.i

for.inc.i273.i:                                   ; preds = %if.end6.i270.i, %for.body.i250.i.for.inc.i273.i_crit_edge
  %inc.i271.i = add nuw nsw i32 %i.034.i246.i, 1
  %exitcond.not.i272.i = icmp eq i32 %inc.i271.i, 32
  br i1 %exitcond.not.i272.i, label %mvpp2_prs_sram_ri_update.exit274.i, label %for.inc.i273.i.for.body.i250.i_crit_edge

for.inc.i273.i.for.body.i250.i_crit_edge:         ; preds = %for.inc.i273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i250.i

mvpp2_prs_sram_ri_update.exit274.i:               ; preds = %for.inc.i273.i
  %233 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx.i.i140.i, align 4
  %and.i3.i279.i = and i32 %234, -60816897
  %and.i12.i282.i = or i32 %and.i3.i279.i, 263168
  store i32 %and.i12.i282.i, ptr %arrayidx.i.i140.i, align 4
  %235 = ptrtoint ptr %arrayidx.i223.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %arrayidx.i223.i, align 4
  %236 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %prs_shadow, align 4
  %lu3.i286.i = getelementptr %struct.mvpp2_prs_shadow, ptr %237, i32 %tid.017.i222.i, i32 2
  %238 = ptrtoint ptr %lu3.i286.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 5, ptr %lu3.i286.i, align 4
  %239 = load ptr, ptr %prs_shadow, align 4
  %240 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pe.i115, align 4
  %udf33.i = getelementptr %struct.mvpp2_prs_shadow, ptr %239, i32 %241, i32 3
  %242 = ptrtoint ptr %udf33.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 2, ptr %udf33.i, align 4
  %243 = load ptr, ptr %prs_shadow, align 4
  %244 = load i32, ptr %pe.i115, align 4
  %finish37.i = getelementptr %struct.mvpp2_prs_shadow, ptr %243, i32 %244, i32 1
  %245 = ptrtoint ptr %finish37.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %finish37.i, align 1
  %246 = load i32, ptr %pe.i115, align 4
  %247 = load ptr, ptr %prs_shadow, align 4
  %ri_mask1.i288.i = getelementptr %struct.mvpp2_prs_shadow, ptr %247, i32 %246, i32 5
  %248 = ptrtoint ptr %ri_mask1.i288.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 3145840, ptr %ri_mask1.i288.i, align 4
  %249 = load ptr, ptr %prs_shadow, align 4
  %ri4.i289.i = getelementptr %struct.mvpp2_prs_shadow, ptr %249, i32 %246, i32 4
  %250 = ptrtoint ptr %ri4.i289.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 2097168, ptr %ri4.i289.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i115) #7
  %251 = getelementptr inbounds i8, ptr %pe.i115, i32 12
  br label %for.body.i128

for.body.i128:                                    ; preds = %mvpp2_prs_sram_offset_set.exit.i.for.body.i128_crit_edge, %mvpp2_prs_sram_ri_update.exit274.i
  %ihl.0516.i = phi i32 [ 5, %mvpp2_prs_sram_ri_update.exit274.i ], [ %inc.i131, %mvpp2_prs_sram_offset_set.exit.i.for.body.i128_crit_edge ]
  %252 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i294.i

for.body.i294.i:                                  ; preds = %for.inc.i297.i.for.body.i294.i_crit_edge, %for.body.i128
  %tid.017.i291.i = phi i32 [ 1, %for.body.i128 ], [ %inc.i295.i, %for.inc.i297.i.for.body.i294.i_crit_edge ]
  %arrayidx.i292.i = getelementptr %struct.mvpp2_prs_shadow, ptr %253, i32 %tid.017.i291.i
  %254 = ptrtoint ptr %arrayidx.i292.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx.i292.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i293.i = icmp eq i8 %255, 0
  br i1 %tobool.not.i293.i, label %if.end44.i, label %for.inc.i297.i

for.inc.i297.i:                                   ; preds = %for.body.i294.i
  %inc.i295.i = add nuw nsw i32 %tid.017.i291.i, 1
  %exitcond528.not.i = icmp eq i32 %inc.i295.i, 112
  br i1 %exitcond528.not.i, label %for.inc.i297.i.mvpp2_prs_etype_init.exit.thread_crit_edge, label %for.inc.i297.i.for.body.i294.i_crit_edge

for.inc.i297.i.for.body.i294.i_crit_edge:         ; preds = %for.inc.i297.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i294.i

for.inc.i297.i.mvpp2_prs_etype_init.exit.thread_crit_edge: ; preds = %for.inc.i297.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_etype_init.exit.thread

if.end44.i:                                       ; preds = %for.body.i294.i
  %256 = call ptr @memset(ptr %251, i32 0, i32 28)
  %257 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 983045, ptr %arrayidx.i139.i, align 4
  %258 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %tid.017.i291.i, ptr %pe.i115, align 4
  %259 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 -65528, ptr %arrayidx.i.i.i122, align 4
  %conv.i = and i32 %ihl.0516.i, 191
  %or17.i.i = or i32 %conv.i, 16711744
  %260 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %or17.i.i, ptr %156, align 4
  %261 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 7168, ptr %arrayidx.i.i142.i, align 4
  br label %for.body.i319.i

for.body.i319.i:                                  ; preds = %for.inc.i342.i.for.body.i319.i_crit_edge, %if.end44.i
  %i.034.i315.i = phi i32 [ 0, %if.end44.i ], [ %inc.i340.i, %for.inc.i342.i.for.body.i319.i_crit_edge ]
  %shl.i316.i = shl nuw i32 1, %i.034.i315.i
  %and.i317.i = and i32 %shl.i316.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317.i)
  %tobool.not.i318.i = icmp eq i32 %and.i317.i, 0
  br i1 %tobool.not.i318.i, label %for.body.i319.i.for.inc.i342.i_crit_edge, label %if.end.i322.i

for.body.i319.i.for.inc.i342.i_crit_edge:         ; preds = %for.body.i319.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i342.i

if.end.i322.i:                                    ; preds = %for.body.i319.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.034.i315.i)
  %tobool3.not.i321.not.i = icmp eq i32 %i.034.i315.i, 12
  br i1 %tobool3.not.i321.not.i, label %if.then4.i327.i, label %if.else.i333.i

if.then4.i327.i:                                  ; preds = %if.end.i322.i
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %arrayidx.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx.i.i146.i, align 4
  %or.i.i326.i = or i32 %263, %shl.i316.i
  store i32 %or.i.i326.i, ptr %arrayidx.i.i146.i, align 4
  br label %if.end6.i339.i

if.else.i333.i:                                   ; preds = %if.end.i322.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i328.i = xor i32 %shl.i316.i, -1
  %div.i18252633.i329.i = lshr i32 %i.034.i315.i, 5
  %div.i1825.zext.i330.i = and i32 %div.i18252633.i329.i, 7
  %arrayidx.i19.i331.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i1825.zext.i330.i
  %264 = ptrtoint ptr %arrayidx.i19.i331.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx.i19.i331.i, align 4
  %and.i.i332.i = and i32 %265, %neg.i.i328.i
  store i32 %and.i.i332.i, ptr %arrayidx.i19.i331.i, align 4
  br label %if.end6.i339.i

if.end6.i339.i:                                   ; preds = %if.else.i333.i, %if.then4.i327.i
  %div.i2227.lhs.trunc.i334.i = add nuw nsw i32 %i.034.i315.i, 32
  %div.i22272832.i335.i = lshr i32 %div.i2227.lhs.trunc.i334.i, 5
  %div.i2227.zext.i336.i = and i32 %div.i22272832.i335.i, 7
  %arrayidx.i23.i337.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i2227.zext.i336.i
  %266 = ptrtoint ptr %arrayidx.i23.i337.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx.i23.i337.i, align 4
  %or.i24.i338.i = or i32 %267, %shl.i316.i
  store i32 %or.i24.i338.i, ptr %arrayidx.i23.i337.i, align 4
  br label %for.inc.i342.i

for.inc.i342.i:                                   ; preds = %if.end6.i339.i, %for.body.i319.i.for.inc.i342.i_crit_edge
  %inc.i340.i = add nuw nsw i32 %i.034.i315.i, 1
  %exitcond.not.i341.i = icmp eq i32 %inc.i340.i, 32
  br i1 %exitcond.not.i341.i, label %mvpp2_prs_sram_offset_set.exit.i, label %for.inc.i342.i.for.body.i319.i_crit_edge

for.inc.i342.i.for.body.i319.i_crit_edge:         ; preds = %for.inc.i342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i319.i

mvpp2_prs_sram_offset_set.exit.i:                 ; preds = %for.inc.i342.i
  %268 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i.i140.i, align 4
  %mul.i129 = shl i32 %ihl.0516.i, 11
  %and.i.i355.i = and i32 %269, -67108627
  %add.i130 = or i32 %mul.i129, %and.i.i355.i
  %and.i12.i361.i = or i32 %add.i130, 3146770
  store i32 %and.i12.i361.i, ptr %arrayidx.i.i140.i, align 4
  %270 = ptrtoint ptr %arrayidx.i292.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 1, ptr %arrayidx.i292.i, align 4
  %271 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %prs_shadow, align 4
  %lu3.i365.i = getelementptr %struct.mvpp2_prs_shadow, ptr %272, i32 %tid.017.i291.i, i32 2
  %273 = ptrtoint ptr %lu3.i365.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 5, ptr %lu3.i365.i, align 4
  %274 = load ptr, ptr %prs_shadow, align 4
  %275 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pe.i115, align 4
  %udf50.i = getelementptr %struct.mvpp2_prs_shadow, ptr %274, i32 %276, i32 3
  %277 = ptrtoint ptr %udf50.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 2, ptr %udf50.i, align 4
  %278 = load ptr, ptr %prs_shadow, align 4
  %279 = load i32, ptr %pe.i115, align 4
  %finish54.i = getelementptr %struct.mvpp2_prs_shadow, ptr %278, i32 %279, i32 1
  %280 = ptrtoint ptr %finish54.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %finish54.i, align 1
  %281 = load i32, ptr %pe.i115, align 4
  %282 = load ptr, ptr %prs_shadow, align 4
  %ri_mask1.i367.i = getelementptr %struct.mvpp2_prs_shadow, ptr %282, i32 %281, i32 5
  %283 = ptrtoint ptr %ri_mask1.i367.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 28672, ptr %ri_mask1.i367.i, align 4
  %284 = load ptr, ptr %prs_shadow, align 4
  %ri4.i368.i = getelementptr %struct.mvpp2_prs_shadow, ptr %284, i32 %281, i32 4
  %285 = ptrtoint ptr %ri4.i368.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 4096, ptr %ri4.i368.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i115) #7
  %inc.i131 = add nuw nsw i32 %ihl.0516.i, 1
  %exitcond529.not.i = icmp eq i32 %inc.i131, 16
  br i1 %exitcond529.not.i, label %for.end.i, label %mvpp2_prs_sram_offset_set.exit.i.for.body.i128_crit_edge

mvpp2_prs_sram_offset_set.exit.i.for.body.i128_crit_edge: ; preds = %mvpp2_prs_sram_offset_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i128

for.end.i:                                        ; preds = %mvpp2_prs_sram_offset_set.exit.i
  %286 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i373.i

for.body.i373.i:                                  ; preds = %for.inc.i376.i.for.body.i373.i_crit_edge, %for.end.i
  %tid.017.i370.i = phi i32 [ 1, %for.end.i ], [ %inc.i374.i, %for.inc.i376.i.for.body.i373.i_crit_edge ]
  %arrayidx.i371.i = getelementptr %struct.mvpp2_prs_shadow, ptr %287, i32 %tid.017.i370.i
  %288 = ptrtoint ptr %arrayidx.i371.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx.i371.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool.not.i372.i = icmp eq i8 %289, 0
  br i1 %tobool.not.i372.i, label %if.end61.i, label %for.inc.i376.i

for.inc.i376.i:                                   ; preds = %for.body.i373.i
  %inc.i374.i = add nuw nsw i32 %tid.017.i370.i, 1
  %exitcond530.not.i = icmp eq i32 %inc.i374.i, 112
  br i1 %exitcond530.not.i, label %for.inc.i376.i.mvpp2_prs_etype_init.exit.thread_crit_edge, label %for.inc.i376.i.for.body.i373.i_crit_edge

for.inc.i376.i.for.body.i373.i_crit_edge:         ; preds = %for.inc.i376.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i373.i

for.inc.i376.i.mvpp2_prs_etype_init.exit.thread_crit_edge: ; preds = %for.inc.i376.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_etype_init.exit.thread

if.end61.i:                                       ; preds = %for.body.i373.i
  %290 = call ptr @memset(ptr %156, i32 0, i32 28)
  %291 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 983045, ptr %arrayidx.i139.i, align 4
  %292 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %tid.017.i370.i, ptr %pe.i115, align 4
  %293 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 -8826, ptr %arrayidx.i.i.i122, align 4
  %294 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 2097178, ptr %arrayidx.i.i140.i, align 4
  %295 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 8192, ptr %arrayidx.i.i142.i, align 4
  br label %for.body.i405.i

for.body.i405.i:                                  ; preds = %for.inc.i428.i.for.body.i405.i_crit_edge, %if.end61.i
  %i.034.i401.i = phi i32 [ 0, %if.end61.i ], [ %inc.i426.i, %for.inc.i428.i.for.body.i405.i_crit_edge ]
  %shl.i402.i = shl nuw i32 1, %i.034.i401.i
  %and.i403.i = and i32 %shl.i402.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i403.i)
  %tobool.not.i404.i = icmp eq i32 %and.i403.i, 0
  br i1 %tobool.not.i404.i, label %for.body.i405.i.for.inc.i428.i_crit_edge, label %if.end.i408.i

for.body.i405.i.for.inc.i428.i_crit_edge:         ; preds = %for.body.i405.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i428.i

if.end.i408.i:                                    ; preds = %for.body.i405.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.034.i401.i)
  %tobool3.not.i407.not.i = icmp eq i32 %i.034.i401.i, 14
  br i1 %tobool3.not.i407.not.i, label %if.then4.i413.i, label %if.else.i419.i

if.then4.i413.i:                                  ; preds = %if.end.i408.i
  call void @__sanitizer_cov_trace_pc() #9
  %296 = ptrtoint ptr %arrayidx.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i.i146.i, align 4
  %or.i.i412.i = or i32 %297, %shl.i402.i
  store i32 %or.i.i412.i, ptr %arrayidx.i.i146.i, align 4
  br label %if.end6.i425.i

if.else.i419.i:                                   ; preds = %if.end.i408.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i414.i = xor i32 %shl.i402.i, -1
  %div.i18252633.i415.i = lshr i32 %i.034.i401.i, 5
  %div.i1825.zext.i416.i = and i32 %div.i18252633.i415.i, 7
  %arrayidx.i19.i417.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i1825.zext.i416.i
  %298 = ptrtoint ptr %arrayidx.i19.i417.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx.i19.i417.i, align 4
  %and.i.i418.i = and i32 %299, %neg.i.i414.i
  store i32 %and.i.i418.i, ptr %arrayidx.i19.i417.i, align 4
  br label %if.end6.i425.i

if.end6.i425.i:                                   ; preds = %if.else.i419.i, %if.then4.i413.i
  %div.i2227.lhs.trunc.i420.i = add nuw nsw i32 %i.034.i401.i, 32
  %div.i22272832.i421.i = lshr i32 %div.i2227.lhs.trunc.i420.i, 5
  %div.i2227.zext.i422.i = and i32 %div.i22272832.i421.i, 7
  %arrayidx.i23.i423.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i2227.zext.i422.i
  %300 = ptrtoint ptr %arrayidx.i23.i423.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx.i23.i423.i, align 4
  %or.i24.i424.i = or i32 %301, %shl.i402.i
  store i32 %or.i24.i424.i, ptr %arrayidx.i23.i423.i, align 4
  br label %for.inc.i428.i

for.inc.i428.i:                                   ; preds = %if.end6.i425.i, %for.body.i405.i.for.inc.i428.i_crit_edge
  %inc.i426.i = add nuw nsw i32 %i.034.i401.i, 1
  %exitcond.not.i427.i = icmp eq i32 %inc.i426.i, 32
  br i1 %exitcond.not.i427.i, label %mvpp2_prs_sram_ri_update.exit429.i, label %for.inc.i428.i.for.body.i405.i_crit_edge

for.inc.i428.i.for.body.i405.i_crit_edge:         ; preds = %for.inc.i428.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i405.i

mvpp2_prs_sram_ri_update.exit429.i:               ; preds = %for.inc.i428.i
  %302 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx.i.i140.i, align 4
  %and.i3.i435.i = and i32 %303, -60816897
  %and.i12.i439.i = or i32 %and.i3.i435.i, 263168
  store i32 %and.i12.i439.i, ptr %arrayidx.i.i140.i, align 4
  %304 = ptrtoint ptr %arrayidx.i371.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 1, ptr %arrayidx.i371.i, align 4
  %305 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %prs_shadow, align 4
  %lu3.i443.i = getelementptr %struct.mvpp2_prs_shadow, ptr %306, i32 %tid.017.i370.i, i32 2
  %307 = ptrtoint ptr %lu3.i443.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 5, ptr %lu3.i443.i, align 4
  %308 = load ptr, ptr %prs_shadow, align 4
  %309 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %pe.i115, align 4
  %udf67.i = getelementptr %struct.mvpp2_prs_shadow, ptr %308, i32 %310, i32 3
  %311 = ptrtoint ptr %udf67.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 2, ptr %udf67.i, align 4
  %312 = load ptr, ptr %prs_shadow, align 4
  %313 = load i32, ptr %pe.i115, align 4
  %finish71.i = getelementptr %struct.mvpp2_prs_shadow, ptr %312, i32 %313, i32 1
  %314 = ptrtoint ptr %finish71.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 0, ptr %finish71.i, align 1
  %315 = load i32, ptr %pe.i115, align 4
  %316 = load ptr, ptr %prs_shadow, align 4
  %ri_mask1.i445.i = getelementptr %struct.mvpp2_prs_shadow, ptr %316, i32 %315, i32 5
  %317 = ptrtoint ptr %ri_mask1.i445.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 28672, ptr %ri_mask1.i445.i, align 4
  %318 = load ptr, ptr %prs_shadow, align 4
  %ri4.i446.i = getelementptr %struct.mvpp2_prs_shadow, ptr %318, i32 %315, i32 4
  %319 = ptrtoint ptr %ri4.i446.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 16384, ptr %ri4.i446.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i115) #7
  %320 = call ptr @memset(ptr %arrayidx.i.i.i122, i32 0, i32 36)
  %321 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 983045, ptr %arrayidx.i139.i, align 4
  %322 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 247, ptr %pe.i115, align 4
  %323 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 41984, ptr %arrayidx.i.i142.i, align 4
  br label %for.body.i462.i

for.body.i462.i:                                  ; preds = %for.inc.i478.i.for.body.i462.i_crit_edge, %mvpp2_prs_sram_ri_update.exit429.i
  %i.034.i458.i = phi i32 [ 0, %mvpp2_prs_sram_ri_update.exit429.i ], [ %inc.i476.i, %for.inc.i478.i.for.body.i462.i_crit_edge ]
  %shl.i459.i = shl nuw i32 1, %i.034.i458.i
  %and.i460.i = and i32 %shl.i459.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i460.i)
  %tobool.not.i461.i = icmp eq i32 %and.i460.i, 0
  br i1 %tobool.not.i461.i, label %for.body.i462.i.for.inc.i478.i_crit_edge, label %if.end.i463.i

for.body.i462.i.for.inc.i478.i_crit_edge:         ; preds = %for.body.i462.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i478.i

if.end.i463.i:                                    ; preds = %for.body.i462.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i464.i = xor i32 %shl.i459.i, -1
  %div.i18252633.i465.i = lshr i32 %i.034.i458.i, 5
  %div.i1825.zext.i466.i = and i32 %div.i18252633.i465.i, 7
  %arrayidx.i19.i467.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i1825.zext.i466.i
  %324 = ptrtoint ptr %arrayidx.i19.i467.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx.i19.i467.i, align 4
  %and.i.i468.i = and i32 %325, %neg.i.i464.i
  store i32 %and.i.i468.i, ptr %arrayidx.i19.i467.i, align 4
  %div.i2227.lhs.trunc.i470.i = add nuw nsw i32 %i.034.i458.i, 32
  %div.i22272832.i471.i = lshr i32 %div.i2227.lhs.trunc.i470.i, 5
  %div.i2227.zext.i472.i = and i32 %div.i22272832.i471.i, 7
  %arrayidx.i23.i473.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i115, i32 0, i32 2, i32 %div.i2227.zext.i472.i
  %326 = ptrtoint ptr %arrayidx.i23.i473.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx.i23.i473.i, align 4
  %or.i24.i474.i = or i32 %327, %shl.i459.i
  store i32 %or.i24.i474.i, ptr %arrayidx.i23.i473.i, align 4
  br label %for.inc.i478.i

for.inc.i478.i:                                   ; preds = %if.end.i463.i, %for.body.i462.i.for.inc.i478.i_crit_edge
  %inc.i476.i = add nuw nsw i32 %i.034.i458.i, 1
  %exitcond.not.i477.i = icmp eq i32 %inc.i476.i, 32
  br i1 %exitcond.not.i477.i, label %if.end31, label %for.inc.i478.i.for.body.i462.i_crit_edge

for.inc.i478.i.for.body.i462.i_crit_edge:         ; preds = %for.inc.i478.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i462.i

mvpp2_prs_etype_init.exit.thread:                 ; preds = %for.inc.i376.i.mvpp2_prs_etype_init.exit.thread_crit_edge, %for.inc.i297.i.mvpp2_prs_etype_init.exit.thread_crit_edge, %for.inc.i228.i.mvpp2_prs_etype_init.exit.thread_crit_edge, %for.inc.i161.i.mvpp2_prs_etype_init.exit.thread_crit_edge, %for.inc.i.i121.mvpp2_prs_etype_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i115) #7
  br label %cleanup

if.end31:                                         ; preds = %for.inc.i478.i
  %328 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx.i.i140.i, align 4
  %and.i3.i485.i = and i32 %329, -60816897
  %and.i12.i489.i = or i32 %and.i3.i485.i, 263168
  store i32 %and.i12.i489.i, ptr %arrayidx.i.i140.i, align 4
  %330 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i492.i = getelementptr %struct.mvpp2_prs_shadow, ptr %331, i32 247
  %332 = ptrtoint ptr %arrayidx.i492.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 1, ptr %arrayidx.i492.i, align 4
  %333 = load ptr, ptr %prs_shadow, align 4
  %lu3.i493.i = getelementptr %struct.mvpp2_prs_shadow, ptr %333, i32 247, i32 2
  %334 = ptrtoint ptr %lu3.i493.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 5, ptr %lu3.i493.i, align 4
  %335 = load ptr, ptr %prs_shadow, align 4
  %336 = ptrtoint ptr %pe.i115 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %pe.i115, align 4
  %udf79.i = getelementptr %struct.mvpp2_prs_shadow, ptr %335, i32 %337, i32 3
  %338 = ptrtoint ptr %udf79.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 2, ptr %udf79.i, align 4
  %339 = load ptr, ptr %prs_shadow, align 4
  %340 = load i32, ptr %pe.i115, align 4
  %finish83.i = getelementptr %struct.mvpp2_prs_shadow, ptr %339, i32 %340, i32 1
  %341 = ptrtoint ptr %finish83.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 1, ptr %finish83.i, align 1
  %342 = load i32, ptr %pe.i115, align 4
  %343 = load ptr, ptr %prs_shadow, align 4
  %ri_mask1.i495.i = getelementptr %struct.mvpp2_prs_shadow, ptr %343, i32 %342, i32 5
  %344 = ptrtoint ptr %ri_mask1.i495.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 28672, ptr %ri_mask1.i495.i, align 4
  %345 = load ptr, ptr %prs_shadow, align 4
  %ri4.i496.i = getelementptr %struct.mvpp2_prs_shadow, ptr %345, i32 %342, i32 4
  %346 = ptrtoint ptr %ri4.i496.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %ri4.i496.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i115) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i115) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i132) #7
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #7
  %prs_double_vlans.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 20
  %347 = ptrtoint ptr %prs_double_vlans.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call5.i.i.i, ptr %prs_double_vlans.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %if.end31.mvpp2_prs_vlan_init.exit.thread_crit_edge, label %if.end.i133

if.end31.mvpp2_prs_vlan_init.exit.thread_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vlan_init.exit.thread

if.end.i133:                                      ; preds = %if.end31
  %call2.i = tail call fastcc i32 @mvpp2_prs_double_vlan_add(ptr noundef %priv, i16 noundef zeroext -30552) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i133.mvpp2_prs_vlan_init.exit.thread_crit_edge

if.end.i133.mvpp2_prs_vlan_init.exit.thread_crit_edge: ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vlan_init.exit.thread

if.end5.i:                                        ; preds = %if.end.i133
  %call6.i = tail call fastcc i32 @mvpp2_prs_double_vlan_add(ptr noundef %priv, i16 noundef zeroext -32512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.mvpp2_prs_vlan_init.exit.thread_crit_edge

if.end5.i.mvpp2_prs_vlan_init.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vlan_init.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call fastcc i32 @mvpp2_prs_vlan_add(ptr noundef %priv, i16 noundef zeroext -30552) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.mvpp2_prs_vlan_init.exit.thread_crit_edge

if.end9.i.mvpp2_prs_vlan_init.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vlan_init.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call fastcc i32 @mvpp2_prs_vlan_add(ptr noundef %priv, i16 noundef zeroext -32512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end35, label %if.end13.i.mvpp2_prs_vlan_init.exit.thread_crit_edge

if.end13.i.mvpp2_prs_vlan_init.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_vlan_init.exit.thread

mvpp2_prs_vlan_init.exit.thread:                  ; preds = %if.end13.i.mvpp2_prs_vlan_init.exit.thread_crit_edge, %if.end9.i.mvpp2_prs_vlan_init.exit.thread_crit_edge, %if.end5.i.mvpp2_prs_vlan_init.exit.thread_crit_edge, %if.end.i133.mvpp2_prs_vlan_init.exit.thread_crit_edge, %if.end31.mvpp2_prs_vlan_init.exit.thread_crit_edge
  %retval.0.i139.ph = phi i32 [ %call14.i, %if.end13.i.mvpp2_prs_vlan_init.exit.thread_crit_edge ], [ %call10.i, %if.end9.i.mvpp2_prs_vlan_init.exit.thread_crit_edge ], [ %call6.i, %if.end5.i.mvpp2_prs_vlan_init.exit.thread_crit_edge ], [ %call2.i, %if.end.i133.mvpp2_prs_vlan_init.exit.thread_crit_edge ], [ -12, %if.end31.mvpp2_prs_vlan_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i132) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end13.i
  %348 = getelementptr inbounds i8, ptr %pe.i132, i32 4
  %349 = call ptr @memset(ptr %348, i32 0, i32 32)
  %arrayidx.i.i134 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i132, i32 0, i32 1, i32 5
  %350 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 983043, ptr %arrayidx.i.i134, align 4
  %351 = ptrtoint ptr %pe.i132 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 250, ptr %pe.i132, align 4
  %arrayidx.i.i.i135 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i132, i32 0, i32 2, i32 3
  %arrayidx.i19.i.i136 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i132, i32 0, i32 2, i32 2
  %352 = ptrtoint ptr %arrayidx.i19.i.i136 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %arrayidx.i19.i.i136, align 4
  %353 = ptrtoint ptr %arrayidx.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 5116, ptr %arrayidx.i.i.i135, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe.i132, i32 noundef 8, i32 noundef 12) #7
  %arrayidx.i41.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i132, i32 0, i32 1, i32 4
  %354 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx.i41.i, align 4
  %or14.i.i = and i32 %355, 8323199
  %and3.i43.i = or i32 %or14.i.i, 8388736
  store i32 %and3.i43.i, ptr %arrayidx.i41.i, align 4
  %356 = ptrtoint ptr %pe.i132 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %pe.i132, align 4
  %358 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i44.i = getelementptr %struct.mvpp2_prs_shadow, ptr %359, i32 %357
  %360 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 1, ptr %arrayidx.i44.i, align 4
  %361 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i138 = getelementptr %struct.mvpp2_prs_shadow, ptr %361, i32 %357, i32 2
  %362 = ptrtoint ptr %lu3.i.i138 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 3, ptr %lu3.i.i138, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i132) #7
  %363 = call ptr @memset(ptr %348, i32 0, i32 36)
  %364 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 983043, ptr %arrayidx.i.i134, align 4
  %365 = ptrtoint ptr %pe.i132 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 251, ptr %pe.i132, align 4
  %366 = ptrtoint ptr %arrayidx.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 5120, ptr %arrayidx.i.i.i135, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe.i132, i32 noundef 0, i32 noundef 12) #7
  %367 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx.i41.i, align 4
  %and3.i53.i = and i32 %368, 16711935
  store i32 %and3.i53.i, ptr %arrayidx.i41.i, align 4
  %369 = ptrtoint ptr %pe.i132 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %pe.i132, align 4
  %371 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i55.i = getelementptr %struct.mvpp2_prs_shadow, ptr %372, i32 %370
  %373 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 1, ptr %arrayidx.i55.i, align 4
  %374 = load ptr, ptr %prs_shadow, align 4
  %lu3.i56.i = getelementptr %struct.mvpp2_prs_shadow, ptr %374, i32 %370, i32 2
  %375 = ptrtoint ptr %lu3.i56.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 3, ptr %lu3.i56.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i132) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i132) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i140) #7
  %376 = call ptr @memset(ptr %pe.i140, i32 255, i32 44)
  %377 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i.i145

for.body.i.i145:                                  ; preds = %for.inc.i.i148.for.body.i.i145_crit_edge, %if.end35
  %tid.017.i.i142 = phi i32 [ 1, %if.end35 ], [ %inc.i.i146, %for.inc.i.i148.for.body.i.i145_crit_edge ]
  %arrayidx.i.i143 = getelementptr %struct.mvpp2_prs_shadow, ptr %378, i32 %tid.017.i.i142
  %379 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx.i.i143, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool.not.i.i144 = icmp eq i8 %380, 0
  br i1 %tobool.not.i.i144, label %if.end.i150, label %for.inc.i.i148

for.inc.i.i148:                                   ; preds = %for.body.i.i145
  %inc.i.i146 = add nuw nsw i32 %tid.017.i.i142, 1
  %exitcond.not.i147 = icmp eq i32 %inc.i.i146, 112
  br i1 %exitcond.not.i147, label %for.inc.i.i148.mvpp2_prs_pppoe_init.exit.thread_crit_edge, label %for.inc.i.i148.for.body.i.i145_crit_edge

for.inc.i.i148.for.body.i.i145_crit_edge:         ; preds = %for.inc.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i145

for.inc.i.i148.mvpp2_prs_pppoe_init.exit.thread_crit_edge: ; preds = %for.inc.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_pppoe_init.exit.thread

if.end.i150:                                      ; preds = %for.body.i.i145
  %381 = getelementptr inbounds i8, ptr %pe.i140, i32 8
  %382 = call ptr @memset(ptr %381, i32 0, i32 32)
  %arrayidx.i49.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 1, i32 5
  %383 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 983046, ptr %arrayidx.i49.i, align 4
  %384 = ptrtoint ptr %pe.i140 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %tid.017.i.i142, ptr %pe.i140, align 4
  %arrayidx.i.i.i149 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 1, i32 0
  %385 = ptrtoint ptr %arrayidx.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 -57088, ptr %arrayidx.i.i.i149, align 4
  %arrayidx.i.i50.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 3
  %386 = ptrtoint ptr %arrayidx.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 7168, ptr %arrayidx.i.i50.i, align 4
  %arrayidx.i.i53.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 0
  br label %for.body.i52.i

for.body.i52.i:                                   ; preds = %for.inc.i57.i.for.body.i52.i_crit_edge, %if.end.i150
  %i.034.i.i151 = phi i32 [ 0, %if.end.i150 ], [ %inc.i56.i, %for.inc.i57.i.for.body.i52.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.034.i.i151
  %and.i.i = and i32 %shl.i.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i51.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i51.i, label %for.body.i52.i.for.inc.i57.i_crit_edge, label %if.end.i.i

for.body.i52.i.for.inc.i57.i_crit_edge:           ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i57.i

if.end.i.i:                                       ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.034.i.i151)
  %tobool3.not.i.not.i = icmp eq i32 %i.034.i.i151, 13
  br i1 %tobool3.not.i.not.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %387 = ptrtoint ptr %arrayidx.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx.i.i53.i, align 4
  %or.i.i54.i = or i32 %388, %shl.i.i
  store i32 %or.i.i54.i, ptr %arrayidx.i.i53.i, align 4
  br label %if.end6.i.i155

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %div.i18252633.i.i = lshr i32 %i.034.i.i151, 5
  %div.i1825.zext.i.i = and i32 %div.i18252633.i.i, 7
  %arrayidx.i19.i.i152 = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i1825.zext.i.i
  %389 = ptrtoint ptr %arrayidx.i19.i.i152 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx.i19.i.i152, align 4
  %and.i.i55.i = and i32 %390, %neg.i.i.i
  store i32 %and.i.i55.i, ptr %arrayidx.i19.i.i152, align 4
  br label %if.end6.i.i155

if.end6.i.i155:                                   ; preds = %if.else.i.i, %if.then4.i.i
  %div.i2227.lhs.trunc.i.i = add nuw nsw i32 %i.034.i.i151, 32
  %div.i22272832.i.i = lshr i32 %div.i2227.lhs.trunc.i.i, 5
  %div.i2227.zext.i.i = and i32 %div.i22272832.i.i, 7
  %arrayidx.i23.i.i153 = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i2227.zext.i.i
  %391 = ptrtoint ptr %arrayidx.i23.i.i153 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx.i23.i.i153, align 4
  %or.i24.i.i154 = or i32 %392, %shl.i.i
  store i32 %or.i24.i.i154, ptr %arrayidx.i23.i.i153, align 4
  br label %for.inc.i57.i

for.inc.i57.i:                                    ; preds = %if.end6.i.i155, %for.body.i52.i.for.inc.i57.i_crit_edge
  %inc.i56.i = add nuw nsw i32 %i.034.i.i151, 1
  %exitcond.not.i.i156 = icmp eq i32 %inc.i56.i, 32
  br i1 %exitcond.not.i.i156, label %mvpp2_prs_sram_ri_update.exit.i159, label %for.inc.i57.i.for.body.i52.i_crit_edge

for.inc.i57.i.for.body.i52.i_crit_edge:           ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i52.i

mvpp2_prs_sram_ri_update.exit.i159:               ; preds = %for.inc.i57.i
  %arrayidx.i.i58.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 2
  %393 = ptrtoint ptr %arrayidx.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx.i.i58.i, align 4
  %.masked.i.i = and i32 %394, -67108627
  %and.i12.i.i157 = or i32 %.masked.i.i, 2360338
  store i32 %and.i12.i.i157, ptr %arrayidx.i.i58.i, align 4
  %395 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 1, ptr %arrayidx.i.i143, align 4
  %396 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i158 = getelementptr %struct.mvpp2_prs_shadow, ptr %397, i32 %tid.017.i.i142, i32 2
  %398 = ptrtoint ptr %lu3.i.i158 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 6, ptr %lu3.i.i158, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i140) #7
  %399 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i77.i

for.body.i77.i:                                   ; preds = %for.inc.i80.i.for.body.i77.i_crit_edge, %mvpp2_prs_sram_ri_update.exit.i159
  %tid.017.i74.i = phi i32 [ 1, %mvpp2_prs_sram_ri_update.exit.i159 ], [ %inc.i78.i, %for.inc.i80.i.for.body.i77.i_crit_edge ]
  %arrayidx.i75.i = getelementptr %struct.mvpp2_prs_shadow, ptr %400, i32 %tid.017.i74.i
  %401 = ptrtoint ptr %arrayidx.i75.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx.i75.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool.not.i76.i = icmp eq i8 %402, 0
  br i1 %tobool.not.i76.i, label %if.end6.i, label %for.inc.i80.i

for.inc.i80.i:                                    ; preds = %for.body.i77.i
  %inc.i78.i = add nuw nsw i32 %tid.017.i74.i, 1
  %exitcond264.not.i = icmp eq i32 %inc.i78.i, 112
  br i1 %exitcond264.not.i, label %for.inc.i80.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge, label %for.inc.i80.i.for.body.i77.i_crit_edge

for.inc.i80.i.for.body.i77.i_crit_edge:           ; preds = %for.inc.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i77.i

for.inc.i80.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge: ; preds = %for.inc.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_pppoe_init.exit.thread

if.end6.i:                                        ; preds = %for.body.i77.i
  %403 = ptrtoint ptr %pe.i140 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %tid.017.i74.i, ptr %pe.i140, align 4
  %404 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %381, align 4
  %and6.i.i = and i32 %405, -16711936
  %or17.i.i160 = or i32 %and6.i.i, 16711749
  store i32 %or17.i.i160, ptr %381, align 4
  %406 = ptrtoint ptr %arrayidx.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 0, ptr %arrayidx.i.i53.i, align 4
  %arrayidx9.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 1
  %407 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 0, ptr %arrayidx9.i, align 4
  br label %for.body.i88.i

for.body.i88.i:                                   ; preds = %for.inc.i111.i.for.body.i88.i_crit_edge, %if.end6.i
  %i.034.i84.i = phi i32 [ 0, %if.end6.i ], [ %inc.i109.i, %for.inc.i111.i.for.body.i88.i_crit_edge ]
  %shl.i85.i = shl nuw i32 1, %i.034.i84.i
  %and.i86.i = and i32 %shl.i85.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86.i)
  %tobool.not.i87.i = icmp eq i32 %and.i86.i, 0
  br i1 %tobool.not.i87.i, label %for.body.i88.i.for.inc.i111.i_crit_edge, label %if.end.i91.i

for.body.i88.i.for.inc.i111.i_crit_edge:          ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i111.i

if.end.i91.i:                                     ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.034.i84.i)
  %tobool3.not.i90.not.i = icmp eq i32 %i.034.i84.i, 12
  br i1 %tobool3.not.i90.not.i, label %if.then4.i96.i, label %if.else.i102.i

if.then4.i96.i:                                   ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  %408 = ptrtoint ptr %arrayidx.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx.i.i53.i, align 4
  %or.i.i95.i = or i32 %409, %shl.i85.i
  store i32 %or.i.i95.i, ptr %arrayidx.i.i53.i, align 4
  br label %if.end6.i108.i

if.else.i102.i:                                   ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i97.i = xor i32 %shl.i85.i, -1
  %div.i18252633.i98.i = lshr i32 %i.034.i84.i, 5
  %div.i1825.zext.i99.i = and i32 %div.i18252633.i98.i, 7
  %arrayidx.i19.i100.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i1825.zext.i99.i
  %410 = ptrtoint ptr %arrayidx.i19.i100.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx.i19.i100.i, align 4
  %and.i.i101.i = and i32 %411, %neg.i.i97.i
  store i32 %and.i.i101.i, ptr %arrayidx.i19.i100.i, align 4
  br label %if.end6.i108.i

if.end6.i108.i:                                   ; preds = %if.else.i102.i, %if.then4.i96.i
  %div.i2227.lhs.trunc.i103.i = add nuw nsw i32 %i.034.i84.i, 32
  %div.i22272832.i104.i = lshr i32 %div.i2227.lhs.trunc.i103.i, 5
  %div.i2227.zext.i105.i = and i32 %div.i22272832.i104.i, 7
  %arrayidx.i23.i106.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i2227.zext.i105.i
  %412 = ptrtoint ptr %arrayidx.i23.i106.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx.i23.i106.i, align 4
  %or.i24.i107.i = or i32 %413, %shl.i85.i
  store i32 %or.i24.i107.i, ptr %arrayidx.i23.i106.i, align 4
  br label %for.inc.i111.i

for.inc.i111.i:                                   ; preds = %if.end6.i108.i, %for.body.i88.i.for.inc.i111.i_crit_edge
  %inc.i109.i = add nuw nsw i32 %i.034.i84.i, 1
  %exitcond.not.i110.i = icmp eq i32 %inc.i109.i, 32
  br i1 %exitcond.not.i110.i, label %mvpp2_prs_sram_ri_update.exit112.i, label %for.inc.i111.i.for.body.i88.i_crit_edge

for.inc.i111.i.for.body.i88.i_crit_edge:          ; preds = %for.inc.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i88.i

mvpp2_prs_sram_ri_update.exit112.i:               ; preds = %for.inc.i111.i
  %414 = ptrtoint ptr %arrayidx.i75.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %arrayidx.i75.i, align 4
  %415 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %prs_shadow, align 4
  %lu3.i115.i = getelementptr %struct.mvpp2_prs_shadow, ptr %416, i32 %tid.017.i74.i, i32 2
  %417 = ptrtoint ptr %lu3.i115.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 6, ptr %lu3.i115.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i140) #7
  %418 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i120.i

for.body.i120.i:                                  ; preds = %for.inc.i123.i.for.body.i120.i_crit_edge, %mvpp2_prs_sram_ri_update.exit112.i
  %tid.017.i117.i = phi i32 [ 1, %mvpp2_prs_sram_ri_update.exit112.i ], [ %inc.i121.i, %for.inc.i123.i.for.body.i120.i_crit_edge ]
  %arrayidx.i118.i = getelementptr %struct.mvpp2_prs_shadow, ptr %419, i32 %tid.017.i117.i
  %420 = ptrtoint ptr %arrayidx.i118.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx.i118.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %421)
  %tobool.not.i119.i = icmp eq i8 %421, 0
  br i1 %tobool.not.i119.i, label %if.end15.i, label %for.inc.i123.i

for.inc.i123.i:                                   ; preds = %for.body.i120.i
  %inc.i121.i = add nuw nsw i32 %tid.017.i117.i, 1
  %exitcond265.not.i = icmp eq i32 %inc.i121.i, 112
  br i1 %exitcond265.not.i, label %for.inc.i123.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge, label %for.inc.i123.i.for.body.i120.i_crit_edge

for.inc.i123.i.for.body.i120.i_crit_edge:         ; preds = %for.inc.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i120.i

for.inc.i123.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge: ; preds = %for.inc.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_pppoe_init.exit.thread

if.end15.i:                                       ; preds = %for.body.i120.i
  %422 = call ptr @memset(ptr %381, i32 0, i32 32)
  %423 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 983046, ptr %arrayidx.i49.i, align 4
  %424 = ptrtoint ptr %pe.i140 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %tid.017.i117.i, ptr %pe.i140, align 4
  %425 = ptrtoint ptr %arrayidx.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 -43264, ptr %arrayidx.i.i.i149, align 4
  %426 = ptrtoint ptr %arrayidx.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 8192, ptr %arrayidx.i.i50.i, align 4
  br label %for.body.i143.i

for.body.i143.i:                                  ; preds = %for.inc.i166.i.for.body.i143.i_crit_edge, %if.end15.i
  %i.034.i139.i = phi i32 [ 0, %if.end15.i ], [ %inc.i164.i, %for.inc.i166.i.for.body.i143.i_crit_edge ]
  %shl.i140.i = shl nuw i32 1, %i.034.i139.i
  %and.i141.i = and i32 %shl.i140.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141.i)
  %tobool.not.i142.i = icmp eq i32 %and.i141.i, 0
  br i1 %tobool.not.i142.i, label %for.body.i143.i.for.inc.i166.i_crit_edge, label %if.end.i146.i

for.body.i143.i.for.inc.i166.i_crit_edge:         ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i166.i

if.end.i146.i:                                    ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.034.i139.i)
  %tobool3.not.i145.not.i = icmp eq i32 %i.034.i139.i, 14
  br i1 %tobool3.not.i145.not.i, label %if.then4.i151.i, label %if.else.i157.i

if.then4.i151.i:                                  ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  %427 = ptrtoint ptr %arrayidx.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %arrayidx.i.i53.i, align 4
  %or.i.i150.i = or i32 %428, %shl.i140.i
  store i32 %or.i.i150.i, ptr %arrayidx.i.i53.i, align 4
  br label %if.end6.i163.i

if.else.i157.i:                                   ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i152.i = xor i32 %shl.i140.i, -1
  %div.i18252633.i153.i = lshr i32 %i.034.i139.i, 5
  %div.i1825.zext.i154.i = and i32 %div.i18252633.i153.i, 7
  %arrayidx.i19.i155.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i1825.zext.i154.i
  %429 = ptrtoint ptr %arrayidx.i19.i155.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %arrayidx.i19.i155.i, align 4
  %and.i.i156.i = and i32 %430, %neg.i.i152.i
  store i32 %and.i.i156.i, ptr %arrayidx.i19.i155.i, align 4
  br label %if.end6.i163.i

if.end6.i163.i:                                   ; preds = %if.else.i157.i, %if.then4.i151.i
  %div.i2227.lhs.trunc.i158.i = add nuw nsw i32 %i.034.i139.i, 32
  %div.i22272832.i159.i = lshr i32 %div.i2227.lhs.trunc.i158.i, 5
  %div.i2227.zext.i160.i = and i32 %div.i22272832.i159.i, 7
  %arrayidx.i23.i161.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i2227.zext.i160.i
  %431 = ptrtoint ptr %arrayidx.i23.i161.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx.i23.i161.i, align 4
  %or.i24.i162.i = or i32 %432, %shl.i140.i
  store i32 %or.i24.i162.i, ptr %arrayidx.i23.i161.i, align 4
  br label %for.inc.i166.i

for.inc.i166.i:                                   ; preds = %if.end6.i163.i, %for.body.i143.i.for.inc.i166.i_crit_edge
  %inc.i164.i = add nuw nsw i32 %i.034.i139.i, 1
  %exitcond.not.i165.i = icmp eq i32 %inc.i164.i, 32
  br i1 %exitcond.not.i165.i, label %mvpp2_prs_sram_ri_update.exit167.i, label %for.inc.i166.i.for.body.i143.i_crit_edge

for.inc.i166.i.for.body.i143.i_crit_edge:         ; preds = %for.inc.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i143.i

mvpp2_prs_sram_ri_update.exit167.i:               ; preds = %for.inc.i166.i
  %433 = ptrtoint ptr %arrayidx.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx.i.i58.i, align 4
  %.masked.i173.i = and i32 %434, -67108635
  %and.i12.i184.i = or i32 %.masked.i173.i, 2360346
  store i32 %and.i12.i184.i, ptr %arrayidx.i.i58.i, align 4
  %435 = ptrtoint ptr %arrayidx.i118.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 1, ptr %arrayidx.i118.i, align 4
  %436 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %prs_shadow, align 4
  %lu3.i188.i = getelementptr %struct.mvpp2_prs_shadow, ptr %437, i32 %tid.017.i117.i, i32 2
  %438 = ptrtoint ptr %lu3.i188.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 6, ptr %lu3.i188.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i140) #7
  %439 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i193.i

for.body.i193.i:                                  ; preds = %for.inc.i196.i.for.body.i193.i_crit_edge, %mvpp2_prs_sram_ri_update.exit167.i
  %tid.017.i190.i = phi i32 [ 1, %mvpp2_prs_sram_ri_update.exit167.i ], [ %inc.i194.i, %for.inc.i196.i.for.body.i193.i_crit_edge ]
  %arrayidx.i191.i = getelementptr %struct.mvpp2_prs_shadow, ptr %440, i32 %tid.017.i190.i
  %441 = ptrtoint ptr %arrayidx.i191.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx.i191.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %442)
  %tobool.not.i192.i = icmp eq i8 %442, 0
  br i1 %tobool.not.i192.i, label %if.end22.i, label %for.inc.i196.i

for.inc.i196.i:                                   ; preds = %for.body.i193.i
  %inc.i194.i = add nuw nsw i32 %tid.017.i190.i, 1
  %exitcond266.not.i = icmp eq i32 %inc.i194.i, 112
  br i1 %exitcond266.not.i, label %for.inc.i196.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge, label %for.inc.i196.i.for.body.i193.i_crit_edge

for.inc.i196.i.for.body.i193.i_crit_edge:         ; preds = %for.inc.i196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i193.i

for.inc.i196.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge: ; preds = %for.inc.i196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_pppoe_init.exit.thread

if.end22.i:                                       ; preds = %for.body.i193.i
  %443 = call ptr @memset(ptr %arrayidx.i.i.i149, i32 0, i32 40)
  %444 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 983046, ptr %arrayidx.i49.i, align 4
  %445 = ptrtoint ptr %pe.i140 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %tid.017.i190.i, ptr %pe.i140, align 4
  br label %for.body.i207.i

for.body.i207.i:                                  ; preds = %for.inc.i223.i.for.body.i207.i_crit_edge, %if.end22.i
  %i.034.i203.i = phi i32 [ 0, %if.end22.i ], [ %inc.i221.i, %for.inc.i223.i.for.body.i207.i_crit_edge ]
  %shl.i204.i = shl nuw i32 1, %i.034.i203.i
  %and.i205.i = and i32 %shl.i204.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205.i)
  %tobool.not.i206.i = icmp eq i32 %and.i205.i, 0
  br i1 %tobool.not.i206.i, label %for.body.i207.i.for.inc.i223.i_crit_edge, label %if.end.i208.i

for.body.i207.i.for.inc.i223.i_crit_edge:         ; preds = %for.body.i207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i223.i

if.end.i208.i:                                    ; preds = %for.body.i207.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i209.i = xor i32 %shl.i204.i, -1
  %div.i18252633.i210.i = lshr i32 %i.034.i203.i, 5
  %div.i1825.zext.i211.i = and i32 %div.i18252633.i210.i, 7
  %arrayidx.i19.i212.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i1825.zext.i211.i
  %446 = ptrtoint ptr %arrayidx.i19.i212.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx.i19.i212.i, align 4
  %and.i.i213.i = and i32 %447, %neg.i.i209.i
  store i32 %and.i.i213.i, ptr %arrayidx.i19.i212.i, align 4
  %div.i2227.lhs.trunc.i215.i = add nuw nsw i32 %i.034.i203.i, 32
  %div.i22272832.i216.i = lshr i32 %div.i2227.lhs.trunc.i215.i, 5
  %div.i2227.zext.i217.i = and i32 %div.i22272832.i216.i, 7
  %arrayidx.i23.i218.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i140, i32 0, i32 2, i32 %div.i2227.zext.i217.i
  %448 = ptrtoint ptr %arrayidx.i23.i218.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx.i23.i218.i, align 4
  %or.i24.i219.i = or i32 %449, %shl.i204.i
  store i32 %or.i24.i219.i, ptr %arrayidx.i23.i218.i, align 4
  br label %for.inc.i223.i

for.inc.i223.i:                                   ; preds = %if.end.i208.i, %for.body.i207.i.for.inc.i223.i_crit_edge
  %inc.i221.i = add nuw nsw i32 %i.034.i203.i, 1
  %exitcond.not.i222.i = icmp eq i32 %inc.i221.i, 32
  br i1 %exitcond.not.i222.i, label %if.end39, label %for.inc.i223.i.for.body.i207.i_crit_edge

for.inc.i223.i.for.body.i207.i_crit_edge:         ; preds = %for.inc.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i207.i

mvpp2_prs_pppoe_init.exit.thread:                 ; preds = %for.inc.i196.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge, %for.inc.i123.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge, %for.inc.i80.i.mvpp2_prs_pppoe_init.exit.thread_crit_edge, %for.inc.i.i148.mvpp2_prs_pppoe_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i140) #7
  br label %cleanup

if.end39:                                         ; preds = %for.inc.i223.i
  %450 = ptrtoint ptr %arrayidx.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx.i.i50.i, align 4
  %and.i.i226.i = and i32 %451, -48129
  %or.i229.i = or i32 %and.i.i226.i, 41984
  store i32 %or.i229.i, ptr %arrayidx.i.i50.i, align 4
  %452 = ptrtoint ptr %arrayidx.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx.i.i58.i, align 4
  %and.i3.i234.i = and i32 %453, -60816897
  %and.i12.i237.i = or i32 %and.i3.i234.i, 263168
  store i32 %and.i12.i237.i, ptr %arrayidx.i.i58.i, align 4
  %454 = ptrtoint ptr %arrayidx.i191.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 1, ptr %arrayidx.i191.i, align 4
  %455 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %prs_shadow, align 4
  %lu3.i241.i = getelementptr %struct.mvpp2_prs_shadow, ptr %456, i32 %tid.017.i190.i, i32 2
  %457 = ptrtoint ptr %lu3.i241.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 6, ptr %lu3.i241.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i140) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i140) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i163) #7
  %458 = call ptr @memset(ptr %pe.i163, i32 255, i32 44)
  %call.i164 = tail call fastcc i32 @mvpp2_prs_ip6_proto(ptr noundef %priv, i16 noundef zeroext 6, i32 noundef 4194304, i32 noundef 29360128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %if.end.i166, label %if.end39.mvpp2_prs_ip6_init.exit.thread_crit_edge

if.end39.mvpp2_prs_ip6_init.exit.thread_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_ip6_init.exit.thread

if.end.i166:                                      ; preds = %if.end39
  %call1.i = tail call fastcc i32 @mvpp2_prs_ip6_proto(ptr noundef %priv, i16 noundef zeroext 17, i32 noundef 8388608, i32 noundef 29360128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i166.mvpp2_prs_ip6_init.exit.thread_crit_edge

if.end.i166.mvpp2_prs_ip6_init.exit.thread_crit_edge: ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_ip6_init.exit.thread

if.end4.i:                                        ; preds = %if.end.i166
  %call5.i = tail call fastcc i32 @mvpp2_prs_ip6_proto(ptr noundef %priv, i16 noundef zeroext 58, i32 noundef 2097168, i32 noundef 3145840) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.mvpp2_prs_ip6_init.exit.thread_crit_edge

if.end4.i.mvpp2_prs_ip6_init.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_ip6_init.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @mvpp2_prs_ip6_proto(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef 536870912, i32 noundef 1610612736) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.mvpp2_prs_ip6_init.exit.thread_crit_edge

if.end8.i.mvpp2_prs_ip6_init.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_ip6_init.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i.i162) #7
  %459 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end12.i
  %tid.017.i.i.i = phi i32 [ 1, %if.end12.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i167 = getelementptr %struct.mvpp2_prs_shadow, ptr %460, i32 %tid.017.i.i.i
  %461 = ptrtoint ptr %arrayidx.i.i.i167 to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx.i.i.i167, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %462)
  %tobool.not.i.i.i = icmp eq i8 %462, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %tid.017.i.i.i, 1
  %exitcond.not.i.i168 = icmp eq i32 %inc.i.i.i, 112
  br i1 %exitcond.not.i.i168, label %mvpp2_prs_ip6_cast.exit.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i.i
  %463 = getelementptr inbounds i8, ptr %pe.i.i162, i32 4
  %464 = call ptr @memset(ptr %463, i32 0, i32 36)
  %arrayidx.i1.i.i169 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 1, i32 5
  %465 = ptrtoint ptr %arrayidx.i1.i.i169 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 983048, ptr %arrayidx.i1.i.i169, align 4
  %466 = ptrtoint ptr %pe.i.i162 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %tid.017.i.i.i, ptr %pe.i.i162, align 4
  %arrayidx.i.i.i.i170 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 2, i32 3
  %467 = ptrtoint ptr %arrayidx.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 8192, ptr %arrayidx.i.i.i.i170, align 4
  %arrayidx.i.i4.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 2, i32 0
  br label %for.body.i3.i.i

for.body.i3.i.i:                                  ; preds = %for.inc.i8.i.i.for.body.i3.i.i_crit_edge, %if.end5.i.i
  %i.034.i.i.i = phi i32 [ 0, %if.end5.i.i ], [ %inc.i7.i.i, %for.inc.i8.i.i.for.body.i3.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %i.034.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i2.i.i, label %for.body.i3.i.i.for.inc.i8.i.i_crit_edge, label %if.end.i.i.i

for.body.i3.i.i.for.inc.i8.i.i_crit_edge:         ; preds = %for.body.i3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i8.i.i

if.end.i.i.i:                                     ; preds = %for.body.i3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.034.i.i.i)
  %tobool3.not.i.not.i.i = icmp eq i32 %i.034.i.i.i, 15
  br i1 %tobool3.not.i.not.i.i, label %if.then4.i.i.i, label %if.else.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %468 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx.i.i4.i.i, align 4
  %or.i.i5.i.i = or i32 %469, %shl.i.i.i
  store i32 %or.i.i5.i.i, ptr %arrayidx.i.i4.i.i, align 4
  br label %if.end6.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i.i.i = xor i32 %shl.i.i.i, -1
  %div.i18252633.i.i.i = lshr i32 %i.034.i.i.i, 5
  %div.i1825.zext.i.i.i = and i32 %div.i18252633.i.i.i, 7
  %arrayidx.i19.i.i.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 2, i32 %div.i1825.zext.i.i.i
  %470 = ptrtoint ptr %arrayidx.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx.i19.i.i.i, align 4
  %and.i.i6.i.i = and i32 %471, %neg.i.i.i.i
  store i32 %and.i.i6.i.i, ptr %arrayidx.i19.i.i.i, align 4
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.else.i.i.i, %if.then4.i.i.i
  %div.i2227.lhs.trunc.i.i.i = add nuw nsw i32 %i.034.i.i.i, 32
  %div.i22272832.i.i.i = lshr i32 %div.i2227.lhs.trunc.i.i.i, 5
  %div.i2227.zext.i.i.i = and i32 %div.i22272832.i.i.i, 7
  %arrayidx.i23.i.i.i171 = getelementptr %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 2, i32 %div.i2227.zext.i.i.i
  %472 = ptrtoint ptr %arrayidx.i23.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx.i23.i.i.i171, align 4
  %or.i24.i.i.i = or i32 %473, %shl.i.i.i
  store i32 %or.i24.i.i.i, ptr %arrayidx.i23.i.i.i171, align 4
  br label %for.inc.i8.i.i

for.inc.i8.i.i:                                   ; preds = %if.end6.i.i.i, %for.body.i3.i.i.for.inc.i8.i.i_crit_edge
  %inc.i7.i.i = add nuw nsw i32 %i.034.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i7.i.i, 32
  br i1 %exitcond.not.i.i.i, label %if.end16.i, label %for.inc.i8.i.i.for.body.i3.i.i_crit_edge

for.inc.i8.i.i.for.body.i3.i.i_crit_edge:         ; preds = %for.inc.i8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i3.i.i

mvpp2_prs_ip6_cast.exit.i:                        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i.i162) #7
  br label %mvpp2_prs_ip6_init.exit.thread

if.end16.i:                                       ; preds = %for.inc.i8.i.i
  %arrayidx.i19.i9.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 2, i32 2
  %474 = ptrtoint ptr %arrayidx.i19.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx.i19.i9.i.i, align 4
  %476 = ptrtoint ptr %arrayidx.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx.i.i.i.i170, align 4
  %or.i24.i12.i.i = or i32 %477, 4
  store i32 %or.i24.i12.i.i, ptr %arrayidx.i.i.i.i170, align 4
  %or.i.i16.i.i = and i32 %475, -106955027
  %or.i5.i.i.i = or i32 %or.i.i16.i.i, 69206290
  store i32 %or.i5.i.i.i, ptr %arrayidx.i19.i9.i.i, align 4
  %478 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %463, align 4
  %or17.i.i.i = or i32 %479, 16711935
  store i32 %or17.i.i.i, ptr %463, align 4
  %arrayidx.i21.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i.i162, i32 0, i32 1, i32 4
  %480 = ptrtoint ptr %arrayidx.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx.i21.i.i, align 4
  %and9.i.i.i = and i32 %481, 16646398
  %or14.i.i.i = or i32 %and9.i.i.i, 65536
  store i32 %or14.i.i.i, ptr %arrayidx.i21.i.i, align 4
  %482 = ptrtoint ptr %arrayidx.i.i.i167 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 1, ptr %arrayidx.i.i.i167, align 4
  %483 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i.i172 = getelementptr %struct.mvpp2_prs_shadow, ptr %484, i32 %tid.017.i.i.i, i32 2
  %485 = ptrtoint ptr %lu3.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 8, ptr %lu3.i.i.i172, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i.i162) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i.i162) #7
  %486 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %prs_shadow, align 4
  br label %for.body.i.i176

for.body.i.i176:                                  ; preds = %for.inc.i.i179.for.body.i.i176_crit_edge, %if.end16.i
  %tid.017.i.i173 = phi i32 [ 1, %if.end16.i ], [ %inc.i.i177, %for.inc.i.i179.for.body.i.i176_crit_edge ]
  %arrayidx.i.i174 = getelementptr %struct.mvpp2_prs_shadow, ptr %487, i32 %tid.017.i.i173
  %488 = ptrtoint ptr %arrayidx.i.i174 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx.i.i174, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool.not.i.i175 = icmp eq i8 %489, 0
  br i1 %tobool.not.i.i175, label %if.end43, label %for.inc.i.i179

for.inc.i.i179:                                   ; preds = %for.body.i.i176
  %inc.i.i177 = add nuw nsw i32 %tid.017.i.i173, 1
  %exitcond.not.i178 = icmp eq i32 %inc.i.i177, 112
  br i1 %exitcond.not.i178, label %for.inc.i.i179.mvpp2_prs_ip6_init.exit.thread_crit_edge, label %for.inc.i.i179.for.body.i.i176_crit_edge

for.inc.i.i179.for.body.i.i176_crit_edge:         ; preds = %for.inc.i.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i176

for.inc.i.i179.mvpp2_prs_ip6_init.exit.thread_crit_edge: ; preds = %for.inc.i.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvpp2_prs_ip6_init.exit.thread

mvpp2_prs_ip6_init.exit.thread:                   ; preds = %for.inc.i.i179.mvpp2_prs_ip6_init.exit.thread_crit_edge, %mvpp2_prs_ip6_cast.exit.i, %if.end8.i.mvpp2_prs_ip6_init.exit.thread_crit_edge, %if.end4.i.mvpp2_prs_ip6_init.exit.thread_crit_edge, %if.end.i166.mvpp2_prs_ip6_init.exit.thread_crit_edge, %if.end39.mvpp2_prs_ip6_init.exit.thread_crit_edge
  %retval.0.i187.ph = phi i32 [ -22, %mvpp2_prs_ip6_cast.exit.i ], [ %call9.i, %if.end8.i.mvpp2_prs_ip6_init.exit.thread_crit_edge ], [ %call5.i, %if.end4.i.mvpp2_prs_ip6_init.exit.thread_crit_edge ], [ %call1.i, %if.end.i166.mvpp2_prs_ip6_init.exit.thread_crit_edge ], [ %call.i164, %if.end39.mvpp2_prs_ip6_init.exit.thread_crit_edge ], [ -22, %for.inc.i.i179.mvpp2_prs_ip6_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i163) #7
  br label %cleanup

if.end43:                                         ; preds = %for.body.i.i176
  call void @__sanitizer_cov_trace_pc() #9
  %490 = getelementptr inbounds i8, ptr %pe.i163, i32 4
  %491 = call ptr @memset(ptr %490, i32 0, i32 36)
  %arrayidx.i58.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i163, i32 0, i32 1, i32 5
  %492 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 983048, ptr %arrayidx.i58.i, align 4
  %493 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %tid.017.i.i173, ptr %pe.i163, align 4
  %arrayidx.i.i59.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i163, i32 0, i32 2, i32 3
  %494 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 41984, ptr %arrayidx.i.i59.i, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe.i163, i32 noundef -2147483648, i32 noundef -2147454976) #7
  %495 = ptrtoint ptr %490 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %490, align 4
  %and6.i.i180 = and i32 %496, 16711935
  %or17.i.i181 = or i32 %and6.i.i180, -16777216
  store i32 %or17.i.i181, ptr %490, align 4
  %arrayidx.i64.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i163, i32 0, i32 1, i32 4
  %497 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %arrayidx.i64.i, align 4
  %or14.i.i182 = or i32 %498, 65537
  store i32 %or14.i.i182, ptr %arrayidx.i64.i, align 4
  %499 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %pe.i163, align 4
  %arrayidx.i67.i183 = getelementptr %struct.mvpp2_prs_shadow, ptr %487, i32 %500
  %501 = ptrtoint ptr %arrayidx.i67.i183 to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 1, ptr %arrayidx.i67.i183, align 4
  %502 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %prs_shadow, align 4
  %lu3.i.i184 = getelementptr %struct.mvpp2_prs_shadow, ptr %503, i32 %500, i32 2
  %504 = ptrtoint ptr %lu3.i.i184 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 7, ptr %lu3.i.i184, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i163) #7
  %505 = call ptr @memset(ptr %490, i32 0, i32 36)
  %506 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 983048, ptr %arrayidx.i58.i, align 4
  %507 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 245, ptr %pe.i163, align 4
  %508 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 41984, ptr %arrayidx.i.i59.i, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe.i163, i32 noundef 12582912, i32 noundef 29360128) #7
  %arrayidx.i.i77.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i163, i32 0, i32 2, i32 2
  %509 = ptrtoint ptr %arrayidx.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %arrayidx.i.i77.i, align 4
  %and.i3.i.i = and i32 %510, -60816897
  %and.i12.i.i185 = or i32 %and.i3.i.i, 1067008
  store i32 %and.i12.i.i185, ptr %arrayidx.i.i77.i, align 4
  %511 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i64.i, align 4
  %or14.i84.i = and i32 %512, 16646398
  %and3.i86.i = or i32 %or14.i84.i, 65537
  store i32 %and3.i86.i, ptr %arrayidx.i64.i, align 4
  %513 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %pe.i163, align 4
  %515 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i88.i = getelementptr %struct.mvpp2_prs_shadow, ptr %516, i32 %514
  %517 = ptrtoint ptr %arrayidx.i88.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 1, ptr %arrayidx.i88.i, align 4
  %518 = load ptr, ptr %prs_shadow, align 4
  %lu3.i89.i = getelementptr %struct.mvpp2_prs_shadow, ptr %518, i32 %514, i32 2
  %519 = ptrtoint ptr %lu3.i89.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 7, ptr %lu3.i89.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i163) #7
  %520 = call ptr @memset(ptr %490, i32 0, i32 36)
  %521 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 983048, ptr %arrayidx.i58.i, align 4
  %522 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 226, ptr %pe.i163, align 4
  %523 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 41984, ptr %arrayidx.i.i59.i, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe.i163, i32 noundef 12582912, i32 noundef 29360128) #7
  %524 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %arrayidx.i64.i, align 4
  %or14.i101.i = and i32 %525, 16580861
  %and3.i103.i = or i32 %or14.i101.i, 131074
  store i32 %and3.i103.i, ptr %arrayidx.i64.i, align 4
  %526 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %pe.i163, align 4
  %528 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i105.i = getelementptr %struct.mvpp2_prs_shadow, ptr %529, i32 %527
  %530 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 1, ptr %arrayidx.i105.i, align 4
  %531 = load ptr, ptr %prs_shadow, align 4
  %lu3.i106.i = getelementptr %struct.mvpp2_prs_shadow, ptr %531, i32 %527, i32 2
  %532 = ptrtoint ptr %lu3.i106.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 7, ptr %lu3.i106.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i163) #7
  %533 = call ptr @memset(ptr %490, i32 0, i32 36)
  %534 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 983048, ptr %arrayidx.i58.i, align 4
  %535 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 227, ptr %pe.i163, align 4
  %536 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 8192, ptr %arrayidx.i.i59.i, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe.i163, i32 noundef 0, i32 noundef 98304) #7
  %537 = ptrtoint ptr %arrayidx.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %arrayidx.i.i77.i, align 4
  %539 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx.i.i59.i, align 4
  %or.i24.i.i186 = or i32 %540, 4
  store i32 %or.i24.i.i186, ptr %arrayidx.i.i59.i, align 4
  %or.i.i117.i = and i32 %538, -106955027
  %or.i5.i.i = or i32 %or.i.i117.i, 69206290
  store i32 %or.i5.i.i, ptr %arrayidx.i.i77.i, align 4
  %541 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %arrayidx.i64.i, align 4
  %and9.i121.i = and i32 %542, 16646398
  %or14.i123.i = or i32 %and9.i121.i, 65536
  store i32 %or14.i123.i, ptr %arrayidx.i64.i, align 4
  %543 = ptrtoint ptr %pe.i163 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %pe.i163, align 4
  %545 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %prs_shadow, align 4
  %arrayidx.i127.i = getelementptr %struct.mvpp2_prs_shadow, ptr %546, i32 %544
  %547 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 1, ptr %arrayidx.i127.i, align 4
  %548 = load ptr, ptr %prs_shadow, align 4
  %lu3.i128.i = getelementptr %struct.mvpp2_prs_shadow, ptr %548, i32 %544, i32 2
  %549 = ptrtoint ptr %lu3.i128.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 8, ptr %lu3.i128.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe.i163) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i163) #7
  %call44 = tail call fastcc i32 @mvpp2_prs_ip4_init(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %mvpp2_prs_ip6_init.exit.thread, %mvpp2_prs_pppoe_init.exit.thread, %mvpp2_prs_vlan_init.exit.thread, %mvpp2_prs_etype_init.exit.thread, %for.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end20.cleanup_crit_edge ], [ %call44, %if.end43 ], [ -22, %mvpp2_prs_etype_init.exit.thread ], [ %retval.0.i139.ph, %mvpp2_prs_vlan_init.exit.thread ], [ -22, %mvpp2_prs_pppoe_init.exit.thread ], [ %retval.0.i187.ph, %mvpp2_prs_ip6_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_prs_ip4_init(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %call = tail call fastcc i32 @mvpp2_prs_ip4_proto(ptr noundef %priv, i16 noundef zeroext 6, i32 noundef 4194304, i32 noundef 29360128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @mvpp2_prs_ip4_proto(ptr noundef %priv, i16 noundef zeroext 17, i32 noundef 8388608, i32 noundef 29360128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @mvpp2_prs_ip4_proto(ptr noundef %priv, i16 noundef zeroext 2, i32 noundef 2097168, i32 noundef 3145840)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @mvpp2_prs_ip4_cast(ptr noundef %priv, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @mvpp2_prs_ip4_cast(ptr noundef %priv, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds i8, ptr %pe, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %arrayidx.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 983047, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 246, ptr %pe, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %arrayidx.i.i42 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 395264, ptr %arrayidx.i.i42, align 4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 41988, ptr %arrayidx.i.i, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe, i32 noundef 12582912, i32 noundef 29360128)
  %arrayidx.i45 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i45, align 4
  %or14.i = and i32 %7, 16646398
  %and3.i47 = or i32 %or14.i, 65537
  store i32 %and3.i47, ptr %arrayidx.i45, align 4
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pe, align 4
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %10 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i48 = getelementptr %struct.mvpp2_prs_shadow, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx.i48, align 4
  %13 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %13, i32 %9, i32 2
  %14 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  %15 = getelementptr inbounds i8, ptr %pe, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 32)
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 983047, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 228, ptr %pe, align 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7172, ptr %arrayidx.i.i, align 4
  %20 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 69206284, ptr %arrayidx.i.i42, align 4
  call fastcc void @mvpp2_prs_sram_ri_update(ptr noundef nonnull %pe, i32 noundef 0, i32 noundef 98304)
  %21 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i45, align 4
  %and9.i65 = and i32 %22, 16646398
  %or14.i66 = or i32 %and9.i65, 65536
  store i32 %or14.i66, ptr %arrayidx.i45, align 4
  %23 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pe, align 4
  %25 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i70 = getelementptr %struct.mvpp2_prs_shadow, ptr %26, i32 %24
  %27 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx.i70, align 4
  %28 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i71 = getelementptr %struct.mvpp2_prs_shadow, ptr %28, i32 %24, i32 2
  %29 = ptrtoint ptr %lu3.i71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %lu3.i71, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_mac_da_accept(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %da, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %2 = call ptr @memset(ptr %pe, i32 0, i32 44)
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 8
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %5 = call ptr @memset(ptr %pe.i, i32 255, i32 44)
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %1, i32 0, i32 19
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 4
  %arrayidx.i.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 0
  %arrayidx6.1.i.i = getelementptr i8, ptr %da, i32 1
  %arrayidx.i.2.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 1
  %arrayidx6.2.i.i = getelementptr i8, ptr %da, i32 2
  %arrayidx6.3.i.i = getelementptr i8, ptr %da, i32 3
  %arrayidx.i.4.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 2
  %arrayidx6.4.i.i = getelementptr i8, ptr %da, i32 4
  %arrayidx6.5.i.i = getelementptr i8, ptr %da, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.09.i = phi i32 [ 112, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %7, i32 %tid.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lu.i = getelementptr %struct.mvpp2_prs_shadow, ptr %7, i32 %tid.09.i, i32 2
  %10 = ptrtoint ptr %lu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3.not.i = icmp eq i32 %11, 1
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %udf.i = getelementptr %struct.mvpp2_prs_shadow, ptr %7, i32 %tid.09.i, i32 3
  %12 = ptrtoint ptr %udf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %udf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.not.i = icmp eq i32 %13, 0
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false4.i.for.inc.i_crit_edge

lor.lhs.false4.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %call.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %1, ptr noundef nonnull %pe.i, i32 noundef %tid.09.i) #7
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %neg.i.i = xor i32 %15, -1
  %shr.i.i = lshr i32 %neg.i.i, 24
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr4.i.i.i = lshr i32 %17, 16
  %conv6.i.i.i = trunc i32 %shr4.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv6.i.i.i)
  %cmp2.not.i.i = icmp eq i8 %conv6.i.i.i, -1
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.cond.i.i:                                     ; preds = %if.end.i.i
  %shr4.i.1.i.i = lshr i32 %17, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr4.i.1.i.i)
  %cmp2.not.1.i.i = icmp eq i32 %shr4.i.1.i.i, 255
  br i1 %cmp2.not.1.i.i, label %if.end.1.i.i, label %for.cond.i.i.for.inc.i_crit_edge

for.cond.i.i.for.inc.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.1.i.i:                                     ; preds = %for.cond.i.i
  %shr.i.1.i.i = lshr i32 %17, 8
  %and2325.1.i.i = and i32 %shr4.i.1.i.i, %shr.i.1.i.i
  %and23.1.i.i = trunc i32 %and2325.1.i.i to i8
  %18 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx6.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %and23.1.i.i)
  %cmp11.not.1.i.i = icmp eq i8 %19, %and23.1.i.i
  br i1 %cmp11.not.1.i.i, label %for.cond.1.i.i, label %if.end.1.i.i.for.inc.i_crit_edge

if.end.1.i.i.for.inc.i_crit_edge:                 ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.cond.1.i.i:                                   ; preds = %if.end.1.i.i
  %20 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.2.i.i, align 4
  %shr4.i.2.i.i = lshr i32 %21, 16
  %conv6.i.2.i.i = trunc i32 %shr4.i.2.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv6.i.2.i.i)
  %cmp2.not.2.i.i = icmp eq i8 %conv6.i.2.i.i, -1
  br i1 %cmp2.not.2.i.i, label %if.end.2.i.i, label %for.cond.1.i.i.for.inc.i_crit_edge

for.cond.1.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.2.i.i:                                     ; preds = %for.cond.1.i.i
  %and2325.2.i.i = and i32 %shr4.i.2.i.i, %21
  %and23.2.i.i = trunc i32 %and2325.2.i.i to i8
  %22 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %and23.2.i.i)
  %cmp11.not.2.i.i = icmp eq i8 %23, %and23.2.i.i
  br i1 %cmp11.not.2.i.i, label %for.cond.2.i.i, label %if.end.2.i.i.for.inc.i_crit_edge

if.end.2.i.i.for.inc.i_crit_edge:                 ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.cond.2.i.i:                                   ; preds = %if.end.2.i.i
  %shr4.i.3.i.i = lshr i32 %21, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr4.i.3.i.i)
  %cmp2.not.3.i.i = icmp eq i32 %shr4.i.3.i.i, 255
  br i1 %cmp2.not.3.i.i, label %if.end.3.i.i, label %for.cond.2.i.i.for.inc.i_crit_edge

for.cond.2.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.3.i.i:                                     ; preds = %for.cond.2.i.i
  %shr.i.3.i.i = lshr i32 %21, 8
  %and2325.3.i.i = and i32 %shr4.i.3.i.i, %shr.i.3.i.i
  %and23.3.i.i = trunc i32 %and2325.3.i.i to i8
  %24 = ptrtoint ptr %arrayidx6.3.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %and23.3.i.i)
  %cmp11.not.3.i.i = icmp eq i8 %25, %and23.3.i.i
  br i1 %cmp11.not.3.i.i, label %for.cond.3.i.i, label %if.end.3.i.i.for.inc.i_crit_edge

if.end.3.i.i.for.inc.i_crit_edge:                 ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.cond.3.i.i:                                   ; preds = %if.end.3.i.i
  %26 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.4.i.i, align 4
  %shr4.i.4.i.i = lshr i32 %27, 16
  %conv6.i.4.i.i = trunc i32 %shr4.i.4.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv6.i.4.i.i)
  %cmp2.not.4.i.i = icmp eq i8 %conv6.i.4.i.i, -1
  br i1 %cmp2.not.4.i.i, label %if.end.4.i.i, label %for.cond.3.i.i.for.inc.i_crit_edge

for.cond.3.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.4.i.i:                                     ; preds = %for.cond.3.i.i
  %and2325.4.i.i = and i32 %shr4.i.4.i.i, %27
  %and23.4.i.i = trunc i32 %and2325.4.i.i to i8
  %28 = ptrtoint ptr %arrayidx6.4.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %and23.4.i.i)
  %cmp11.not.4.i.i = icmp eq i8 %29, %and23.4.i.i
  br i1 %cmp11.not.4.i.i, label %for.cond.4.i.i, label %if.end.4.i.i.for.inc.i_crit_edge

if.end.4.i.i.for.inc.i_crit_edge:                 ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.cond.4.i.i:                                   ; preds = %if.end.4.i.i
  %shr4.i.5.i.i = lshr i32 %27, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr4.i.5.i.i)
  %cmp2.not.5.i.i = icmp eq i32 %shr4.i.5.i.i, 255
  br i1 %cmp2.not.5.i.i, label %mvpp2_prs_mac_range_equals.exit.i, label %for.cond.4.i.i.for.inc.i_crit_edge

for.cond.4.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i
  %and2325.i.i = and i32 %shr4.i.i.i, %17
  %and23.i.i = trunc i32 %and2325.i.i to i8
  %30 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %da, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %and23.i.i)
  %cmp11.not.i.i = icmp eq i8 %31, %and23.i.i
  br i1 %cmp11.not.i.i, label %for.cond.i.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

mvpp2_prs_mac_range_equals.exit.i:                ; preds = %for.cond.4.i.i
  %shr.i.5.i.i = lshr i32 %27, 8
  %and2325.5.i.i = and i32 %shr4.i.5.i.i, %shr.i.5.i.i
  %and23.5.i.i = trunc i32 %and2325.5.i.i to i8
  %32 = ptrtoint ptr %arrayidx6.5.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6.5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %and23.5.i.i)
  %cmp11.not.5.i.i = icmp eq i8 %33, %and23.5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %shl)
  %cmp10.i = icmp eq i32 %shr.i.i, %shl
  %or.cond.i = select i1 %cmp11.not.5.i.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.else, label %mvpp2_prs_mac_range_equals.exit.i.for.inc.i_crit_edge

mvpp2_prs_mac_range_equals.exit.i.for.inc.i_crit_edge: ; preds = %mvpp2_prs_mac_range_equals.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %mvpp2_prs_mac_range_equals.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %for.cond.4.i.i.for.inc.i_crit_edge, %if.end.4.i.i.for.inc.i_crit_edge, %for.cond.3.i.i.for.inc.i_crit_edge, %if.end.3.i.i.for.inc.i_crit_edge, %for.cond.2.i.i.for.inc.i_crit_edge, %if.end.2.i.i.for.inc.i_crit_edge, %for.cond.1.i.i.for.inc.i_crit_edge, %if.end.1.i.i.for.inc.i_crit_edge, %for.cond.i.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false4.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tid.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 192
  br i1 %exitcond.not.i, label %if.then, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then:                                          ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  br i1 %add, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %34 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.inc.i79.for.body.i77_crit_edge, %if.end
  %tid.017.i = phi i32 [ 112, %if.end ], [ %inc.i78, %for.inc.i79.for.body.i77_crit_edge ]
  %arrayidx.i75 = getelementptr %struct.mvpp2_prs_shadow, ptr %35, i32 %tid.017.i
  %36 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i75, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i76 = icmp eq i8 %37, 0
  br i1 %tobool.not.i76, label %if.end8, label %for.inc.i79

for.inc.i79:                                      ; preds = %for.body.i77
  %inc.i78 = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i78, 192
  br i1 %exitcond.not, label %for.inc.i79.cleanup_crit_edge, label %for.inc.i79.for.body.i77_crit_edge

for.inc.i79.for.body.i77_crit_edge:               ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i77

for.inc.i79.cleanup_crit_edge:                    ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %tid.017.i, ptr %pe, align 4
  %arrayidx.i80 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i80, align 4
  %and3.i = and i32 %40, 16711935
  %or.i = or i32 %and3.i, -16777216
  store i32 %or.i, ptr %arrayidx.i80, align 4
  br label %if.end10

if.else:                                          ; preds = %mvpp2_prs_mac_range_equals.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  %call9 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %1, ptr noundef nonnull %pe, i32 noundef %tid.09.i)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end8
  %arrayidx.i81 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i81, align 4
  %and3.i82 = and i32 %42, -983056
  %or9.i = or i32 %and3.i82, 983041
  store i32 %or9.i, ptr %arrayidx.i81, align 4
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %port, align 8
  %conv12 = zext i8 %44 to i32
  %shl2.i = shl i32 16777216, %conv12
  br i1 %add, label %mvpp2_prs_tcam_port_set.exit, label %mvpp2_prs_tcam_port_set.exit.thread

mvpp2_prs_tcam_port_set.exit:                     ; preds = %if.end10
  %neg.i = xor i32 %shl2.i, -1
  %arrayidx.i84 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i84, align 4
  %and.i = and i32 %46, %neg.i
  store i32 %and.i, ptr %arrayidx.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %and.i)
  %cmp15 = icmp ugt i32 %and.i, -16777217
  br i1 %cmp15, label %mvpp2_prs_tcam_port_set.exit.cleanup_crit_edge, label %mvpp2_prs_tcam_port_set.exit.if.end23_crit_edge

mvpp2_prs_tcam_port_set.exit.if.end23_crit_edge:  ; preds = %mvpp2_prs_tcam_port_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

mvpp2_prs_tcam_port_set.exit.cleanup_crit_edge:   ; preds = %mvpp2_prs_tcam_port_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mvpp2_prs_tcam_port_set.exit.thread:              ; preds = %if.end10
  %arrayidx7.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx7.i, align 4
  %or.i85 = or i32 %48, %shl2.i
  store i32 %or.i85, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %or.i85)
  %cmp15123 = icmp ugt i32 %or.i85, -16777217
  br i1 %cmp15123, label %if.end20, label %mvpp2_prs_tcam_port_set.exit.thread.if.end23_crit_edge

mvpp2_prs_tcam_port_set.exit.thread.if.end23_crit_edge: ; preds = %mvpp2_prs_tcam_port_set.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end20:                                         ; preds = %mvpp2_prs_tcam_port_set.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pe, align 4
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 4352, i32 noundef %50) #7
  tail call void @mvpp2_write(ptr noundef %1, i32 noundef 4376, i32 noundef -2147483648) #7
  %51 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %52, i32 %50
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx, align 4
  br label %cleanup

if.end23:                                         ; preds = %mvpp2_prs_tcam_port_set.exit.thread.if.end23_crit_edge, %mvpp2_prs_tcam_port_set.exit.if.end23_crit_edge
  %arrayidx.i.i89 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx.i.i89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i89, align 4
  %and.i.i = and i32 %55, -15361
  %or.i.i = or i32 %and.i.i, 2048
  store i32 %or.i.i, ptr %arrayidx.i.i89, align 4
  %56 = ptrtoint ptr %arrayidx6.5.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx6.5.i.i, align 1
  %arrayidx.i90 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 2
  %conv.i = zext i8 %57 to i32
  %shl13.i124 = shl nuw nsw i32 %conv.i, 8
  %58 = ptrtoint ptr %arrayidx6.4.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx6.4.i.i, align 1
  %conv.i.1 = zext i8 %59 to i32
  %or17.i = or i32 %shl13.i124, %conv.i.1
  %or17.i.1 = or i32 %or17.i, -65536
  %60 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or17.i.1, ptr %arrayidx.i90, align 4
  %61 = ptrtoint ptr %arrayidx6.3.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx6.3.i.i, align 1
  %arrayidx.i90.2 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %conv.i.2 = zext i8 %62 to i32
  %shl13.i124.2 = shl nuw nsw i32 %conv.i.2, 8
  %63 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx6.2.i.i, align 1
  %conv.i.3 = zext i8 %64 to i32
  %or17.i.2 = or i32 %shl13.i124.2, %conv.i.3
  %or17.i.3 = or i32 %or17.i.2, -65536
  %65 = ptrtoint ptr %arrayidx.i90.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or17.i.3, ptr %arrayidx.i90.2, align 4
  %66 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx6.1.i.i, align 1
  %arrayidx.i90.4 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %conv.i.4 = zext i8 %67 to i32
  %shl13.i124.4 = shl nuw nsw i32 %conv.i.4, 8
  %68 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %da, align 1
  %conv.i.5 = zext i8 %69 to i32
  %or17.i.4 = or i32 %shl13.i124.4, %conv.i.5
  %or17.i.5 = or i32 %or17.i.4, -65536
  %70 = ptrtoint ptr %arrayidx.i90.4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or17.i.5, ptr %arrayidx.i90.4, align 4
  %71 = load i16, ptr %da, align 2
  %72 = load i16, ptr %arrayidx6.2.i.i, align 2
  %and9.i = and i16 %72, %71
  %73 = load i16, ptr %arrayidx6.4.i.i, align 2
  %and510.i = and i16 %and9.i, %73
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end23.if.end36_crit_edge, label %if.else28

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else28:                                        ; preds = %if.end23
  %74 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %da, align 4
  %76 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.not = icmp eq i32 %76, 0
  br i1 %tobool.i.not, label %if.else31, label %if.else28.if.end36_crit_edge

if.else28.if.end36_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 11
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 86
  %79 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_addr, align 64
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %xor.i = xor i32 %82, %75
  %add.ptr1.i92 = getelementptr i8, ptr %80, i32 4
  %83 = ptrtoint ptr %add.ptr1.i92 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr1.i92, align 2
  %xor37.i = xor i16 %84, %73
  %xor3.i = zext i16 %xor37.i to i32
  %or.i93 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i93)
  %cmp.i94 = icmp eq i32 %or.i93, 0
  %spec.select = zext i1 %cmp.i94 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.else28.if.end36_crit_edge, %if.end23.if.end36_crit_edge
  %ri.0 = phi i32 [ 1024, %if.end23.if.end36_crit_edge ], [ 512, %if.else28.if.end36_crit_edge ], [ %spec.select, %if.else31 ]
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i106.for.body.i97_crit_edge, %if.end36
  %i.034.i = phi i32 [ 0, %if.end36 ], [ %inc.i104, %for.inc.i106.for.body.i97_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i95 = and i32 %shl.i, 1537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %for.body.i97.for.inc.i106_crit_edge, label %if.end.i98

for.body.i97.for.inc.i106_crit_edge:              ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i106

if.end.i98:                                       ; preds = %for.body.i97
  %and2.i = and i32 %shl.i, %ri.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i103, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i = lshr i32 %i.034.i, 5
  %div.i29.zext.i = and i32 %div.i293031.i, 7
  %arrayidx.i.i99 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i
  %85 = ptrtoint ptr %arrayidx.i.i99 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i99, align 4
  %or.i.i100 = or i32 %86, %shl.i
  store i32 %or.i.i100, ptr %arrayidx.i.i99, align 4
  br label %if.end6.i

if.else.i103:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i101 = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %87 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i102 = and i32 %88, %neg.i.i101
  store i32 %and.i.i102, ptr %arrayidx.i19.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i103, %if.then4.i
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %89 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i23.i, align 4
  %or.i24.i = or i32 %90, %shl.i
  store i32 %or.i24.i, ptr %arrayidx.i23.i, align 4
  br label %for.inc.i106

for.inc.i106:                                     ; preds = %if.end6.i, %for.body.i97.for.inc.i106_crit_edge
  %inc.i104 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i105 = icmp eq i32 %inc.i104, 32
  br i1 %exitcond.not.i105, label %mvpp2_prs_sram_ri_update.exit, label %for.inc.i106.for.body.i97_crit_edge

for.inc.i106.for.body.i97_crit_edge:              ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i97

mvpp2_prs_sram_ri_update.exit:                    ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pe, align 4
  %93 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prs_shadow.i, align 4
  %ri_mask1.i = getelementptr %struct.mvpp2_prs_shadow, ptr %94, i32 %92, i32 5
  %95 = ptrtoint ptr %ri_mask1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1537, ptr %ri_mask1.i, align 4
  %96 = load ptr, ptr %prs_shadow.i, align 4
  %ri4.i = getelementptr %struct.mvpp2_prs_shadow, ptr %96, i32 %92, i32 4
  %97 = ptrtoint ptr %ri4.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %ri.0, ptr %ri4.i, align 4
  %arrayidx.i.i108 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i.i108, align 4
  %.masked.i = and i32 %99, -39846157
  %or.i5.i = or i32 %.masked.i, 2097164
  store i32 %or.i5.i, ptr %arrayidx.i.i108, align 4
  %100 = load ptr, ptr %prs_shadow.i, align 4
  %101 = load i32, ptr %pe, align 4
  %udf = getelementptr %struct.mvpp2_prs_shadow, ptr %100, i32 %101, i32 3
  %102 = ptrtoint ptr %udf to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %udf, align 4
  %103 = load i32, ptr %pe, align 4
  %104 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i115 = getelementptr %struct.mvpp2_prs_shadow, ptr %104, i32 %103
  %105 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %arrayidx.i115, align 4
  %106 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %106, i32 %103, i32 2
  %107 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %1, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %mvpp2_prs_sram_ri_update.exit, %if.end20, %mvpp2_prs_tcam_port_set.exit.cleanup_crit_edge, %for.inc.i79.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %mvpp2_prs_sram_ri_update.exit ], [ 0, %if.then.cleanup_crit_edge ], [ -22, %mvpp2_prs_tcam_port_set.exit.cleanup_crit_edge ], [ -22, %for.inc.i79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_update_mac_da(ptr noundef %dev, ptr noundef %da) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %call1 = tail call i32 @mvpp2_prs_mac_da_accept(ptr noundef %add.ptr.i, ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mvpp2_prs_mac_da_accept(ptr noundef %add.ptr.i, ptr noundef %da, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %da, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp2_prs_mac_del_all(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  %pmap = alloca i32, align 4
  %da = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %2 = call ptr @memset(ptr %pe, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmap)
  %3 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pmap, align 4
  %4 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %da, i32 0, i32 5
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %1, i32 0, i32 19
  %arrayidx.i49 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %dev = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 11
  %arrayidx.i51 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %arrayidx.i51.2 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %arrayidx.i51.4 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %tid.056 = phi i32 [ 112, %entry ], [ %inc32, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %da) #7
  %9 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %10, i32 %tid.056
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %lu = getelementptr %struct.mvpp2_prs_shadow, ptr %10, i32 %tid.056, i32 2
  %13 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp4.not = icmp eq i32 %14, 1
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %udf = getelementptr %struct.mvpp2_prs_shadow, ptr %10, i32 %tid.056, i32 3
  %15 = ptrtoint ptr %udf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %udf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp8.not = icmp eq i32 %16, 0
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %1, ptr noundef nonnull %pe, i32 noundef %tid.056)
  %17 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i49, align 4
  %neg.i = xor i32 %18, -1
  %shr.i50 = lshr i32 %neg.i, 24
  %19 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i50, ptr %pmap, align 4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port, align 8
  %pmap.0. = load volatile i32, ptr %pmap, align 4
  %22 = and i8 %21, 31
  %and.i = zext i8 %22 to i32
  %23 = shl nuw i32 1, %and.i
  %24 = and i32 %23, %pmap.0.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool11.not = icmp eq i32 %24, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %for.body17.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body17.preheader:                             ; preds = %if.end
  %25 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i51, align 4
  %conv.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %da to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %da, align 4
  %shr.i52.1 = lshr i32 %26, 8
  %conv.i.1 = trunc i32 %shr.i52.1 to i8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i.1, ptr %4, align 1
  %29 = ptrtoint ptr %arrayidx.i51.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i51.2, align 4
  %conv.i.2 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i.2, ptr %5, align 2
  %shr.i52.3 = lshr i32 %30, 8
  %conv.i.3 = trunc i32 %shr.i52.3 to i8
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.3, ptr %6, align 1
  %33 = ptrtoint ptr %arrayidx.i51.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i51.4, align 4
  %conv.i.4 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i.4, ptr %7, align 4
  %shr.i52.5 = lshr i32 %34, 8
  %conv.i.5 = trunc i32 %shr.i52.5 to i8
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i.5, ptr %8, align 1
  %37 = load i16, ptr %da, align 4
  %38 = load i16, ptr %5, align 2
  %and9.i = and i16 %38, %37
  %39 = load i16, ptr %7, align 4
  %and510.i = and i16 %and9.i, %39
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %for.body17.preheader.cleanup_crit_edge, label %lor.lhs.false22

for.body17.preheader.cleanup_crit_edge:           ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22:                                  ; preds = %for.body17.preheader
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 86
  %42 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_addr, align 64
  %44 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %da, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %xor.i = xor i32 %47, %45
  %add.ptr1.i53 = getelementptr i8, ptr %43, i32 4
  %48 = ptrtoint ptr %add.ptr1.i53 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr1.i53, align 2
  %xor37.i = xor i16 %49, %39
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i54 = icmp eq i32 %or.i, 0
  br i1 %cmp.i54, label %lor.lhs.false22.cleanup_crit_edge, label %if.end27

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 @mvpp2_prs_mac_da_accept(ptr noundef %port, ptr noundef nonnull %da, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false22.cleanup_crit_edge, %for.body17.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %da) #7
  %inc32 = add nuw nsw i32 %tid.056, 1
  %exitcond.not = icmp eq i32 %inc32, 192
  br i1 %exitcond.not, label %for.end33, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end33:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmap)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_tag_mode_set(ptr noundef %priv, i32 noundef %port, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %entry.sw.bb2_crit_edge
    i32 0, label %entry.sw.bb2_crit_edge29
  ]

entry.sw.bb2_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge29
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %.sink28 = phi i1 [ false, %sw.bb ], [ true, %sw.bb1 ], [ true, %sw.bb2 ]
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %.sink28)
  tail call fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %.sink28)
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp2_prs_dsa_tag_set(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext %add, i1 noundef zeroext %tagged, i1 noundef zeroext %extend) unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 255, i32 44)
  %cond = select i1 %tagged, i32 235, i32 236
  %cond5 = select i1 %tagged, i32 237, i32 238
  %tid.0 = select i1 %extend, i32 %cond, i32 %cond5
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %2, i32 %tid.0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %tid.0)
  br label %if.end18

if.else8:                                         ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %pe, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %arrayidx.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 983042, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tid.0, ptr %pe, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prs_shadow, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %11, i32 %tid.0, i32 2
  %12 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %lu3.i, align 4
  br i1 %tagged, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else8
  %arrayidx.i30 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %13 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i30, align 4
  %and6.i = and i32 %14, -16711936
  %or17.i = or i32 %and6.i, 2097184
  store i32 %or17.i, ptr %arrayidx.i30, align 4
  %arrayidx.i19.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i19.i, align 4
  %arrayidx.i23.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i23.i, align 4
  %and.i.sink.i = and i32 %16, 67108863
  %and.i.5.i = or i32 %and.i.sink.i, 67108864
  %and.i.5.i.sink = select i1 %extend, i32 %and.i.5.i, i32 %and.i.sink.i
  store i32 %and.i.5.i.sink, ptr %arrayidx.i19.i, align 4
  %or.i24.5.i = and i32 %18, -1024
  %or.i24.7.i = or i32 %or.i24.5.i, 1020
  store i32 %or.i24.7.i, ptr %arrayidx.i23.i, align 4
  %arrayidx.i.i.peel152 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx.i.i.peel152 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.peel152, align 4
  %or.i.i.peel153 = or i32 %20, 4
  store i32 %or.i.i.peel153, ptr %arrayidx.i.i.peel152, align 4
  %arrayidx.i23.i65.peel158 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx.i23.i65.peel158 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i23.i65.peel158, align 4
  %or.i24.i66.peel159 = or i32 %22, 4
  store i32 %or.i24.i66.peel159, ptr %arrayidx.i23.i65.peel158, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11
  %i.034.i = phi i32 [ 3, %if.then11 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i = and i32 %shl.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i63 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %23 = ptrtoint ptr %arrayidx.i19.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i19.i63, align 4
  %and.i.i64 = and i32 %24, %neg.i.i
  store i32 %and.i.i64, ptr %arrayidx.i19.i63, align 4
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i65 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %25 = ptrtoint ptr %arrayidx.i23.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i23.i65, align 4
  %or.i24.i66 = or i32 %26, %shl.i
  store i32 %or.i24.i66, ptr %arrayidx.i23.i65, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.if.end17_crit_edge, label %for.inc.i.for.body.i_crit_edge, !llvm.loop !10

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else16:                                        ; preds = %if.else8
  %arrayidx.i.i70 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i70, align 4
  %.masked.i = and i32 %28, -39846145
  %and.i3.i = select i1 %extend, i32 2097160, i32 2097156
  %or.i5.i = or i32 %and.i3.i, %.masked.i
  store i32 %or.i5.i, ptr %arrayidx.i.i70, align 4
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.inc.i96.for.body.i80_crit_edge, %if.else16
  %i.034.i76 = phi i32 [ 0, %if.else16 ], [ %inc.i94, %for.inc.i96.for.body.i80_crit_edge ]
  %shl.i77 = shl nuw i32 1, %i.034.i76
  %and.i78 = and i32 %shl.i77, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %for.body.i80.for.inc.i96_crit_edge, label %if.end.i81

for.body.i80.for.inc.i96_crit_edge:               ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i96

if.end.i81:                                       ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i82 = xor i32 %shl.i77, -1
  %div.i18252633.i83 = lshr i32 %i.034.i76, 5
  %div.i1825.zext.i84 = and i32 %div.i18252633.i83, 7
  %arrayidx.i19.i85 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i84
  %29 = ptrtoint ptr %arrayidx.i19.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i19.i85, align 4
  %and.i.i86 = and i32 %30, %neg.i.i82
  store i32 %and.i.i86, ptr %arrayidx.i19.i85, align 4
  %div.i2227.lhs.trunc.i88 = add nuw nsw i32 %i.034.i76, 32
  %div.i22272832.i89 = lshr i32 %div.i2227.lhs.trunc.i88, 5
  %div.i2227.zext.i90 = and i32 %div.i22272832.i89, 7
  %arrayidx.i23.i91 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i90
  %31 = ptrtoint ptr %arrayidx.i23.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i23.i91, align 4
  %or.i24.i92 = or i32 %32, %shl.i77
  store i32 %or.i24.i92, ptr %arrayidx.i23.i91, align 4
  br label %for.inc.i96

for.inc.i96:                                      ; preds = %if.end.i81, %for.body.i80.for.inc.i96_crit_edge
  %inc.i94 = add nuw nsw i32 %i.034.i76, 1
  %exitcond.not.i95 = icmp eq i32 %inc.i94, 32
  br i1 %exitcond.not.i95, label %for.inc.i96.if.end17_crit_edge, label %for.inc.i96.for.body.i80_crit_edge

for.inc.i96.for.body.i80_crit_edge:               ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i80

for.inc.i96.if.end17_crit_edge:                   ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %for.inc.i96.if.end17_crit_edge, %for.inc.i.if.end17_crit_edge
  %.sink164 = phi i32 [ 4096, %for.inc.i.if.end17_crit_edge ], [ 5120, %for.inc.i96.if.end17_crit_edge ]
  %arrayidx.i.i98 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i98, align 4
  %and.i.i99 = and i32 %34, -15361
  %or.i.i100 = or i32 %and.i.i99, %.sink164
  store i32 %or.i.i100, ptr %arrayidx.i.i98, align 4
  %arrayidx.i101 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i101, align 4
  %and3.i102 = and i32 %36, 16711935
  %or.i103 = or i32 %and3.i102, -16777216
  store i32 %or.i103, ptr %arrayidx.i101, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then7
  %shl2.i = shl i32 16777216, %port
  br i1 %add, label %if.then.i, label %if.else.i107

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i32 %shl2.i, -1
  %arrayidx.i104 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i104, align 4
  %and.i105 = and i32 %38, %neg.i
  store i32 %and.i105, ptr %arrayidx.i104, align 4
  br label %mvpp2_prs_tcam_port_set.exit

if.else.i107:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7.i, align 4
  %or.i106 = or i32 %40, %shl2.i
  store i32 %or.i106, ptr %arrayidx7.i, align 4
  br label %mvpp2_prs_tcam_port_set.exit

mvpp2_prs_tcam_port_set.exit:                     ; preds = %if.else.i107, %if.then.i
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_add_flow(ptr noundef %priv, i32 noundef %flow, i32 noundef %ri, i32 noundef %ri_mask) local_unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ri.addr.sroa.0.0.extract.shift = lshr i32 %ri, 24
  %ri.addr.sroa.3.0.extract.shift = lshr i32 %ri, 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = getelementptr inbounds i8, ptr %pe, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.017.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %3, i32 %tid.017.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %tid.017.i, ptr %pe, align 4
  %arrayidx.i19.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i = and i32 %8, 67108863
  %and2.i = shl i32 %flow, 26
  %9 = and i32 %and2.i, 67108864
  %and.i.sink.i = or i32 %and.i.i, %9
  %arrayidx.i23.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i23.i, align 4
  %12 = and i32 %and2.i, 134217728
  %and.i.1.sink.i = or i32 %and.i.sink.i, %12
  %13 = and i32 %and2.i, 268435456
  %and.i.2.sink.i = or i32 %and.i.1.sink.i, %13
  %14 = and i32 %and2.i, 536870912
  %and.i.3.sink.i = or i32 %and.i.2.sink.i, %14
  %15 = and i32 %and2.i, 1073741824
  %and.i.5.i = or i32 %and.i.3.sink.i, %15
  %16 = and i32 %and2.i, -2147483648
  %and.i.5.sink.i = or i32 %and.i.5.i, %16
  store i32 %and.i.5.sink.i, ptr %arrayidx.i19.i, align 4
  %or.i = or i32 %11, 16636
  store i32 %or.i, ptr %arrayidx.i23.i, align 4
  %arrayidx.i19 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %17 = lshr i32 %ri_mask, 8
  %shl13.i = and i32 %17, 16711680
  %and6.i.1 = or i32 %ri.addr.sroa.0.0.extract.shift, %shl13.i
  %18 = lshr i32 %ri, 8
  %shl7.i.1 = and i32 %18, 65280
  %19 = shl i32 %ri_mask, 8
  %shl13.i.1 = and i32 %19, -16777216
  %or.i20.1 = or i32 %and6.i.1, %shl7.i.1
  %or17.i.1 = or i32 %or.i20.1, %shl13.i.1
  %20 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or17.i.1, ptr %arrayidx.i19, align 4
  %arrayidx.i19.2 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %conv.i.2 = and i32 %ri.addr.sroa.3.0.extract.shift, 255
  %21 = shl i32 %ri_mask, 8
  %shl13.i.2 = and i32 %21, 16711680
  %and6.i.3 = or i32 %conv.i.2, %shl13.i.2
  %conv.i.3 = shl i32 %ri, 8
  %shl7.i.3 = and i32 %conv.i.3, 65280
  %conv11.i.3 = shl i32 %ri_mask, 24
  %or.i20.3 = or i32 %and6.i.3, %shl7.i.3
  %or17.i.3 = or i32 %or.i20.3, %conv11.i.3
  %22 = ptrtoint ptr %arrayidx.i19.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or17.i.3, ptr %arrayidx.i19.2, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %25, i32 %tid.017.i, i32 2
  %26 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 9, ptr %lu3.i, align 4
  %arrayidx.i23 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i23, align 4
  %and3.i = and i32 %28, -983056
  %or9.i = or i32 %and3.i, 983049
  store i32 %or9.i, ptr %arrayidx.i23, align 4
  %arrayidx.i25 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i25, align 4
  %and3.i26 = and i32 %30, 16711935
  store i32 %and3.i26, ptr %arrayidx.i25, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_def_flow(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 0, i32 44)
  %priv = getelementptr inbounds %struct.mvpp2_port, ptr %port, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 8
  %conv = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %5 = call ptr @memset(ptr %pe.i, i32 255, i32 44)
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %2, i32 0, i32 19
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 2, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.022.i = phi i32 [ 255, %entry ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %7, i32 %tid.022.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lu.i = getelementptr %struct.mvpp2_prs_shadow, ptr %7, i32 %tid.022.i, i32 2
  %10 = ptrtoint ptr %lu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp3.not.i = icmp eq i32 %11, 9
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %2, ptr noundef nonnull %pe.i, i32 noundef %tid.022.i) #7
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = lshr i32 %13, 26
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv)
  %cmp6.i = icmp eq i32 %or.i.i, %conv
  br i1 %cmp6.i, label %mvpp2_prs_flow_find.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %tid.022.i, -1
  %cmp.not.i = icmp eq i32 %tid.022.i, 0
  br i1 %cmp.not.i, label %mvpp2_prs_flow_find.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mvpp2_prs_flow_find.exit.thread:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  br label %if.then

mvpp2_prs_flow_find.exit:                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tid.022.i)
  %cmp = icmp slt i32 %tid.022.i, 0
  br i1 %cmp, label %mvpp2_prs_flow_find.exit.if.then_crit_edge, label %if.else

mvpp2_prs_flow_find.exit.if.then_crit_edge:       ; preds = %mvpp2_prs_flow_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %mvpp2_prs_flow_find.exit.if.then_crit_edge, %mvpp2_prs_flow_find.exit.thread
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %prs_shadow.i30 = getelementptr inbounds %struct.mvpp2, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %prs_shadow.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prs_shadow.i30, align 4
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.inc.i34.for.body.i33_crit_edge, %if.then
  %tid.017.i = phi i32 [ 1, %if.then ], [ %inc.i, %for.inc.i34.for.body.i33_crit_edge ]
  %arrayidx.i31 = getelementptr %struct.mvpp2_prs_shadow, ptr %17, i32 %tid.017.i
  %18 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i31, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i32 = icmp eq i8 %19, 0
  br i1 %tobool.not.i32, label %if.end, label %for.inc.i34

for.inc.i34:                                      ; preds = %for.body.i33
  %inc.i = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not, label %for.inc.i34.cleanup_crit_edge, label %for.inc.i34.for.body.i33_crit_edge

for.inc.i34.for.body.i33_crit_edge:               ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33

for.inc.i34.cleanup_crit_edge:                    ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tid.017.i, ptr %pe, align 4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port, align 8
  %conv8 = zext i8 %22 to i32
  %arrayidx.i19.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i = and i32 %24, 67108863
  %and2.i = shl i32 %conv8, 26
  %25 = and i32 %and2.i, 67108864
  %and.i.sink.i = or i32 %25, %and.i.i
  %arrayidx.i23.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i23.i, align 4
  %28 = and i32 %and2.i, 134217728
  %and.i.1.sink.i = or i32 %and.i.sink.i, %28
  %29 = and i32 %and2.i, 268435456
  %and.i.2.sink.i = or i32 %and.i.1.sink.i, %29
  %30 = and i32 %and2.i, 536870912
  %and.i.3.sink.i = or i32 %and.i.2.sink.i, %30
  %31 = and i32 %and2.i, 1073741824
  %and.i.5.i = or i32 %and.i.3.sink.i, %31
  %32 = and i32 %and2.i, -2147483648
  %and.i.5.sink.i = or i32 %and.i.5.i, %32
  store i32 %and.i.5.sink.i, ptr %arrayidx.i19.i, align 4
  %or.i = or i32 %27, 16636
  store i32 %or.i, ptr %arrayidx.i23.i, align 4
  %33 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx.i31, align 4
  %34 = ptrtoint ptr %prs_shadow.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prs_shadow.i30, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %35, i32 %tid.017.i, i32 2
  %36 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9, ptr %lu3.i, align 4
  br label %if.end13

if.else:                                          ; preds = %mvpp2_prs_flow_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  %call12 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %38, ptr noundef nonnull %pe, i32 noundef %tid.022.i)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end
  %arrayidx.i40 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i40, align 4
  %and3.i = and i32 %40, -983056
  %or9.i = or i32 %and3.i, 983049
  store i32 %or9.i, ptr %arrayidx.i40, align 4
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port, align 8
  %conv15 = zext i8 %42 to i32
  %shl = shl nuw i32 1, %conv15
  %arrayidx.i42 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i42, align 4
  %and3.i43 = and i32 %44, 16711935
  %45 = xor i32 %shl, -1
  %shl.i = shl i32 %45, 24
  %or.i44 = or i32 %shl.i, %and3.i43
  store i32 %or.i44, ptr %arrayidx.i42, align 4
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %47, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.inc.i34.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %for.inc.i34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp2_prs_hits(ptr noundef %priv, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %index)
  %cmp = icmp sgt i32 %index, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mvpp2_write(ptr noundef %priv, i32 noundef 4672, i32 noundef %index) #7
  %call = tail call i32 @mvpp2_read(ptr noundef %priv, i32 noundef 4676) #7
  %and = and i32 %call, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvpp2_prs_dsa_tag_ethertype_set(ptr noundef %priv, i1 noundef zeroext %add, i1 noundef zeroext %tagged, i1 noundef zeroext %extend) unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 255, i32 44)
  %cond = select i1 %tagged, i32 239, i32 240
  %cond5 = select i1 %tagged, i32 241, i32 242
  %tid.0 = select i1 %extend, i32 %cond, i32 %cond5
  %prs_shadow = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prs_shadow, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %2, i32 %tid.0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %for.body.i.peel.next59, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %tid.0)
  br label %if.end15

for.body.i.peel.next59:                           ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %pe, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %arrayidx.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 983042, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tid.0, ptr %pe, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -9510, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i1 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -65536, ptr %arrayidx.i.i1, align 4
  %arrayidx.i.i7.peel66 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx.i.i7.peel66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i7.peel66, align 4
  %or.i.i.peel67 = or i32 %12, 2
  store i32 %or.i.i.peel67, ptr %arrayidx.i.i7.peel66, align 4
  %arrayidx.i23.i.peel71 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx.i23.i.peel71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i23.i.peel71, align 4
  %or.i24.i.peel72 = or i32 %14, 2
  store i32 %or.i24.i.peel72, ptr %arrayidx.i23.i.peel71, align 4
  %arrayidx.i.i8 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i8, align 4
  %.masked.i = and i32 %16, -39846145
  %and.i3.i = select i1 %extend, i32 2097164, i32 2097160
  %or.i5.i = or i32 %and.i3.i, %.masked.i
  store i32 %or.i5.i, ptr %arrayidx.i.i8, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %prs_shadow to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prs_shadow, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %19, i32 %tid.0, i32 2
  %20 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %lu3.i, align 4
  br i1 %tagged, label %if.then12, label %for.body.i.peel.next59.for.body.i29_crit_edge

for.body.i.peel.next59.for.body.i29_crit_edge:    ; preds = %for.body.i.peel.next59
  br label %for.body.i29

if.then12:                                        ; preds = %for.body.i.peel.next59
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i15 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i15, align 4
  %and6.i = and i32 %22, 16711935
  %or17.i = or i32 %and6.i, 536879104
  store i32 %or17.i, ptr %arrayidx.i15, align 4
  %23 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i8, align 4
  %arrayidx.i23.i18 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx.i23.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i23.i18, align 4
  %and.i.5.i = and i32 %24, 67108863
  store i32 %and.i.5.i, ptr %arrayidx.i.i8, align 4
  %or.i24.5.i = and i32 %26, -16384
  %or.i.i24 = or i32 %or.i24.5.i, 4092
  store i32 %or.i.i24, ptr %arrayidx.i23.i18, align 4
  br label %if.end14

for.body.i29:                                     ; preds = %for.inc.i45.for.body.i29_crit_edge, %for.body.i.peel.next59.for.body.i29_crit_edge
  %i.034.i25 = phi i32 [ %inc.i43, %for.inc.i45.for.body.i29_crit_edge ], [ 0, %for.body.i.peel.next59.for.body.i29_crit_edge ]
  %shl.i26 = shl nuw i32 1, %i.034.i25
  %and.i27 = and i32 %shl.i26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %for.body.i29.for.inc.i45_crit_edge, label %if.end.i30

for.body.i29.for.inc.i45_crit_edge:               ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i45

if.end.i30:                                       ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i31 = xor i32 %shl.i26, -1
  %div.i18252633.i32 = lshr i32 %i.034.i25, 5
  %div.i1825.zext.i33 = and i32 %div.i18252633.i32, 7
  %arrayidx.i19.i34 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i33
  %27 = ptrtoint ptr %arrayidx.i19.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i19.i34, align 4
  %and.i.i35 = and i32 %28, %neg.i.i31
  store i32 %and.i.i35, ptr %arrayidx.i19.i34, align 4
  %div.i2227.lhs.trunc.i37 = add nuw nsw i32 %i.034.i25, 32
  %div.i22272832.i38 = lshr i32 %div.i2227.lhs.trunc.i37, 5
  %div.i2227.zext.i39 = and i32 %div.i22272832.i38, 7
  %arrayidx.i23.i40 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i39
  %29 = ptrtoint ptr %arrayidx.i23.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i23.i40, align 4
  %or.i24.i41 = or i32 %30, %shl.i26
  store i32 %or.i24.i41, ptr %arrayidx.i23.i40, align 4
  br label %for.inc.i45

for.inc.i45:                                      ; preds = %if.end.i30, %for.body.i29.for.inc.i45_crit_edge
  %inc.i43 = add nuw nsw i32 %i.034.i25, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, 32
  br i1 %exitcond.not.i44, label %mvpp2_prs_sram_ri_update.exit46, label %for.inc.i45.for.body.i29_crit_edge

for.inc.i45.for.body.i29_crit_edge:               ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29

mvpp2_prs_sram_ri_update.exit46:                  ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i47 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i47, align 4
  %and.i.i48 = and i32 %32, -15361
  %or.i.i49 = or i32 %and.i.i48, 5120
  store i32 %or.i.i49, ptr %arrayidx.i.i47, align 4
  br label %if.end14

if.end14:                                         ; preds = %mvpp2_prs_sram_ri_update.exit46, %if.then12
  %arrayidx.i50 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i50, align 4
  %and3.i51 = and i32 %34, 16711935
  %35 = select i1 %extend, i32 -16777216, i32 0
  %or.i53 = or i32 %and3.i51, %35
  store i32 %or.i53, ptr %arrayidx.i50, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  %arrayidx.i54 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i54, align 4
  %and.i55 = and i32 %37, -16777217
  %masksel = select i1 %add, i32 0, i32 16777216
  %and.i55.sink = or i32 %and.i55, %masksel
  store i32 %and.i55.sink, ptr %arrayidx.i54, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_prs_double_vlan_add(ptr noundef %priv, i16 noundef zeroext %tpid2) unnamed_addr #0 align 64 {
entry:
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %1 = call ptr @memset(ptr %pe.i, i32 255, i32 44)
  %sram.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 2
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 0
  %arrayidx.i1.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.06.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %3, i32 %tid.06.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lu.i = getelementptr %struct.mvpp2_prs_shadow, ptr %3, i32 %tid.06.i, i32 2
  %6 = ptrtoint ptr %lu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 3
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe.i, i32 noundef %tid.06.i) #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = trunc i32 %9 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %10)
  %cmp.i.i = icmp eq i16 %10, -32512
  br i1 %cmp.i.i, label %land.rhs.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i1.i, align 4
  %13 = trunc i32 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %tpid2)
  %cmp.i2.i = icmp eq i16 %13, %tpid2
  br i1 %cmp.i2.i, label %if.end8.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end8.i:                                        ; preds = %land.rhs.i
  %14 = ptrtoint ptr %sram.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sram.i.i, align 4
  %and.i = and i32 %15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 8
  br i1 %cmp10.i, label %if.else, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tid.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not.i, label %if.then, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then:                                          ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  %16 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i4

for.body.i4:                                      ; preds = %for.inc.i6.for.body.i4_crit_edge, %if.then
  %tid.017.i = phi i32 [ 1, %if.then ], [ %inc.i5, %for.inc.i6.for.body.i4_crit_edge ]
  %arrayidx.i2 = getelementptr %struct.mvpp2_prs_shadow, ptr %17, i32 %tid.017.i
  %18 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i2, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i3 = icmp eq i8 %19, 0
  br i1 %tobool.not.i3, label %if.end, label %for.inc.i6

for.inc.i6:                                       ; preds = %for.body.i4
  %inc.i5 = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i5, 112
  br i1 %exitcond.not, label %for.inc.i6.cleanup29_crit_edge, label %for.inc.i6.for.body.i4_crit_edge

for.inc.i6.for.body.i4_crit_edge:                 ; preds = %for.inc.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i4

for.inc.i6.cleanup29_crit_edge:                   ; preds = %for.inc.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.end:                                           ; preds = %for.body.i4
  %prs_double_vlans.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 20
  %20 = ptrtoint ptr %prs_double_vlans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prs_double_vlans.i, align 4
  br label %for.body.i9

for.body.i9:                                      ; preds = %for.inc.i12.for.body.i9_crit_edge, %if.end
  %i.04.i = phi i32 [ 1, %if.end ], [ %inc.i10, %for.inc.i12.for.body.i9_crit_edge ]
  %arrayidx.i7 = getelementptr i8, ptr %21, i32 %i.04.i
  %22 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i7, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i8 = icmp eq i8 %23, 0
  br i1 %tobool.not.i8, label %for.cond.preheader, label %for.inc.i12

for.cond.preheader:                               ; preds = %for.body.i9
  %sram.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2
  br label %for.body

for.inc.i12:                                      ; preds = %for.body.i9
  %inc.i10 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i11 = icmp eq i32 %inc.i10, 100
  br i1 %exitcond.not.i11, label %for.inc.i12.cleanup29_crit_edge, label %for.inc.i12.for.body.i9_crit_edge

for.inc.i12.for.body.i9_crit_edge:                ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i9

for.inc.i12.cleanup29_crit_edge:                  ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %tid_aux.062 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %25, i32 %tid_aux.062
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %lu = getelementptr %struct.mvpp2_prs_shadow, ptr %25, i32 %tid_aux.062, i32 2
  %28 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp11.not = icmp eq i32 %29, 3
  br i1 %cmp11.not, label %cleanup, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %lor.lhs.false
  %call14 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %tid_aux.062)
  %30 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sram.i, align 4
  %and = and i32 %31, 12
  %32 = add nsw i32 %and, -4
  %switch.and = and i32 %32, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br i1 %switch.selectcmp, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %tid_aux.062, 1
  %exitcond68.not = icmp eq i32 %inc, 112
  br i1 %exitcond68.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge
  %tid_aux.0.lcssa = phi i32 [ %tid_aux.062, %cleanup.for.end_crit_edge ], [ 112, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tid.017.i, i32 %tid_aux.0.lcssa)
  %cmp21.not = icmp ult i32 %tid.017.i, %tid_aux.0.lcssa
  br i1 %cmp21.not, label %for.body.i30.peel.next123, label %for.end.cleanup29_crit_edge

for.end.cleanup29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

for.body.i30.peel.next123:                        ; preds = %for.end
  %33 = getelementptr inbounds i8, ptr %pe, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 36)
  %arrayidx.i14 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 983043, ptr %arrayidx.i14, align 4
  %36 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tid.017.i, ptr %pe, align 4
  %37 = ptrtoint ptr %prs_double_vlans.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prs_double_vlans.i, align 4
  %arrayidx24 = getelementptr i8, ptr %38, i32 %i.04.i
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %arrayidx24, align 1
  %arrayidx.i.i15 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -65407, ptr %arrayidx.i.i15, align 4
  %arrayidx.i.i16 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 2
  %rev = tail call i16 @llvm.bswap.i16(i16 %tpid2)
  %or.i17.i = zext i16 %rev to i32
  %or17.i18.i21 = or i32 %or.i17.i, -65536
  %41 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or17.i18.i21, ptr %arrayidx.i.i16, align 4
  %arrayidx.i.i22 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i22, align 4
  %and.i.i = and i32 %43, -15361
  %or.i.i = or i32 %and.i.i, 3072
  store i32 %or.i.i, ptr %arrayidx.i.i22, align 4
  %arrayidx.i.i23 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i23, align 4
  %.masked.i = and i32 %45, -39846149
  %or.i5.i = or i32 %.masked.i, 2097156
  store i32 %or.i5.i, ptr %arrayidx.i.i23, align 4
  %46 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sram.i, align 4
  %and.i.i34.peel108 = and i32 %47, -5
  store i32 %and.i.i34.peel108, ptr %sram.i, align 4
  %arrayidx.i23.i.peel118 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx.i23.i.peel118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i23.i.peel118, align 4
  %or.i24.i.peel119 = or i32 %49, 4
  store i32 %or.i24.i.peel119, ptr %arrayidx.i23.i.peel118, align 4
  %or.i.i33.peel140 = or i32 %and.i.i34.peel108, 8
  store i32 %or.i.i33.peel140, ptr %sram.i, align 4
  %arrayidx.i23.i.peel145 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %or.i24.i.peel146 = or i32 %49, 12
  %50 = ptrtoint ptr %arrayidx.i23.i.peel145 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i24.i.peel146, ptr %arrayidx.i23.i.peel145, align 4
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.inc.i37.for.body.i30_crit_edge, %for.body.i30.peel.next123
  %i.034.i = phi i32 [ 4, %for.body.i30.peel.next123 ], [ %inc.i35, %for.inc.i37.for.body.i30_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i28 = and i32 %shl.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %for.body.i30.for.inc.i37_crit_edge, label %if.end6.i

for.body.i30.for.inc.i37_crit_edge:               ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i37

if.end6.i:                                        ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %51 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i34 = and i32 %52, %neg.i.i
  store i32 %and.i.i34, ptr %arrayidx.i19.i, align 4
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %53 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i23.i, align 4
  %or.i24.i = or i32 %54, %shl.i
  store i32 %or.i24.i, ptr %arrayidx.i23.i, align 4
  br label %for.inc.i37

for.inc.i37:                                      ; preds = %if.end6.i, %for.body.i30.for.inc.i37_crit_edge
  %inc.i35 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 32
  br i1 %exitcond.not.i36, label %mvpp2_prs_sram_ri_update.exit, label %for.inc.i37.for.body.i30_crit_edge, !llvm.loop !12

for.inc.i37.for.body.i30_crit_edge:               ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i30

mvpp2_prs_sram_ri_update.exit:                    ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i23, align 4
  %and.i.i39 = and i32 %56, 67108863
  %and2.i40 = shl i32 %i.04.i, 26
  %57 = and i32 %and2.i40, 67108864
  %and.i.sink.i = or i32 %and.i.i39, %57
  %58 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i22, align 4
  %60 = and i32 %and2.i40, 134217728
  %and.i.1.sink.i = or i32 %and.i.sink.i, %60
  %61 = and i32 %and2.i40, 268435456
  %and.i.2.sink.i = or i32 %and.i.1.sink.i, %61
  %62 = and i32 %and2.i40, 536870912
  %and.i.3.sink.i = or i32 %and.i.2.sink.i, %62
  %63 = and i32 %and2.i40, 1073741824
  %and.i.5.i = or i32 %and.i.3.sink.i, %63
  %64 = and i32 %and2.i40, -2147483648
  %and.i.5.sink.i = or i32 %and.i.5.i, %64
  store i32 %and.i.5.sink.i, ptr %arrayidx.i.i23, align 4
  %or.i24.5.i = and i32 %59, -1024
  %or = lshr i32 %i.04.i, 6
  %and2.6.lobit.i = and i32 %or, 1
  %and.i.6.i = or i32 %and2.6.lobit.i, %or.i24.5.i
  %or.i24.7.i = or i32 %and.i.6.i, 1022
  store i32 %or.i24.7.i, ptr %arrayidx.i.i22, align 4
  %65 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i46 = getelementptr %struct.mvpp2_prs_shadow, ptr %66, i32 %tid.017.i
  %67 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %arrayidx.i46, align 4
  %68 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %68, i32 %tid.017.i, i32 2
  %69 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %lu3.i, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  %call26 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %tid.06.i)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %mvpp2_prs_sram_ri_update.exit
  %arrayidx.i47 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %70 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i47, align 4
  %and3.i48 = and i32 %71, 16711935
  store i32 %and3.i48, ptr %arrayidx.i47, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %for.end.cleanup29_crit_edge, %for.inc.i12.cleanup29_crit_edge, %for.inc.i6.cleanup29_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -34, %for.end.cleanup29_crit_edge ], [ -22, %for.inc.i12.cleanup29_crit_edge ], [ -22, %for.inc.i6.cleanup29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_prs_vlan_add(ptr noundef %priv, i16 noundef zeroext %tpid) unnamed_addr #0 align 64 {
entry:
  %pe.i = alloca %struct.mvpp2_prs_entry, align 4
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe.i) #7
  %1 = call ptr @memset(ptr %pe.i, i32 255, i32 44)
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 0
  %arrayidx.i1.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 1, i32 4
  %sram.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.05.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %3, i32 %tid.05.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lu.i = getelementptr %struct.mvpp2_prs_shadow, ptr %3, i32 %tid.05.i, i32 2
  %6 = ptrtoint ptr %lu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 3
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe.i, i32 noundef %tid.05.i) #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = trunc i32 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %tpid)
  %cmp.i.i = icmp eq i16 %10, %tpid
  br i1 %cmp.i.i, label %if.end7.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i1.i, align 4
  %and10.i = and i32 %12, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.not.i = icmp eq i32 %and10.i, 0
  br i1 %cmp11.not.i, label %if.end13.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end7.i
  %13 = ptrtoint ptr %sram.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sram.i.i, align 4
  %and.i = and i32 %14, 12
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and.i, label %if.end13.i.for.inc.i_crit_edge [
    i32 4, label %if.end13.i.if.else22_crit_edge
    i32 12, label %if.end13.i.if.else22_crit_edge113
  ]

if.end13.i.if.else22_crit_edge113:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22

if.end13.i.if.else22_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tid.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not.i, label %if.then, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then:                                          ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  %16 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i4

for.body.i4:                                      ; preds = %for.inc.i6.for.body.i4_crit_edge, %if.then
  %tid.017.i = phi i32 [ 1, %if.then ], [ %inc.i5, %for.inc.i6.for.body.i4_crit_edge ]
  %arrayidx.i2 = getelementptr %struct.mvpp2_prs_shadow, ptr %17, i32 %tid.017.i
  %18 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i2, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i3 = icmp eq i8 %19, 0
  br i1 %tobool.not.i3, label %for.cond.preheader, label %for.inc.i6

for.cond.preheader:                               ; preds = %for.body.i4
  %sram.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2
  br label %for.body

for.inc.i6:                                       ; preds = %for.body.i4
  %inc.i5 = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i5, 112
  br i1 %exitcond.not, label %for.inc.i6.cleanup26_crit_edge, label %for.inc.i6.for.body.i4_crit_edge

for.inc.i6.for.body.i4_crit_edge:                 ; preds = %for.inc.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i4

for.inc.i6.cleanup26_crit_edge:                   ; preds = %for.inc.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %tid_aux.046 = phi i32 [ 111, %for.cond.preheader ], [ %dec, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx = getelementptr %struct.mvpp2_prs_shadow, ptr %21, i32 %tid_aux.046
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %lu = getelementptr %struct.mvpp2_prs_shadow, ptr %21, i32 %tid_aux.046, i32 2
  %24 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp7.not = icmp eq i32 %25, 3
  br i1 %cmp7.not, label %cleanup, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %lor.lhs.false
  %call10 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %tid_aux.046)
  %26 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sram.i, align 4
  %and = and i32 %27, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp12 = icmp eq i32 %and, 8
  br i1 %cmp12, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %tid_aux.046, -1
  %cmp4 = icmp ugt i32 %tid_aux.046, 1
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge
  %tid_aux.0.lcssa = phi i32 [ %tid_aux.046, %cleanup.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tid.017.i, i32 %tid_aux.0.lcssa)
  %cmp15.not = icmp sgt i32 %tid.017.i, %tid_aux.0.lcssa
  br i1 %cmp15.not, label %for.body.i15.peel.next77, label %for.end.cleanup26_crit_edge

for.end.cleanup26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

for.body.i15.peel.next77:                         ; preds = %for.end
  %28 = getelementptr inbounds i8, ptr %pe, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 28)
  %30 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tid.017.i, ptr %pe, align 4
  %arrayidx.i7 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 983043, ptr %arrayidx.i7, align 4
  %arrayidx.i.i8 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %rev = tail call i16 @llvm.bswap.i16(i16 %tpid)
  %or.i17.i = zext i16 %rev to i32
  %or17.i18.i = or i32 %or.i17.i, -65536
  %32 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or17.i18.i, ptr %arrayidx.i.i8, align 4
  %arrayidx.i.i9 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %arrayidx.i19.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx.i19.i, align 4
  %34 = ptrtoint ptr %arrayidx.i.i9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5116, ptr %arrayidx.i.i9, align 4
  %35 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sram.i, align 4
  %or.i.i18.peel94 = or i32 %36, 4
  store i32 %or.i.i18.peel94, ptr %sram.i, align 4
  %arrayidx.i23.i21.peel99 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx.i23.i21.peel99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i23.i21.peel99, align 4
  %or.i24.i22.peel100 = or i32 %38, 4
  store i32 %or.i24.i22.peel100, ptr %arrayidx.i23.i21.peel99, align 4
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.inc.i25.for.body.i15_crit_edge, %for.body.i15.peel.next77
  %i.034.i = phi i32 [ 3, %for.body.i15.peel.next77 ], [ %inc.i23, %for.inc.i25.for.body.i15_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i13 = and i32 %shl.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %for.body.i15.for.inc.i25_crit_edge, label %if.end6.i

for.body.i15.for.inc.i25_crit_edge:               ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i25

if.end6.i:                                        ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i19 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %39 = ptrtoint ptr %arrayidx.i19.i19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i19.i19, align 4
  %and.i.i20 = and i32 %40, %neg.i.i
  store i32 %and.i.i20, ptr %arrayidx.i19.i19, align 4
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i21 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %41 = ptrtoint ptr %arrayidx.i23.i21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i23.i21, align 4
  %or.i24.i22 = or i32 %42, %shl.i
  store i32 %or.i24.i22, ptr %arrayidx.i23.i21, align 4
  br label %for.inc.i25

for.inc.i25:                                      ; preds = %if.end6.i, %for.body.i15.for.inc.i25_crit_edge
  %inc.i23 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 32
  br i1 %exitcond.not.i24, label %mvpp2_prs_sram_ri_update.exit, label %for.inc.i25.for.body.i15_crit_edge, !llvm.loop !14

for.inc.i25.for.body.i15_crit_edge:               ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i15

mvpp2_prs_sram_ri_update.exit:                    ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i26 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i26, align 4
  %and9.7.i = and i32 %44, -16711936
  %or14.i = or i32 %and9.7.i, 16711680
  store i32 %or14.i, ptr %arrayidx.i26, align 4
  %45 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prs_shadow.i, align 4
  %arrayidx.i30 = getelementptr %struct.mvpp2_prs_shadow, ptr %46, i32 %tid.017.i
  %47 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx.i30, align 4
  %48 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %48, i32 %tid.017.i, i32 2
  %49 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %lu3.i, align 4
  br label %if.end24

if.else22:                                        ; preds = %if.end13.i.if.else22_crit_edge, %if.end13.i.if.else22_crit_edge113
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe.i) #7
  %call23 = call i32 @mvpp2_prs_init_from_hw(ptr noundef %priv, ptr noundef nonnull %pe, i32 noundef %tid.05.i)
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %mvpp2_prs_sram_ri_update.exit
  %arrayidx.i31 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i31, align 4
  %and3.i32 = and i32 %51, 16711935
  store i32 %and3.i32, ptr %arrayidx.i31, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %for.end.cleanup26_crit_edge, %for.inc.i6.cleanup26_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %for.end.cleanup26_crit_edge ], [ -22, %for.inc.i6.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_prs_ip6_proto(ptr noundef %priv, i16 noundef zeroext %proto, i32 noundef %ri, i32 noundef %ri_mask) unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %proto, label %entry.cleanup_crit_edge [
    i16 6, label %entry.if.end_crit_edge
    i16 17, label %entry.if.end_crit_edge65
    i16 58, label %entry.if.end_crit_edge66
    i16 4, label %entry.if.end_crit_edge67
  ]

entry.if.end_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge65, %entry.if.end_crit_edge66, %entry.if.end_crit_edge67
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %tid.017.i = phi i32 [ 1, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %2, i32 %tid.017.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end16, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %for.body.i
  %5 = getelementptr inbounds i8, ptr %pe, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 36)
  %arrayidx.i29 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 983048, ptr %arrayidx.i29, align 4
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tid.017.i, ptr %pe, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 41984, ptr %arrayidx.i.i, align 4
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.inc.i38.for.body.i33_crit_edge, %if.end16
  %i.034.i = phi i32 [ 0, %if.end16 ], [ %inc.i37, %for.inc.i38.for.body.i33_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i = and i32 %shl.i, %ri_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i32 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i32, label %for.body.i33.for.inc.i38_crit_edge, label %if.end.i

for.body.i33.for.inc.i38_crit_edge:               ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i38

if.end.i:                                         ; preds = %for.body.i33
  %and2.i = and i32 %shl.i, %ri
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i = lshr i32 %i.034.i, 5
  %div.i29.zext.i = and i32 %div.i293031.i, 7
  %arrayidx.i.i34 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i
  %10 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i34, align 4
  %or.i.i35 = or i32 %11, %shl.i
  store i32 %or.i.i35, ptr %arrayidx.i.i34, align 4
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %12 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i36 = and i32 %13, %neg.i.i
  store i32 %and.i.i36, ptr %arrayidx.i19.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %14 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i23.i, align 4
  %or.i24.i = or i32 %15, %shl.i
  store i32 %or.i24.i, ptr %arrayidx.i23.i, align 4
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %if.end6.i, %for.body.i33.for.inc.i38_crit_edge
  %inc.i37 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i37, 32
  br i1 %exitcond.not.i, label %mvpp2_prs_sram_ri_update.exit, label %for.inc.i38.for.body.i33_crit_edge

for.inc.i38.for.body.i33_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33

mvpp2_prs_sram_ri_update.exit:                    ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i39 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i39, align 4
  %and.i3.i = and i32 %17, -60816897
  %and.i12.i = or i32 %and.i3.i, 1065984
  store i32 %and.i12.i, ptr %arrayidx.i.i39, align 4
  %arrayidx.i44 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i44, align 4
  %and6.i = and i32 %19, -16711936
  %20 = and i16 %proto, 255
  %conv.i = zext i16 %20 to i32
  %or.i45 = or i32 %and6.i, %conv.i
  %or17.i = or i32 %or.i45, 16711680
  store i32 %or17.i, ptr %arrayidx.i44, align 4
  %arrayidx.i46 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i46, align 4
  %or14.i = and i32 %22, 16646398
  %and3.i50 = or i32 %or14.i, 65537
  store i32 %and3.i50, ptr %arrayidx.i46, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %25, i32 %tid.017.i, i32 2
  %26 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %mvpp2_prs_sram_ri_update.exit, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mvpp2_prs_sram_ri_update.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_prs_ip4_proto(ptr noundef %priv, i16 noundef zeroext %proto, i32 noundef %ri, i32 noundef %ri_mask) unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %0 = call ptr @memset(ptr %pe, i32 255, i32 44)
  %1 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %proto, label %entry.cleanup_crit_edge [
    i16 6, label %entry.if.end_crit_edge
    i16 17, label %entry.if.end_crit_edge183
    i16 2, label %entry.if.end_crit_edge184
  ]

entry.if.end_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge183, %entry.if.end_crit_edge184
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %tid.017.i = phi i32 [ 1, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %3, i32 %tid.017.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end12, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %for.body.i
  %6 = getelementptr inbounds i8, ptr %pe, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 32)
  %arrayidx.i46 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 983047, ptr %arrayidx.i46, align 4
  %9 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tid.017.i, ptr %pe, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %arrayidx.i.i49 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 395264, ptr %arrayidx.i.i49, align 4
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 41988, ptr %arrayidx.i.i, align 4
  %or = or i32 %ri_mask, 131072
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.inc.i62.for.body.i54_crit_edge, %if.end12
  %i.034.i = phi i32 [ 0, %if.end12 ], [ %inc.i61, %for.inc.i62.for.body.i54_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i = and i32 %shl.i, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i53, label %for.body.i54.for.inc.i62_crit_edge, label %if.end.i

for.body.i54.for.inc.i62_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i62

if.end.i:                                         ; preds = %for.body.i54
  %and2.i = and i32 %shl.i, %ri
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i = lshr i32 %i.034.i, 5
  %div.i29.zext.i = and i32 %div.i293031.i, 7
  %arrayidx.i.i55 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i
  %12 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i55, align 4
  %or.i.i56 = or i32 %13, %shl.i
  store i32 %or.i.i56, ptr %arrayidx.i.i55, align 4
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i57 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %14 = ptrtoint ptr %arrayidx.i19.i57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i19.i57, align 4
  %and.i.i58 = and i32 %15, %neg.i.i
  store i32 %and.i.i58, ptr %arrayidx.i19.i57, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i59 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %16 = ptrtoint ptr %arrayidx.i23.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i23.i59, align 4
  %or.i24.i60 = or i32 %17, %shl.i
  store i32 %or.i24.i60, ptr %arrayidx.i23.i59, align 4
  br label %for.inc.i62

for.inc.i62:                                      ; preds = %if.end6.i, %for.body.i54.for.inc.i62_crit_edge
  %inc.i61 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i61, 32
  br i1 %exitcond.not.i, label %mvpp2_prs_sram_ri_update.exit, label %for.inc.i62.for.body.i54_crit_edge

for.inc.i62.for.body.i54_crit_edge:               ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i54

mvpp2_prs_sram_ri_update.exit:                    ; preds = %for.inc.i62
  %arrayidx.i63 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -12648448, ptr %arrayidx.i63, align 4
  %arrayidx.i67 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i67, align 4
  %and6.i68 = and i32 %20, 16711935
  %21 = shl i16 %proto, 8
  %shl7.i = zext i16 %21 to i32
  %or.i69 = or i32 %and6.i68, %shl7.i
  %or17.i70 = or i32 %or.i69, -16777216
  store i32 %or17.i70, ptr %arrayidx.i67, align 4
  %arrayidx.i71 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i71, align 4
  %or14.i = and i32 %23, 16646398
  %and3.i75 = or i32 %or14.i, 65537
  store i32 %and3.i75, ptr %arrayidx.i71, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %26, i32 %tid.017.i, i32 2
  %27 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  %28 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc.i85.for.body.i82_crit_edge, %mvpp2_prs_sram_ri_update.exit
  %tid.017.i79 = phi i32 [ 1, %mvpp2_prs_sram_ri_update.exit ], [ %inc.i83, %for.inc.i85.for.body.i82_crit_edge ]
  %arrayidx.i80 = getelementptr %struct.mvpp2_prs_shadow, ptr %29, i32 %tid.017.i79
  %30 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i80, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i81 = icmp eq i8 %31, 0
  br i1 %tobool.not.i81, label %if.end20, label %for.inc.i85

for.inc.i85:                                      ; preds = %for.body.i82
  %inc.i83 = add nuw nsw i32 %tid.017.i79, 1
  %exitcond163.not = icmp eq i32 %inc.i83, 112
  br i1 %exitcond163.not, label %for.inc.i85.cleanup_crit_edge, label %for.inc.i85.for.body.i82_crit_edge

for.inc.i85.for.body.i82_crit_edge:               ; preds = %for.inc.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i82

for.inc.i85.cleanup_crit_edge:                    ; preds = %for.inc.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %for.body.i82
  %32 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %tid.017.i79, ptr %pe, align 4
  %sram = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2
  %33 = ptrtoint ptr %sram to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sram, align 4
  %arrayidx23 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx23, align 4
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.inc.i115.for.body.i92_crit_edge, %if.end20
  %i.034.i88 = phi i32 [ 0, %if.end20 ], [ %inc.i113, %for.inc.i115.for.body.i92_crit_edge ]
  %shl.i89 = shl nuw i32 1, %i.034.i88
  %and.i90 = and i32 %shl.i89, %ri_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %for.body.i92.for.inc.i115_crit_edge, label %if.end.i95

for.body.i92.for.inc.i115_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i115

if.end.i95:                                       ; preds = %for.body.i92
  %and2.i93 = and i32 %shl.i89, %ri
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i93)
  %tobool3.not.i94 = icmp eq i32 %and2.i93, 0
  br i1 %tobool3.not.i94, label %if.else.i106, label %if.then4.i100

if.then4.i100:                                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i96 = lshr i32 %i.034.i88, 5
  %div.i29.zext.i97 = and i32 %div.i293031.i96, 7
  %arrayidx.i.i98 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i97
  %35 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i98, align 4
  %or.i.i99 = or i32 %36, %shl.i89
  store i32 %or.i.i99, ptr %arrayidx.i.i98, align 4
  br label %if.end6.i112

if.else.i106:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i101 = xor i32 %shl.i89, -1
  %div.i18252633.i102 = lshr i32 %i.034.i88, 5
  %div.i1825.zext.i103 = and i32 %div.i18252633.i102, 7
  %arrayidx.i19.i104 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i103
  %37 = ptrtoint ptr %arrayidx.i19.i104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i19.i104, align 4
  %and.i.i105 = and i32 %38, %neg.i.i101
  store i32 %and.i.i105, ptr %arrayidx.i19.i104, align 4
  br label %if.end6.i112

if.end6.i112:                                     ; preds = %if.else.i106, %if.then4.i100
  %div.i2227.lhs.trunc.i107 = add nuw nsw i32 %i.034.i88, 32
  %div.i22272832.i108 = lshr i32 %div.i2227.lhs.trunc.i107, 5
  %div.i2227.zext.i109 = and i32 %div.i22272832.i108, 7
  %arrayidx.i23.i110 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i109
  %39 = ptrtoint ptr %arrayidx.i23.i110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i23.i110, align 4
  %or.i24.i111 = or i32 %40, %shl.i89
  store i32 %or.i24.i111, ptr %arrayidx.i23.i110, align 4
  br label %for.inc.i115

for.inc.i115:                                     ; preds = %if.end6.i112, %for.body.i92.for.inc.i115_crit_edge
  %inc.i113 = add nuw nsw i32 %i.034.i88, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, 32
  br i1 %exitcond.not.i114, label %mvpp2_prs_sram_ri_update.exit116, label %for.inc.i115.for.body.i92_crit_edge

for.inc.i115.for.body.i92_crit_edge:              ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i92

mvpp2_prs_sram_ri_update.exit116:                 ; preds = %for.inc.i115
  %or24 = or i32 %ri, 131072
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.inc.i144.for.body.i121_crit_edge, %mvpp2_prs_sram_ri_update.exit116
  %i.034.i117 = phi i32 [ 0, %mvpp2_prs_sram_ri_update.exit116 ], [ %inc.i142, %for.inc.i144.for.body.i121_crit_edge ]
  %shl.i118 = shl nuw i32 1, %i.034.i117
  %and.i119 = and i32 %shl.i118, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %for.body.i121.for.inc.i144_crit_edge, label %if.end.i124

for.body.i121.for.inc.i144_crit_edge:             ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i144

if.end.i124:                                      ; preds = %for.body.i121
  %and2.i122 = and i32 %shl.i118, %or24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i122)
  %tobool3.not.i123 = icmp eq i32 %and2.i122, 0
  br i1 %tobool3.not.i123, label %if.else.i135, label %if.then4.i129

if.then4.i129:                                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i125 = lshr i32 %i.034.i117, 5
  %div.i29.zext.i126 = and i32 %div.i293031.i125, 7
  %arrayidx.i.i127 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i126
  %41 = ptrtoint ptr %arrayidx.i.i127 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i127, align 4
  %or.i.i128 = or i32 %42, %shl.i118
  store i32 %or.i.i128, ptr %arrayidx.i.i127, align 4
  br label %if.end6.i141

if.else.i135:                                     ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i130 = xor i32 %shl.i118, -1
  %div.i18252633.i131 = lshr i32 %i.034.i117, 5
  %div.i1825.zext.i132 = and i32 %div.i18252633.i131, 7
  %arrayidx.i19.i133 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i132
  %43 = ptrtoint ptr %arrayidx.i19.i133 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i19.i133, align 4
  %and.i.i134 = and i32 %44, %neg.i.i130
  store i32 %and.i.i134, ptr %arrayidx.i19.i133, align 4
  br label %if.end6.i141

if.end6.i141:                                     ; preds = %if.else.i135, %if.then4.i129
  %div.i2227.lhs.trunc.i136 = add nuw nsw i32 %i.034.i117, 32
  %div.i22272832.i137 = lshr i32 %div.i2227.lhs.trunc.i136, 5
  %div.i2227.zext.i138 = and i32 %div.i22272832.i137, 7
  %arrayidx.i23.i139 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i138
  %45 = ptrtoint ptr %arrayidx.i23.i139 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i23.i139, align 4
  %or.i24.i140 = or i32 %46, %shl.i118
  store i32 %or.i24.i140, ptr %arrayidx.i23.i139, align 4
  br label %for.inc.i144

for.inc.i144:                                     ; preds = %if.end6.i141, %for.body.i121.for.inc.i144_crit_edge
  %inc.i142 = add nuw nsw i32 %i.034.i117, 1
  %exitcond.not.i143 = icmp eq i32 %inc.i142, 32
  br i1 %exitcond.not.i143, label %mvpp2_prs_sram_ri_update.exit145, label %for.inc.i144.for.body.i121_crit_edge

for.inc.i144.for.body.i121_crit_edge:             ; preds = %for.inc.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i121

mvpp2_prs_sram_ri_update.exit145:                 ; preds = %for.inc.i144
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx.i63, align 4
  %48 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx.i80, align 4
  %49 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i152 = getelementptr %struct.mvpp2_prs_shadow, ptr %50, i32 %tid.017.i79, i32 2
  %51 = ptrtoint ptr %lu3.i152 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 7, ptr %lu3.i152, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %mvpp2_prs_sram_ri_update.exit145, %for.inc.i85.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mvpp2_prs_sram_ri_update.exit145 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i85.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvpp2_prs_ip4_cast(ptr noundef %priv, i16 noundef zeroext %l3_cast) unnamed_addr #0 align 64 {
entry:
  %pe = alloca %struct.mvpp2_prs_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pe) #7
  %prs_shadow.i = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prs_shadow.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %tid.017.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvpp2_prs_shadow, ptr %1, i32 %tid.017.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tid.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %4 = getelementptr inbounds i8, ptr %pe, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %arrayidx.i25 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 983047, ptr %arrayidx.i25, align 4
  %7 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tid.017.i, ptr %pe, align 4
  %8 = zext i16 %l3_cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %l3_cast, label %if.end.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx.i26 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i26, align 4
  %and6.i = and i32 %10, -16711936
  %or17.i = or i32 %and6.i, 15728864
  store i32 %or17.i, ptr %arrayidx.i26, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 0
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.inc.i30.for.body.i28_crit_edge, %sw.bb
  %i.034.i = phi i32 [ 0, %sw.bb ], [ %inc.i29, %for.inc.i30.for.body.i28_crit_edge ]
  %shl.i = shl nuw i32 1, %i.034.i
  %and.i = and i32 %shl.i, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %for.body.i28.for.inc.i30_crit_edge, label %if.end.i

for.body.i28.for.inc.i30_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i30

if.end.i:                                         ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.034.i)
  %tobool3.not.i.not = icmp eq i32 %i.034.i, 15
  br i1 %tobool3.not.i.not, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %12, %shl.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i, -1
  %div.i18252633.i = lshr i32 %i.034.i, 5
  %div.i1825.zext.i = and i32 %div.i18252633.i, 7
  %arrayidx.i19.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i1825.zext.i
  %13 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i19.i, align 4
  %and.i.i = and i32 %14, %neg.i.i
  store i32 %and.i.i, ptr %arrayidx.i19.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %div.i2227.lhs.trunc.i = add nuw nsw i32 %i.034.i, 32
  %div.i22272832.i = lshr i32 %div.i2227.lhs.trunc.i, 5
  %div.i2227.zext.i = and i32 %div.i22272832.i, 7
  %arrayidx.i23.i = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i
  %15 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i23.i, align 4
  %or.i24.i = or i32 %16, %shl.i
  store i32 %or.i24.i, ptr %arrayidx.i23.i, align 4
  br label %for.inc.i30

for.inc.i30:                                      ; preds = %if.end6.i, %for.body.i28.for.inc.i30_crit_edge
  %inc.i29 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i29, 32
  br i1 %exitcond.not.i, label %for.inc.i30.sw.epilog_crit_edge, label %for.inc.i30.for.body.i28_crit_edge

for.inc.i30.for.body.i28_crit_edge:               ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i28

for.inc.i30.sw.epilog_crit_edge:                  ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %arrayidx.i31 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx.i31, align 4
  %arrayidx.i37 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %arrayidx.i37, align 4
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i70.for.body.i47_crit_edge, %sw.bb1
  %i.034.i43 = phi i32 [ 0, %sw.bb1 ], [ %inc.i68, %for.inc.i70.for.body.i47_crit_edge ]
  %shl.i44 = shl nuw i32 1, %i.034.i43
  %and.i45 = and i32 %shl.i44, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %for.body.i47.for.inc.i70_crit_edge, label %if.end6.i67

for.body.i47.for.inc.i70_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i70

if.end6.i67:                                      ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  %div.i293031.i51 = lshr i32 %i.034.i43, 5
  %div.i29.zext.i52 = and i32 %div.i293031.i51, 7
  %arrayidx.i.i53 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i29.zext.i52
  %19 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i53, align 4
  %or.i.i54 = or i32 %20, %shl.i44
  store i32 %or.i.i54, ptr %arrayidx.i.i53, align 4
  %div.i2227.lhs.trunc.i62 = add nuw nsw i32 %i.034.i43, 32
  %div.i22272832.i63 = lshr i32 %div.i2227.lhs.trunc.i62, 5
  %div.i2227.zext.i64 = and i32 %div.i22272832.i63, 7
  %arrayidx.i23.i65 = getelementptr %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 %div.i2227.zext.i64
  %21 = ptrtoint ptr %arrayidx.i23.i65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i23.i65, align 4
  %or.i24.i66 = or i32 %22, %shl.i44
  store i32 %or.i24.i66, ptr %arrayidx.i23.i65, align 4
  br label %for.inc.i70

for.inc.i70:                                      ; preds = %if.end6.i67, %for.body.i47.for.inc.i70_crit_edge
  %inc.i68 = add nuw nsw i32 %i.034.i43, 1
  %exitcond.not.i69 = icmp eq i32 %inc.i68, 32
  br i1 %exitcond.not.i69, label %for.inc.i70.sw.epilog_crit_edge, label %for.inc.i70.for.body.i47_crit_edge

for.inc.i70.for.body.i47_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i47

for.inc.i70.sw.epilog_crit_edge:                  ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.i70.sw.epilog_crit_edge, %for.inc.i30.sw.epilog_crit_edge
  %arrayidx.i.i72 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i72, align 4
  %and.i.i73 = and i32 %24, -15365
  %arrayidx.i19.i75 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx.i19.i75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i19.i75, align 4
  %or.i24.i78 = or i32 %and.i.i73, 7172
  store i32 %or.i24.i78, ptr %arrayidx.i.i72, align 4
  %or.i.i82 = and i32 %26, -106955021
  %or.i5.i = or i32 %or.i.i82, 69206284
  store i32 %or.i5.i, ptr %arrayidx.i19.i75, align 4
  %arrayidx.i86 = getelementptr inbounds %struct.mvpp2_prs_entry, ptr %pe, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i86, align 4
  %and9.i = and i32 %28, 16646398
  %or14.i = or i32 %and9.i, 65536
  store i32 %or14.i, ptr %arrayidx.i86, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %prs_shadow.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prs_shadow.i, align 4
  %lu3.i = getelementptr %struct.mvpp2_prs_shadow, ptr %31, i32 %tid.017.i, i32 2
  %32 = ptrtoint ptr %lu3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %lu3.i, align 4
  call fastcc void @mvpp2_prs_hw_write(ptr noundef %priv, ptr noundef nonnull %pe)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pe) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 3}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 4}
!14 = distinct !{!14, !11}
