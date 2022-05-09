; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gf100_vmm_pgt = external dso_local constant %struct.nvkm_vmm_desc_func, align 4
@gf100_vmm_pgd = external dso_local constant %struct.nvkm_vmm_desc_func, align 4
@gk104_vmm_desc_17_12 = dso_local constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 15, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_vmm_lpt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr @gk104_vmm_lpt_invalid, ptr @gf100_vmm_pgt_unmap, ptr null, ptr null, ptr @gf100_vmm_pgt_mem, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gk104_vmm_desc_17_17 = dso_local constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gk104_vmm_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_vmm_desc_16_12 = dso_local constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_vmm_desc_16_16 = dso_local constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gk104_vmm_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_vmm_16 = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @gk104_vmm_desc_16_16, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_16_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@gk104_vmm_17 = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 17, ptr @gk104_vmm_desc_17_17, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_17_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"gk104_vmm_desc_17_12\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 40, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"gk104_vmm_lpt\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 33, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"gk104_vmm_desc_17_17\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 47, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"gk104_vmm_desc_16_12\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 54, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"gk104_vmm_desc_16_16\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 61, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"gk104_vmm_16\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 83, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"gk104_vmm_17\00", align 1
@___asan_gen_.22 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 68, i32 1 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gk104_vmm_desc_17_12, ptr @gk104_vmm_lpt, ptr @gk104_vmm_desc_17_17, ptr @gk104_vmm_desc_16_12, ptr @gk104_vmm_desc_16_16, ptr @gk104_vmm_16, ptr @gk104_vmm_17], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_desc_17_12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_lpt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_desc_17_17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_desc_16_12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_desc_16_16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_vmm_17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_vmm_lpt_invalid(ptr nocapture readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ptei, 3
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %base, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %mul, %conv
  %conv3 = zext i32 %add to i64
  %conv4 = zext i32 %ptes to i64
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %7(ptr noundef %3) #2
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool31.not85 = icmp eq i32 %ptes, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !23

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool31.not85, label %for.cond.preheader.if.end50_crit_edge, label %for.cond.preheader.do.body32_crit_edge

for.cond.preheader.do.body32_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body32

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50

if.then:                                          ; preds = %entry
  br i1 %tobool31.not85, label %if.then.if.end50_crit_edge, label %do.body11.preheader

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50

do.body11.preheader:                              ; preds = %if.then
  %shr = lshr i64 %conv3, 3
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %do.body11.preheader
  %_c.084 = phi i64 [ %dec, %do.body11.do.body11_crit_edge ], [ %conv4, %do.body11.preheader ]
  %_o.083 = phi i64 [ %inc, %do.body11.do.body11_crit_edge ], [ %shr, %do.body11.preheader ]
  %dec = add nsw i64 %_c.084, -1
  %inc = add nuw nsw i64 %_o.083, 1
  %idxprom = trunc i64 %_o.083 to i32
  %arrayidx = getelementptr i64, ptr %call, i32 %idxprom
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 2) #2, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  %arrayidx23 = getelementptr i32, ptr %arrayidx, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx23, i32 0) #2, !srcloc !25
  %tobool10.not = icmp eq i64 %dec, 0
  br i1 %tobool10.not, label %do.body11.if.end50_crit_edge, label %do.body11.do.body11_crit_edge

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body11

do.body11.if.end50_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %for.cond.preheader.do.body32_crit_edge
  %_a.087 = phi i64 [ %add49, %do.body32.do.body32_crit_edge ], [ %conv3, %for.cond.preheader.do.body32_crit_edge ]
  %_c.186 = phi i64 [ %dec48, %do.body32.do.body32_crit_edge ], [ %conv4, %for.cond.preheader.do.body32_crit_edge ]
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %_a.087, i32 noundef 2) #2
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs39 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs39, align 4
  %wr3240 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3240 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3240, align 4
  %add42 = add nuw nsw i64 %_a.087, 4
  tail call void %19(ptr noundef %15, i64 noundef %add42, i32 noundef 0) #2
  %dec48 = add nsw i64 %_c.186, -1
  %add49 = add nuw nsw i64 %_a.087, 8
  %tobool31.not = icmp eq i64 %dec48, 0
  br i1 %tobool31.not, label %do.body32.if.end50_crit_edge, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body32

do.body32.if.end50_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50

if.end50:                                         ; preds = %do.body32.if.end50_crit_edge, %do.body11.if.end50_crit_edge, %if.then.if.end50_crit_edge, %for.cond.preheader.if.end50_crit_edge
  %20 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  tail call void %25(ptr noundef %21) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_vmm_new_(ptr noundef nonnull @gk104_vmm_16, ptr noundef nonnull @gk104_vmm_17, ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_unmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_flush(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @gk104_vmm_desc_17_12, !1, !"gk104_vmm_desc_17_12", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 40, i32 1}
!2 = !{ptr @gk104_vmm_desc_17_17, !3, !"gk104_vmm_desc_17_17", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 47, i32 1}
!4 = !{ptr @gk104_vmm_desc_16_12, !5, !"gk104_vmm_desc_16_12", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 54, i32 1}
!6 = !{ptr @gk104_vmm_desc_16_16, !7, !"gk104_vmm_desc_16_16", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 61, i32 1}
!8 = !{ptr @gk104_vmm_lpt, !9, !"gk104_vmm_lpt", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 33, i32 1}
!10 = !{ptr @gk104_vmm_16, !11, !"gk104_vmm_16", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 83, i32 1}
!12 = !{ptr @gk104_vmm_17, !13, !"gk104_vmm_17", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk104.c", i32 68, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2156252947}
!25 = !{i64 5405566}
!26 = !{i64 2156253330}
