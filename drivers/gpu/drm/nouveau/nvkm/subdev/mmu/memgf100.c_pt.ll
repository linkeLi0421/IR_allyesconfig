; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memgf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.136], i32, [16 x %struct.anon.137], ptr, %struct.anon.138, %struct.anon.138, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.136 = type { i8, i64 }
%struct.anon.137 = type { i8, i8 }
%struct.anon.138 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_mem_map_v0 = type { i8, i8, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gf100_mem_v0 = type { i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_mem_map(ptr nocapture noundef readonly %mmu, ptr noundef %memory, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr nocapture noundef writeonly %paddr, ptr nocapture noundef writeonly %psize, ptr noundef %pvma) local_unnamed_addr #0 align 64 {
entry:
  %uvmm = alloca %struct.gf100_vmm_map_v0, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %uvmm) #3
  %0 = call ptr @memset(ptr %uvmm, i32 0, i32 5)
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device1, align 4
  %call = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp2 = icmp ugt i32 %argc, 2
  br i1 %cmp2, label %land.lhs.true6, label %land.lhs.true22

land.lhs.true6:                                   ; preds = %entry
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9 = icmp eq i8 %4, 0
  br i1 %cmp9, label %if.then, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 3
  br i1 %tobool.not, label %if.then14, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %ro = getelementptr inbounds %struct.gf100_mem_map_v0, ptr %argv, i32 0, i32 1
  %5 = ptrtoint ptr %ro to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ro, align 1
  %ro15 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %uvmm, i32 0, i32 2
  %7 = ptrtoint ptr %ro15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ro15, align 1
  %kind = getelementptr inbounds %struct.gf100_mem_map_v0, ptr %argv, i32 0, i32 2
  %8 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %kind, align 1
  %kind16 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %uvmm, i32 0, i32 4
  %10 = ptrtoint ptr %kind16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %kind16, align 1
  br label %if.end32

land.lhs.true22:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp23 = icmp eq i32 %argc, 0
  br i1 %cmp23, label %land.lhs.true22.if.end32_crit_edge, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true22.if.end32_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true22.if.end32_crit_edge, %if.then14
  %11 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %memory, align 4
  %page = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %call33 = tail call zeroext i8 %14(ptr noundef %memory) #3
  %15 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memory, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %size, align 4
  %call35 = tail call i64 %18(ptr noundef %memory) #3
  %call36 = tail call i32 @nvkm_vmm_get(ptr noundef %call, i8 noundef zeroext %call33, i64 noundef %call35, ptr noundef %pvma) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memory, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %23 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pvma, align 4
  %call41 = call i32 %22(ptr noundef %memory, i64 noundef 0, ptr noundef %call, ptr noundef %24, ptr noundef nonnull %uvmm, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource_addr, align 4
  %call46 = call i32 %28(ptr noundef %2, i32 noundef 1) #3
  %conv47 = zext i32 %call46 to i64
  %29 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pvma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr, align 8
  %add = add i64 %32, %conv47
  %33 = ptrtoint ptr %paddr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add, ptr %paddr, align 8
  %34 = load ptr, ptr %pvma, align 4
  %size48 = getelementptr inbounds %struct.nvkm_vma, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %size48 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load = load i56, ptr %size48, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  %36 = ptrtoint ptr %psize to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %bf.cast, ptr %psize, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end39.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ %call36, %if.end32.cleanup_crit_edge ], [ %call41, %if.end39.cleanup_crit_edge ], [ -38, %land.lhs.true22.cleanup_crit_edge ], [ -38, %land.lhs.true6.cleanup_crit_edge ], [ -7, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %uvmm) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_mem_new(ptr nocapture noundef readonly %mmu, i32 noundef %type, i8 noundef zeroext %page, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %pmemory) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp1 = icmp ugt i32 %argc, 1
  br i1 %cmp1, label %land.lhs.true5, label %land.lhs.true21

land.lhs.true5:                                   ; preds = %entry
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8 = icmp eq i8 %1, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 2
  br i1 %tobool.not, label %if.then13, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %contig14 = getelementptr inbounds %struct.gf100_mem_v0, ptr %argv, i32 0, i32 1
  %2 = ptrtoint ptr %contig14 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %contig14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool15 = icmp ne i8 %3, 0
  br label %if.end31

land.lhs.true21:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp22 = icmp eq i32 %argc, 0
  br i1 %cmp22, label %land.lhs.true21.if.end31_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true21.if.end31_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true21.if.end31_crit_edge, %if.then13
  %contig.0.off0 = phi i1 [ %tobool15, %if.then13 ], [ false, %land.lhs.true21.if.end31_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %6 = and i8 %5, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool35.not = icmp eq i8 %6, 0
  %. = select i1 %tobool35.not, i8 3, i8 1
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_ram_get(ptr noundef %8, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext %page, i64 noundef %size, i1 noundef zeroext %contig.0.off0, i1 noundef zeroext false, ptr noundef %pmemory) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %land.lhs.true21.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end31 ], [ -38, %land.lhs.true21.cleanup_crit_edge ], [ -38, %land.lhs.true5.cleanup_crit_edge ], [ -7, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
