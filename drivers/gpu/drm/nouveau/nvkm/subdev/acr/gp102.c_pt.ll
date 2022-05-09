; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.wpr_header_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.lsb_header_v1 = type { %struct.lsf_signature_v1, %struct.lsb_header_tail }
%struct.lsf_signature_v1 = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32, i32, i32, i32, [88 x i8], [16 x i8] }
%struct.lsb_header_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.146, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.146 = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_acr_lsf = type { ptr, ptr, i32, %struct.list_head }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon }
%struct.anon = type { %struct.anon.0, %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.flcn_acr_desc_v1 = type { [512 x i8], [4 x i32], i32, i32, i32, %struct.anon.153, i32, i64, %struct.anon.155 }
%struct.anon.153 = type { i32, [2 x %struct.anon.154] }
%struct.anon.154 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.155 = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.nvkm_sec2 = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.144, %struct.anon.145, %struct.nvkm_engine }
%struct.anon.144 = type { i32, ptr, i32, i8 }
%struct.anon.145 = type { i32, ptr, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c\00", [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp102/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gp102/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp104/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gp104/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp106/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gp106/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp107/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gp107/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gp102/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp102/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gp104/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp104/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gp106/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp106/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gp107/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp107/acr/ucode_load.bin\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AcrLoad\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acr/bl\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acr/ucode_load\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AcrUnload\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acr/unload_bl\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acr/ucode_unload\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unload\00", [25 x i8] zeroinitializer }, align 32
@gp102_acr_fwif = internal constant { [3 x %struct.nvkm_acr_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gp102_acr_load, ptr @gp102_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gp102_acr = internal constant { %struct.nvkm_acr_func, [40 x i8] } { %struct.nvkm_acr_func { ptr @gp102_acr_load_fwif, ptr null, ptr null, ptr @gp102_acr_unload_fwif, ptr @gp102_acr_wpr_parse, ptr @gp102_acr_wpr_layout, ptr @gp102_acr_wpr_alloc, ptr @gp102_acr_wpr_build, ptr @gp102_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 0 }, [40 x i8] zeroinitializer }, align 32
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@gp102_acr_load_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp102_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gp102_acr_unload_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm200_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gp102_acr_load_0 = internal constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gp102_acr_load_load, ptr @gm200_acr_load_boot, ptr @gm200_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@gm200_acr_unload_0 = external dso_local constant %struct.nvkm_acr_hsf_func, align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 64, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 259, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 264, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"gp102_acr_fwif\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 274, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"gp102_acr\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 241, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"gp102_acr_load_fwif\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 235, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"gp102_acr_unload_fwif\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 189, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"gp102_acr_load_0\00", align 1
@___asan_gen_.57 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 216, i32 1 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gp102_acr_fwif, ptr @gp102_acr, ptr @gp102_acr_load_fwif, ptr @gp102_acr_unload_fwif, ptr @gp102_acr_load_0], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_acr_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_acr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_acr_load_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_acr_unload_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_acr_load_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp102_acr_wpr_patch(ptr noundef %acr, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.wpr_header_v1, align 4
  %lsb = alloca %struct.lsb_header_v1, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hdr) #5
  %0 = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 1
  %1 = call ptr @memset(ptr %hdr, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %lsb) #5
  %2 = call ptr @memset(ptr %lsb, i32 255, i32 240)
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  %lsfw3 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %bl_data_off = getelementptr inbounds %struct.lsb_header_v1, ptr %lsb, i32 0, i32 1, i32 5
  %incdec.ptr.1 = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 2
  %incdec.ptr.2 = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 3
  %incdec.ptr.3 = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 4
  %incdec.ptr.4 = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %add33, %for.end.do.body_crit_edge ]
  %3 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptrs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %conv = zext i32 %offset.0 to i64
  %call = call i32 %8(ptr noundef %4, i64 noundef %conv) #5
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %hdr, align 4
  %add = or i32 %offset.0, 4
  %10 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wpr, align 8
  %ptrs.1 = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ptrs.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptrs.1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %conv.1 = zext i32 %add to i64
  %call.1 = call i32 %15(ptr noundef %11, i64 noundef %conv.1) #5
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.1, ptr %0, align 4
  %add.1 = add i32 %offset.0, 8
  %17 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wpr, align 8
  %ptrs.2 = getelementptr inbounds %struct.nvkm_memory, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ptrs.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptrs.2, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %conv.2 = zext i32 %add.1 to i64
  %call.2 = call i32 %22(ptr noundef %18, i64 noundef %conv.2) #5
  %23 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.2, ptr %incdec.ptr.1, align 4
  %add.2 = add i32 %offset.0, 12
  %24 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wpr, align 8
  %ptrs.3 = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ptrs.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptrs.3, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %conv.3 = zext i32 %add.2 to i64
  %call.3 = call i32 %29(ptr noundef %25, i64 noundef %conv.3) #5
  %30 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.3, ptr %incdec.ptr.2, align 4
  %add.3 = add i32 %offset.0, 16
  %31 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wpr, align 8
  %ptrs.4 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ptrs.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptrs.4, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %conv.4 = zext i32 %add.3 to i64
  %call.4 = call i32 %36(ptr noundef %32, i64 noundef %conv.4) #5
  %37 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call.4, ptr %incdec.ptr.3, align 4
  %add.4 = add i32 %offset.0, 20
  %38 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wpr, align 8
  %ptrs.5 = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ptrs.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptrs.5, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %conv.5 = zext i32 %add.4 to i64
  %call.5 = call i32 %43(ptr noundef %39, i64 noundef %conv.5) #5
  %44 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.5, ptr %incdec.ptr.4, align 4
  call void @wpr_header_v1_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body
  %.pn.in = phi ptr [ %lsfw3, %do.body ], [ %.pn, %for.body.for.cond_crit_edge ]
  %45 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw3
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id = getelementptr i8, ptr %.pn, i32 -4
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %48 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hdr, align 4
  %cmp6.not = icmp eq i32 %47, %49
  br i1 %cmp6.not, label %do.body8, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.body8:                                         ; preds = %for.body
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %0, align 4
  br label %while.body15

while.body15:                                     ; preds = %while.body15.while.body15_crit_edge, %do.body8
  %_data11.059 = phi ptr [ %lsb, %do.body8 ], [ %incdec.ptr22, %while.body15.while.body15_crit_edge ]
  %_size10.058 = phi i32 [ 60, %do.body8 ], [ %dec13, %while.body15.while.body15_crit_edge ]
  %_addr9.057 = phi i32 [ %51, %do.body8 ], [ %add23, %while.body15.while.body15_crit_edge ]
  %dec13 = add nsw i32 %_size10.058, -1
  %52 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wpr, align 8
  %ptrs17 = getelementptr inbounds %struct.nvkm_memory, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ptrs17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptrs17, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %conv20 = zext i32 %_addr9.057 to i64
  %call21 = call i32 %57(ptr noundef %53, i64 noundef %conv20) #5
  %incdec.ptr22 = getelementptr i32, ptr %_data11.059, i32 1
  %58 = ptrtoint ptr %_data11.059 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call21, ptr %_data11.059, align 4
  %add23 = add i32 %_addr9.057, 4
  %tobool14.not = icmp eq i32 %dec13, 0
  br i1 %tobool14.not, label %while.end24, label %while.body15.while.body15_crit_edge

while.body15.while.body15_crit_edge:              ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body15

while.end24:                                      ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #7
  %lsfw.0.le = getelementptr i8, ptr %.pn, i32 -12
  call void @lsb_header_v1_dump(ptr noundef %subdev, ptr noundef nonnull %lsb) #5
  %59 = ptrtoint ptr %lsfw.0.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lsfw.0.le, align 4
  %bld_patch = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %bld_patch to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bld_patch, align 4
  %63 = ptrtoint ptr %bl_data_off to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bl_data_off, align 4
  call void %62(ptr noundef %acr, i32 noundef %64, i64 noundef %adjust) #5
  br label %for.end

for.end:                                          ; preds = %while.end24, %for.cond.for.end_crit_edge
  %add33 = add i32 %offset.0, 24
  %65 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hdr, align 4
  %cmp36.not = icmp eq i32 %66, -1
  br i1 %cmp36.not, label %do.end38, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %lsb) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hdr) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpr_header_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lsb_header_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_build_lsb(ptr nocapture noundef readonly %acr, ptr noundef %lsfw) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.lsb_header_v1, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %hdr) #5
  %0 = getelementptr inbounds i8, ptr %hdr, i32 192
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %sig = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 5
  %2 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sig, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %5)
  %cmp.not = icmp eq i32 %5, 192
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = call ptr @memcpy(ptr %hdr, ptr %7, i32 192)
  %tail = getelementptr inbounds %struct.lsb_header_v1, ptr %hdr, i32 0, i32 1
  call void @gm200_acr_wpr_build_lsb_tail(ptr noundef %lsfw, ptr noundef %tail) #5
  %offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end21
  %_data.039 = phi ptr [ %hdr, %if.end21 ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.038 = phi i32 [ 60, %if.end21 ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.037 = phi i32 [ %10, %if.end21 ], [ %add, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.038, -1
  %11 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %_addr.037 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.039, i32 1
  %17 = ptrtoint ptr %_data.039 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_data.039, align 4
  call void %16(ptr noundef %12, i64 noundef %conv, i32 noundef %18) #5
  %add = add i32 %_addr.037, 4
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %hdr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_build_lsb_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_build(ptr noundef %acr, ptr noundef readonly %rtos) #0 align 64 {
entry:
  %hdr.i = alloca %struct.lsb_header_v1, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lsfw1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %0 = ptrtoint ptr %lsfw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn90 = load ptr, ptr %lsfw1, align 4
  %cmp.not92 = icmp eq ptr %.pn90, %lsfw1
  br i1 %cmp.not92, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %rtos, null
  %id6 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %rtos, i32 0, i32 2
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %1 = getelementptr inbounds i8, ptr %hdr.i, i32 192
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn94 = phi ptr [ %.pn90, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %offset.093 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %cleanup.for.body_crit_edge ]
  %lsfw.095 = getelementptr i8, ptr %.pn94, i32 -12
  %sig3 = getelementptr i8, ptr %.pn94, i32 16
  %2 = ptrtoint ptr %sig3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sig3, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %id = getelementptr i8, ptr %.pn94, i32 -4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %offset4 = getelementptr i8, ptr %.pn94, i32 64
  %8 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset4, align 4
  br i1 %tobool.not, label %for.body.land.end_crit_edge, label %land.rhs

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp7 = icmp ne i32 %7, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.land.end_crit_edge
  %12 = phi i1 [ false, %for.body.land.end_crit_edge ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  %version = getelementptr inbounds %struct.lsf_signature_v1, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %15 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %offset.093 to i64
  call void %20(ptr noundef %16, i64 noundef %conv, i32 noundef %7) #5
  %add = or i32 %offset.093, 4
  %21 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wpr, align 8
  %ptrs.1 = getelementptr inbounds %struct.nvkm_memory, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ptrs.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptrs.1, align 4
  %wr32.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wr32.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr32.1, align 4
  %conv.1 = zext i32 %add to i64
  call void %26(ptr noundef %22, i64 noundef %conv.1, i32 noundef %9) #5
  %add.1 = add i32 %offset.093, 8
  %27 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wpr, align 8
  %ptrs.2 = getelementptr inbounds %struct.nvkm_memory, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ptrs.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptrs.2, align 4
  %wr32.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wr32.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr32.2, align 4
  %conv.2 = zext i32 %add.1 to i64
  call void %32(ptr noundef %28, i64 noundef %conv.2, i32 noundef 7) #5
  %add.2 = add i32 %offset.093, 12
  %33 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wpr, align 8
  %ptrs.3 = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ptrs.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptrs.3, align 4
  %wr32.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr32.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr32.3, align 4
  %conv.3 = zext i32 %add.2 to i64
  call void %38(ptr noundef %34, i64 noundef %conv.3, i32 noundef %land.ext) #5
  %add.3 = add i32 %offset.093, 16
  %39 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wpr, align 8
  %ptrs.4 = getelementptr inbounds %struct.nvkm_memory, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %ptrs.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ptrs.4, align 4
  %wr32.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wr32.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr32.4, align 4
  %conv.4 = zext i32 %add.3 to i64
  call void %44(ptr noundef %40, i64 noundef %conv.4, i32 noundef %14) #5
  %add.4 = add i32 %offset.093, 20
  %45 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wpr, align 8
  %ptrs.5 = getelementptr inbounds %struct.nvkm_memory, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ptrs.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptrs.5, align 4
  %wr32.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr32.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr32.5, align 4
  %conv.5 = zext i32 %add.4 to i64
  call void %50(ptr noundef %46, i64 noundef %conv.5, i32 noundef 1) #5
  %add10 = add i32 %offset.093, 24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %hdr.i) #5
  %51 = call ptr @memset(ptr %1, i32 255, i32 48)
  %52 = ptrtoint ptr %sig3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sig3, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %55)
  %cmp.not.i = icmp eq i32 %55, 192
  br i1 %cmp.not.i, label %if.end21.i, label %cleanup.thread, !prof !65

if.end21.i:                                       ; preds = %land.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = call ptr @memcpy(ptr %hdr.i, ptr %57, i32 192)
  call void @gm200_acr_wpr_build_lsb_tail(ptr noundef %lsfw.095, ptr noundef %1) #5
  %59 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset4, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end21.i
  %_data.039.i = phi ptr [ %hdr.i, %if.end21.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %_size.038.i = phi i32 [ 60, %if.end21.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %_addr.037.i = phi i32 [ %60, %if.end21.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %_size.038.i, -1
  %61 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wpr, align 8
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr32.i, align 4
  %conv.i = zext i32 %_addr.037.i to i64
  %incdec.ptr.i = getelementptr i32, ptr %_data.039.i, i32 1
  %67 = ptrtoint ptr %_data.039.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %_data.039.i, align 4
  call void %66(ptr noundef %62, i64 noundef %conv.i, i32 noundef %68) #5
  %add.i = add i32 %_addr.037.i, 4
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %do.body12, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup.thread:                                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %hdr.i) #5
  br label %cleanup46

do.body12:                                        ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %hdr.i) #5
  %size = getelementptr i8, ptr %.pn94, i32 12
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %tobool22.not86 = icmp ult i32 %70, 4
  br i1 %tobool22.not86, label %do.body12.cleanup_crit_edge, label %while.body23.preheader

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body23.preheader:                           ; preds = %do.body12
  %img16 = getelementptr i8, ptr %.pn94, i32 8
  %71 = ptrtoint ptr %img16 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %img16, align 4
  %shr = lshr i32 %70, 2
  %img = getelementptr i8, ptr %.pn94, i32 68
  %73 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %img, align 4
  br label %while.body23

while.body23:                                     ; preds = %while.body23.while.body23_crit_edge, %while.body23.preheader
  %_data17.089 = phi ptr [ %incdec.ptr29, %while.body23.while.body23_crit_edge ], [ %72, %while.body23.preheader ]
  %_size15.088 = phi i32 [ %dec21, %while.body23.while.body23_crit_edge ], [ %shr, %while.body23.preheader ]
  %_addr13.087 = phi i32 [ %add30, %while.body23.while.body23_crit_edge ], [ %74, %while.body23.preheader ]
  %dec21 = add nsw i32 %_size15.088, -1
  %75 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wpr, align 8
  %ptrs25 = getelementptr inbounds %struct.nvkm_memory, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %ptrs25 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ptrs25, align 4
  %wr3226 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %wr3226 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wr3226, align 4
  %conv28 = zext i32 %_addr13.087 to i64
  %incdec.ptr29 = getelementptr i32, ptr %_data17.089, i32 1
  %81 = ptrtoint ptr %_data17.089 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %_data17.089, align 4
  call void %80(ptr noundef %76, i64 noundef %conv28, i32 noundef %82) #5
  %add30 = add i32 %_addr13.087, 4
  %tobool22.not = icmp eq i32 %dec21, 0
  br i1 %tobool22.not, label %while.body23.cleanup_crit_edge, label %while.body23.while.body23_crit_edge

while.body23.while.body23_crit_edge:              ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body23

while.body23.cleanup_crit_edge:                   ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body23.cleanup_crit_edge, %do.body12.cleanup_crit_edge
  %83 = ptrtoint ptr %lsfw.095 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lsfw.095, align 4
  %bld_write = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %bld_write to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bld_write, align 8
  %bld = getelementptr i8, ptr %.pn94, i32 72
  %87 = ptrtoint ptr %bld to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bld, align 4
  call void %86(ptr noundef %acr, i32 noundef %88, ptr noundef %lsfw.095) #5
  %89 = ptrtoint ptr %.pn94 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn = load ptr, ptr %.pn94, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw1
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add10, %cleanup.for.end_crit_edge ]
  %wpr41 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %90 = ptrtoint ptr %wpr41 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wpr41, align 8
  %ptrs42 = getelementptr inbounds %struct.nvkm_memory, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %ptrs42 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ptrs42, align 4
  %wr3243 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wr3243 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wr3243, align 4
  %conv45 = zext i32 %offset.0.lcssa to i64
  call void %95(ptr noundef %91, i64 noundef %conv45, i32 noundef -1) #5
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %for.end ], [ -22, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_alloc(ptr noundef %acr, i32 noundef %wpr_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add = shl i32 %wpr_size, 1
  %and = add i32 %add, 524286
  %shl = and i32 %and, -524288
  %conv = zext i32 %shl to i64
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %call = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv, i32 noundef 262144, i1 noundef zeroext true, ptr noundef %wpr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wpr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %call3 = tail call i64 %7(ptr noundef %3) #5
  %shadow_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 10
  %8 = ptrtoint ptr %shadow_start to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call3, ptr %shadow_start, align 8
  %9 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wpr, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %size, align 4
  %call8 = tail call i64 %14(ptr noundef %10) #5
  %shr = lshr i64 %call8, 1
  %add9 = add i64 %shr, %call3
  %wpr_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 8
  %15 = ptrtoint ptr %wpr_start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add9, ptr %wpr_start, align 8
  %16 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wpr, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %size13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %size13, align 4
  %call15 = tail call i64 %21(ptr noundef %17) #5
  %shr16 = lshr i64 %call15, 1
  %add17 = add i64 %shr16, %add9
  %wpr_end = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  %22 = ptrtoint ptr %wpr_end to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add17, ptr %wpr_end, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_layout(ptr noundef readonly %acr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lsfw3 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %0 = ptrtoint ptr %lsfw3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn46 = load ptr, ptr %lsfw3, align 4
  %cmp.not47 = icmp eq ptr %.pn46, %lsfw3
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn49 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn46, %entry.for.body_crit_edge ]
  %wpr.048 = phi i32 [ %add19, %for.body.for.body_crit_edge ], [ 768, %entry.for.body_crit_edge ]
  %lsfw.0 = getelementptr i8, ptr %.pn49, i32 -12
  %add5 = add nsw i32 %wpr.048, 255
  %and6 = and i32 %add5, -256
  %offset = getelementptr i8, ptr %.pn49, i32 64
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and6, ptr %offset, align 4
  %add8 = add i32 %and6, 4335
  %and9 = and i32 %add8, -4096
  %img = getelementptr i8, ptr %.pn49, i32 68
  %2 = ptrtoint ptr %img to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and9, ptr %img, align 4
  %size = getelementptr i8, ptr %.pn49, i32 12
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %add12 = or i32 %and9, 255
  %add13 = add i32 %add12, %4
  %and14 = and i32 %add13, -256
  %bld = getelementptr i8, ptr %.pn49, i32 72
  %5 = ptrtoint ptr %bld to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and14, ptr %bld, align 4
  %6 = ptrtoint ptr %lsfw.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lsfw.0, align 4
  %bld_size = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bld_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bld_size, align 4
  %add16 = add i32 %9, 255
  %and17 = and i32 %add16, -256
  %bl_data_size = getelementptr i8, ptr %.pn49, i32 76
  %10 = ptrtoint ptr %bl_data_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and17, ptr %bl_data_size, align 4
  %add19 = add i32 %and17, %and14
  %11 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn49, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw3
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %wpr.0.lcssa = phi i32 [ 768, %entry.for.end_crit_edge ], [ %add19, %for.body.for.end_crit_edge ]
  ret i32 %wpr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_wpr_parse(ptr noundef %acr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wpr_fw = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 14
  %0 = ptrtoint ptr %wpr_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpr_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %hdr.0 = phi ptr [ %3, %entry ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %4 = ptrtoint ptr %hdr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @wpr_header_v1_dump(ptr noundef %subdev, ptr noundef %hdr.0) #5
  %incdec.ptr = getelementptr %struct.wpr_header_v1, ptr %hdr.0, i32 1
  %6 = ptrtoint ptr %hdr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr.0, align 4
  %call = tail call ptr @nvkm_acr_lsfw_add(ptr noundef null, ptr noundef %acr, ptr noundef null, i32 noundef %7) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_acr_lsfw_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_load_load(ptr noundef %acr, ptr noundef %hsfw) #0 align 64 {
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
  %wpr_region_id = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %wpr_region_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %wpr_region_id, align 8
  %regions = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %arrayidx, i32 0, i32 5
  %5 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %regions, align 4
  %wpr_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 8
  %6 = ptrtoint ptr %wpr_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wpr_start, align 8
  %shr = lshr i64 %7, 8
  %conv = trunc i64 %shr to i32
  %region_props = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1
  %8 = ptrtoint ptr %region_props to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %region_props, align 4
  %wpr_end = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  %9 = ptrtoint ptr %wpr_end to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wpr_end, align 8
  %shr3 = lshr i64 %10, 8
  %conv4 = trunc i64 %shr3 to i32
  %end_addr = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4, ptr %end_addr, align 4
  %region_id = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %region_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %region_id, align 4
  %read_mask = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %read_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 15, ptr %read_mask, align 4
  %write_mask = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %write_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %write_mask, align 4
  %client_mask = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %client_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %client_mask, align 4
  %shadow_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 10
  %16 = ptrtoint ptr %shadow_start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %shadow_start, align 8
  %shr20 = lshr i64 %17, 8
  %conv21 = trunc i64 %shr20 to i32
  %shadow_mem_start_addr = getelementptr inbounds %struct.anon.153, ptr %regions, i32 0, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %shadow_mem_start_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv21, ptr %shadow_mem_start_addr, align 4
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  tail call void @flcn_acr_desc_v1_dump(ptr noundef %subdev, ptr noundef %arrayidx) #5
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %sec2 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 67
  %21 = ptrtoint ptr %sec2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sec2, align 4
  %falcon = getelementptr inbounds %struct.nvkm_sec2, ptr %22, i32 0, i32 2
  %call = tail call i32 @gm200_acr_hsfw_load(ptr noundef %acr, ptr noundef %hsfw, ptr noundef %falcon) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_acr_desc_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_load(ptr noundef %acr, i32 %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  %_option56 = alloca [32 x i8], align 1
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
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1)
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
  %_next.0262 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %4, %entry.land.rhs_crit_edge ]
  %load4 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %_next.0262, i32 0, i32 1
  %9 = ptrtoint ptr %load4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %load4, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.rhs.if.then47_crit_edge, label %for.body

land.rhs.if.then47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

for.body:                                         ; preds = %land.rhs
  %11 = ptrtoint ptr %_next.0262 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0262, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call3)
  %cmp6 = icmp ne i32 %12, %call3
  %incdec.ptr = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.0262, i32 1
  %tobool.not278 = icmp eq ptr %_next.0262, null
  %tobool.not = select i1 %cmp6, i1 true, i1 %tobool.not278
  br i1 %tobool.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  %13 = ptrtoint ptr %_next.0262 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_next.0262, align 4
  br label %16

15:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13207 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  br label %16

16:                                               ; preds = %15, %cond.end
  %.sink310 = phi i32 [ %14, %cond.end ], [ -1, %15 ]
  %_fwif.2205215 = phi ptr [ %_next.0262, %cond.end ], [ null, %15 ]
  %17 = phi ptr [ %_next.0262, %cond.end ], [ %4, %15 ]
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %cfgopt18 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %cfgopt18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgopt18, align 4
  %call20 = call i32 @nvkm_longopt(ptr noundef %21, ptr noundef nonnull %_option, i32 noundef %.sink310) #5
  %load27263 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %load27263 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %load27263, align 4
  %tobool28.not264 = icmp eq ptr %23, null
  br i1 %tobool28.not264, label %.if.end49_crit_edge, label %for.body29.lr.ph

.if.end49_crit_edge:                              ; preds = %16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.body29.lr.ph:                                 ; preds = %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp30 = icmp sgt i32 %call20, -1
  br label %for.body29

for.body29:                                       ; preds = %for.inc42.for.body29_crit_edge, %for.body29.lr.ph
  %24 = phi ptr [ %23, %for.body29.lr.ph ], [ %28, %for.inc42.for.body29_crit_edge ]
  %_next.1265 = phi ptr [ %17, %for.body29.lr.ph ], [ %incdec.ptr43, %for.inc42.for.body29_crit_edge ]
  br i1 %cmp30, label %if.end45, label %cond.end34

cond.end34:                                       ; preds = %for.body29
  %25 = ptrtoint ptr %_next.1265 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_next.1265, align 4
  %call37 = call i32 %24(ptr noundef %acr, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %26, ptr noundef %_next.1265) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cond.end34.if.end49_crit_edge, label %for.inc42

cond.end34.if.end49_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.inc42:                                        ; preds = %cond.end34
  %incdec.ptr43 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.1265, i32 1
  %load27 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.1265, i32 1, i32 1
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
  %call37220 = call i32 %23(ptr noundef %acr, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %call20, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37220)
  %tobool46.not = icmp eq i32 %call37220, 0
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %for.inc42.if.then47_crit_edge, %land.rhs.if.then47_crit_edge
  %_ret.2226 = phi i32 [ %call37220, %if.end45.if.then47_crit_edge ], [ %call37, %for.inc42.if.then47_crit_edge ], [ -22, %land.rhs.if.then47_crit_edge ]
  %29 = inttoptr i32 %_ret.2226 to ptr
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge, %cond.end34.if.end49_crit_edge, %.if.end49_crit_edge
  %_fwif.4 = phi ptr [ %29, %if.then47 ], [ %17, %if.end45.if.end49_crit_edge ], [ %_fwif.2205215, %.if.end49_crit_edge ], [ %_next.1265, %cond.end34.if.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #5
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option56) #5
  %31 = call ptr @memset(ptr %_option56, i32 255, i32 32)
  %32 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func, align 4
  %unload = getelementptr inbounds %struct.nvkm_acr_func, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %unload to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unload, align 4
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7)
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %cfgopt67 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %cfgopt67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfgopt67, align 4
  %call69 = call i32 @nvkm_longopt(ptr noundef %39, ptr noundef nonnull %_option56, i32 noundef -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call69)
  %cmp70 = icmp sgt i32 %call69, -2
  br i1 %cmp70, label %if.end53.land.rhs74_crit_edge, label %46

if.end53.land.rhs74_crit_edge:                    ; preds = %if.end53
  br label %land.rhs74

land.rhs74:                                       ; preds = %for.body78.land.rhs74_crit_edge, %if.end53.land.rhs74_crit_edge
  %_next59.0269 = phi ptr [ %incdec.ptr84, %for.body78.land.rhs74_crit_edge ], [ %35, %if.end53.land.rhs74_crit_edge ]
  %load75 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %_next59.0269, i32 0, i32 1
  %40 = ptrtoint ptr %load75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %load75, align 4
  %tobool76.not = icmp eq ptr %41, null
  br i1 %tobool76.not, label %land.rhs74.if.then130_crit_edge, label %for.body78

land.rhs74.if.then130_crit_edge:                  ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then130

for.body78:                                       ; preds = %land.rhs74
  %42 = ptrtoint ptr %_next59.0269 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %_next59.0269, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call69)
  %cmp80 = icmp ne i32 %43, %call69
  %incdec.ptr84 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next59.0269, i32 1
  %tobool73.not277 = icmp eq ptr %_next59.0269, null
  %tobool73.not = select i1 %cmp80, i1 true, i1 %tobool73.not277
  br i1 %tobool73.not, label %for.body78.land.rhs74_crit_edge, label %cond.end97

for.body78.land.rhs74_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs74

cond.end97:                                       ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  %call92 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7)
  %44 = ptrtoint ptr %_next59.0269 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %_next59.0269, align 4
  br label %47

46:                                               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %call92234 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7)
  br label %47

47:                                               ; preds = %46, %cond.end97
  %.sink311 = phi i32 [ %45, %cond.end97 ], [ -1, %46 ]
  %_fwif60.2232242 = phi ptr [ %_next59.0269, %cond.end97 ], [ null, %46 ]
  %48 = phi ptr [ %_next59.0269, %cond.end97 ], [ %35, %46 ]
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %cfgopt100 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %cfgopt100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfgopt100, align 4
  %call102 = call i32 @nvkm_longopt(ptr noundef %52, ptr noundef nonnull %_option56, i32 noundef %.sink311) #5
  %load109270 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %load109270 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %load109270, align 4
  %tobool110.not271 = icmp eq ptr %54, null
  br i1 %tobool110.not271, label %.if.end132_crit_edge, label %for.body111.lr.ph

.if.end132_crit_edge:                             ; preds = %47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

for.body111.lr.ph:                                ; preds = %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call102)
  %cmp112 = icmp sgt i32 %call102, -1
  br label %for.body111

for.body111:                                      ; preds = %for.inc125.for.body111_crit_edge, %for.body111.lr.ph
  %55 = phi ptr [ %54, %for.body111.lr.ph ], [ %59, %for.inc125.for.body111_crit_edge ]
  %_next59.1272 = phi ptr [ %48, %for.body111.lr.ph ], [ %incdec.ptr126, %for.inc125.for.body111_crit_edge ]
  br i1 %cmp112, label %if.end128, label %cond.end116

cond.end116:                                      ; preds = %for.body111
  %56 = ptrtoint ptr %_next59.1272 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_next59.1272, align 4
  %call119 = call i32 %55(ptr noundef %acr, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %57, ptr noundef %_next59.1272) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %cond.end116.if.end132_crit_edge, label %for.inc125

cond.end116.if.end132_crit_edge:                  ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

for.inc125:                                       ; preds = %cond.end116
  %incdec.ptr126 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next59.1272, i32 1
  %load109 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next59.1272, i32 1, i32 1
  %58 = ptrtoint ptr %load109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %load109, align 4
  %tobool110.not = icmp eq ptr %59, null
  br i1 %tobool110.not, label %for.inc125.if.then130_crit_edge, label %for.inc125.for.body111_crit_edge

for.inc125.for.body111_crit_edge:                 ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111

for.inc125.if.then130_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then130

if.end128:                                        ; preds = %for.body111
  %call119247 = call i32 %54(ptr noundef %acr, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call102, ptr noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119247)
  %tobool129.not = icmp eq i32 %call119247, 0
  br i1 %tobool129.not, label %if.end128.if.end132_crit_edge, label %if.end128.if.then130_crit_edge

if.end128.if.then130_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.then130:                                       ; preds = %if.end128.if.then130_crit_edge, %for.inc125.if.then130_crit_edge, %land.rhs74.if.then130_crit_edge
  %_ret63.2253 = phi i32 [ %call119247, %if.end128.if.then130_crit_edge ], [ %call119, %for.inc125.if.then130_crit_edge ], [ -22, %land.rhs74.if.then130_crit_edge ]
  %60 = inttoptr i32 %_ret63.2253 to ptr
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge, %cond.end116.if.end132_crit_edge, %.if.end132_crit_edge
  %_fwif60.4 = phi ptr [ %60, %if.then130 ], [ %48, %if.end128.if.end132_crit_edge ], [ %_fwif60.2232242, %.if.end132_crit_edge ], [ %_next59.1272, %cond.end116.if.end132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option56) #5
  %cmp.i200 = icmp ugt ptr %_fwif60.4, inttoptr (i32 -4096 to ptr)
  %61 = ptrtoint ptr %_fwif60.4 to i32
  %spec.select255 = select i1 %cmp.i200, i32 %61, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.then51
  %retval.0 = phi i32 [ %30, %if.then51 ], [ %spec.select255, %if.end132 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_acr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gp102_acr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_load_boot(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_hsfw_bld(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 64, i32 6}
!2 = !{ptr @__UNIQUE_ID_firmware293, !3, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 176, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware294, !5, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 177, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware295, !7, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 179, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware296, !9, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 180, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware297, !11, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 182, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware298, !13, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 183, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware299, !15, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 185, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware300, !17, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 186, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware301, !19, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 222, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware302, !21, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 223, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware303, !23, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 225, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware304, !25, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 226, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware305, !27, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 228, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware306, !29, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 229, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware307, !31, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 231, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware308, !33, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 232, i32 1}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 259, i32 11}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 264, i32 11}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @gp102_acr_fwif, !47, !"gp102_acr_fwif", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 274, i32 1}
!48 = !{ptr @gp102_acr, !49, !"gp102_acr", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 241, i32 1}
!50 = !{ptr @gp102_acr_load_fwif, !51, !"gp102_acr_load_fwif", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 235, i32 1}
!52 = !{ptr @gp102_acr_load_0, !53, !"gp102_acr_load_0", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 216, i32 1}
!54 = !{ptr @gp102_acr_unload_fwif, !55, !"gp102_acr_unload_fwif", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp102.c", i32 189, i32 1}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
