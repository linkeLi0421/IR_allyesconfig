; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.157, %struct.anon.158, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.157 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.158 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.145, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.145 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_nvdec = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.116 }
%struct.anon.116 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.134, %struct.anon.135, %struct.nvkm_engine }
%struct.anon.134 = type { i32, ptr, i32, i8 }
%struct.anon.135 = type { i32, ptr, i32, i8 }
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_load_header = type { i32, i32, i32, i32, i32, [0 x i32] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvdec/scrubber\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gp102_fb = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr @gf100_fb_dtor, ptr null, ptr @gf100_fb_oneinit, ptr @gp100_fb_init, ptr @gp100_fb_init_remapper, ptr @gm200_fb_init_page, ptr null, ptr null, %struct.anon { ptr @gp102_fb_vpr_scrub_required, ptr @gp102_fb_vpr_scrub }, %struct.anon.0 zeroinitializer, ptr @gp100_ram_new, i8 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp102/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp104/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp106/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp107/nvdec/scrubber.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp108/nvdec/scrubber.bin\00", section ".modinfo", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 123, i32 43 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 123, i32 61 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"gp102_fb\00", align 1
@___asan_gen_.9 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 104, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @.str, ptr @.str.1, ptr @gp102_fb], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_fb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_fb_vpr_scrub(ptr noundef %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %nvdec = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %nvdec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvdec, align 4
  %falcon3 = getelementptr inbounds %struct.nvkm_nvdec, ptr %3, i32 0, i32 2
  %vpr_scrubber = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 2
  %call = tail call i32 @nvkm_falcon_get(ptr noundef %falcon3, ptr noundef %subdev1) #2
  %4 = ptrtoint ptr %vpr_scrubber to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpr_scrubber, align 4
  %call4 = tail call ptr @nvfw_bin_hdr(ptr noundef %subdev1, ptr noundef %5) #2
  %6 = ptrtoint ptr %vpr_scrubber to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpr_scrubber, align 4
  %header_offset = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call4, i32 0, i32 3
  %8 = ptrtoint ptr %header_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %header_offset, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %call6 = tail call ptr @nvfw_hs_header(ptr noundef %subdev1, ptr noundef %add.ptr) #2
  %10 = ptrtoint ptr %vpr_scrubber to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpr_scrubber, align 4
  %hdr_offset = getelementptr inbounds %struct.nvfw_hs_header, ptr %call6, i32 0, i32 6
  %12 = ptrtoint ptr %hdr_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hdr_offset, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %13
  %call9 = tail call ptr @nvfw_hs_load_header(ptr noundef %subdev1, ptr noundef %add.ptr8) #2
  %14 = ptrtoint ptr %vpr_scrubber to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpr_scrubber, align 4
  %data_offset = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call4, i32 0, i32 4
  %16 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_offset, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 %17
  %patch_loc13 = getelementptr inbounds %struct.nvfw_hs_header, ptr %call6, i32 0, i32 4
  %18 = ptrtoint ptr %patch_loc13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %patch_loc13, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 %19
  %20 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr14, align 4
  %patch_sig16 = getelementptr inbounds %struct.nvfw_hs_header, ptr %call6, i32 0, i32 5
  %22 = ptrtoint ptr %patch_sig16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %patch_sig16, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 %23
  %24 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr17, align 4
  %debug = getelementptr inbounds %struct.nvkm_nvdec, ptr %3, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %debug, align 2, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  %add.ptr22 = getelementptr i8, ptr %add.ptr11, i32 %21
  %sig_prod_offset = getelementptr inbounds %struct.nvfw_hs_header, ptr %call6, i32 0, i32 2
  %sig_prod_size = getelementptr inbounds %struct.nvfw_hs_header, ptr %call6, i32 0, i32 3
  %sig_dbg_size = getelementptr inbounds %struct.nvfw_hs_header, ptr %call6, i32 0, i32 1
  %sig_prod_size.sink = select i1 %tobool.not, ptr %sig_prod_size, ptr %sig_dbg_size
  %.pn.in = select i1 %tobool.not, ptr %sig_prod_offset, ptr %call6
  %28 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load i32, ptr %.pn.in, align 4
  %add.ptr24.pn = getelementptr i8, ptr %15, i32 %.pn
  %add.ptr25.sink = getelementptr i8, ptr %add.ptr24.pn, i32 %25
  %29 = ptrtoint ptr %sig_prod_size.sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sig_prod_size.sink, align 4
  %31 = call ptr @memcpy(ptr %add.ptr22, ptr %add.ptr25.sink, i32 %30)
  %call26 = tail call i32 @nvkm_falcon_reset(ptr noundef %falcon3) #2
  tail call void @nvkm_falcon_bind_context(ptr noundef %falcon3, ptr noundef null) #2
  %32 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call9, align 4
  %non_sec_code_size = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call9, i32 0, i32 1
  %34 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %non_sec_code_size, align 4
  %shr = lshr i32 %33, 8
  %conv = trunc i32 %shr to i16
  tail call void @nvkm_falcon_load_imem(ptr noundef %falcon3, ptr noundef %add.ptr11, i32 noundef %33, i32 noundef %35, i16 noundef zeroext %conv, i8 noundef zeroext 0, i1 noundef zeroext false) #2
  %apps = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call9, i32 0, i32 5
  %36 = ptrtoint ptr %apps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %apps, align 4
  %add.ptr29 = getelementptr i8, ptr %add.ptr11, i32 %37
  %add = add i32 %37, 255
  %and = and i32 %add, -256
  %arrayidx33 = getelementptr %struct.nvfw_hs_load_header, ptr %call9, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx33, align 4
  %shr36 = lshr i32 %37, 8
  %conv37 = trunc i32 %shr36 to i16
  tail call void @nvkm_falcon_load_imem(ptr noundef %falcon3, ptr noundef %add.ptr29, i32 noundef %and, i32 noundef %39, i16 noundef zeroext %conv37, i8 noundef zeroext 0, i1 noundef zeroext true) #2
  %data_dma_base = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call9, i32 0, i32 2
  %40 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_dma_base, align 4
  %add.ptr38 = getelementptr i8, ptr %add.ptr11, i32 %41
  %data_size = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call9, i32 0, i32 3
  %42 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_size, align 4
  tail call void @nvkm_falcon_load_dmem(ptr noundef %falcon3, ptr noundef %add.ptr38, i32 noundef 0, i32 noundef %43, i8 noundef zeroext 0) #2
  tail call void @nvkm_falcon_set_start_addr(ptr noundef %falcon3, i32 noundef 0) #2
  tail call void @nvkm_falcon_start(ptr noundef %falcon3) #2
  %call39 = tail call i32 @nvkm_falcon_wait_for_halt(ptr noundef %falcon3, i32 noundef 500) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end42

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %end

if.end42:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call43 = tail call i32 @nvkm_falcon_reset(ptr noundef %falcon3) #2
  br label %end

end:                                              ; preds = %if.end42, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end42 ], [ -110, %entry.end_crit_edge ]
  tail call void @nvkm_falcon_put(ptr noundef %falcon3, ptr noundef %subdev1) #2
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bin_hdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_load_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_bind_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_set_start_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_wait_for_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gp102_fb_vpr_scrub_required(ptr nocapture noundef readonly %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1051856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2) #2, !srcloc !27
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 1051856
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #2, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !29
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_fb_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_fb_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %pfb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfb, align 4
  %subdev = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %vpr_scrubber = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %vpr_scrubber) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @gf100_fb_new_(ptr noundef nonnull @gp102_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.gp102_fb_new_.exit_crit_edge

entry.gp102_fb_new_.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %gp102_fb_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %pfb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfb, align 4
  %subdev.i = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %vpr_scrubber.i = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 2
  %call1.i = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %vpr_scrubber.i) #2
  br label %gp102_fb_new_.exit

gp102_fb_new_.exit:                               ; preds = %if.end.i, %entry.gp102_fb_new_.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_fb_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_fb_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_fb_init_remapper(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_fb_init_page(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_ram_new(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 123, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 123, i32 61}
!4 = !{ptr @__UNIQUE_ID_firmware293, !5, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 134, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware294, !7, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 135, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware295, !9, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 136, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware296, !11, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 137, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware297, !13, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 138, i32 1}
!14 = !{ptr @gp102_fb, !15, !"gp102_fb", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp102.c", i32 104, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2156275021}
!27 = !{i64 5393938}
!28 = !{i64 5394356}
!29 = !{i64 2156275470}
