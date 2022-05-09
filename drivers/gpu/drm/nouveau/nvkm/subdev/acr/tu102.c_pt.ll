; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.142 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.lsf_signature_v1 = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32, i32, i32, i32, [88 x i8], [16 x i8] }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_gsp = type { %struct.nvkm_subdev, %struct.nvkm_falcon }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.104, %struct.anon.105, %struct.nvkm_engine }
%struct.anon.104 = type { i32, ptr, i32, i8 }
%struct.anon.105 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.108 }
%struct.anon.108 = type { %struct.refcount_struct, %struct.mutex, i8 }

@__UNIQUE_ID_firmware293 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu102/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [51 x i8] c"nouveau.firmware=nvidia/tu102/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu104/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [51 x i8] c"nouveau.firmware=nvidia/tu104/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu106/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [51 x i8] c"nouveau.firmware=nvidia/tu106/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu116/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [51 x i8] c"nouveau.firmware=nvidia/tu116/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu117/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [51 x i8] c"nouveau.firmware=nvidia/tu117/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu102/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu104/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu106/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu116/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu117/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [41 x i8] c"nouveau.firmware=nvidia/tu102/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu102/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [41 x i8] c"nouveau.firmware=nvidia/tu104/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu104/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware312 = internal constant [41 x i8] c"nouveau.firmware=nvidia/tu106/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu106/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [41 x i8] c"nouveau.firmware=nvidia/tu116/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware315 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu116/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [41 x i8] c"nouveau.firmware=nvidia/tu117/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware317 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu117/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@tu102_acr_fwif = internal constant { [3 x %struct.nvkm_acr_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @tu102_acr_load, ptr @tu102_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@tu102_acr = internal constant { %struct.nvkm_acr_func, [40 x i8] } { %struct.nvkm_acr_func { ptr null, ptr @tu102_acr_ahesasc_fwif, ptr @tu102_acr_asb_fwif, ptr @tu102_acr_unload_fwif, ptr @gp102_acr_wpr_parse, ptr @gp102_acr_wpr_layout, ptr @gp102_acr_wpr_alloc, ptr @tu102_acr_wpr_build, ptr @gp102_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @tu102_acr_init, ptr null, i64 0 }, [40 x i8] zeroinitializer }, align 32
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AcrAHESASC\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acr/bl\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acr/ucode_ahesasc\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AHESASC\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AcrASB\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acr/ucode_asb\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ASB\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AcrUnload\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acr/unload_bl\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acr/ucode_unload\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unload\00", [25 x i8] zeroinitializer }, align 32
@tu102_acr_ahesasc_fwif = internal constant { [3 x %struct.nvkm_acr_hsf_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @tu102_acr_ahesasc_0 }, %struct.nvkm_acr_hsf_fwif { i32 -1, ptr @tu102_acr_hsfw_nofw, ptr null }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@tu102_acr_asb_fwif = internal constant { [3 x %struct.nvkm_acr_hsf_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @tu102_acr_asb_0 }, %struct.nvkm_acr_hsf_fwif { i32 -1, ptr @tu102_acr_hsfw_nofw, ptr null }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@tu102_acr_unload_fwif = internal constant { [3 x %struct.nvkm_acr_hsf_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp108_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif { i32 -1, ptr @tu102_acr_hsfw_nofw, ptr null }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@tu102_acr_ahesasc_0 = internal constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gp102_acr_load_load, ptr @tu102_acr_hsfw_boot, ptr @gp108_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@tu102_acr_asb_0 = internal constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @tu102_acr_asb_load, ptr @tu102_acr_hsfw_boot, ptr @gp108_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@gp108_acr_unload_0 = external dso_local constant %struct.nvkm_acr_hsf_func, align 4
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"tu102_acr_fwif\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 220, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"tu102_acr\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 179, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 199, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 205, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 210, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"tu102_acr_ahesasc_fwif\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 172, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"tu102_acr_asb_fwif\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 143, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"tu102_acr_unload_fwif\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 117, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"tu102_acr_ahesasc_0\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 150, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"tu102_acr_asb_0\00", align 1
@___asan_gen_.71 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 130, i32 1 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_firmware315, ptr @__UNIQUE_ID_firmware316, ptr @__UNIQUE_ID_firmware317, ptr @tu102_acr_fwif, ptr @tu102_acr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tu102_acr_ahesasc_fwif, ptr @tu102_acr_asb_fwif, ptr @tu102_acr_unload_fwif, ptr @tu102_acr_ahesasc_0, ptr @tu102_acr_asb_0], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr_ahesasc_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr_asb_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr_unload_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr_ahesasc_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_acr_asb_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_acr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @tu102_acr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tu102_acr_load(ptr noundef %acr, i32 noundef %version, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  %_option56 = alloca [32 x i8], align 1
  %_option140 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #5
  %func = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %fwif, i32 0, i32 2
  %0 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 4
  %ahesasc = getelementptr inbounds %struct.nvkm_acr_func, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ahesasc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ahesasc, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
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
  %_next.0411 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %4, %entry.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %_next.0411, i32 0, i32 1
  %9 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %load, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.rhs.if.then47_crit_edge, label %for.body

land.rhs.if.then47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

for.body:                                         ; preds = %land.rhs
  %11 = ptrtoint ptr %_next.0411 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0411, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call3)
  %cmp6 = icmp ne i32 %12, %call3
  %incdec.ptr = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.0411, i32 1
  %tobool.not436 = icmp eq ptr %_next.0411, null
  %tobool.not = select i1 %cmp6, i1 true, i1 %tobool.not436
  br i1 %tobool.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %13 = ptrtoint ptr %_next.0411 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_next.0411, align 4
  br label %16

15:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13325 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %16

16:                                               ; preds = %15, %cond.end
  %.sink484 = phi i32 [ %14, %cond.end ], [ -1, %15 ]
  %_fwif.2323333 = phi ptr [ %_next.0411, %cond.end ], [ null, %15 ]
  %17 = phi ptr [ %_next.0411, %cond.end ], [ %4, %15 ]
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %cfgopt18 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %cfgopt18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgopt18, align 4
  %call20 = call i32 @nvkm_longopt(ptr noundef %21, ptr noundef nonnull %_option, i32 noundef %.sink484) #5
  %load27412 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %load27412 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %load27412, align 4
  %tobool28.not413 = icmp eq ptr %23, null
  br i1 %tobool28.not413, label %.if.end49_crit_edge, label %for.body29.lr.ph

.if.end49_crit_edge:                              ; preds = %16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.body29.lr.ph:                                 ; preds = %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp30 = icmp sgt i32 %call20, -1
  br label %for.body29

for.body29:                                       ; preds = %for.inc42.for.body29_crit_edge, %for.body29.lr.ph
  %24 = phi ptr [ %23, %for.body29.lr.ph ], [ %28, %for.inc42.for.body29_crit_edge ]
  %_next.1414 = phi ptr [ %17, %for.body29.lr.ph ], [ %incdec.ptr43, %for.inc42.for.body29_crit_edge ]
  br i1 %cmp30, label %if.end45, label %cond.end34

cond.end34:                                       ; preds = %for.body29
  %25 = ptrtoint ptr %_next.1414 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_next.1414, align 4
  %call37 = call i32 %24(ptr noundef %acr, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %26, ptr noundef %_next.1414) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cond.end34.if.end49_crit_edge, label %for.inc42

cond.end34.if.end49_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.inc42:                                        ; preds = %cond.end34
  %incdec.ptr43 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.1414, i32 1
  %load27 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next.1414, i32 1, i32 1
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
  %call37338 = call i32 %23(ptr noundef %acr, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %call20, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37338)
  %tobool46.not = icmp eq i32 %call37338, 0
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %for.inc42.if.then47_crit_edge, %land.rhs.if.then47_crit_edge
  %_ret.2344 = phi i32 [ %call37338, %if.end45.if.then47_crit_edge ], [ %call37, %for.inc42.if.then47_crit_edge ], [ -22, %land.rhs.if.then47_crit_edge ]
  %29 = inttoptr i32 %_ret.2344 to ptr
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge, %cond.end34.if.end49_crit_edge, %.if.end49_crit_edge
  %_fwif.4 = phi ptr [ %29, %if.then47 ], [ %17, %if.end45.if.end49_crit_edge ], [ %_fwif.2323333, %.if.end49_crit_edge ], [ %_next.1414, %cond.end34.if.end49_crit_edge ]
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
  %asb = getelementptr inbounds %struct.nvkm_acr_func, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %asb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asb, align 8
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
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
  %_next59.0418 = phi ptr [ %incdec.ptr84, %for.body78.land.rhs74_crit_edge ], [ %35, %if.end53.land.rhs74_crit_edge ]
  %load75 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %_next59.0418, i32 0, i32 1
  %40 = ptrtoint ptr %load75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %load75, align 4
  %tobool76.not = icmp eq ptr %41, null
  br i1 %tobool76.not, label %land.rhs74.if.then130_crit_edge, label %for.body78

land.rhs74.if.then130_crit_edge:                  ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then130

for.body78:                                       ; preds = %land.rhs74
  %42 = ptrtoint ptr %_next59.0418 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %_next59.0418, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call69)
  %cmp80 = icmp ne i32 %43, %call69
  %incdec.ptr84 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next59.0418, i32 1
  %tobool73.not435 = icmp eq ptr %_next59.0418, null
  %tobool73.not = select i1 %cmp80, i1 true, i1 %tobool73.not435
  br i1 %tobool73.not, label %for.body78.land.rhs74_crit_edge, label %cond.end97

for.body78.land.rhs74_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs74

cond.end97:                                       ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  %call92 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6)
  %44 = ptrtoint ptr %_next59.0418 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %_next59.0418, align 4
  br label %47

46:                                               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %call92352 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6)
  br label %47

47:                                               ; preds = %46, %cond.end97
  %.sink485 = phi i32 [ %45, %cond.end97 ], [ -1, %46 ]
  %_fwif60.2350360 = phi ptr [ %_next59.0418, %cond.end97 ], [ null, %46 ]
  %48 = phi ptr [ %_next59.0418, %cond.end97 ], [ %35, %46 ]
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %cfgopt100 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %cfgopt100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfgopt100, align 4
  %call102 = call i32 @nvkm_longopt(ptr noundef %52, ptr noundef nonnull %_option56, i32 noundef %.sink485) #5
  %load109419 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %load109419 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %load109419, align 4
  %tobool110.not420 = icmp eq ptr %54, null
  br i1 %tobool110.not420, label %.if.end132_crit_edge, label %for.body111.lr.ph

.if.end132_crit_edge:                             ; preds = %47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

for.body111.lr.ph:                                ; preds = %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call102)
  %cmp112 = icmp sgt i32 %call102, -1
  br label %for.body111

for.body111:                                      ; preds = %for.inc125.for.body111_crit_edge, %for.body111.lr.ph
  %55 = phi ptr [ %54, %for.body111.lr.ph ], [ %59, %for.inc125.for.body111_crit_edge ]
  %_next59.1421 = phi ptr [ %48, %for.body111.lr.ph ], [ %incdec.ptr126, %for.inc125.for.body111_crit_edge ]
  br i1 %cmp112, label %if.end128, label %cond.end116

cond.end116:                                      ; preds = %for.body111
  %56 = ptrtoint ptr %_next59.1421 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_next59.1421, align 4
  %call119 = call i32 %55(ptr noundef %acr, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %57, ptr noundef %_next59.1421) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %cond.end116.if.end132_crit_edge, label %for.inc125

cond.end116.if.end132_crit_edge:                  ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

for.inc125:                                       ; preds = %cond.end116
  %incdec.ptr126 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next59.1421, i32 1
  %load109 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next59.1421, i32 1, i32 1
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
  %call119365 = call i32 %54(ptr noundef %acr, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call102, ptr noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119365)
  %tobool129.not = icmp eq i32 %call119365, 0
  br i1 %tobool129.not, label %if.end128.if.end132_crit_edge, label %if.end128.if.then130_crit_edge

if.end128.if.then130_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.then130:                                       ; preds = %if.end128.if.then130_crit_edge, %for.inc125.if.then130_crit_edge, %land.rhs74.if.then130_crit_edge
  %_ret63.2371 = phi i32 [ %call119365, %if.end128.if.then130_crit_edge ], [ %call119, %for.inc125.if.then130_crit_edge ], [ -22, %land.rhs74.if.then130_crit_edge ]
  %60 = inttoptr i32 %_ret63.2371 to ptr
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge, %cond.end116.if.end132_crit_edge, %.if.end132_crit_edge
  %_fwif60.4 = phi ptr [ %60, %if.then130 ], [ %48, %if.end128.if.end132_crit_edge ], [ %_fwif60.2350360, %.if.end132_crit_edge ], [ %_next59.1421, %cond.end116.if.end132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option56) #5
  %cmp.i317 = icmp ugt ptr %_fwif60.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %_fwif60.4 to i32
  br label %cleanup

if.end137:                                        ; preds = %if.end132
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option140) #5
  %62 = call ptr @memset(ptr %_option140, i32 255, i32 32)
  %63 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %func, align 4
  %unload = getelementptr inbounds %struct.nvkm_acr_func, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %unload to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %unload, align 4
  %call149 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option140, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9)
  %67 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device, align 4
  %cfgopt151 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %cfgopt151 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfgopt151, align 4
  %call153 = call i32 @nvkm_longopt(ptr noundef %70, ptr noundef nonnull %_option140, i32 noundef -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call153)
  %cmp154 = icmp sgt i32 %call153, -2
  br i1 %cmp154, label %if.end137.land.rhs158_crit_edge, label %77

if.end137.land.rhs158_crit_edge:                  ; preds = %if.end137
  br label %land.rhs158

land.rhs158:                                      ; preds = %for.body162.land.rhs158_crit_edge, %if.end137.land.rhs158_crit_edge
  %_next143.0426 = phi ptr [ %incdec.ptr168, %for.body162.land.rhs158_crit_edge ], [ %66, %if.end137.land.rhs158_crit_edge ]
  %load159 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %_next143.0426, i32 0, i32 1
  %71 = ptrtoint ptr %load159 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %load159, align 4
  %tobool160.not = icmp eq ptr %72, null
  br i1 %tobool160.not, label %land.rhs158.if.then214_crit_edge, label %for.body162

land.rhs158.if.then214_crit_edge:                 ; preds = %land.rhs158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then214

for.body162:                                      ; preds = %land.rhs158
  %73 = ptrtoint ptr %_next143.0426 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %_next143.0426, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %call153)
  %cmp164 = icmp ne i32 %74, %call153
  %incdec.ptr168 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next143.0426, i32 1
  %tobool157.not434 = icmp eq ptr %_next143.0426, null
  %tobool157.not = select i1 %cmp164, i1 true, i1 %tobool157.not434
  br i1 %tobool157.not, label %for.body162.land.rhs158_crit_edge, label %cond.end181

for.body162.land.rhs158_crit_edge:                ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs158

cond.end181:                                      ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #7
  %call176 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option140, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9)
  %75 = ptrtoint ptr %_next143.0426 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %_next143.0426, align 4
  br label %78

77:                                               ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %call176379 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option140, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9)
  br label %78

78:                                               ; preds = %77, %cond.end181
  %.sink486 = phi i32 [ %76, %cond.end181 ], [ -1, %77 ]
  %_fwif144.2377387 = phi ptr [ %_next143.0426, %cond.end181 ], [ null, %77 ]
  %79 = phi ptr [ %_next143.0426, %cond.end181 ], [ %66, %77 ]
  %80 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device, align 4
  %cfgopt184 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %cfgopt184 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfgopt184, align 4
  %call186 = call i32 @nvkm_longopt(ptr noundef %83, ptr noundef nonnull %_option140, i32 noundef %.sink486) #5
  %load193427 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %load193427 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %load193427, align 4
  %tobool194.not428 = icmp eq ptr %85, null
  br i1 %tobool194.not428, label %.if.end216_crit_edge, label %for.body195.lr.ph

.if.end216_crit_edge:                             ; preds = %78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

for.body195.lr.ph:                                ; preds = %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call186)
  %cmp196 = icmp sgt i32 %call186, -1
  br label %for.body195

for.body195:                                      ; preds = %for.inc209.for.body195_crit_edge, %for.body195.lr.ph
  %86 = phi ptr [ %85, %for.body195.lr.ph ], [ %90, %for.inc209.for.body195_crit_edge ]
  %_next143.1429 = phi ptr [ %79, %for.body195.lr.ph ], [ %incdec.ptr210, %for.inc209.for.body195_crit_edge ]
  br i1 %cmp196, label %if.end212, label %cond.end200

cond.end200:                                      ; preds = %for.body195
  %87 = ptrtoint ptr %_next143.1429 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %_next143.1429, align 4
  %call203 = call i32 %86(ptr noundef %acr, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %88, ptr noundef %_next143.1429) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %cond.end200.if.end216_crit_edge, label %for.inc209

cond.end200.if.end216_crit_edge:                  ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

for.inc209:                                       ; preds = %cond.end200
  %incdec.ptr210 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next143.1429, i32 1
  %load193 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %_next143.1429, i32 1, i32 1
  %89 = ptrtoint ptr %load193 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %load193, align 4
  %tobool194.not = icmp eq ptr %90, null
  br i1 %tobool194.not, label %for.inc209.if.then214_crit_edge, label %for.inc209.for.body195_crit_edge

for.inc209.for.body195_crit_edge:                 ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body195

for.inc209.if.then214_crit_edge:                  ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then214

if.end212:                                        ; preds = %for.body195
  %call203392 = call i32 %85(ptr noundef %acr, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call186, ptr noundef %79) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203392)
  %tobool213.not = icmp eq i32 %call203392, 0
  br i1 %tobool213.not, label %if.end212.if.end216_crit_edge, label %if.end212.if.then214_crit_edge

if.end212.if.then214_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then214

if.end212.if.end216_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

if.then214:                                       ; preds = %if.end212.if.then214_crit_edge, %for.inc209.if.then214_crit_edge, %land.rhs158.if.then214_crit_edge
  %_ret147.2398 = phi i32 [ %call203392, %if.end212.if.then214_crit_edge ], [ %call203, %for.inc209.if.then214_crit_edge ], [ -22, %land.rhs158.if.then214_crit_edge ]
  %91 = inttoptr i32 %_ret147.2398 to ptr
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %if.end212.if.end216_crit_edge, %cond.end200.if.end216_crit_edge, %.if.end216_crit_edge
  %_fwif144.4 = phi ptr [ %91, %if.then214 ], [ %79, %if.end212.if.end216_crit_edge ], [ %_fwif144.2377387, %.if.end216_crit_edge ], [ %_next143.1429, %cond.end200.if.end216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option140) #5
  %cmp.i318 = icmp ugt ptr %_fwif144.4, inttoptr (i32 -4096 to ptr)
  %92 = ptrtoint ptr %_fwif144.4 to i32
  %spec.select401 = select i1 %cmp.i318, i32 %92, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end216, %if.then135, %if.then51
  %retval.0 = phi i32 [ %30, %if.then51 ], [ %61, %if.then135 ], [ %spec.select401, %if.end216 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_parse(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_layout(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tu102_acr_wpr_build(ptr noundef %acr, ptr nocapture noundef readnone %rtos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %0 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr32, align 4
  tail call void %5(ptr noundef %1, i64 noundef 512, i32 noundef -1) #5
  %lsfw2 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %6 = ptrtoint ptr %lsfw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn93 = load ptr, ptr %lsfw2, align 4
  %cmp.not95 = icmp eq ptr %.pn93, %lsfw2
  br i1 %cmp.not95, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn97 = phi ptr [ %.pn, %for.cond.backedge.for.body_crit_edge ], [ %.pn93, %entry.for.body_crit_edge ]
  %offset.096 = phi i32 [ %add10, %for.cond.backedge.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lsfw.098 = getelementptr i8, ptr %.pn97, i32 -12
  %sig4 = getelementptr i8, ptr %.pn97, i32 16
  %7 = ptrtoint ptr %sig4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sig4, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %id = getelementptr i8, ptr %.pn97, i32 -4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %offset5 = getelementptr i8, ptr %.pn97, i32 64
  %13 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset5, align 4
  %version = getelementptr inbounds %struct.lsf_signature_v1, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 4
  %17 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wpr, align 8
  %ptrs7 = getelementptr inbounds %struct.nvkm_memory, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ptrs7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptrs7, align 4
  %wr328 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wr328 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr328, align 4
  %conv = zext i32 %offset.096 to i64
  tail call void %22(ptr noundef %18, i64 noundef %conv, i32 noundef %12) #5
  %add = or i32 %offset.096, 4
  %23 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wpr, align 8
  %ptrs7.1 = getelementptr inbounds %struct.nvkm_memory, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ptrs7.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptrs7.1, align 4
  %wr328.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr328.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr328.1, align 4
  %conv.1 = zext i32 %add to i64
  tail call void %28(ptr noundef %24, i64 noundef %conv.1, i32 noundef %14) #5
  %add.1 = add i32 %offset.096, 8
  %29 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wpr, align 8
  %ptrs7.2 = getelementptr inbounds %struct.nvkm_memory, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ptrs7.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptrs7.2, align 4
  %wr328.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr328.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr328.2, align 4
  %conv.2 = zext i32 %add.1 to i64
  tail call void %34(ptr noundef %30, i64 noundef %conv.2, i32 noundef 1) #5
  %add.2 = add i32 %offset.096, 12
  %35 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wpr, align 8
  %ptrs7.3 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ptrs7.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptrs7.3, align 4
  %wr328.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wr328.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wr328.3, align 4
  %conv.3 = zext i32 %add.2 to i64
  tail call void %40(ptr noundef %36, i64 noundef %conv.3, i32 noundef 1) #5
  %add.3 = add i32 %offset.096, 16
  %41 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wpr, align 8
  %ptrs7.4 = getelementptr inbounds %struct.nvkm_memory, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ptrs7.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ptrs7.4, align 4
  %wr328.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr328.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr328.4, align 4
  %conv.4 = zext i32 %add.3 to i64
  tail call void %46(ptr noundef %42, i64 noundef %conv.4, i32 noundef %16) #5
  %add.4 = add i32 %offset.096, 20
  %47 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wpr, align 8
  %ptrs7.5 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ptrs7.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptrs7.5, align 4
  %wr328.5 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wr328.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr328.5, align 4
  %conv.5 = zext i32 %add.4 to i64
  tail call void %52(ptr noundef %48, i64 noundef %conv.5, i32 noundef 1) #5
  %add10 = add i32 %offset.096, 24
  %call = tail call i32 @gp102_acr_wpr_build_lsb(ptr noundef %acr, ptr noundef %lsfw.098) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %do.body12, label %for.body.cleanup46_crit_edge

for.body.cleanup46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

do.body12:                                        ; preds = %for.body
  %size = getelementptr i8, ptr %.pn97, i32 12
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %tobool22.not83 = icmp ult i32 %54, 4
  br i1 %tobool22.not83, label %do.body12.for.cond.backedge_crit_edge, label %while.body23.preheader

do.body12.for.cond.backedge_crit_edge:            ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

while.body23.preheader:                           ; preds = %do.body12
  %img16 = getelementptr i8, ptr %.pn97, i32 8
  %55 = ptrtoint ptr %img16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %img16, align 4
  %shr = lshr i32 %54, 2
  %img = getelementptr i8, ptr %.pn97, i32 68
  %57 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %img, align 4
  br label %while.body23

while.body23:                                     ; preds = %while.body23.while.body23_crit_edge, %while.body23.preheader
  %_data17.086 = phi ptr [ %incdec.ptr29, %while.body23.while.body23_crit_edge ], [ %56, %while.body23.preheader ]
  %_size15.085 = phi i32 [ %dec21, %while.body23.while.body23_crit_edge ], [ %shr, %while.body23.preheader ]
  %_addr13.084 = phi i32 [ %add30, %while.body23.while.body23_crit_edge ], [ %58, %while.body23.preheader ]
  %dec21 = add nsw i32 %_size15.085, -1
  %59 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wpr, align 8
  %ptrs25 = getelementptr inbounds %struct.nvkm_memory, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %ptrs25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ptrs25, align 4
  %wr3226 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wr3226 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wr3226, align 4
  %conv28 = zext i32 %_addr13.084 to i64
  %incdec.ptr29 = getelementptr i32, ptr %_data17.086, i32 1
  %65 = ptrtoint ptr %_data17.086 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %_data17.086, align 4
  tail call void %64(ptr noundef %60, i64 noundef %conv28, i32 noundef %66) #5
  %add30 = add i32 %_addr13.084, 4
  %tobool22.not = icmp eq i32 %dec21, 0
  br i1 %tobool22.not, label %while.body23.for.cond.backedge_crit_edge, label %while.body23.while.body23_crit_edge

while.body23.while.body23_crit_edge:              ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body23

while.body23.for.cond.backedge_crit_edge:         ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.body23.for.cond.backedge_crit_edge, %do.body12.for.cond.backedge_crit_edge
  %67 = ptrtoint ptr %lsfw.098 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lsfw.098, align 4
  %bld_write = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %bld_write to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bld_write, align 8
  %bld = getelementptr i8, ptr %.pn97, i32 72
  %71 = ptrtoint ptr %bld to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bld, align 4
  tail call void %70(ptr noundef %acr, i32 noundef %72, ptr noundef %lsfw.098) #5
  %73 = ptrtoint ptr %.pn97 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn = load ptr, ptr %.pn97, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw2
  br i1 %cmp.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add10, %for.cond.backedge.for.end_crit_edge ]
  %74 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wpr, align 8
  %ptrs42 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ptrs42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ptrs42, align 4
  %wr3243 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wr3243 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wr3243, align 4
  %conv45 = zext i32 %offset.0.lcssa to i64
  tail call void %79(ptr noundef %75, i64 noundef %conv45, i32 noundef -1) #5
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %for.body.cleanup46_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ %call, %for.body.cleanup46_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_acr_wpr_patch(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tu102_acr_init(ptr noundef %acr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %acr, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %acr, ptr noundef nonnull @.str.8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tu102_acr_hsfw_nofw(ptr nocapture noundef readnone %acr, ptr nocapture noundef readnone %bl, ptr nocapture noundef readnone %fw, ptr nocapture noundef readnone %name, i32 noundef %version, ptr nocapture noundef readnone %fwif) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_load_load(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tu102_acr_hsfw_boot(ptr noundef %acr, ptr noundef %hsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gm200_acr_hsfw_boot(ptr noundef %acr, ptr noundef %hsf, i32 noundef 0, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp108_acr_hsfw_bld(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_boot(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tu102_acr_asb_load(ptr noundef %acr, ptr noundef %hsfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %gsp = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %gsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsp, align 4
  %falcon = getelementptr inbounds %struct.nvkm_gsp, ptr %3, i32 0, i32 1
  %call = tail call i32 @gm200_acr_hsfw_load(ptr noundef %acr, ptr noundef %hsfw, ptr noundef %falcon) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_build_lsb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsf_boot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_firmware293, !1, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 101, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware294, !3, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 102, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware295, !5, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 104, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware296, !7, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 105, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware297, !9, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 107, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware298, !11, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 108, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware299, !13, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 110, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware300, !15, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 111, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware301, !17, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 113, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware302, !19, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 114, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware303, !21, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 136, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware304, !23, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 137, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware305, !25, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 138, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware306, !27, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 139, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware307, !29, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 140, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware308, !31, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 156, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware309, !33, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 157, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware310, !35, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 159, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware311, !37, !"__UNIQUE_ID_firmware311", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 160, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware312, !39, !"__UNIQUE_ID_firmware312", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 162, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware313, !41, !"__UNIQUE_ID_firmware313", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 163, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware314, !43, !"__UNIQUE_ID_firmware314", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 165, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware315, !45, !"__UNIQUE_ID_firmware315", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 166, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware316, !47, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 168, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware317, !49, !"__UNIQUE_ID_firmware317", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 169, i32 1}
!50 = !{ptr @tu102_acr_fwif, !51, !"tu102_acr_fwif", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 220, i32 1}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 199, i32 11}
!54 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 205, i32 11}
!61 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 210, i32 11}
!65 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tu102_acr, !69, !"tu102_acr", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 179, i32 1}
!70 = !{ptr @tu102_acr_ahesasc_fwif, !71, !"tu102_acr_ahesasc_fwif", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 172, i32 1}
!72 = !{ptr @tu102_acr_ahesasc_0, !73, !"tu102_acr_ahesasc_0", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 150, i32 1}
!74 = !{ptr @tu102_acr_asb_fwif, !75, !"tu102_acr_asb_fwif", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 143, i32 1}
!76 = !{ptr @tu102_acr_asb_0, !77, !"tu102_acr_asb_0", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 130, i32 1}
!78 = !{ptr @tu102_acr_unload_fwif, !79, !"tu102_acr_unload_fwif", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c", i32 117, i32 1}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
