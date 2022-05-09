; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nv_pmu_acr_cmd = type { %struct.nvfw_falcon_msg, i8 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.141, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.142 = type { ptr, i32 }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv_pmu_acr_bootstrap_falcon_cmd = type { %struct.nv_pmu_acr_cmd, i32, i32 }
%struct.nv_pmu_acr_bootstrap_falcon_msg = type { %struct.nv_pmu_acr_msg, i32 }
%struct.nv_pmu_acr_msg = type { %struct.nvfw_falcon_msg, i8 }
%struct.nv_pmu_args = type { i32, i32, i32, i32, i16, i8, i32, i8, i8, %struct.anon.151, i8 }
%struct.anon.151 = type { i32, i16, i8, i16, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.136, %struct.anon.137, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.loader_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.152, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.152 = type { i32, i32, i32 }
%struct.nv_pmu_acr_init_wpr_region_cmd = type { %struct.nv_pmu_acr_cmd, i32, i32 }
%struct.nv_pmu_init_msg = type { %struct.nvfw_falcon_msg, i8, i8, i16, [5 x %struct.anon.153], i16, i16 }
%struct.anon.153 = type { i16, i16, i8, i8 }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.143, %struct.anon.144 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.143 = type { %struct.mutex, i32, i32 }
%struct.anon.144 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv_pmu_acr_init_wpr_region_msg = type { %struct.nv_pmu_acr_msg, i32 }

@gm20b_pmu_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: error parsing init message: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gm20b_pmu_recv\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm20b_pmu_recv._entry_ptr = internal global ptr @gm20b_pmu_recv._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmu/\00", [27 x i8] zeroinitializer }, align 32
@gm20b_pmu_fwif = internal constant { [3 x %struct.nvkm_pmu_fwif], [48 x i8] } { [3 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 0, ptr @gm20b_pmu_load, ptr @gm20b_pmu, ptr @gm20b_pmu_acr }, %struct.nvkm_pmu_fwif { i32 -1, ptr @gm200_pmu_nofw, ptr @gm20b_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__const.gm20b_pmu_acr_init_wpr.cmd = private unnamed_addr constant { %struct.nv_pmu_acr_cmd, [3 x i8], i32, i32 } { %struct.nv_pmu_acr_cmd { %struct.nvfw_falcon_msg { i8 10, i8 16, i8 0, i8 0 }, i8 0 }, [3 x i8] zeroinitializer, i32 1, i32 0 }, align 4
@gm20b_pmu_acr_init_wpr_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: ACR WPR init failure: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gm20b_pmu_acr_init_wpr_callback\00", [32 x i8] zeroinitializer }, align 32
@gm20b_pmu_acr_init_wpr_callback._entry_ptr = internal global ptr @gm20b_pmu_acr_init_wpr_callback._entry, section ".printk_index", align 4
@gm20b_pmu_acr_init_wpr_callback._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 149, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ACR WPR init complete\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gm20b_pmu_acr_init_wpr_callback._entry_ptr.11 = internal global ptr @gm20b_pmu_acr_init_wpr_callback._entry.8, section ".printk_index", align 4
@gm20b_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gm200_pmu_flcn, %struct.anon.141 zeroinitializer, %struct.anon.142 zeroinitializer, ptr @gf100_pmu_enabled, ptr null, ptr null, ptr null, ptr @gt215_pmu_intr, ptr null, ptr @gm20b_pmu_recv, ptr @gm20b_pmu_initmsg, ptr null }, [40 x i8] zeroinitializer }, align 32
@gm20b_pmu_acr = internal constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 4, i32 52, ptr @gm20b_pmu_acr_bld_write, ptr @gm20b_pmu_acr_bld_patch, ptr @gm20b_pmu_acr_boot, i64 13, ptr @gm20b_pmu_acr_bootstrap_falcon, ptr null }, [56 x i8] zeroinitializer }, align 32
@gm200_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 201, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 231, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"gm20b_pmu_fwif\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 236, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 144, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 149, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"gm20b_pmu\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 213, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"gm20b_pmu_acr\00", align 1
@___asan_gen_.58 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 123, i32 1 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @gm20b_pmu_acr_init_wpr_callback._entry, ptr @gm20b_pmu_acr_init_wpr_callback._entry.8, ptr @gm20b_pmu_acr_init_wpr_callback._entry_ptr, ptr @gm20b_pmu_acr_init_wpr_callback._entry_ptr.11, ptr @gm20b_pmu_recv._entry, ptr @gm20b_pmu_recv._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gm20b_pmu_fwif, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @gm20b_pmu, ptr @gm20b_pmu_acr], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pmu_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pmu_fwif to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pmu_acr_init_wpr_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pmu_acr_init_wpr_callback._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pmu_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_acr_bootstrap_falcon(ptr noundef %falcon, i32 noundef %id) #0 align 64 {
entry:
  %cmd = alloca %struct.nv_pmu_acr_bootstrap_falcon_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %cmd, align 4
  %size = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %size, align 1
  %ctrl_flags = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ctrl_flags, align 2
  %seq_id = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %seq_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %seq_id, align 1
  %cmd_type = getelementptr inbounds %struct.nv_pmu_acr_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %cmd_type, align 4
  %flags = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_falcon_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  %falcon_id = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_falcon_cmd, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %falcon_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %id, ptr %falcon_id, align 4
  %hpq = getelementptr i8, ptr %falcon, i32 456
  %9 = ptrtoint ptr %hpq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpq, align 4
  %subdev = getelementptr i8, ptr %falcon, i32 -52
  %call4 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %10, ptr noundef nonnull %cmd, ptr noundef nonnull @gm20b_pmu_acr_bootstrap_falcon_cb, ptr noundef %subdev, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %falcon_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %falcon_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %12)
  %cmp6.not = icmp eq i32 %call4, %12
  %. = select i1 %cmp6.not, i32 0, i32 -5
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.if.end8_crit_edge ], [ %., %if.then ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gm20b_pmu_acr_bootstrap_falcon_cb(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %falcon_id = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_falcon_msg, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %falcon_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %falcon_id, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_acr_boot(ptr noundef %falcon) #0 align 64 {
entry:
  %args = alloca %struct.nv_pmu_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 0, i32 44)
  %1 = getelementptr inbounds { i32, i32, i32, i32, i16, i8, [1 x i8], i32, i8, i8, [2 x i8], { i32, i16, i8, [1 x i8], i16, i8, [1 x i8] }, i8, [3 x i8] }, ptr %args, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 4
  %data = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 14
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %sub = add i32 %4, -44
  call void @nvkm_falcon_load_dmem(ptr noundef %falcon, ptr noundef nonnull %args, i32 noundef %sub, i32 noundef 44, i8 noundef zeroext 0) #5
  call void @nvkm_falcon_start(ptr noundef %falcon) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %args) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm20b_pmu_acr_bld_patch(ptr noundef %acr, i32 noundef %bld, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.loader_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %hdr) #5
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 52)
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
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
  %conv = zext i32 %bld to i64
  %call = tail call i32 %6(ptr noundef %2, i64 noundef %conv) #5
  %incdec.ptr = getelementptr inbounds i32, ptr %hdr, i32 1
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %hdr, align 4
  %add = add i32 %bld, 4
  %8 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wpr, align 8
  %ptrs.1 = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs.1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %conv.1 = zext i32 %add to i64
  %call.1 = tail call i32 %13(ptr noundef %9, i64 noundef %conv.1) #5
  %incdec.ptr.1 = getelementptr inbounds i32, ptr %hdr, i32 2
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.1, ptr %incdec.ptr, align 4
  %add.1 = add i32 %bld, 8
  %15 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wpr, align 8
  %ptrs.2 = getelementptr inbounds %struct.nvkm_memory, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ptrs.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptrs.2, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %conv.2 = zext i32 %add.1 to i64
  %call.2 = tail call i32 %20(ptr noundef %16, i64 noundef %conv.2) #5
  %incdec.ptr.2 = getelementptr inbounds i32, ptr %hdr, i32 3
  %21 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.2, ptr %incdec.ptr.1, align 4
  %add.2 = add i32 %bld, 12
  %22 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wpr, align 8
  %ptrs.3 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs.3, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %conv.3 = zext i32 %add.2 to i64
  %call.3 = tail call i32 %27(ptr noundef %23, i64 noundef %conv.3) #5
  %incdec.ptr.3 = getelementptr inbounds i32, ptr %hdr, i32 4
  %28 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.3, ptr %incdec.ptr.2, align 4
  %add.3 = add i32 %bld, 16
  %29 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wpr, align 8
  %ptrs.4 = getelementptr inbounds %struct.nvkm_memory, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ptrs.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptrs.4, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %conv.4 = zext i32 %add.3 to i64
  %call.4 = tail call i32 %34(ptr noundef %30, i64 noundef %conv.4) #5
  %incdec.ptr.4 = getelementptr inbounds i32, ptr %hdr, i32 5
  %35 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.4, ptr %incdec.ptr.3, align 4
  %add.4 = add i32 %bld, 20
  %36 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wpr, align 8
  %ptrs.5 = getelementptr inbounds %struct.nvkm_memory, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ptrs.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptrs.5, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %conv.5 = zext i32 %add.4 to i64
  %call.5 = tail call i32 %41(ptr noundef %37, i64 noundef %conv.5) #5
  %incdec.ptr.5 = getelementptr inbounds i32, ptr %hdr, i32 6
  %42 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.5, ptr %incdec.ptr.4, align 4
  %add.5 = add i32 %bld, 24
  %43 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wpr, align 8
  %ptrs.6 = getelementptr inbounds %struct.nvkm_memory, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ptrs.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ptrs.6, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %conv.6 = zext i32 %add.5 to i64
  %call.6 = tail call i32 %48(ptr noundef %44, i64 noundef %conv.6) #5
  %incdec.ptr.6 = getelementptr inbounds i32, ptr %hdr, i32 7
  %49 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.6, ptr %incdec.ptr.5, align 4
  %add.6 = add i32 %bld, 28
  %50 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wpr, align 8
  %ptrs.7 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ptrs.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptrs.7, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %conv.7 = zext i32 %add.6 to i64
  %call.7 = tail call i32 %55(ptr noundef %51, i64 noundef %conv.7) #5
  %incdec.ptr.7 = getelementptr inbounds i32, ptr %hdr, i32 8
  %56 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.7, ptr %incdec.ptr.6, align 4
  %add.7 = add i32 %bld, 32
  %57 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wpr, align 8
  %ptrs.8 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ptrs.8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptrs.8, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %conv.8 = zext i32 %add.7 to i64
  %call.8 = tail call i32 %62(ptr noundef %58, i64 noundef %conv.8) #5
  %incdec.ptr.8 = getelementptr inbounds i32, ptr %hdr, i32 9
  %63 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call.8, ptr %incdec.ptr.7, align 4
  %add.8 = add i32 %bld, 36
  %64 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wpr, align 8
  %ptrs.9 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ptrs.9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptrs.9, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %conv.9 = zext i32 %add.8 to i64
  %call.9 = tail call i32 %69(ptr noundef %65, i64 noundef %conv.9) #5
  %incdec.ptr.9 = getelementptr inbounds i32, ptr %hdr, i32 10
  %70 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.9, ptr %incdec.ptr.8, align 4
  %add.9 = add i32 %bld, 40
  %71 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wpr, align 8
  %ptrs.10 = getelementptr inbounds %struct.nvkm_memory, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %ptrs.10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ptrs.10, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %conv.10 = zext i32 %add.9 to i64
  %call.10 = tail call i32 %76(ptr noundef %72, i64 noundef %conv.10) #5
  %incdec.ptr.10 = getelementptr inbounds i32, ptr %hdr, i32 11
  %77 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call.10, ptr %incdec.ptr.9, align 4
  %add.10 = add i32 %bld, 44
  %78 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wpr, align 8
  %ptrs.11 = getelementptr inbounds %struct.nvkm_memory, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %ptrs.11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ptrs.11, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %conv.11 = zext i32 %add.10 to i64
  %call.11 = tail call i32 %83(ptr noundef %79, i64 noundef %conv.11) #5
  %incdec.ptr.11 = getelementptr inbounds i32, ptr %hdr, i32 12
  %84 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call.11, ptr %incdec.ptr.10, align 4
  %add.11 = add i32 %bld, 48
  %85 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wpr, align 8
  %ptrs.12 = getelementptr inbounds %struct.nvkm_memory, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %ptrs.12 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ptrs.12, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %conv.12 = zext i32 %add.11 to i64
  %call.12 = tail call i32 %90(ptr noundef %86, i64 noundef %conv.12) #5
  %code_dma_base1 = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 10
  %91 = ptrtoint ptr %code_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %code_dma_base1, align 4
  %conv2 = zext i32 %92 to i64
  %shl = shl i64 %conv2, 40
  %93 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %incdec.ptr, align 4
  %shl3 = shl i32 %94, 8
  %conv4 = zext i32 %shl3 to i64
  %or = or i64 %shl, %conv4
  %add5 = add i64 %or, %adjust
  %shr = lshr i64 %add5, 8
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, ptr %incdec.ptr, align 4
  %shr10 = lshr i64 %add5, 40
  %conv12 = trunc i64 %shr10 to i32
  store i32 %conv12, ptr %code_dma_base1, align 4
  %data_dma_base1 = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 11
  %95 = ptrtoint ptr %data_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_dma_base1, align 4
  %conv14 = zext i32 %96 to i64
  %shl15 = shl i64 %conv14, 40
  %data_dma_base = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 5
  %97 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_dma_base, align 4
  %shl16 = shl i32 %98, 8
  %conv17 = zext i32 %shl16 to i64
  %or18 = or i64 %shl15, %conv17
  %add19 = add i64 %or18, %adjust
  %shr20 = lshr i64 %add19, 8
  %conv22 = trunc i64 %shr20 to i32
  store i32 %conv22, ptr %data_dma_base, align 4
  %shr26 = lshr i64 %add19, 40
  %conv28 = trunc i64 %shr26 to i32
  store i32 %conv28, ptr %data_dma_base1, align 4
  %overlay_dma_base1 = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 12
  %conv30 = zext i32 %call.12 to i64
  %shl31 = shl i64 %conv30, 40
  %overlay_dma_base = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 7
  %99 = ptrtoint ptr %overlay_dma_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %overlay_dma_base, align 4
  %shl32 = shl i32 %100, 8
  %conv33 = zext i32 %shl32 to i64
  %or34 = or i64 %shl31, %conv33
  %add35 = add i64 %or34, %adjust
  %shl36 = shl i64 %add35, 8
  %conv38 = trunc i64 %shl36 to i32
  store i32 %conv38, ptr %overlay_dma_base, align 4
  %shr42 = lshr i64 %shl36, 32
  %conv44 = trunc i64 %shr42 to i32
  %101 = ptrtoint ptr %overlay_dma_base1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv44, ptr %overlay_dma_base1, align 4
  %102 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wpr, align 8
  %ptrs55 = getelementptr inbounds %struct.nvkm_memory, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %ptrs55 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ptrs55, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wr32, align 4
  %108 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hdr, align 4
  tail call void %107(ptr noundef %103, i64 noundef %conv, i32 noundef %109) #5
  %110 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wpr, align 8
  %ptrs55.1 = getelementptr inbounds %struct.nvkm_memory, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %ptrs55.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ptrs55.1, align 4
  %wr32.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %wr32.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wr32.1, align 4
  tail call void %115(ptr noundef %111, i64 noundef %conv.1, i32 noundef %conv6) #5
  %116 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wpr, align 8
  %ptrs55.2 = getelementptr inbounds %struct.nvkm_memory, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ptrs55.2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ptrs55.2, align 4
  %wr32.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %wr32.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr32.2, align 4
  %122 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %incdec.ptr.1, align 4
  tail call void %121(ptr noundef %117, i64 noundef %conv.2, i32 noundef %123) #5
  %124 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wpr, align 8
  %ptrs55.3 = getelementptr inbounds %struct.nvkm_memory, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %ptrs55.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptrs55.3, align 4
  %wr32.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wr32.3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wr32.3, align 4
  %130 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %incdec.ptr.2, align 4
  tail call void %129(ptr noundef %125, i64 noundef %conv.3, i32 noundef %131) #5
  %132 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wpr, align 8
  %ptrs55.4 = getelementptr inbounds %struct.nvkm_memory, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %ptrs55.4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ptrs55.4, align 4
  %wr32.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %wr32.4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wr32.4, align 4
  %138 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %incdec.ptr.3, align 4
  tail call void %137(ptr noundef %133, i64 noundef %conv.4, i32 noundef %139) #5
  %140 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wpr, align 8
  %ptrs55.5 = getelementptr inbounds %struct.nvkm_memory, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %ptrs55.5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ptrs55.5, align 4
  %wr32.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %wr32.5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wr32.5, align 4
  tail call void %145(ptr noundef %141, i64 noundef %conv.5, i32 noundef %conv22) #5
  %146 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wpr, align 8
  %ptrs55.6 = getelementptr inbounds %struct.nvkm_memory, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %ptrs55.6 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ptrs55.6, align 4
  %wr32.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %wr32.6 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wr32.6, align 4
  %152 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %incdec.ptr.5, align 4
  tail call void %151(ptr noundef %147, i64 noundef %conv.6, i32 noundef %153) #5
  %154 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wpr, align 8
  %ptrs55.7 = getelementptr inbounds %struct.nvkm_memory, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %ptrs55.7 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ptrs55.7, align 4
  %wr32.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %wr32.7 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wr32.7, align 4
  %160 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %incdec.ptr.6, align 4
  tail call void %159(ptr noundef %155, i64 noundef %conv.7, i32 noundef %161) #5
  %162 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wpr, align 8
  %ptrs55.8 = getelementptr inbounds %struct.nvkm_memory, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %ptrs55.8 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ptrs55.8, align 4
  %wr32.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %wr32.8 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wr32.8, align 4
  %168 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %incdec.ptr.7, align 4
  tail call void %167(ptr noundef %163, i64 noundef %conv.8, i32 noundef %169) #5
  %170 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wpr, align 8
  %ptrs55.9 = getelementptr inbounds %struct.nvkm_memory, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %ptrs55.9 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ptrs55.9, align 4
  %wr32.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %wr32.9 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wr32.9, align 4
  %176 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %incdec.ptr.8, align 4
  tail call void %175(ptr noundef %171, i64 noundef %conv.9, i32 noundef %177) #5
  %178 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wpr, align 8
  %ptrs55.10 = getelementptr inbounds %struct.nvkm_memory, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %ptrs55.10 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ptrs55.10, align 4
  %wr32.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %wr32.10 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wr32.10, align 4
  %184 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %incdec.ptr.9, align 4
  tail call void %183(ptr noundef %179, i64 noundef %conv.10, i32 noundef %185) #5
  %186 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wpr, align 8
  %ptrs55.11 = getelementptr inbounds %struct.nvkm_memory, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %ptrs55.11 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ptrs55.11, align 4
  %wr32.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %wr32.11 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wr32.11, align 4
  %192 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %incdec.ptr.10, align 4
  tail call void %191(ptr noundef %187, i64 noundef %conv.11, i32 noundef %193) #5
  %194 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wpr, align 8
  %ptrs55.12 = getelementptr inbounds %struct.nvkm_memory, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %ptrs55.12 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ptrs55.12, align 4
  %wr32.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %wr32.12 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wr32.12, align 4
  %200 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %incdec.ptr.11, align 4
  tail call void %199(ptr noundef %195, i64 noundef %conv.12, i32 noundef %201) #5
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @loader_config_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %hdr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @loader_config_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm20b_pmu_acr_bld_write(ptr nocapture noundef readonly %acr, i32 noundef %bld, ptr nocapture noundef readonly %lsfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %shr = lshr i64 %add2, 8
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %6 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %app_resident_data_offset, align 4
  %conv3 = zext i32 %7 to i64
  %add4 = add nuw nsw i64 %conv3, %conv
  %shr5 = lshr i64 %add4, 8
  %conv6 = trunc i64 %shr to i32
  %app_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 8
  %8 = ptrtoint ptr %app_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %app_size, align 4
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %10 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %app_resident_code_size, align 4
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 10
  %12 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %app_imem_entry, align 4
  %conv8 = trunc i64 %shr5 to i32
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %14 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %app_resident_data_size, align 4
  %falcon = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 1
  %16 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %falcon, align 4
  %data11 = getelementptr inbounds %struct.nvkm_falcon, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data11, align 4
  %sub = add i32 %19, -44
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %20 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr32, align 4
  %conv22 = zext i32 %bld to i64
  tail call void %25(ptr noundef %21, i64 noundef %conv22, i32 noundef 0) #5
  %add23 = add i32 %bld, 4
  %26 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wpr, align 8
  %ptrs.1 = getelementptr inbounds %struct.nvkm_memory, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ptrs.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptrs.1, align 4
  %wr32.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr32.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr32.1, align 4
  %conv22.1 = zext i32 %add23 to i64
  tail call void %31(ptr noundef %27, i64 noundef %conv22.1, i32 noundef %conv6) #5
  %add23.1 = add i32 %bld, 8
  %32 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wpr, align 8
  %ptrs.2 = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ptrs.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptrs.2, align 4
  %wr32.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr32.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr32.2, align 4
  %conv22.2 = zext i32 %add23.1 to i64
  tail call void %37(ptr noundef %33, i64 noundef %conv22.2, i32 noundef %9) #5
  %add23.2 = add i32 %bld, 12
  %38 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wpr, align 8
  %ptrs.3 = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ptrs.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptrs.3, align 4
  %wr32.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr32.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr32.3, align 4
  %conv22.3 = zext i32 %add23.2 to i64
  tail call void %43(ptr noundef %39, i64 noundef %conv22.3, i32 noundef %11) #5
  %add23.3 = add i32 %bld, 16
  %44 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wpr, align 8
  %ptrs.4 = getelementptr inbounds %struct.nvkm_memory, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %ptrs.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptrs.4, align 4
  %wr32.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wr32.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr32.4, align 4
  %conv22.4 = zext i32 %add23.3 to i64
  tail call void %49(ptr noundef %45, i64 noundef %conv22.4, i32 noundef %13) #5
  %add23.4 = add i32 %bld, 20
  %50 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wpr, align 8
  %ptrs.5 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ptrs.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptrs.5, align 4
  %wr32.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr32.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr32.5, align 4
  %conv22.5 = zext i32 %add23.4 to i64
  tail call void %55(ptr noundef %51, i64 noundef %conv22.5, i32 noundef %conv8) #5
  %add23.5 = add i32 %bld, 24
  %56 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wpr, align 8
  %ptrs.6 = getelementptr inbounds %struct.nvkm_memory, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ptrs.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptrs.6, align 4
  %wr32.6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wr32.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr32.6, align 4
  %conv22.6 = zext i32 %add23.5 to i64
  tail call void %61(ptr noundef %57, i64 noundef %conv22.6, i32 noundef %15) #5
  %add23.6 = add i32 %bld, 28
  %62 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wpr, align 8
  %ptrs.7 = getelementptr inbounds %struct.nvkm_memory, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %ptrs.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ptrs.7, align 4
  %wr32.7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wr32.7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr32.7, align 4
  %conv22.7 = zext i32 %add23.6 to i64
  tail call void %67(ptr noundef %63, i64 noundef %conv22.7, i32 noundef %conv6) #5
  %add23.7 = add i32 %bld, 32
  %68 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wpr, align 8
  %ptrs.8 = getelementptr inbounds %struct.nvkm_memory, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ptrs.8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ptrs.8, align 4
  %wr32.8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %wr32.8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr32.8, align 4
  %conv22.8 = zext i32 %add23.7 to i64
  tail call void %73(ptr noundef %69, i64 noundef %conv22.8, i32 noundef 1) #5
  %add23.8 = add i32 %bld, 36
  %74 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wpr, align 8
  %ptrs.9 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ptrs.9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ptrs.9, align 4
  %wr32.9 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wr32.9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wr32.9, align 4
  %conv22.9 = zext i32 %add23.8 to i64
  tail call void %79(ptr noundef %75, i64 noundef %conv22.9, i32 noundef %sub) #5
  %add23.9 = add i32 %bld, 40
  %80 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wpr, align 8
  %ptrs.10 = getelementptr inbounds %struct.nvkm_memory, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ptrs.10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ptrs.10, align 4
  %wr32.10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %wr32.10 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wr32.10, align 4
  %conv22.10 = zext i32 %add23.9 to i64
  tail call void %85(ptr noundef %81, i64 noundef %conv22.10, i32 noundef 0) #5
  %add23.10 = add i32 %bld, 44
  %86 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wpr, align 8
  %ptrs.11 = getelementptr inbounds %struct.nvkm_memory, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ptrs.11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ptrs.11, align 4
  %wr32.11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wr32.11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr32.11, align 4
  %conv22.11 = zext i32 %add23.10 to i64
  tail call void %91(ptr noundef %87, i64 noundef %conv22.11, i32 noundef 0) #5
  %add23.11 = add i32 %bld, 48
  %92 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wpr, align 8
  %ptrs.12 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %ptrs.12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ptrs.12, align 4
  %wr32.12 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %wr32.12 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wr32.12, align 4
  %conv22.12 = zext i32 %add23.11 to i64
  tail call void %97(ptr noundef %93, i64 noundef %conv22.12, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_initmsg(ptr noundef %pmu) #0 align 64 {
entry:
  %cmd.i = alloca %struct.nv_pmu_acr_init_wpr_region_cmd, align 4
  %msg = alloca %struct.nv_pmu_init_msg, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %msg) #5
  %0 = call ptr @memset(ptr %msg, i32 255, i32 42)
  %msgq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 6
  %1 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msgq, align 4
  %call = call i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef %2, ptr noundef nonnull %msg, i32 noundef 42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp.not = icmp eq i8 %4, 7
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %msg_type = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %msg_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.not = icmp eq i8 %6, 0
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %hpq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 4
  %7 = ptrtoint ptr %hpq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hpq, align 4
  %queue_info = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4
  %index = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 2
  %conv7 = zext i8 %10 to i32
  %offset = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %offset, align 2
  %conv10 = zext i16 %12 to i32
  %13 = ptrtoint ptr %queue_info to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %queue_info, align 2
  %conv13 = zext i16 %14 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %8, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13) #5
  %lpq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 5
  %15 = ptrtoint ptr %lpq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lpq, align 4
  %arrayidx15 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 1
  %index16 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 2
  %17 = ptrtoint ptr %index16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %index16, align 2
  %conv17 = zext i8 %18 to i32
  %offset20 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %offset20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %offset20, align 2
  %conv21 = zext i16 %20 to i32
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx15, align 2
  %conv25 = zext i16 %22 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %16, i32 noundef %conv17, i32 noundef %conv21, i32 noundef %conv25) #5
  %23 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msgq, align 4
  %arrayidx28 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 4
  %index29 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 4, i32 2
  %25 = ptrtoint ptr %index29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index29, align 2
  %conv30 = zext i8 %26 to i32
  %offset33 = getelementptr inbounds %struct.nv_pmu_init_msg, ptr %msg, i32 0, i32 4, i32 4, i32 1
  %27 = ptrtoint ptr %offset33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset33, align 2
  %conv34 = zext i16 %28 to i32
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx28, align 2
  %conv38 = zext i16 %30 to i32
  call void @nvkm_falcon_msgq_init(ptr noundef %24, i32 noundef %conv30, i32 noundef %conv34, i32 noundef %conv38) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #5
  %31 = call ptr @memcpy(ptr %cmd.i, ptr @__const.gm20b_pmu_acr_init_wpr.cmd, i32 16)
  %32 = ptrtoint ptr %hpq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hpq, align 4
  %call.i = call i32 @nvkm_falcon_cmdq_send(ptr noundef %33, ptr noundef nonnull %cmd.i, ptr noundef nonnull @gm20b_pmu_acr_init_wpr_callback, ptr noundef %pmu, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm20b_pmu_recv(ptr noundef %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %initmsg_received = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 7
  %0 = ptrtoint ptr %initmsg_received to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initmsg_received, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 4
  %initmsg = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %initmsg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %initmsg, align 4
  %call = tail call i32 %5(ptr noundef %pmu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.then
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #8
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %initmsg_received to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %initmsg_received, align 4
  br label %if.end9

if.end9:                                          ; preds = %cleanup, %entry.if.end9_crit_edge
  %msgq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 6
  %13 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msgq, align 4
  tail call void @nvkm_falcon_msgq_recv(ptr noundef %14) #5
  br label %return

return:                                           ; preds = %if.end9, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_recv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_load(ptr noundef %pmu, i32 noundef %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1
  %falcon = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2
  %acr = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %fwif, i32 0, i32 3
  %0 = ptrtoint ptr %acr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acr, align 4
  %call = tail call i32 @nvkm_acr_lsfw_load_sig_image_desc(ptr noundef %subdev, ptr noundef %falcon, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %ver, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gm20b_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppmu) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm20b_pmu_acr_init_wpr_callback(ptr noundef %priv, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %error_code = getelementptr inbounds %struct.nv_pmu_acr_init_wpr_region_msg, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %debug10 = getelementptr inbounds %struct.nvkm_pmu, ptr %priv, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug10, align 4
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %priv, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %priv, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %1) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp11 = icmp ugt i32 %3, 3
  br i1 %cmp11, label %do.end15, label %do.body8.if.end20_crit_edge

do.body8.if.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.end15:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %device16 = getelementptr inbounds %struct.nvkm_pmu, ptr %priv, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device16, align 4
  %dev17 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 8
  %name18 = getelementptr inbounds %struct.nvkm_pmu, ptr %priv, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef %name18) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end15, %do.body8.if.end20_crit_edge
  %wpr_ready = getelementptr inbounds %struct.nvkm_pmu, ptr %priv, i32 0, i32 8
  tail call void @complete_all(ptr noundef %wpr_ready) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 201, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gm20b_pmu_recv._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gm20b_pmu_recv._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 231, i32 26}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 144, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gm20b_pmu_acr_init_wpr_callback._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @gm20b_pmu_acr_init_wpr_callback._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 149, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @gm20b_pmu_acr_init_wpr_callback._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @gm20b_pmu_acr_init_wpr_callback._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @gm20b_pmu_fwif, !21, !"gm20b_pmu_fwif", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 236, i32 1}
!22 = !{ptr @gm20b_pmu, !23, !"gm20b_pmu", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 213, i32 1}
!24 = !{ptr @gm20b_pmu_acr, !25, !"gm20b_pmu_acr", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gm20b.c", i32 123, i32 1}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
