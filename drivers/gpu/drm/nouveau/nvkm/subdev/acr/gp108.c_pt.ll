; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>
%struct.nvkm_acr_hsf = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }

@gp108_acr_unload_0 = dso_local constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gm200_acr_unload_load, ptr @gm200_acr_unload_boot, ptr @gp108_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp108/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gp108/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gv100/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gv100/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gp108/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp108/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gv100/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gv100/acr/ucode_load.bin\00", section ".modinfo", align 1
@gp108_acr_fwif = internal constant { [3 x %struct.nvkm_acr_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gp102_acr_load, ptr @gp108_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gp108_acr = internal constant { %struct.nvkm_acr_func, [40 x i8] } { %struct.nvkm_acr_func { ptr @gp108_acr_load_fwif, ptr null, ptr null, ptr @gp108_acr_unload_fwif, ptr @gp102_acr_wpr_parse, ptr @gp102_acr_wpr_layout, ptr @gp102_acr_wpr_alloc, ptr @gp102_acr_wpr_build, ptr @gp102_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 0 }, [40 x i8] zeroinitializer }, align 32
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@gp108_acr_load_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp108_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gp108_acr_unload_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp108_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gp108_acr_load_0 = internal constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gp102_acr_load_load, ptr @gm200_acr_load_boot, ptr @gp108_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"gp108_acr_unload_0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 51, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"gp108_acr_fwif\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 102, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"gp108_acr\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 89, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"gp108_acr_load_fwif\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 83, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"gp108_acr_unload_fwif\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 64, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"gp108_acr_load_0\00", align 1
@___asan_gen_.17 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 70, i32 1 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @gp108_acr_unload_0, ptr @gp108_acr_fwif, ptr @gp108_acr, ptr @gp108_acr_load_fwif, ptr @gp108_acr_unload_fwif, ptr @gp108_acr_load_0], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_acr_unload_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_acr_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_acr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_acr_load_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_acr_unload_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_acr_load_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp108_acr_hsfw_bld(ptr noundef %acr, ptr nocapture noundef readonly %hsf) #0 align 64 {
entry:
  %hsdesc = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hsdesc) #3
  %ctx_dma = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 2
  %0 = call ptr @memset(ptr %hsdesc, i32 0, i32 32)
  %1 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1, ptr %ctx_dma, align 1
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 3
  %vma = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 13
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %6 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %code_dma_base, align 1
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 4
  %non_sec_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 6
  %7 = ptrtoint ptr %non_sec_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %non_sec_addr, align 4
  %9 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %non_sec_code_off, align 1
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 5
  %non_sec_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 7
  %10 = ptrtoint ptr %non_sec_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %non_sec_size, align 4
  %12 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %non_sec_code_size, align 1
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 6
  %sec_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 8
  %13 = ptrtoint ptr %sec_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec_addr, align 4
  %15 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %sec_code_off, align 1
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 7
  %sec_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 9
  %16 = ptrtoint ptr %sec_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sec_size, align 4
  %18 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %sec_code_size, align 1
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 8
  %19 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %code_entry_point, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 9
  %20 = load i64, ptr %addr, align 8
  %data_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 10
  %21 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_addr, align 4
  %conv = zext i32 %22 to i64
  %add = add i64 %20, %conv
  %23 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %add, ptr %data_dma_base, align 1
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 10
  %data_size3 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 11
  %24 = ptrtoint ptr %data_size3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_size3, align 4
  %26 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %data_size, align 1
  %argc = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 11
  %27 = ptrtoint ptr %argc to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %argc, align 1
  %argv = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hsdesc, i32 0, i32 12
  %28 = ptrtoint ptr %argv to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %argv, align 1
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v2_dump(ptr noundef %subdev, ptr noundef nonnull %hsdesc) #3
  %falcon = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 14
  %29 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %falcon, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %30, ptr noundef nonnull %hsdesc, i32 noundef 0, i32 noundef 84, i8 noundef zeroext 0) #3
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hsdesc) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_unload_load(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_unload_boot(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp108_acr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gp108_acr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_load(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_layout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_alloc(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_build(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_acr_wpr_patch(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_load_load(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_load_boot(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @gp108_acr_unload_0, !1, !"gp108_acr_unload_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware293, !3, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware294, !5, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 58, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware295, !7, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 60, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware296, !9, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 61, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware297, !11, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 76, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware298, !13, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 77, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware299, !15, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 79, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware300, !17, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 80, i32 1}
!18 = !{ptr @gp108_acr_fwif, !19, !"gp108_acr_fwif", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 102, i32 1}
!20 = !{ptr @gp108_acr, !21, !"gp108_acr", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 89, i32 1}
!22 = !{ptr @gp108_acr_load_fwif, !23, !"gp108_acr_load_fwif", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 83, i32 1}
!24 = !{ptr @gp108_acr_load_0, !25, !"gp108_acr_load_0", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 70, i32 1}
!26 = !{ptr @gp108_acr_unload_fwif, !27, !"gp108_acr_unload_fwif", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c", i32 64, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
