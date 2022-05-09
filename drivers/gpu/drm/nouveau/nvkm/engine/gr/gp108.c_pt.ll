; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.153, %struct.anon.154, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.153 = type { ptr }
%struct.anon.154 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.142, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gp108_gr_gpccs_acr = dso_local constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 8, i32 84, ptr @gp108_gr_acr_bld_write, ptr @gp108_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gp108_gr_fecs_acr = dso_local constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 0, i32 84, ptr @gp108_gr_acr_bld_write, ptr @gp108_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp108/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp108/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp108/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp108/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp108/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp108/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp108/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp108/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp108/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp108/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp108/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp108/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gp108_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gp107_gr, ptr @gp108_gr_fecs_acr, ptr @gp108_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gp107_gr = external dso_local constant %struct.gf100_gr_func, align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"gp108_gr_gpccs_acr\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 60, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"gp108_gr_fecs_acr\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 68, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"gp108_gr_fwif\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 88, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @gp108_gr_gpccs_acr, ptr @gp108_gr_fecs_acr, ptr @gp108_gr_fwif], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_gr_gpccs_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_gr_fecs_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp108_gr_acr_bld_write(ptr nocapture noundef readonly %acr, i32 noundef %bld, ptr nocapture noundef readonly %lsfw) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %img, align 4
  %app_start_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 9
  %2 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %app_start_offset, align 4
  %add = add i32 %3, %1
  %conv = zext i32 %add to i64
  %app_resident_code_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 11
  %4 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %app_resident_code_offset, align 4
  %conv1 = zext i32 %5 to i64
  %add2 = add nuw nsw i64 %conv, %conv1
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %6 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %app_resident_data_offset, align 4
  %conv3 = zext i32 %7 to i64
  %add4 = add nuw nsw i64 %conv3, %conv
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hdr) #3
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 3
  %8 = call ptr @memset(ptr %hdr, i32 0, i32 36)
  %9 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %add2, ptr %code_dma_base, align 1
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 4
  %10 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %5, ptr %non_sec_code_off, align 1
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 5
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %11 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %app_resident_code_size, align 4
  %13 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %non_sec_code_size, align 1
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 6
  %14 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %sec_code_off, align 1
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 7
  %15 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %sec_code_size, align 1
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 8
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 10
  %16 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %app_imem_entry, align 4
  %18 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %code_entry_point, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 9
  %19 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %add4, ptr %data_dma_base, align 1
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 10
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %20 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %app_resident_data_size, align 4
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %data_size, align 1
  %argc = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 11
  %23 = ptrtoint ptr %argc to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %argc, align 1
  %argv = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 12
  %24 = ptrtoint ptr %argv to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %argv, align 1
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.021 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.020 = phi i32 [ 21, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.019 = phi i32 [ %bld, %entry ], [ %add8, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.020, -1
  %25 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr32, align 4
  %conv7 = zext i32 %_addr.019 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.021, i32 1
  %31 = ptrtoint ptr %_data.021 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_data.021, align 4
  tail call void %30(ptr noundef %26, i64 noundef %conv7, i32 noundef %32) #3
  %add8 = add i32 %_addr.019, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hdr) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp108_gr_acr_bld_patch(ptr noundef %acr, i32 noundef %bld, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hdr) #3
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 84)
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.033 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.032 = phi i32 [ 21, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.031 = phi i32 [ %bld, %entry ], [ %add, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.032, -1
  %1 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptrs, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv = zext i32 %_addr.031 to i64
  %call = tail call i32 %6(ptr noundef %2, i64 noundef %conv) #3
  %incdec.ptr = getelementptr i32, ptr %_data.033, i32 1
  %7 = ptrtoint ptr %_data.033 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %_data.033, align 4
  %add = add i32 %_addr.031, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 3
  %8 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %code_dma_base, align 1
  %add2 = add i64 %9, %adjust
  store i64 %add2, ptr %code_dma_base, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 9
  %10 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %data_dma_base, align 1
  %add4 = add i64 %11, %adjust
  store i64 %add4, ptr %data_dma_base, align 1
  br label %while.body13

while.body13:                                     ; preds = %while.body13.while.body13_crit_edge, %while.end
  %_data9.036 = phi ptr [ %hdr, %while.end ], [ %incdec.ptr18, %while.body13.while.body13_crit_edge ]
  %_size8.035 = phi i32 [ 21, %while.end ], [ %dec11, %while.body13.while.body13_crit_edge ]
  %_addr7.034 = phi i32 [ %bld, %while.end ], [ %add19, %while.body13.while.body13_crit_edge ]
  %dec11 = add nsw i32 %_size8.035, -1
  %12 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wpr, align 8
  %ptrs15 = getelementptr inbounds %struct.nvkm_memory, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ptrs15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptrs15, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr32, align 4
  %conv17 = zext i32 %_addr7.034 to i64
  %incdec.ptr18 = getelementptr i32, ptr %_data9.036, i32 1
  %18 = ptrtoint ptr %_data9.036 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_data9.036, align 4
  tail call void %17(ptr noundef %13, i64 noundef %conv17, i32 noundef %19) #3
  %add19 = add i32 %_addr7.034, 4
  %tobool12.not = icmp eq i32 %dec11, 0
  br i1 %tobool12.not, label %while.end20, label %while.body13.while.body13_crit_edge

while.body13.while.body13_crit_edge:              ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body13

while.end20:                                      ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #5
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v2_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #3
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hdr) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp108_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gp108_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @gp108_gr_gpccs_acr, !1, !"gp108_gr_gpccs_acr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 60, i32 1}
!2 = !{ptr @gp108_gr_fecs_acr, !3, !"gp108_gr_fecs_acr", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 68, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware293, !5, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 74, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware294, !7, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 75, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware295, !9, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 76, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware296, !11, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 77, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware297, !13, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 78, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware298, !15, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 79, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware299, !17, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 80, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware300, !19, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 81, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware301, !21, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 82, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware302, !23, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 83, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware303, !25, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 84, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware304, !27, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 85, i32 1}
!28 = !{ptr @gp108_gr_fwif, !29, !"gp108_gr_fwif", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c", i32 88, i32 1}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
