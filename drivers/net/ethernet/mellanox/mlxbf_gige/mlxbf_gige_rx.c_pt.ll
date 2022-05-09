; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxbf_gige = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i16, i16, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i16, i16, i64, i64, i64, [1024 x ptr], [256 x ptr], i32, i32, i32, i32, i32, i8, i8, %struct.napi_struct, %struct.mlxbf_gige_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxbf_gige_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxbf_gige_set_mac_rx_filter(ptr nocapture noundef readonly %priv, i32 noundef %index, i64 noundef %dmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 576
  %mul = shl i32 %index, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %conv.i = trunc i64 %dmac to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %shr.i = lshr i64 %dmac, 32
  %conv3.i = trunc i64 %shr.i to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #4
  %add.ptr.i = getelementptr i8, ptr %add.ptr2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #4, !srcloc !10
  %add.ptr3 = getelementptr i8, ptr %1, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #4
  %shl = shl i32 16, %index
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %11 = trunc i64 %10 to i32
  %conv.i10 = or i32 %shl, %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv.i10) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %12) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %shr.i11 = lshr i64 %10, 32
  %conv3.i12 = trunc i64 %shr.i11 to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv3.i12) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %13) #4, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxbf_gige_get_mac_rx_filter(ptr nocapture noundef readonly %priv, i32 noundef %index, ptr nocapture noundef writeonly %dmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 576
  %mul = shl i32 %index, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i = getelementptr i32, ptr %add.ptr2, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #4
  %9 = ptrtoint ptr %dmac to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %dmac, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxbf_gige_enable_promisc(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = or i64 %7, 144115188075855872
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %shr.i = lshr i64 %9, 32
  %conv3.i = trunc i64 %shr.i to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #4, !srcloc !10
  %add.ptr3 = getelementptr i8, ptr %1, i32 1312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #4, !srcloc !10
  %add.ptr4 = getelementptr i8, ptr %1, i32 1320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i11 = getelementptr i8, ptr %1, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 -65536) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxbf_gige_disable_promisc(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %4 = and i32 %2, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxbf_gige_rx_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rx_buf_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf_dma) #4
  %0 = ptrtoint ptr %rx_buf_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rx_buf_dma, align 4, !annotation !15
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -65536) #4, !srcloc !10
  %add.ptr3.i = getelementptr i8, ptr %2, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i9.i = getelementptr i8, ptr %2, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %5 = zext i32 %4 to i64
  %6 = zext i32 %3 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %10 = trunc i64 %9 to i32
  %conv.i10.i = or i32 %10, 16
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i10.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %shr.i11.i = lshr i64 %9, 32
  %conv3.i12.i = trunc i64 %shr.i11.i to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3.i12.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %12) #4, !srcloc !10
  %rx_q_entries = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 9
  %13 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_q_entries, align 4
  %conv = zext i16 %14 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %dev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %rx_wqe_base_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 17
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %16, i32 noundef %mul, ptr noundef %rx_wqe_base_dma, i32 noundef 3264, i32 noundef 0) #4
  %rx_wqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 16
  %17 = ptrtoint ptr %rx_wqe_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %rx_wqe_base, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %18 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_q_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp191.not = icmp eq i16 %19, 0
  br i1 %cmp191.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0193 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rx_wqe_ptr.0192 = phi ptr [ %incdec.ptr, %if.end11.for.body_crit_edge ], [ %call.i, %for.cond.preheader.for.body_crit_edge ]
  %call6 = call ptr @mlxbf_gige_alloc_skb(ptr noundef %priv, i32 noundef 2048, ptr noundef nonnull %rx_buf_dma, i32 noundef 2) #4
  %arrayidx = getelementptr %struct.mlxbf_gige, ptr %priv, i32 0, i32 25, i32 %i.0193
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %for.body.free_wqe_and_skb_crit_edge, label %if.end11

for.body.free_wqe_and_skb_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_wqe_and_skb

if.end11:                                         ; preds = %for.body
  %21 = ptrtoint ptr %rx_buf_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buf_dma, align 4
  %incdec.ptr = getelementptr i32, ptr %rx_wqe_ptr.0192, i32 1
  %23 = ptrtoint ptr %rx_wqe_ptr.0192 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_wqe_ptr.0192, align 4
  %inc = add nuw nsw i32 %i.0193, 1
  %24 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_q_entries, align 4
  %conv4 = zext i16 %25 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %if.end11.for.end_crit_edge ]
  %26 = ptrtoint ptr %rx_wqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_wqe_base_dma, align 8
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %30 = call i32 @llvm.bswap.i32(i32 %27) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %30) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i160 = getelementptr i8, ptr %29, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 0) #4, !srcloc !10
  %31 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_q_entries, align 4
  %conv15 = zext i16 %32 to i32
  %mul16 = shl nuw nsw i32 %conv15, 3
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %rx_cqe_base_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 19
  %call.i161 = call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef %mul16, ptr noundef %rx_cqe_base_dma, i32 noundef 3264, i32 noundef 0) #4
  %rx_cqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 18
  %35 = ptrtoint ptr %rx_cqe_base to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i161, ptr %rx_cqe_base, align 4
  %tobool20.not = icmp eq ptr %call.i161, null
  br i1 %tobool20.not, label %for.end.free_wqe_and_skb_crit_edge, label %for.cond23.preheader

for.end.free_wqe_and_skb_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_wqe_and_skb

for.cond23.preheader:                             ; preds = %for.end
  %36 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx_q_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp26195.not = icmp eq i16 %37, 0
  br i1 %cmp26195.not, label %for.cond23.preheader.for.end33_crit_edge, label %for.cond23.preheader.for.body28_crit_edge

for.cond23.preheader.for.body28_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body28

for.cond23.preheader.for.end33_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end33

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond23.preheader.for.body28_crit_edge
  %i.1196 = phi i32 [ %inc32, %for.body28.for.body28_crit_edge ], [ 0, %for.cond23.preheader.for.body28_crit_edge ]
  %38 = ptrtoint ptr %rx_cqe_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_cqe_base, align 4
  %arrayidx30 = getelementptr i64, ptr %39, i32 %i.1196
  %40 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx30, align 8
  %or = or i64 %41, 2048
  store i64 %or, ptr %arrayidx30, align 8
  %inc32 = add nuw nsw i32 %i.1196, 1
  %42 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rx_q_entries, align 4
  %conv25 = zext i16 %43 to i32
  %cmp26 = icmp ult i32 %inc32, %conv25
  br i1 %cmp26, label %for.body28.for.body28_crit_edge, label %for.body28.for.end33_crit_edge

for.body28.for.end33_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end33

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body28

for.end33:                                        ; preds = %for.body28.for.end33_crit_edge, %for.cond23.preheader.for.end33_crit_edge
  %44 = ptrtoint ptr %rx_cqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_cqe_base_dma, align 8
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %add.ptr37 = getelementptr i8, ptr %47, i32 528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %48 = call i32 @llvm.bswap.i32(i32 %45) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %48) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i164 = getelementptr i8, ptr %47, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 0) #4, !srcloc !10
  %49 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rx_q_entries, align 4
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %add.ptr41 = getelementptr i8, ptr %52, i32 560
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %conv.i = zext i16 %50 to i32
  %53 = call i32 @llvm.bswap.i32(i32 %conv.i) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %53) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i167 = getelementptr i8, ptr %52, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 0) #4, !srcloc !10
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %add.ptr43 = getelementptr i8, ptr %55, i32 1400
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i168 = getelementptr i8, ptr %55, i32 1404
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %58 = zext i32 %57 to i64
  %59 = zext i32 %56 to i64
  %60 = shl nuw i64 %59, 32
  %61 = or i64 %60, %58
  %62 = or i64 %61, 144115188075855872
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %add.ptr47 = getelementptr i8, ptr %65, i32 1400
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %66 = lshr i64 %62, 32
  %67 = trunc i64 %66 to i32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %67) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %shr.i170 = lshr i64 %63, 32
  %conv3.i171 = trunc i64 %shr.i170 to i32
  %68 = call i32 @llvm.bswap.i32(i32 %conv3.i171) #4
  %add.ptr.i172 = getelementptr i8, ptr %65, i32 1404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %68) #4, !srcloc !10
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %add.ptr49 = getelementptr i8, ptr %70, i32 1344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i173 = getelementptr i8, ptr %70, i32 1348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 0) #4, !srcloc !10
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %add.ptr51 = getelementptr i8, ptr %72, i32 1352
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 16777216) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i174 = getelementptr i8, ptr %72, i32 1356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 0) #4, !srcloc !10
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 8
  %add.ptr53 = getelementptr i8, ptr %74, i32 56
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i175 = getelementptr i8, ptr %74, i32 60
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %77 = and i32 %75, -16777217
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %add.ptr56 = getelementptr i8, ptr %79, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %77) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i179 = getelementptr i8, ptr %79, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 0) #4, !srcloc !10
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %add.ptr58 = getelementptr i8, ptr %81, i32 1408
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i180 = getelementptr i8, ptr %81, i32 1412
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %84 = zext i32 %83 to i64
  %85 = zext i32 %82 to i64
  %86 = shl nuw i64 %85, 32
  %87 = or i64 %86, %84
  %88 = or i64 %87, 72057594037927936
  %89 = call i64 @llvm.bswap.i64(i64 %88)
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %add.ptr62 = getelementptr i8, ptr %91, i32 1408
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %92 = lshr i64 %88, 32
  %93 = trunc i64 %92 to i32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %93) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %shr.i182 = lshr i64 %89, 32
  %conv3.i183 = trunc i64 %shr.i182 to i32
  %94 = call i32 @llvm.bswap.i32(i32 %conv3.i183) #4
  %add.ptr.i184 = getelementptr i8, ptr %91, i32 1412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %94) #4, !srcloc !10
  %95 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rx_q_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool.not.i.i = icmp eq i16 %96, 0
  %conv73 = zext i16 %96 to i32
  %97 = call i32 @llvm.ctlz.i32(i32 %conv73, i1 true) #4, !range !16
  %sub.i.op.i = xor i32 %97, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %98 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv, align 8
  %add.ptr79 = getelementptr i8, ptr %99, i32 520
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %100 = call i32 @llvm.bswap.i32(i32 %sub.i) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %100) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %101 = ashr i32 %sub.i, 31
  %102 = call i32 @llvm.bswap.i32(i32 %101) #4
  %add.ptr.i187 = getelementptr i8, ptr %99, i32 524
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %102) #4, !srcloc !10
  br label %cleanup

free_wqe_and_skb:                                 ; preds = %for.end.free_wqe_and_skb_crit_edge, %for.body.free_wqe_and_skb_crit_edge
  %i.0189 = phi i32 [ %i.0.lcssa, %for.end.free_wqe_and_skb_crit_edge ], [ %i.0193, %for.body.free_wqe_and_skb_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0189)
  %cmp82197.not = icmp eq i32 %i.0189, 0
  br i1 %cmp82197.not, label %free_wqe_and_skb.for.end91_crit_edge, label %for.body84.preheader

free_wqe_and_skb.for.end91_crit_edge:             ; preds = %free_wqe_and_skb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end91

for.body84.preheader:                             ; preds = %free_wqe_and_skb
  %103 = ptrtoint ptr %rx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_wqe_base, align 4
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.preheader
  %j.0199 = phi i32 [ %inc90, %for.body84.for.body84_crit_edge ], [ 0, %for.body84.preheader ]
  %rx_wqe_ptr.1198 = phi ptr [ %incdec.ptr88, %for.body84.for.body84_crit_edge ], [ %104, %for.body84.preheader ]
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %107 = ptrtoint ptr %rx_wqe_ptr.1198 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_wqe_ptr.1198, align 4
  call void @dma_unmap_page_attrs(ptr noundef %106, i32 noundef %108, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #4
  %arrayidx87 = getelementptr %struct.mlxbf_gige, ptr %priv, i32 0, i32 25, i32 %j.0199
  %109 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx87, align 4
  call void @consume_skb(ptr noundef %110) #4
  %incdec.ptr88 = getelementptr i32, ptr %rx_wqe_ptr.1198, i32 1
  %inc90 = add nuw nsw i32 %j.0199, 1
  %exitcond.not = icmp eq i32 %inc90, %i.0189
  br i1 %exitcond.not, label %for.body84.for.end91_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body84

for.body84.for.end91_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end91

for.end91:                                        ; preds = %for.body84.for.end91_crit_edge, %free_wqe_and_skb.for.end91_crit_edge
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %113 = ptrtoint ptr %rx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx_wqe_base, align 4
  %115 = ptrtoint ptr %rx_wqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_wqe_base_dma, align 8
  call void @dma_free_attrs(ptr noundef %112, i32 noundef %mul, ptr noundef %114, i32 noundef %116, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end91, %for.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end91 ], [ 0, %for.end33 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf_dma) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxbf_gige_alloc_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxbf_gige_rx_deinit(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1408
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i = getelementptr i8, ptr %1, i32 1412
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %4 = and i32 %2, -16777217
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 1408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i44 = getelementptr i8, ptr %6, i32 1412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #4, !srcloc !10
  %rx_wqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 16
  %rx_q_entries = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 9
  %7 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_q_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp48.not = icmp eq i16 %8, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %9 = ptrtoint ptr %rx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_wqe_base, align 4
  %dev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rx_wqe_ptr.049 = phi ptr [ %10, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %rx_wqe_ptr.049 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_wqe_ptr.049, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.mlxbf_gige, ptr %priv, i32 0, i32 25, i32 %i.050
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %16) #4
  %incdec.ptr = getelementptr i32, ptr %rx_wqe_ptr.049, i32 1
  %inc = add nuw nsw i32 %i.050, 1
  %17 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_q_entries, align 4
  %conv = zext i16 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast = zext i16 %18 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %entry.for.end_crit_edge ]
  %dev6 = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  %19 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev6, align 4
  %21 = ptrtoint ptr %rx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_wqe_base, align 4
  %rx_wqe_base_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 17
  %23 = ptrtoint ptr %rx_wqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_wqe_base_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %.lcssa, ptr noundef %22, i32 noundef %24, i32 noundef 0) #4
  %25 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_q_entries, align 4
  %conv9 = zext i16 %26 to i32
  %mul10 = shl nuw nsw i32 %conv9, 3
  %27 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev6, align 4
  %rx_cqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 18
  %29 = ptrtoint ptr %rx_cqe_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_cqe_base, align 4
  %rx_cqe_base_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 19
  %31 = ptrtoint ptr %rx_cqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_cqe_base_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef %mul10, ptr noundef %30, i32 noundef %32, i32 noundef 0) #4
  %33 = call ptr @memset(ptr %rx_wqe_base, i32 0, i32 16)
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %add.ptr17 = getelementptr i8, ptr %35, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i45 = getelementptr i8, ptr %35, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 0) #4, !srcloc !10
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %add.ptr19 = getelementptr i8, ptr %37, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %add.ptr.i46 = getelementptr i8, ptr %37, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxbf_gige_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %rx_buf_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -5288
  %call = tail call zeroext i1 @mlxbf_gige_handle_tx_complete(ptr noundef %add.ptr) #4
  %netdev1.i = getelementptr i8, ptr %napi, i32 -5272
  %rx_q_entries.i = getelementptr i8, ptr %napi, i32 -5212
  %rx_wqe_base.i = getelementptr i8, ptr %napi, i32 -5188
  %rx_cqe_base.i = getelementptr i8, ptr %napi, i32 -5180
  %valid_polarity.i = getelementptr i8, ptr %napi, i32 -3
  %rx_mac_errors.i = getelementptr i8, ptr %napi, i32 280
  %rx_truncate_errors.i = getelementptr i8, ptr %napi, i32 272
  %dev.i = getelementptr i8, ptr %napi, i32 -5276
  br label %do.body

do.body:                                          ; preds = %mlxbf_gige_rx_packet.exit.do.body_crit_edge, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %inc49.i, %mlxbf_gige_rx_packet.exit.do.body_crit_edge ]
  %0 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf_dma.i) #4
  %2 = ptrtoint ptr %rx_buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rx_buf_dma.i, align 4, !annotation !15
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 560
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 564
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %7 = call i32 @llvm.bswap.i32(i32 %5) #4
  %conv.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_q_entries.i, align 4
  %rem.i = urem i16 %conv.i, %9
  %10 = ptrtoint ptr %rx_wqe_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_wqe_base.i, align 4
  %conv5.i = zext i16 %rem.i to i32
  %add.ptr6.i = getelementptr i32, ptr %11, i32 %conv5.i
  %12 = ptrtoint ptr %rx_cqe_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_cqe_base.i, align 4
  %add.ptr8.i = getelementptr i64, ptr %13, i32 %conv5.i
  %14 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr8.i, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 11
  %18 = and i32 %17, 1
  %19 = ptrtoint ptr %valid_polarity.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid_polarity.i, align 1
  %conv10.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv10.i)
  %cmp.not.i = icmp eq i32 %18, %conv10.i
  br i1 %cmp.not.i, label %if.end.i, label %do.body.mlxbf_gige_rx_packet.exit.thread_crit_edge

do.body.mlxbf_gige_rx_packet.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxbf_gige_rx_packet.exit.thread

if.end.i:                                         ; preds = %do.body
  %and12.i = and i64 %15, 61440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i)
  %cmp13.i = icmp eq i64 %and12.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end.i
  %stats.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %21 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %23 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_bytes.i, align 8
  %25 = and i32 %16, 2047
  %conv19.i = add i32 %24, %25
  store i32 %conv19.i, ptr %rx_bytes.i, align 8
  %arrayidx.i = getelementptr %struct.mlxbf_gige, ptr %add.ptr, i32 0, i32 25, i32 %conv5.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call22.i = call ptr @skb_put(ptr noundef %27, i32 noundef %25) #4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %call23.i = call zeroext i16 @eth_type_trans(ptr noundef %27, ptr noundef %1) #4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %call23.i, ptr %protocol.i, align 8
  %call24.i = call ptr @mlxbf_gige_alloc_skb(ptr noundef %add.ptr, i32 noundef 2048, ptr noundef nonnull %rx_buf_dma.i, i32 noundef 2) #4
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.then15.i.mlxbf_gige_rx_packet.exit.thread_crit_edge, label %if.end27.i

if.then15.i.mlxbf_gige_rx_packet.exit.thread_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxbf_gige_rx_packet.exit.thread

if.end27.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call24.i, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr6.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %34, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #4
  %35 = ptrtoint ptr %rx_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_buf_dma.i, align 4
  %37 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %add.ptr6.i, align 4
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end.i
  %and31.i = and i64 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i)
  %tobool32.not.i = icmp eq i64 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else36.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %rx_mac_errors.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_mac_errors.i, align 8
  %inc35.i = add i64 %39, 1
  store i64 %inc35.i, ptr %rx_mac_errors.i, align 8
  br label %if.end44.i

if.else36.i:                                      ; preds = %if.else.i
  %and37.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37.i)
  %tobool38.not.i = icmp eq i64 %and37.i, 0
  br i1 %tobool38.not.i, label %if.else36.i.if.end44.i_crit_edge, label %if.then39.i

if.else36.i.if.end44.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %rx_truncate_errors.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_truncate_errors.i, align 8
  %inc41.i = add i64 %41, 1
  store i64 %inc41.i, ptr %rx_truncate_errors.i, align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i, %if.else36.i.if.end44.i_crit_edge, %if.then33.i, %if.end27.i
  %skb.0.i = phi ptr [ %27, %if.end27.i ], [ null, %if.then33.i ], [ null, %if.then39.i ], [ null, %if.else36.i.if.end44.i_crit_edge ]
  %inc45.i = add i16 %conv.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %add.ptr48.i = getelementptr i8, ptr %43, i32 560
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  %conv.i.i = zext i16 %inc45.i to i32
  %44 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %44) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i129.i = getelementptr i8, ptr %43, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 0) #4, !srcloc !10
  %inc49.i = add nuw nsw i32 %work_done.0, 1
  %45 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rx_q_entries.i, align 4
  %47 = urem i16 %inc45.i, %46
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp56.i = icmp eq i16 %47, 0
  br i1 %cmp56.i, label %if.then58.i, label %if.end44.i.if.end62.i_crit_edge

if.end44.i.if.end62.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %valid_polarity.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid_polarity.i, align 1
  %50 = xor i8 %49, 1
  store i8 %50, ptr %valid_polarity.i, align 1
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end44.i.if.end62.i_crit_edge
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 8
  %add.ptr64.i = getelementptr i8, ptr %52, i32 1456
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i130.i = getelementptr i8, ptr %52, i32 1460
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130.i) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %55 = call i32 @llvm.bswap.i32(i32 %53) #4
  %conv66.i = trunc i32 %55 to i16
  %56 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rx_q_entries.i, align 4
  %rem70.i = urem i16 %conv66.i, %57
  %tobool72.not.i = icmp eq ptr %skb.0.i, null
  br i1 %tobool72.not.i, label %if.end62.i.mlxbf_gige_rx_packet.exit_crit_edge, label %if.then73.i

if.end62.i.mlxbf_gige_rx_packet.exit_crit_edge:   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxbf_gige_rx_packet.exit

if.then73.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  %call74.i = call i32 @netif_receive_skb(ptr noundef nonnull %skb.0.i) #4
  br label %mlxbf_gige_rx_packet.exit

mlxbf_gige_rx_packet.exit.thread:                 ; preds = %if.then15.i.mlxbf_gige_rx_packet.exit.thread_crit_edge, %do.body.mlxbf_gige_rx_packet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf_dma.i) #4
  br label %do.end

mlxbf_gige_rx_packet.exit:                        ; preds = %if.then73.i, %if.end62.i.mlxbf_gige_rx_packet.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %rem70.i)
  %cmp78.i = icmp ne i16 %47, %rem70.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf_dma.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc49.i, i32 %budget)
  %cmp = icmp slt i32 %inc49.i, %budget
  %or.cond = select i1 %cmp78.i, i1 %cmp, i1 false
  br i1 %or.cond, label %mlxbf_gige_rx_packet.exit.do.body_crit_edge, label %mlxbf_gige_rx_packet.exit.do.end_crit_edge

mlxbf_gige_rx_packet.exit.do.end_crit_edge:       ; preds = %mlxbf_gige_rx_packet.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

mlxbf_gige_rx_packet.exit.do.body_crit_edge:      ; preds = %mlxbf_gige_rx_packet.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %mlxbf_gige_rx_packet.exit.do.end_crit_edge, %mlxbf_gige_rx_packet.exit.thread
  %work_done.122 = phi i32 [ %work_done.0, %mlxbf_gige_rx_packet.exit.thread ], [ %inc49.i, %mlxbf_gige_rx_packet.exit.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.122, i32 %budget)
  %cmp2 = icmp slt i32 %work_done.122, %budget
  br i1 %cmp2, label %land.lhs.true, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %do.end
  %call3 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.122) #4
  br i1 %call3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %add.ptr4 = getelementptr i8, ptr %59, i32 56
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %add.ptr.i14 = getelementptr i8, ptr %59, i32 60
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %62 = and i32 %60, -16777217
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 8
  %add.ptr7 = getelementptr i8, ptr %64, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %62) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %add.ptr.i16 = getelementptr i8, ptr %64, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #4, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %do.end.if.end_crit_edge
  ret i32 %work_done.122
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxbf_gige_handle_tx_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{i64 2155967469}
!10 = !{i64 6050638}
!11 = !{i64 2155967842}
!12 = !{i64 6051056}
!13 = !{i64 2155966661}
!14 = !{i64 2155967099}
!15 = !{!"auto-init"}
!16 = !{i32 0, i32 33}
!17 = !{i64 2155982075}
