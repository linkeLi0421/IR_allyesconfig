; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon }
%struct.anon = type { %struct.anon.0, %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flcn_acr_desc = type { %union.anon.155, i32, i32, i32, %struct.anon.156, i32, i64, %struct.anon.158 }
%union.anon.155 = type { [4 x i32], [496 x i8] }
%struct.anon.156 = type { i32, [2 x %struct.anon.157] }
%struct.anon.157 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.158 = type { i32, i32, i32, i32 }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.147, %struct.anon.148 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.144, %struct.anon.145, %struct.nvkm_engine }
%struct.anon.144 = type { i32, ptr, i32, i8 }
%struct.anon.145 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.147 = type { %struct.mutex, i32, i32 }
%struct.anon.148 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.flcn_bl_dmem_desc = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr_hsf = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }

@gm20b_acr_wpr_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: WPR image too big for WPR!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gm20b_acr_wpr_alloc\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm20b_acr_wpr_alloc._entry_ptr = internal global ptr @gm20b_acr_wpr_alloc._entry, section ".printk_index", align 4
@gm20b_acr_load_0 = dso_local constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gm20b_acr_load_load, ptr @gm200_acr_load_boot, ptr @gm20b_acr_load_bld }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AcrLoad\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acr/bl\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acr/ucode_load\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@gm20b_acr_fwif = internal constant { [3 x %struct.nvkm_acr_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gm20b_acr_load, ptr @gm20b_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gm20b_acr = internal constant { %struct.nvkm_acr_func, [40 x i8] } { %struct.nvkm_acr_func { ptr @gm20b_acr_load_fwif, ptr null, ptr null, ptr null, ptr @gm200_acr_wpr_parse, ptr @gm200_acr_wpr_layout, ptr @gm20b_acr_wpr_alloc, ptr @gm200_acr_wpr_build, ptr @gm200_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 0 }, [40 x i8] zeroinitializer }, align 32
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@gm20b_acr_load_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm20b_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 40, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"gm20b_acr_load_0\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 81, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 116, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"gm20b_acr_fwif\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 125, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"gm20b_acr\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 99, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"gm20b_acr_load_fwif\00", align 1
@___asan_gen_.57 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 93, i32 1 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @gm20b_acr_wpr_alloc._entry, ptr @gm20b_acr_wpr_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gm20b_acr_load_0, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gm20b_acr_fwif, ptr @gm20b_acr, ptr @gm20b_acr_load_fwif], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_acr_wpr_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_acr_load_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_acr_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_acr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_acr_load_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_acr_wpr_alloc(ptr noundef %acr, i32 noundef %wpr_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acr, align 8
  %wpr_check = getelementptr inbounds %struct.nvkm_acr_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %wpr_check to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wpr_check, align 4
  %wpr_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 8
  %wpr_end = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  tail call void %3(ptr noundef %acr, ptr noundef %wpr_start, ptr noundef %wpr_end) #5
  %4 = ptrtoint ptr %wpr_end to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wpr_end, align 8
  %6 = ptrtoint ptr %wpr_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wpr_start, align 8
  %sub = sub i64 %5, %7
  %conv = zext i32 %wpr_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp = icmp ult i64 %sub, %conv
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name) #8
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device12 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device12, align 4
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %call = tail call i32 @nvkm_memory_new(ptr noundef %15, i32 noundef 0, i64 noundef %conv, i32 noundef 0, i1 noundef zeroext true, ptr noundef %wpr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -28, %do.end ], [ -28, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm20b_acr_load_load(ptr noundef %acr, ptr noundef %hsfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %image = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 6
  %0 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %image, align 4
  %data_addr = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 12
  %2 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_addr, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %4 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wpr, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %call = tail call i64 %9(ptr noundef %5) #5
  %ucode_blob_base = getelementptr inbounds %struct.flcn_acr_desc, ptr %arrayidx, i32 0, i32 6
  %10 = ptrtoint ptr %ucode_blob_base to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call, ptr %ucode_blob_base, align 8
  %11 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wpr, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %size, align 4
  %call5 = tail call i64 %16(ptr noundef %12) #5
  %conv = trunc i64 %call5 to i32
  %ucode_blob_size = getelementptr inbounds %struct.flcn_acr_desc, ptr %arrayidx, i32 0, i32 5
  %17 = ptrtoint ptr %ucode_blob_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %ucode_blob_size, align 8
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  tail call void @flcn_acr_desc_dump(ptr noundef %subdev, ptr noundef %arrayidx) #5
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %pmu = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmu, align 8
  %falcon = getelementptr inbounds %struct.nvkm_pmu, ptr %21, i32 0, i32 2
  %call7 = tail call i32 @gm200_acr_hsfw_load(ptr noundef %acr, ptr noundef %hsfw, ptr noundef %falcon) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_load_boot(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm20b_acr_load_bld(ptr noundef %acr, ptr nocapture noundef readonly %hsf) #0 align 64 {
entry:
  %hsdesc = alloca %struct.flcn_bl_dmem_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %hsdesc) #5
  %ctx_dma = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 2
  %0 = call ptr @memset(ptr %hsdesc, i32 0, i32 32)
  %1 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ctx_dma, align 4
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 3
  %vma = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 13
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %shr = lshr i64 %5, 8
  %conv = trunc i64 %shr to i32
  %6 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %code_dma_base, align 4
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 4
  %non_sec_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 6
  %7 = ptrtoint ptr %non_sec_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %non_sec_addr, align 4
  %9 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %non_sec_code_off, align 4
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 5
  %non_sec_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 7
  %10 = ptrtoint ptr %non_sec_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %non_sec_size, align 4
  %12 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %non_sec_code_size, align 4
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 6
  %sec_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 8
  %13 = ptrtoint ptr %sec_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec_addr, align 4
  %15 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sec_code_off, align 4
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 7
  %sec_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 9
  %16 = ptrtoint ptr %sec_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sec_size, align 4
  %18 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sec_code_size, align 4
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 8
  %19 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %code_entry_point, align 4
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 9
  %20 = load i64, ptr %addr, align 8
  %data_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 10
  %21 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_addr, align 4
  %conv3 = zext i32 %22 to i64
  %add = add i64 %20, %conv3
  %shr4 = lshr i64 %add, 8
  %conv5 = trunc i64 %shr4 to i32
  %23 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv5, ptr %data_dma_base, align 4
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 10
  %data_size6 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 11
  %24 = ptrtoint ptr %data_size6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_size6, align 4
  %26 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %data_size, align 4
  %code_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 11
  %27 = ptrtoint ptr %code_dma_base1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %code_dma_base1, align 4
  %data_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hsdesc, i32 0, i32 12
  %28 = ptrtoint ptr %data_dma_base1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %data_dma_base1, align 4
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_dump(ptr noundef %subdev, ptr noundef nonnull %hsdesc) #5
  %falcon = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 14
  %29 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %falcon, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %30, ptr noundef nonnull %hsdesc, i32 noundef 0, i32 noundef 76, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %hsdesc) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_acr_load(ptr noundef %acr, i32 %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #5
  %func = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %fwif, i32 0, i32 2
  %0 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5)
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgopt, align 4
  %call3 = call i32 @nvkm_longopt(ptr noundef %8, ptr noundef nonnull %_option, i32 noundef -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3)
  %cmp = icmp sgt i32 %call3, -2
  br i1 %cmp, label %entry.land.rhs_crit_edge, label %15

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %_next.0113 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %4, %entry.land.rhs_crit_edge ]
  %load4 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %_next.0113, i32 0, i32 1
  %9 = ptrtoint ptr %load4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %load4, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.rhs.if.then47_crit_edge, label %for.body

land.rhs.if.then47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

for.body:                                         ; preds = %land.rhs
  %11 = ptrtoint ptr %_next.0113 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call3)
  %cmp6 = icmp ne i32 %12, %call3
  %incdec.ptr = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.0113, i32 1
  %tobool.not120 = icmp eq ptr %_next.0113, null
  %tobool.not = select i1 %cmp6, i1 true, i1 %tobool.not120
  br i1 %tobool.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5)
  %13 = ptrtoint ptr %_next.0113 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_next.0113, align 4
  br label %16

15:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1389 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5)
  br label %16

16:                                               ; preds = %15, %cond.end
  %.sink136 = phi i32 [ %14, %cond.end ], [ -1, %15 ]
  %_fwif.28797 = phi ptr [ %_next.0113, %cond.end ], [ null, %15 ]
  %17 = phi ptr [ %_next.0113, %cond.end ], [ %4, %15 ]
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %cfgopt18 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %cfgopt18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgopt18, align 4
  %call20 = call i32 @nvkm_longopt(ptr noundef %21, ptr noundef nonnull %_option, i32 noundef %.sink136) #5
  %load27114 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %load27114 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %load27114, align 4
  %tobool28.not115 = icmp eq ptr %23, null
  br i1 %tobool28.not115, label %.if.end49_crit_edge, label %for.body29.lr.ph

.if.end49_crit_edge:                              ; preds = %16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.body29.lr.ph:                                 ; preds = %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp30 = icmp sgt i32 %call20, -1
  br label %for.body29

for.body29:                                       ; preds = %for.inc42.for.body29_crit_edge, %for.body29.lr.ph
  %24 = phi ptr [ %23, %for.body29.lr.ph ], [ %28, %for.inc42.for.body29_crit_edge ]
  %_next.1116 = phi ptr [ %17, %for.body29.lr.ph ], [ %incdec.ptr43, %for.inc42.for.body29_crit_edge ]
  br i1 %cmp30, label %if.end45, label %cond.end34

cond.end34:                                       ; preds = %for.body29
  %25 = ptrtoint ptr %_next.1116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_next.1116, align 4
  %call37 = call i32 %24(ptr noundef %acr, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %26, ptr noundef %_next.1116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cond.end34.if.end49_crit_edge, label %for.inc42

cond.end34.if.end49_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.inc42:                                        ; preds = %cond.end34
  %incdec.ptr43 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.1116, i32 1
  %load27 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.1116, i32 1, i32 1
  %27 = ptrtoint ptr %load27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %load27, align 4
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %for.inc42.if.then47_crit_edge, label %for.inc42.for.body29_crit_edge

for.inc42.for.body29_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29

for.inc42.if.then47_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.end45:                                         ; preds = %for.body29
  %call37102 = call i32 %23(ptr noundef %acr, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call20, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37102)
  %tobool46.not = icmp eq i32 %call37102, 0
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %for.inc42.if.then47_crit_edge, %land.rhs.if.then47_crit_edge
  %_ret.2108 = phi i32 [ %call37102, %if.end45.if.then47_crit_edge ], [ %call37, %for.inc42.if.then47_crit_edge ], [ -22, %land.rhs.if.then47_crit_edge ]
  %29 = inttoptr i32 %_ret.2108 to ptr
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge, %cond.end34.if.end49_crit_edge, %.if.end49_crit_edge
  %_fwif.4 = phi ptr [ %29, %if.then47 ], [ %17, %if.end45.if.end49_crit_edge ], [ %_fwif.28797, %.if.end49_crit_edge ], [ %_next.1116, %cond.end34.if.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #5
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %_fwif.4 to i32
  %spec.select109 = select i1 %cmp.i, i32 %30, i32 0
  ret i32 %spec.select109
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_acr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gm20b_acr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_acr_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_wpr_parse(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_wpr_layout(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_wpr_build(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_patch(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c", i32 40, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gm20b_acr_wpr_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gm20b_acr_wpr_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @gm20b_acr_load_0, !9, !"gm20b_acr_load_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c", i32 81, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c", i32 116, i32 11}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gm20b_acr_fwif, !18, !"gm20b_acr_fwif", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c", i32 125, i32 1}
!19 = !{ptr @gm20b_acr, !20, !"gm20b_acr", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c", i32 99, i32 1}
!21 = !{ptr @gm20b_acr_load_fwif, !22, !"gm20b_acr_load_fwif", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm20b.c", i32 93, i32 1}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
