; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/tout.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/tout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tout_set_def_val(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeouts.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeouts.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 120000, ptr %1, align 8
  %3 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.1 = getelementptr [15 x i64], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 20000, ptr %arrayidx.i.1, align 8
  %5 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.2 = getelementptr [15 x i64], ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2, ptr %arrayidx.i.2, align 8
  %7 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.3 = getelementptr [15 x i64], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2000, ptr %arrayidx.i.3, align 8
  %9 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.4 = getelementptr [15 x i64], ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 60000, ptr %arrayidx.i.4, align 8
  %11 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.5 = getelementptr [15 x i64], ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2000, ptr %arrayidx.i.5, align 8
  %13 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.6 = getelementptr [15 x i64], ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 2000, ptr %arrayidx.i.6, align 8
  %15 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.7 = getelementptr [15 x i64], ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 60000, ptr %arrayidx.i.7, align 8
  %17 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.8 = getelementptr [15 x i64], ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 60000, ptr %arrayidx.i.8, align 8
  %19 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.9 = getelementptr [15 x i64], ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2000, ptr %arrayidx.i.9, align 8
  %21 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.10 = getelementptr [15 x i64], ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 5000, ptr %arrayidx.i.10, align 8
  %23 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.11 = getelementptr [15 x i64], ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 3000, ptr %arrayidx.i.11, align 8
  %25 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.12 = getelementptr [15 x i64], ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 5000, ptr %arrayidx.i.12, align 8
  %27 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.13 = getelementptr [15 x i64], ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 5000, ptr %arrayidx.i.13, align 8
  %29 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i.14 = getelementptr [15 x i64], ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 120000, ptr %arrayidx.i.14, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_tout_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #9
  %timeouts = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %timeouts to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %timeouts, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tout_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeouts = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %timeouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeouts, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tout_query_iseg(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg.i, align 4
  %cmd_q_init_to.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 11
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd_q_init_to.i) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iseg.i, align 4
  %cmd_q_init_to = getelementptr inbounds %struct.mlx5_init_seg, ptr %4, i32 0, i32 11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd_q_init_to) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  %shr.i = lshr i32 %5, 29
  %and.i = and i32 %5, 1048575
  %conv.i.i = zext i32 %and.i to i64
  %and.i.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.tout_convert_iseg_to_ms.exit_crit_edge, label %if.then.i.i

if.end.tout_convert_iseg_to_ms.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_iseg_to_ms.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add nsw i32 %and.i.i, -1
  %call.i.i = tail call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i.i) #6
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  %mul1.i.i = mul i64 %mul.i.i, %call.i.i
  br label %tout_convert_iseg_to_ms.exit

tout_convert_iseg_to_ms.exit:                     ; preds = %if.then.i.i, %if.end.tout_convert_iseg_to_ms.exit_crit_edge
  %msec.0.i.i = phi i64 [ %mul1.i.i, %if.then.i.i ], [ %conv.i.i, %if.end.tout_convert_iseg_to_ms.exit_crit_edge ]
  %timeouts.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i = getelementptr [15 x i64], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %msec.0.i.i, ptr %arrayidx.i, align 8
  %9 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iseg.i, align 4
  %cmd_exec_to = getelementptr inbounds %struct.mlx5_init_seg, ptr %10, i32 0, i32 10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd_exec_to) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  %shr.i13 = lshr i32 %11, 29
  %and.i14 = and i32 %11, 1048575
  %conv.i.i15 = zext i32 %and.i14 to i64
  %and.i.i16 = and i32 %shr.i13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %and.i.i16, 0
  br i1 %tobool.not.i.i17, label %tout_convert_iseg_to_ms.exit.tout_convert_iseg_to_ms.exit24_crit_edge, label %if.then.i.i22

tout_convert_iseg_to_ms.exit.tout_convert_iseg_to_ms.exit24_crit_edge: ; preds = %tout_convert_iseg_to_ms.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_iseg_to_ms.exit24

if.then.i.i22:                                    ; preds = %tout_convert_iseg_to_ms.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i18 = add nsw i32 %and.i.i16, -1
  %call.i.i19 = tail call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i.i18) #6
  %mul.i.i20 = mul nuw nsw i64 %conv.i.i15, 1000
  %mul1.i.i21 = mul i64 %mul.i.i20, %call.i.i19
  br label %tout_convert_iseg_to_ms.exit24

tout_convert_iseg_to_ms.exit24:                   ; preds = %if.then.i.i22, %tout_convert_iseg_to_ms.exit.tout_convert_iseg_to_ms.exit24_crit_edge
  %msec.0.i.i23 = phi i64 [ %mul1.i.i21, %if.then.i.i22 ], [ %conv.i.i15, %tout_convert_iseg_to_ms.exit.tout_convert_iseg_to_ms.exit24_crit_edge ]
  %12 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timeouts.i, align 4
  %arrayidx.i26 = getelementptr [15 x i64], ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %msec.0.i.i23, ptr %arrayidx.i26, align 8
  br label %cleanup

cleanup:                                          ; preds = %tout_convert_iseg_to_ms.exit24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @_mlx5_tout_ms(ptr nocapture noundef readonly %dev, i32 noundef %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeouts = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %timeouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeouts, align 4
  %arrayidx = getelementptr [15 x i64], ptr %1, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_tout_query_dtor(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %out.i = alloca [16 x i32], align 4
  %in.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg.i, align 4
  %cmd_q_init_to.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 11
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd_q_init_to.i) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #6
  %3 = call ptr @memset(ptr %out.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #6
  %4 = call ptr @memset(ptr %in.i, i32 0, i32 64)
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 64, i16 noundef zeroext -16370, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.tout_query_dtor.exit_crit_edge

if.then.tout_query_dtor.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_query_dtor.exit

if.end.i:                                         ; preds = %if.then
  %add.ptr.i = getelementptr inbounds i8, ptr %out.i, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %6, 29
  %and6.i = and i32 %6, 1048575
  %conv.i.i = zext i32 %and6.i to i64
  %and.i.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.tout_convert_reg_field_to_ms.exit.i_crit_edge, label %if.then.i.i

if.end.i.tout_convert_reg_field_to_ms.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add nsw i32 %and.i.i, -1
  %call.i.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i.i) #6
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  %mul1.i.i = mul i64 %mul.i.i, %call.i.i
  br label %tout_convert_reg_field_to_ms.exit.i

tout_convert_reg_field_to_ms.exit.i:              ; preds = %if.then.i.i, %if.end.i.tout_convert_reg_field_to_ms.exit.i_crit_edge
  %msec.0.i.i = phi i64 [ %mul1.i.i, %if.then.i.i ], [ %conv.i.i, %if.end.i.tout_convert_reg_field_to_ms.exit.i_crit_edge ]
  %timeouts.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 9
  %7 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i.i = getelementptr [15 x i64], ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %msec.0.i.i, ptr %arrayidx.i.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr %out.i, i32 28
  %10 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr15.i, align 4
  %shr17.i = lshr i32 %11, 29
  %and21.i = and i32 %11, 1048575
  %conv.i197.i = zext i32 %and21.i to i64
  %and.i198.i = and i32 %shr17.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198.i)
  %tobool.not.i199.i = icmp eq i32 %and.i198.i, 0
  br i1 %tobool.not.i199.i, label %tout_convert_reg_field_to_ms.exit.i.tout_convert_reg_field_to_ms.exit206.i_crit_edge, label %if.then.i204.i

tout_convert_reg_field_to_ms.exit.i.tout_convert_reg_field_to_ms.exit206.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit206.i

if.then.i204.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i200.i = add nsw i32 %and.i198.i, -1
  %call.i201.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i200.i) #6
  %mul.i202.i = mul nuw nsw i64 %conv.i197.i, 1000
  %mul1.i203.i = mul i64 %mul.i202.i, %call.i201.i
  br label %tout_convert_reg_field_to_ms.exit206.i

tout_convert_reg_field_to_ms.exit206.i:           ; preds = %if.then.i204.i, %tout_convert_reg_field_to_ms.exit.i.tout_convert_reg_field_to_ms.exit206.i_crit_edge
  %msec.0.i205.i = phi i64 [ %mul1.i203.i, %if.then.i204.i ], [ %conv.i197.i, %tout_convert_reg_field_to_ms.exit.i.tout_convert_reg_field_to_ms.exit206.i_crit_edge ]
  %add24.i = add i64 %msec.0.i205.i, %msec.0.i.i
  %12 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i208.i = getelementptr [15 x i64], ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %arrayidx.i208.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add24.i, ptr %arrayidx.i208.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr %out.i, i32 40
  %15 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr32.i, align 4
  %shr34.i = lshr i32 %16, 29
  %and38.i = and i32 %16, 1048575
  %conv.i209.i = zext i32 %and38.i to i64
  %and.i210.i = and i32 %shr34.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210.i)
  %tobool.not.i211.i = icmp eq i32 %and.i210.i, 0
  br i1 %tobool.not.i211.i, label %tout_convert_reg_field_to_ms.exit206.i.tout_convert_reg_field_to_ms.exit218.i_crit_edge, label %if.then.i216.i

tout_convert_reg_field_to_ms.exit206.i.tout_convert_reg_field_to_ms.exit218.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit206.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit218.i

if.then.i216.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit206.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i212.i = add nsw i32 %and.i210.i, -1
  %call.i213.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i212.i) #6
  %mul.i214.i = mul nuw nsw i64 %conv.i209.i, 1000
  %mul1.i215.i = mul i64 %mul.i214.i, %call.i213.i
  br label %tout_convert_reg_field_to_ms.exit218.i

tout_convert_reg_field_to_ms.exit218.i:           ; preds = %if.then.i216.i, %tout_convert_reg_field_to_ms.exit206.i.tout_convert_reg_field_to_ms.exit218.i_crit_edge
  %msec.0.i217.i = phi i64 [ %mul1.i215.i, %if.then.i216.i ], [ %conv.i209.i, %tout_convert_reg_field_to_ms.exit206.i.tout_convert_reg_field_to_ms.exit218.i_crit_edge ]
  %17 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i220.i = getelementptr [15 x i64], ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %arrayidx.i220.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %msec.0.i217.i, ptr %arrayidx.i220.i, align 8
  %add.ptr49.i = getelementptr inbounds i8, ptr %out.i, i32 36
  %20 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr49.i, align 4
  %shr51.i = lshr i32 %21, 29
  %and55.i = and i32 %21, 1048575
  %conv.i221.i = zext i32 %and55.i to i64
  %and.i222.i = and i32 %shr51.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222.i)
  %tobool.not.i223.i = icmp eq i32 %and.i222.i, 0
  br i1 %tobool.not.i223.i, label %tout_convert_reg_field_to_ms.exit218.i.tout_convert_reg_field_to_ms.exit230.i_crit_edge, label %if.then.i228.i

tout_convert_reg_field_to_ms.exit218.i.tout_convert_reg_field_to_ms.exit230.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit230.i

if.then.i228.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit218.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i224.i = add nsw i32 %and.i222.i, -1
  %call.i225.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i224.i) #6
  %mul.i226.i = mul nuw nsw i64 %conv.i221.i, 1000
  %mul1.i227.i = mul i64 %mul.i226.i, %call.i225.i
  br label %tout_convert_reg_field_to_ms.exit230.i

tout_convert_reg_field_to_ms.exit230.i:           ; preds = %if.then.i228.i, %tout_convert_reg_field_to_ms.exit218.i.tout_convert_reg_field_to_ms.exit230.i_crit_edge
  %msec.0.i229.i = phi i64 [ %mul1.i227.i, %if.then.i228.i ], [ %conv.i221.i, %tout_convert_reg_field_to_ms.exit218.i.tout_convert_reg_field_to_ms.exit230.i_crit_edge ]
  %add58.i = add i64 %msec.0.i229.i, %msec.0.i217.i
  %22 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i232.i = getelementptr [15 x i64], ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %arrayidx.i232.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add58.i, ptr %arrayidx.i232.i, align 8
  %add.ptr66.i = getelementptr inbounds i8, ptr %out.i, i32 20
  %25 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr66.i, align 4
  %shr68.i = lshr i32 %26, 29
  %and72.i = and i32 %26, 1048575
  %conv.i233.i = zext i32 %and72.i to i64
  %and.i234.i = and i32 %shr68.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234.i)
  %tobool.not.i235.i = icmp eq i32 %and.i234.i, 0
  br i1 %tobool.not.i235.i, label %tout_convert_reg_field_to_ms.exit230.i.tout_convert_reg_field_to_ms.exit242.i_crit_edge, label %if.then.i240.i

tout_convert_reg_field_to_ms.exit230.i.tout_convert_reg_field_to_ms.exit242.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit242.i

if.then.i240.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit230.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i236.i = add nsw i32 %and.i234.i, -1
  %call.i237.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i236.i) #6
  %mul.i238.i = mul nuw nsw i64 %conv.i233.i, 1000
  %mul1.i239.i = mul i64 %mul.i238.i, %call.i237.i
  br label %tout_convert_reg_field_to_ms.exit242.i

tout_convert_reg_field_to_ms.exit242.i:           ; preds = %if.then.i240.i, %tout_convert_reg_field_to_ms.exit230.i.tout_convert_reg_field_to_ms.exit242.i_crit_edge
  %msec.0.i241.i = phi i64 [ %mul1.i239.i, %if.then.i240.i ], [ %conv.i233.i, %tout_convert_reg_field_to_ms.exit230.i.tout_convert_reg_field_to_ms.exit242.i_crit_edge ]
  %27 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i244.i = getelementptr [15 x i64], ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.i244.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %msec.0.i241.i, ptr %arrayidx.i244.i, align 8
  %add.ptr83.i = getelementptr inbounds i8, ptr %out.i, i32 24
  %30 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr83.i, align 4
  %shr85.i = lshr i32 %31, 29
  %and89.i = and i32 %31, 1048575
  %conv.i245.i = zext i32 %and89.i to i64
  %and.i246.i = and i32 %shr85.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246.i)
  %tobool.not.i247.i = icmp eq i32 %and.i246.i, 0
  br i1 %tobool.not.i247.i, label %tout_convert_reg_field_to_ms.exit242.i.tout_convert_reg_field_to_ms.exit254.i_crit_edge, label %if.then.i252.i

tout_convert_reg_field_to_ms.exit242.i.tout_convert_reg_field_to_ms.exit254.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit242.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit254.i

if.then.i252.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit242.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i248.i = add nsw i32 %and.i246.i, -1
  %call.i249.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i248.i) #6
  %mul.i250.i = mul nuw nsw i64 %conv.i245.i, 1000
  %mul1.i251.i = mul i64 %mul.i250.i, %call.i249.i
  br label %tout_convert_reg_field_to_ms.exit254.i

tout_convert_reg_field_to_ms.exit254.i:           ; preds = %if.then.i252.i, %tout_convert_reg_field_to_ms.exit242.i.tout_convert_reg_field_to_ms.exit254.i_crit_edge
  %msec.0.i253.i = phi i64 [ %mul1.i251.i, %if.then.i252.i ], [ %conv.i245.i, %tout_convert_reg_field_to_ms.exit242.i.tout_convert_reg_field_to_ms.exit254.i_crit_edge ]
  %32 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i256.i = getelementptr [15 x i64], ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx.i256.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %msec.0.i253.i, ptr %arrayidx.i256.i, align 8
  %add.ptr100.i = getelementptr inbounds i8, ptr %out.i, i32 32
  %35 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr100.i, align 4
  %shr102.i = lshr i32 %36, 29
  %and106.i = and i32 %36, 1048575
  %conv.i257.i = zext i32 %and106.i to i64
  %and.i258.i = and i32 %shr102.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i258.i)
  %tobool.not.i259.i = icmp eq i32 %and.i258.i, 0
  br i1 %tobool.not.i259.i, label %tout_convert_reg_field_to_ms.exit254.i.tout_convert_reg_field_to_ms.exit266.i_crit_edge, label %if.then.i264.i

tout_convert_reg_field_to_ms.exit254.i.tout_convert_reg_field_to_ms.exit266.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit266.i

if.then.i264.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i260.i = add nsw i32 %and.i258.i, -1
  %call.i261.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i260.i) #6
  %mul.i262.i = mul nuw nsw i64 %conv.i257.i, 1000
  %mul1.i263.i = mul i64 %mul.i262.i, %call.i261.i
  br label %tout_convert_reg_field_to_ms.exit266.i

tout_convert_reg_field_to_ms.exit266.i:           ; preds = %if.then.i264.i, %tout_convert_reg_field_to_ms.exit254.i.tout_convert_reg_field_to_ms.exit266.i_crit_edge
  %msec.0.i265.i = phi i64 [ %mul1.i263.i, %if.then.i264.i ], [ %conv.i257.i, %tout_convert_reg_field_to_ms.exit254.i.tout_convert_reg_field_to_ms.exit266.i_crit_edge ]
  %37 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i268.i = getelementptr [15 x i64], ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %msec.0.i265.i, ptr %arrayidx.i268.i, align 8
  %add.ptr117.i = getelementptr inbounds i8, ptr %out.i, i32 44
  %40 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr117.i, align 4
  %shr119.i = lshr i32 %41, 29
  %and123.i = and i32 %41, 1048575
  %conv.i269.i = zext i32 %and123.i to i64
  %and.i270.i = and i32 %shr119.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270.i)
  %tobool.not.i271.i = icmp eq i32 %and.i270.i, 0
  br i1 %tobool.not.i271.i, label %tout_convert_reg_field_to_ms.exit266.i.tout_convert_reg_field_to_ms.exit278.i_crit_edge, label %if.then.i276.i

tout_convert_reg_field_to_ms.exit266.i.tout_convert_reg_field_to_ms.exit278.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit266.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit278.i

if.then.i276.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit266.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i272.i = add nsw i32 %and.i270.i, -1
  %call.i273.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i272.i) #6
  %mul.i274.i = mul nuw nsw i64 %conv.i269.i, 1000
  %mul1.i275.i = mul i64 %mul.i274.i, %call.i273.i
  br label %tout_convert_reg_field_to_ms.exit278.i

tout_convert_reg_field_to_ms.exit278.i:           ; preds = %if.then.i276.i, %tout_convert_reg_field_to_ms.exit266.i.tout_convert_reg_field_to_ms.exit278.i_crit_edge
  %msec.0.i277.i = phi i64 [ %mul1.i275.i, %if.then.i276.i ], [ %conv.i269.i, %tout_convert_reg_field_to_ms.exit266.i.tout_convert_reg_field_to_ms.exit278.i_crit_edge ]
  %42 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i280.i = getelementptr [15 x i64], ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %arrayidx.i280.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %msec.0.i277.i, ptr %arrayidx.i280.i, align 8
  %add.ptr134.i = getelementptr inbounds i8, ptr %out.i, i32 48
  %45 = ptrtoint ptr %add.ptr134.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr134.i, align 4
  %shr136.i = lshr i32 %46, 29
  %and140.i = and i32 %46, 1048575
  %conv.i281.i = zext i32 %and140.i to i64
  %and.i282.i = and i32 %shr136.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i282.i)
  %tobool.not.i283.i = icmp eq i32 %and.i282.i, 0
  br i1 %tobool.not.i283.i, label %tout_convert_reg_field_to_ms.exit278.i.tout_convert_reg_field_to_ms.exit290.i_crit_edge, label %if.then.i288.i

tout_convert_reg_field_to_ms.exit278.i.tout_convert_reg_field_to_ms.exit290.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit290.i

if.then.i288.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit278.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i284.i = add nsw i32 %and.i282.i, -1
  %call.i285.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i284.i) #6
  %mul.i286.i = mul nuw nsw i64 %conv.i281.i, 1000
  %mul1.i287.i = mul i64 %mul.i286.i, %call.i285.i
  br label %tout_convert_reg_field_to_ms.exit290.i

tout_convert_reg_field_to_ms.exit290.i:           ; preds = %if.then.i288.i, %tout_convert_reg_field_to_ms.exit278.i.tout_convert_reg_field_to_ms.exit290.i_crit_edge
  %msec.0.i289.i = phi i64 [ %mul1.i287.i, %if.then.i288.i ], [ %conv.i281.i, %tout_convert_reg_field_to_ms.exit278.i.tout_convert_reg_field_to_ms.exit290.i_crit_edge ]
  %47 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i292.i = getelementptr [15 x i64], ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %arrayidx.i292.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %msec.0.i289.i, ptr %arrayidx.i292.i, align 8
  %add.ptr151.i = getelementptr inbounds i8, ptr %out.i, i32 52
  %50 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr151.i, align 4
  %shr153.i = lshr i32 %51, 29
  %and157.i = and i32 %51, 1048575
  %conv.i293.i = zext i32 %and157.i to i64
  %and.i294.i = and i32 %shr153.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294.i)
  %tobool.not.i295.i = icmp eq i32 %and.i294.i, 0
  br i1 %tobool.not.i295.i, label %tout_convert_reg_field_to_ms.exit290.i.tout_convert_reg_field_to_ms.exit302.i_crit_edge, label %if.then.i300.i

tout_convert_reg_field_to_ms.exit290.i.tout_convert_reg_field_to_ms.exit302.i_crit_edge: ; preds = %tout_convert_reg_field_to_ms.exit290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tout_convert_reg_field_to_ms.exit302.i

if.then.i300.i:                                   ; preds = %tout_convert_reg_field_to_ms.exit290.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i296.i = add nsw i32 %and.i294.i, -1
  %call.i297.i = call i64 @int_pow(i64 noundef 60, i32 noundef %sub.i296.i) #6
  %mul.i298.i = mul nuw nsw i64 %conv.i293.i, 1000
  %mul1.i299.i = mul i64 %mul.i298.i, %call.i297.i
  br label %tout_convert_reg_field_to_ms.exit302.i

tout_convert_reg_field_to_ms.exit302.i:           ; preds = %if.then.i300.i, %tout_convert_reg_field_to_ms.exit290.i.tout_convert_reg_field_to_ms.exit302.i_crit_edge
  %msec.0.i301.i = phi i64 [ %mul1.i299.i, %if.then.i300.i ], [ %conv.i293.i, %tout_convert_reg_field_to_ms.exit290.i.tout_convert_reg_field_to_ms.exit302.i_crit_edge ]
  %52 = ptrtoint ptr %timeouts.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %timeouts.i.i, align 4
  %arrayidx.i304.i = getelementptr [15 x i64], ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %arrayidx.i304.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %msec.0.i301.i, ptr %arrayidx.i304.i, align 8
  br label %tout_query_dtor.exit

tout_query_dtor.exit:                             ; preds = %tout_convert_reg_field_to_ms.exit302.i, %if.then.tout_query_dtor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  br label %return

return:                                           ; preds = %tout_query_dtor.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %tout_query_dtor.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @int_pow(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"tout_def_sw_val", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/tout.c", i32 11, i32 18}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5016108}
!12 = !{i64 2158597682}
!13 = !{i64 2158597998}
!14 = !{i64 2158598310}
