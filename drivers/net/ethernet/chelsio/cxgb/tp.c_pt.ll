; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/tp.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/tp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_tp_destroy(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %tp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @t1_tp_create(ptr noundef %adapter, ptr nocapture noundef readnone %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_tp_intr_enable(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  br i1 %tobool.not, label %do.body, label %do.body13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr6 = getelementptr i8, ptr %13, i32 2576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %or = or i32 %5, 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %add.ptr12 = getelementptr i8, ptr %18, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #4, !srcloc !11
  br label %if.end

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr18 = getelementptr i8, ptr %13, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %or22 = or i32 %5, 64
  %19 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %add.ptr25 = getelementptr i8, ptr %23, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #4, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %do.body13, %do.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_tp_intr_disable(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  br i1 %tobool.not, label %do.body, label %do.body13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr6 = getelementptr i8, ptr %13, i32 2576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %and = and i32 %5, -5
  %14 = tail call i32 @llvm.bswap.i32(i32 %and)
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %add.ptr12 = getelementptr i8, ptr %18, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #4, !srcloc !11
  br label %if.end

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr18 = getelementptr i8, ptr %13, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %and22 = and i32 %5, -65
  %19 = tail call i32 @llvm.bswap.i32(i32 %and22)
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %add.ptr25 = getelementptr i8, ptr %23, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #4, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %do.body13, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_tp_intr_clear(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  br i1 %tobool.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %7, i32 2580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %add.ptr6 = getelementptr i8, ptr %11, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 67108864) #4, !srcloc !11
  br label %return

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr11 = getelementptr i8, ptr %7, i32 1140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -1) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %add.ptr16 = getelementptr i8, ptr %15, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 1073741824) #4, !srcloc !11
  br label %return

return:                                           ; preds = %do.body7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_tp_intr_handler(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %5, i32 1140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %add.ptr6 = getelementptr i8, ptr %10, i32 1140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #4, !srcloc !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_tp_set_ip_checksum_offload(ptr nocapture noundef readonly %tp, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 776
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.i = icmp eq i32 %enable, 0
  %5 = and i32 %4, -2097153
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not.i, i32 0, i32 8192
  %val.0.i = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #4
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %add.ptr4.i = getelementptr i8, ptr %11, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_tp_set_tcp_checksum_offload(ptr nocapture noundef readonly %tp, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 776
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.i = icmp eq i32 %enable, 0
  %5 = and i32 %4, -524289
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not.i, i32 0, i32 2048
  %val.0.i = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #4
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %add.ptr4.i = getelementptr i8, ptr %11, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_tp_reset(ptr nocapture noundef readonly %tp, ptr nocapture noundef readonly %p, i32 noundef %tp_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %is_asic.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %is_asic.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_asic.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.tp_init.exit_crit_edge, label %if.end.i

entry.tp_init.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %tp_init.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %..i = select i1 %tobool1.not.i, i32 16744, i32 12648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %..i) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %8, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %add.ptr9.i = getelementptr i8, ptr %10, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 1141637120) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %use_5tuple_mode.i = getelementptr inbounds %struct.tp_params, ptr %p, i32 0, i32 9
  %11 = ptrtoint ptr %use_5tuple_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %use_5tuple_mode.i, align 4
  %shl.i = shl i32 %12, 17
  %or14.i = or i32 %shl.i, 1946189888
  %13 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %add.ptr16.i = getelementptr i8, ptr %15, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %13) #4, !srcloc !11
  %chip_version.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 9
  %16 = ptrtoint ptr %chip_version.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 2
  br i1 %cmp.i.i, label %adapter_matches_type.exit.i, label %if.end.i.tp_init.exit_crit_edge

if.end.i.tp_init.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tp_init.exit

adapter_matches_type.exit.i:                      ; preds = %if.end.i
  %chip_revision.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %18 = ptrtoint ptr %chip_revision.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chip_revision.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp4.i.not.i = icmp eq i16 %19, 3
  br i1 %cmp4.i.not.i, label %land.lhs.true.i, label %adapter_matches_type.exit.i.tp_init.exit_crit_edge

adapter_matches_type.exit.i.tp_init.exit_crit_edge: ; preds = %adapter_matches_type.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tp_init.exit

land.lhs.true.i:                                  ; preds = %adapter_matches_type.exit.i
  %nports.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp ugt i32 %21, 1
  br i1 %cmp.i, label %if.then19.i, label %land.lhs.true.i.tp_init.exit_crit_edge

land.lhs.true.i.tp_init.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tp_init.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.i = udiv i32 %tp_clk, 1000
  %mul.i = shl nuw nsw i32 %div.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %or25.i = or i32 %mul.i, -1073741823
  %22 = tail call i32 @llvm.bswap.i32(i32 %or25.i) #4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %add.ptr27.i = getelementptr i8, ptr %24, i32 1208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %22) #4, !srcloc !11
  br label %tp_init.exit

tp_init.exit:                                     ; preds = %if.then19.i, %land.lhs.true.i.tp_init.exit_crit_edge, %adapter_matches_type.exit.i.tp_init.exit_crit_edge, %if.end.i.tp_init.exit_crit_edge, %entry.tp_init.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %26, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i64 6722871}
!10 = !{i64 2156831983}
!11 = !{i64 6722453}
!12 = !{i64 2156832664}
!13 = !{i64 2156833573}
!14 = !{i64 2156834343}
!15 = !{i64 2156834990}
!16 = !{i64 2156835907}
!17 = !{i64 2156836830}
!18 = !{i64 2156837735}
!19 = !{i64 2156838475}
!20 = !{i64 2156838705}
!21 = !{i64 2156839418}
!22 = !{i64 2156839646}
!23 = !{i64 2156828381}
!24 = !{i64 2156829120}
!25 = !{i64 2156829935}
!26 = !{i64 2156830879}
!27 = !{i64 2156840184}
