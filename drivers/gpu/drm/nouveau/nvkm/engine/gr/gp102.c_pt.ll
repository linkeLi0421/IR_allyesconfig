; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_acr_lsf_func = type opaque
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.138, %struct.anon.144, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.145], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.138 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.142, %struct.anon.143, %struct.nvkm_engine }
%struct.anon.142 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.144 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.145 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }

@gp102_gr_zbc = dso_local constant { %struct.gf100_gr_func_zbc, [16 x i8] } { %struct.gf100_gr_func_zbc { ptr @gp100_gr_zbc_clear_color, ptr @gp100_gr_zbc_clear_depth, ptr @gp102_gr_zbc_stencil_get, ptr @gp102_gr_zbc_clear_stencil }, [16 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp102/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp102/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp102/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp102/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp102/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp102/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp102/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp102/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp102/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp102/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp102/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp102/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gp102_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gp102_gr, ptr @gm200_gr_fecs_acr, ptr @gm200_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c\00", [49 x i8] zeroinitializer }, align 32
@gm200_gr_fecs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gm200_gr_gpccs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gp102_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gp102_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm200_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gm200_gr_init_num_active_ltcs, ptr @gp100_gr_init_rop_active_fbps, ptr null, ptr @gp102_gr_init_swdx_pes_mask, ptr null, ptr @gp100_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gp100_gr_init_shader_exceptions, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gm200_gr_rops, i32 6, i32 5, i32 3, ptr @gp102_grctx, ptr null, ptr @gp102_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 49559, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 49600, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"gp102_gr_zbc\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 78, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"gp102_gr_fwif\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 148, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 57, i32 5 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"gp102_gr\00", align 1
@___asan_gen_.12 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 100, i32 1 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @gp102_gr_zbc, ptr @gp102_gr_fwif, ptr @.str, ptr @gp102_gr], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_gr_zbc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_zbc_clear_color(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_zbc_clear_depth(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp102_gr_zbc_stencil_get(ptr noundef %gr, i32 noundef %format, i32 noundef %ds, i32 noundef %l2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %ltc1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %ltc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ltc1, align 4
  %zbc_min = getelementptr inbounds %struct.nvkm_ltc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %zbc_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zbc_min, align 4
  %zbc_max = getelementptr inbounds %struct.nvkm_ltc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not88 = icmp sgt i32 %5, %7
  br i1 %cmp.not88, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %zbc.089 = phi i32 [ %zbc.1, %for.inc.for.body_crit_edge ], [ -28, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %i.090
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %format)
  %cmp6.not = icmp eq i32 %9, %format
  br i1 %cmp6.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end:                                           ; preds = %if.then
  %ds10 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %i.090, i32 1
  %10 = ptrtoint ptr %ds10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ds10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %ds)
  %cmp11.not = icmp eq i32 %11, %ds
  br i1 %cmp11.not, label %if.end13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %l216 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %i.090, i32 2
  %12 = ptrtoint ptr %l216 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l216, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %l2)
  %cmp17.not = icmp eq i32 %13, %l2
  br i1 %cmp17.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbc.089)
  %cmp37 = icmp slt i32 %zbc.089, 0
  %i.0.zbc.0 = select i1 %cmp37, i32 %i.090, i32 %zbc.089
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %zbc.1 = phi i32 [ %zbc.089, %if.then.for.inc_crit_edge ], [ %zbc.089, %if.end.for.inc_crit_edge ], [ %i.0.zbc.0, %if.else ]
  %inc = add i32 %i.090, 1
  %cmp.not = icmp sgt i32 %inc, %7
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zbc.1)
  %cmp39 = icmp slt i32 %zbc.1, 0
  br i1 %cmp39, label %for.end.cleanup_crit_edge, label %if.end41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx43 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %zbc.1
  %14 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %format, ptr %arrayidx43, align 4
  %ds47 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %zbc.1, i32 1
  %15 = ptrtoint ptr %ds47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ds, ptr %ds47, align 4
  %l250 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %zbc.1, i32 2
  %16 = ptrtoint ptr %l250 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %l2, ptr %l250, align 4
  %call = tail call i32 @nvkm_ltc_zbc_stencil_get(ptr noundef %3, i32 noundef %zbc.1, i32 noundef %l2) #2
  %17 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gr, align 4
  %zbc51 = getelementptr inbounds %struct.gf100_gr_func, ptr %18, i32 0, i32 38
  %19 = ptrtoint ptr %zbc51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zbc51, align 4
  %clear_stencil = getelementptr inbounds %struct.gf100_gr_func_zbc, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %clear_stencil to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clear_stencil, align 4
  tail call void %22(ptr noundef %gr, i32 noundef %zbc.1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %for.end.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %zbc.1, %if.end41 ], [ %i.090, %if.end13.cleanup_crit_edge ], [ %zbc.1, %for.end.cleanup_crit_edge ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp102_gr_zbc_clear_stencil(ptr nocapture noundef readonly %gr, i32 noundef %zbc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %sub = add i32 %zbc, -1
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %zbc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %mul = shl i32 %sub, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !41
  tail call void @arm_heavy_mb() #2
  %ds = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 11, i32 %zbc, i32 1
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add = add i32 %mul, 4292956
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #2, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %div = sdiv i32 %sub, 4
  %mul4 = shl nsw i32 %div, 2
  %add5 = add i32 %mul4, 4293016
  %pri6 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri6, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 %add5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #2, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !45
  tail call void @arm_heavy_mb() #2
  %11 = mul i32 %div, 4
  %rem.decomposed = sub i32 %sub, %11
  %mul11 = mul nsw i32 %rem.decomposed, 7
  %shl = shl nuw nsw i32 127, %mul11
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %shl17 = shl i32 %13, %mul11
  %or = or i32 %shl17, %and
  %14 = ptrtoint ptr %pri6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri6, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or) #2, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp102_gr_init_swdx_pes_mask(ptr nocapture noundef readonly %gr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %2 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp14.not = icmp eq i8 %3, 0
  br i1 %cmp14.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.016 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %gpc.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc.015, 15
  %add3 = add nuw nsw i32 %mul, 5246032
  %add.ptr = getelementptr i8, ptr %5, i32 %add3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !46
  %and = and i32 %6, 15
  %mul4 = shl i32 %gpc.015, 2
  %shl = shl i32 %and, %mul4
  %or = or i32 %shl, %mask.016
  %inc = add nuw nsw i32 %gpc.015, 1
  %7 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %or, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !47
  tail call void @arm_heavy_mb() #2
  %pri5 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %pri5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri5, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 4293072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %mask.0.lcssa) #2, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gp102_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_zbc_stencil_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_load(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_tiles(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_sm_id(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_gpc_mmu(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_num_active_ltcs(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_rop_active_fbps(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_fecs_exceptions(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_ds_hww_esr_2(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @gp102_gr_zbc, !1, !"gp102_gr_zbc", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 78, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware293, !3, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 134, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware294, !5, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 135, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware295, !7, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 136, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware296, !9, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 137, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware297, !11, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 138, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware298, !13, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 139, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware299, !15, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 140, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware300, !17, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 141, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware301, !19, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 142, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware302, !21, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 143, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware303, !23, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 144, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware304, !25, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 145, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 57, i32 5}
!28 = !{ptr @gp102_gr_fwif, !29, !"gp102_gr_fwif", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 148, i32 1}
!30 = !{ptr @gp102_gr, !31, !"gp102_gr", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp102.c", i32 100, i32 1}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2156296530}
!42 = !{i64 5406382}
!43 = !{i64 5406800}
!44 = !{i64 2156297460}
!45 = !{i64 2156297976}
!46 = !{i64 2156299182}
!47 = !{i64 2156299512}
