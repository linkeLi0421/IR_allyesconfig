; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
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
%struct.wpr_header = type { i32, i32, i32, i32, i32 }
%struct.lsb_header = type { %struct.lsf_signature, %struct.lsb_header_tail }
%struct.lsf_signature = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32 }
%struct.lsb_header_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.144, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.144 = type { i32, i32, i32 }
%struct.nvkm_acr_lsf = type { ptr, ptr, i32, %struct.list_head }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.flcn_bl_dmem_desc_v1 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32 }>
%struct.nvkm_acr_hsf = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.142, %struct.anon.143, %struct.nvkm_engine }
%struct.anon.142 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.145 }
%struct.anon.145 = type { %struct.anon.146, %struct.anon.146, i32 }
%struct.anon.146 = type { ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.147, %struct.anon.148 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.147 = type { %struct.mutex, i32, i32 }
%struct.anon.148 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.flcn_acr_desc = type { %union.anon.155, i32, i32, i32, %struct.anon.156, i32, i64, %struct.anon.158 }
%union.anon.155 = type { [4 x i32], [496 x i8] }
%struct.anon.156 = type { i32, [2 x %struct.anon.157] }
%struct.anon.157 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.158 = type { i32, i32, i32, i32 }

@gm200_acr = dso_local constant { %struct.nvkm_acr_func, [40 x i8] } zeroinitializer, align 32
@gm200_acr_nofw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: firmware unavailable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gm200_acr_nofw\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm200_acr_nofw._entry_ptr = internal global ptr @gm200_acr_nofw._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@gm200_acr_hsfw_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 279, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: mailbox %08x %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gm200_acr_hsfw_boot\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gm200_acr_hsfw_boot._entry_ptr = internal global ptr @gm200_acr_hsfw_boot._entry, section ".printk_index", align 4
@gm200_acr_hsfw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 305, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: patching production signature\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gm200_acr_hsfw_load\00", [44 x i8] zeroinitializer }, align 32
@gm200_acr_hsfw_load._entry_ptr = internal global ptr @gm200_acr_hsfw_load._entry, section ".printk_index", align 4
@gm200_acr_hsfw_load._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 310, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: patching debug signature\0A\00", [34 x i8] zeroinitializer }, align 32
@gm200_acr_hsfw_load._entry_ptr.13 = internal global ptr @gm200_acr_hsfw_load._entry.11, section ".printk_index", align 4
@gm200_acr_unload_0 = dso_local constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gm200_acr_unload_load, ptr @gm200_acr_unload_boot, ptr @gm200_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gm200/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gm204/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gm206/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [51 x i8] c"nouveau.firmware=nvidia/gp100/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gm200/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gm200/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gm204/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gm204/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gm206/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gm206/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gp100/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gp100/acr/ucode_load.bin\00", section ".modinfo", align 1
@gm200_acr_fwif = internal constant { [3 x %struct.nvkm_acr_fwif], [60 x i8] } { [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gm200_acr_load, ptr @gm200_acr_0 }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gm200_acr_0 = internal constant { %struct.nvkm_acr_func, [40 x i8] } { %struct.nvkm_acr_func { ptr @gm200_acr_load_fwif, ptr null, ptr null, ptr @gm200_acr_unload_fwif, ptr @gm200_acr_wpr_parse, ptr @gm200_acr_wpr_layout, ptr @gm200_acr_wpr_alloc, ptr @gm200_acr_wpr_build, ptr @gm200_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AcrLoad\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acr/bl\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acr/ucode_load\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AcrUnload\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acr/ucode_unload\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unload\00", [25 x i8] zeroinitializer }, align 32
@gm200_acr_load_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm200_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gm200_acr_unload_fwif = internal constant { [2 x %struct.nvkm_acr_hsf_fwif], [40 x i8] } { [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm200_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gm200_acr_load_0 = internal constant { %struct.nvkm_acr_hsf_func, [20 x i8] } { %struct.nvkm_acr_hsf_func { ptr @gm200_acr_load_load, ptr @gm200_acr_load_boot, ptr @gm200_acr_hsfw_bld }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"gm200_acr\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 36, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 42, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 49, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 279, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 305, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 310, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"gm200_acr_unload_0\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 374, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"gm200_acr_fwif\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 476, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"gm200_acr_0\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 441, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 461, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 466, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"gm200_acr_load_fwif\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 435, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"gm200_acr_unload_fwif\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 386, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"gm200_acr_load_0\00", align 1
@___asan_gen_.113 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 416, i32 1 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @gm200_acr_hsfw_boot._entry, ptr @gm200_acr_hsfw_boot._entry_ptr, ptr @gm200_acr_hsfw_load._entry, ptr @gm200_acr_hsfw_load._entry.11, ptr @gm200_acr_hsfw_load._entry_ptr, ptr @gm200_acr_hsfw_load._entry_ptr.13, ptr @gm200_acr_nofw._entry, ptr @gm200_acr_nofw._entry_ptr, ptr @gm200_acr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @gm200_acr_unload_0, ptr @gm200_acr_fwif, ptr @gm200_acr_0, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @gm200_acr_load_fwif, ptr @gm200_acr_unload_fwif, ptr @gm200_acr_load_0], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_nofw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_hsfw_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_hsfw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_hsfw_load._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_unload_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_fwif to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_load_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_unload_fwif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_acr_load_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_nofw(ptr noundef %acr, i32 %ver, ptr nocapture readnone %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_init(ptr noundef %acr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %acr, ptr noundef nonnull @.str.5) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsf_boot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_acr_wpr_check(ptr nocapture noundef readonly %acr, ptr nocapture noundef writeonly %start, ptr nocapture noundef writeonly %limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1051860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2) #8, !srcloc !83
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 1051860
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %and = and i32 %6, -256
  %conv = zext i32 %and to i64
  %shl = shl nuw nsw i64 %conv, 8
  %7 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %start, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 1051860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 3) #8, !srcloc !83
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 1051860
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and14 = and i32 %12, -256
  %conv15 = zext i32 %and14 to i64
  %shl16 = shl nuw nsw i64 %conv15, 8
  %add = add nuw nsw i64 %shl16, 131072
  %13 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %limit, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_acr_wpr_patch(ptr noundef %acr, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.wpr_header, align 4
  %lsb = alloca %struct.lsb_header, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #8
  %0 = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 1
  %1 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %lsb) #8
  %2 = call ptr @memset(ptr %lsb, i32 255, i32 124)
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %lsfw4 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %bl_data_off = getelementptr inbounds %struct.lsb_header, ptr %lsb, i32 0, i32 1, i32 5
  %incdec.ptr.1 = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 2
  %incdec.ptr.2 = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 3
  %incdec.ptr.3 = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 4
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
  %call = call i32 %8(ptr noundef %4, i64 noundef %conv) #8
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %hdr, align 4
  %add = add i32 %offset.0, 4
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
  %call.1 = call i32 %15(ptr noundef %11, i64 noundef %conv.1) #8
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
  %call.2 = call i32 %22(ptr noundef %18, i64 noundef %conv.2) #8
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
  %call.3 = call i32 %29(ptr noundef %25, i64 noundef %conv.3) #8
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
  %call.4 = call i32 %36(ptr noundef %32, i64 noundef %conv.4) #8
  %37 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call.4, ptr %incdec.ptr.3, align 4
  call void @wpr_header_dump(ptr noundef %subdev1, ptr noundef nonnull %hdr) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body
  %.pn.in = phi ptr [ %lsfw4, %do.body ], [ %.pn, %for.body.for.cond_crit_edge ]
  %38 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw4
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id = getelementptr i8, ptr %.pn, i32 -4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %41 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hdr, align 4
  %cmp7.not = icmp eq i32 %40, %42
  br i1 %cmp7.not, label %do.body9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body9:                                         ; preds = %for.body
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  br label %while.body16

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %do.body9
  %_data12.059 = phi ptr [ %lsb, %do.body9 ], [ %incdec.ptr23, %while.body16.while.body16_crit_edge ]
  %_size11.058 = phi i32 [ 31, %do.body9 ], [ %dec14, %while.body16.while.body16_crit_edge ]
  %_addr10.057 = phi i32 [ %44, %do.body9 ], [ %add24, %while.body16.while.body16_crit_edge ]
  %dec14 = add nsw i32 %_size11.058, -1
  %45 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wpr, align 8
  %ptrs18 = getelementptr inbounds %struct.nvkm_memory, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ptrs18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptrs18, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %conv21 = zext i32 %_addr10.057 to i64
  %call22 = call i32 %50(ptr noundef %46, i64 noundef %conv21) #8
  %incdec.ptr23 = getelementptr i32, ptr %_data12.059, i32 1
  %51 = ptrtoint ptr %_data12.059 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call22, ptr %_data12.059, align 4
  %add24 = add i32 %_addr10.057, 4
  %tobool15.not = icmp eq i32 %dec14, 0
  br i1 %tobool15.not, label %while.end25, label %while.body16.while.body16_crit_edge

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body16

while.end25:                                      ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  %lsfw.0.le = getelementptr i8, ptr %.pn, i32 -12
  call void @lsb_header_dump(ptr noundef %subdev1, ptr noundef nonnull %lsb) #8
  %52 = ptrtoint ptr %lsfw.0.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lsfw.0.le, align 4
  %bld_patch = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %bld_patch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bld_patch, align 4
  %56 = ptrtoint ptr %bl_data_off to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bl_data_off, align 4
  call void %55(ptr noundef %acr, i32 noundef %57, i64 noundef %adjust) #8
  br label %for.end

for.end:                                          ; preds = %while.end25, %for.cond.for.end_crit_edge
  %add33 = add i32 %offset.0, 20
  %58 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hdr, align 4
  %cmp36.not = icmp eq i32 %59, -1
  br i1 %cmp36.not, label %do.end38, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %lsb) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpr_header_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lsb_header_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gm200_acr_wpr_build_lsb_tail(ptr nocapture noundef readonly %lsfw, ptr nocapture noundef writeonly %hdr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %img, align 4
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %hdr, align 4
  %ucode_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 15
  %3 = ptrtoint ptr %ucode_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ucode_size, align 4
  %ucode_size1 = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 1
  %5 = ptrtoint ptr %ucode_size1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ucode_size1, align 4
  %data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 16
  %6 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_size, align 4
  %data_size2 = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 2
  %8 = ptrtoint ptr %data_size2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %data_size2, align 4
  %bootloader_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 6
  %9 = ptrtoint ptr %bootloader_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bootloader_size, align 4
  %bl_code_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 3
  %11 = ptrtoint ptr %bl_code_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bl_code_size, align 4
  %bootloader_imem_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 7
  %12 = ptrtoint ptr %bootloader_imem_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bootloader_imem_offset, align 4
  %bl_imem_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 4
  %14 = ptrtoint ptr %bl_imem_off to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bl_imem_off, align 4
  %bld = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %bld to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bld, align 4
  %bl_data_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 5
  %17 = ptrtoint ptr %bl_data_off to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bl_data_off, align 4
  %bl_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 18
  %18 = ptrtoint ptr %bl_data_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bl_data_size, align 4
  %bl_data_size4 = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 6
  %20 = ptrtoint ptr %bl_data_size4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bl_data_size4, align 4
  %app_start_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 9
  %21 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %app_start_offset, align 4
  %app_resident_code_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 11
  %23 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %app_resident_code_offset, align 4
  %add = add i32 %24, %22
  %app_code_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 7
  %25 = ptrtoint ptr %app_code_off to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %app_code_off, align 4
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %26 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %app_resident_code_size, align 4
  %app_code_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 8
  %28 = ptrtoint ptr %app_code_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %app_code_size, align 4
  %29 = load i32, ptr %app_start_offset, align 4
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %30 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %app_resident_data_offset, align 4
  %add6 = add i32 %31, %29
  %app_data_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 9
  %32 = ptrtoint ptr %app_data_off to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add6, ptr %app_data_off, align 4
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %33 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %app_resident_data_size, align 4
  %app_data_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 10
  %35 = ptrtoint ptr %app_data_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %app_data_size, align 4
  %36 = ptrtoint ptr %lsfw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lsfw, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %flags7 = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 11
  %40 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %flags7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_wpr_build(ptr noundef %acr, ptr noundef readonly %rtos) #0 align 64 {
entry:
  %hdr.i = alloca %struct.lsb_header, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lsfw1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %0 = ptrtoint ptr %lsfw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn86 = load ptr, ptr %lsfw1, align 4
  %cmp.not88 = icmp eq ptr %.pn86, %lsfw1
  br i1 %cmp.not88, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %rtos, null
  %id5 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %rtos, i32 0, i32 2
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %tail.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1
  %ucode_size1.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 1
  %data_size2.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 2
  %bl_code_size.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 3
  %bl_imem_off.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 4
  %bl_data_off.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 5
  %bl_data_size4.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 6
  %app_code_off.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 7
  %app_code_size.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 8
  %app_data_off.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 9
  %app_data_size.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 10
  %flags7.i.i = getelementptr inbounds %struct.lsb_header, ptr %hdr.i, i32 0, i32 1, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn90 = phi ptr [ %.pn86, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %offset.089 = phi i32 [ 0, %for.body.lr.ph ], [ %add9, %cleanup.for.body_crit_edge ]
  %lsfw.091 = getelementptr i8, ptr %.pn90, i32 -12
  %id = getelementptr i8, ptr %.pn90, i32 -4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %offset3 = getelementptr i8, ptr %.pn90, i32 64
  %3 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset3, align 4
  br i1 %tobool.not, label %for.body.land.end_crit_edge, label %land.rhs

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp6 = icmp ne i32 %2, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.land.end_crit_edge
  %7 = phi i1 [ false, %for.body.land.end_crit_edge ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %8 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %offset.089 to i64
  tail call void %13(ptr noundef %9, i64 noundef %conv, i32 noundef %2) #8
  %add = add i32 %offset.089, 4
  %14 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wpr, align 8
  %ptrs.1 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs.1, align 4
  %wr32.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr32.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32.1, align 4
  %conv.1 = zext i32 %add to i64
  tail call void %19(ptr noundef %15, i64 noundef %conv.1, i32 noundef %4) #8
  %add.1 = add i32 %offset.089, 8
  %20 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wpr, align 8
  %ptrs.2 = getelementptr inbounds %struct.nvkm_memory, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ptrs.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptrs.2, align 4
  %wr32.2 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr32.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr32.2, align 4
  %conv.2 = zext i32 %add.1 to i64
  tail call void %25(ptr noundef %21, i64 noundef %conv.2, i32 noundef 0) #8
  %add.2 = add i32 %offset.089, 12
  %26 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wpr, align 8
  %ptrs.3 = getelementptr inbounds %struct.nvkm_memory, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ptrs.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptrs.3, align 4
  %wr32.3 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr32.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr32.3, align 4
  %conv.3 = zext i32 %add.2 to i64
  tail call void %31(ptr noundef %27, i64 noundef %conv.3, i32 noundef %land.ext) #8
  %add.3 = add i32 %offset.089, 16
  %32 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wpr, align 8
  %ptrs.4 = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ptrs.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptrs.4, align 4
  %wr32.4 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr32.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr32.4, align 4
  %conv.4 = zext i32 %add.3 to i64
  tail call void %37(ptr noundef %33, i64 noundef %conv.4, i32 noundef 1) #8
  %add9 = add i32 %offset.089, 20
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %hdr.i) #8
  %sig.i = getelementptr i8, ptr %.pn90, i32 16
  %38 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sig.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 76
  br i1 %cmp.not.i, label %if.end21.i, label %cleanup.thread, !prof !88

if.end21.i:                                       ; preds = %land.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = call ptr @memcpy(ptr %hdr.i, ptr %43, i32 76)
  %img.i.i = getelementptr i8, ptr %.pn90, i32 68
  %45 = ptrtoint ptr %img.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %img.i.i, align 4
  %47 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tail.i, align 4
  %ucode_size.i.i = getelementptr i8, ptr %.pn90, i32 56
  %48 = ptrtoint ptr %ucode_size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ucode_size.i.i, align 4
  %50 = ptrtoint ptr %ucode_size1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ucode_size1.i.i, align 4
  %data_size.i.i = getelementptr i8, ptr %.pn90, i32 60
  %51 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_size.i.i, align 4
  %53 = ptrtoint ptr %data_size2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %data_size2.i.i, align 4
  %bootloader_size.i.i = getelementptr i8, ptr %.pn90, i32 20
  %54 = ptrtoint ptr %bootloader_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bootloader_size.i.i, align 4
  %56 = ptrtoint ptr %bl_code_size.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bl_code_size.i.i, align 4
  %bootloader_imem_offset.i.i = getelementptr i8, ptr %.pn90, i32 24
  %57 = ptrtoint ptr %bootloader_imem_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bootloader_imem_offset.i.i, align 4
  %59 = ptrtoint ptr %bl_imem_off.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %bl_imem_off.i.i, align 4
  %bld.i.i = getelementptr i8, ptr %.pn90, i32 72
  %60 = ptrtoint ptr %bld.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bld.i.i, align 4
  %62 = ptrtoint ptr %bl_data_off.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %bl_data_off.i.i, align 4
  %bl_data_size.i.i = getelementptr i8, ptr %.pn90, i32 76
  %63 = ptrtoint ptr %bl_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bl_data_size.i.i, align 4
  %65 = ptrtoint ptr %bl_data_size4.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %bl_data_size4.i.i, align 4
  %app_start_offset.i.i = getelementptr i8, ptr %.pn90, i32 32
  %66 = ptrtoint ptr %app_start_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %app_start_offset.i.i, align 4
  %app_resident_code_offset.i.i = getelementptr i8, ptr %.pn90, i32 40
  %68 = ptrtoint ptr %app_resident_code_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %app_resident_code_offset.i.i, align 4
  %add.i.i = add i32 %69, %67
  %70 = ptrtoint ptr %app_code_off.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.i.i, ptr %app_code_off.i.i, align 4
  %app_resident_code_size.i.i = getelementptr i8, ptr %.pn90, i32 44
  %71 = ptrtoint ptr %app_resident_code_size.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %app_resident_code_size.i.i, align 4
  %73 = ptrtoint ptr %app_code_size.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %app_code_size.i.i, align 4
  %app_resident_data_offset.i.i = getelementptr i8, ptr %.pn90, i32 48
  %74 = ptrtoint ptr %app_resident_data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %app_resident_data_offset.i.i, align 4
  %add6.i.i = add i32 %75, %67
  %76 = ptrtoint ptr %app_data_off.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add6.i.i, ptr %app_data_off.i.i, align 4
  %app_resident_data_size.i.i = getelementptr i8, ptr %.pn90, i32 52
  %77 = ptrtoint ptr %app_resident_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %app_resident_data_size.i.i, align 4
  %79 = ptrtoint ptr %app_data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %app_data_size.i.i, align 4
  %80 = ptrtoint ptr %lsfw.091 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lsfw.091, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %84 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %flags7.i.i, align 4
  %85 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset3, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end21.i
  %_data.039.i = phi ptr [ %hdr.i, %if.end21.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %_size.038.i = phi i32 [ 31, %if.end21.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %_addr.037.i = phi i32 [ %86, %if.end21.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %_size.038.i, -1
  %87 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wpr, align 8
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wr32.i, align 4
  %conv.i = zext i32 %_addr.037.i to i64
  %incdec.ptr.i = getelementptr i32, ptr %_data.039.i, i32 1
  %93 = ptrtoint ptr %_data.039.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %_data.039.i, align 4
  tail call void %92(ptr noundef %88, i64 noundef %conv.i, i32 noundef %94) #8
  %add.i = add i32 %_addr.037.i, 4
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %do.body11, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.thread:                                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %hdr.i) #8
  br label %cleanup43

do.body11:                                        ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %hdr.i) #8
  %size = getelementptr i8, ptr %.pn90, i32 12
  %95 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %tobool20.not82 = icmp ult i32 %96, 4
  br i1 %tobool20.not82, label %do.body11.cleanup_crit_edge, label %while.body21.preheader

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body21.preheader:                           ; preds = %do.body11
  %img15 = getelementptr i8, ptr %.pn90, i32 8
  %97 = ptrtoint ptr %img15 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %img15, align 4
  %shr = lshr i32 %96, 2
  %99 = ptrtoint ptr %img.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %img.i.i, align 4
  br label %while.body21

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.body21.preheader
  %_data16.085 = phi ptr [ %incdec.ptr27, %while.body21.while.body21_crit_edge ], [ %98, %while.body21.preheader ]
  %_size14.084 = phi i32 [ %dec19, %while.body21.while.body21_crit_edge ], [ %shr, %while.body21.preheader ]
  %_addr12.083 = phi i32 [ %add28, %while.body21.while.body21_crit_edge ], [ %100, %while.body21.preheader ]
  %dec19 = add nsw i32 %_size14.084, -1
  %101 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wpr, align 8
  %ptrs23 = getelementptr inbounds %struct.nvkm_memory, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %ptrs23 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ptrs23, align 4
  %wr3224 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wr3224 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wr3224, align 4
  %conv26 = zext i32 %_addr12.083 to i64
  %incdec.ptr27 = getelementptr i32, ptr %_data16.085, i32 1
  %107 = ptrtoint ptr %_data16.085 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %_data16.085, align 4
  tail call void %106(ptr noundef %102, i64 noundef %conv26, i32 noundef %108) #8
  %add28 = add i32 %_addr12.083, 4
  %tobool20.not = icmp eq i32 %dec19, 0
  br i1 %tobool20.not, label %while.body21.cleanup_crit_edge, label %while.body21.while.body21_crit_edge

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body21

while.body21.cleanup_crit_edge:                   ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body21.cleanup_crit_edge, %do.body11.cleanup_crit_edge
  %109 = ptrtoint ptr %lsfw.091 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lsfw.091, align 4
  %bld_write = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %bld_write to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bld_write, align 8
  %113 = ptrtoint ptr %bld.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bld.i.i, align 4
  tail call void %112(ptr noundef %acr, i32 noundef %114, ptr noundef %lsfw.091) #8
  %115 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw1
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add9, %cleanup.for.end_crit_edge ]
  %wpr38 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %116 = ptrtoint ptr %wpr38 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wpr38, align 8
  %ptrs39 = getelementptr inbounds %struct.nvkm_memory, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ptrs39 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ptrs39, align 4
  %wr3240 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %wr3240 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr3240, align 4
  %conv42 = zext i32 %offset.0.lcssa to i64
  tail call void %121(ptr noundef %117, i64 noundef %conv42, i32 noundef -1) #8
  br label %cleanup43

cleanup43:                                        ; preds = %for.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %for.end ], [ -22, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_wpr_layout(ptr noundef readonly %acr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lsfw1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %0 = ptrtoint ptr %lsfw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn41 = load ptr, ptr %lsfw1, align 4
  %cmp.not42 = icmp eq ptr %.pn41, %lsfw1
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn41, %entry.for.body_crit_edge ]
  %wpr.043 = phi i32 [ %add16, %for.body.for.body_crit_edge ], [ 220, %entry.for.body_crit_edge ]
  %lsfw.0 = getelementptr i8, ptr %.pn44, i32 -12
  %add3 = add nsw i32 %wpr.043, 255
  %and = and i32 %add3, -256
  %offset = getelementptr i8, ptr %.pn44, i32 64
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and, ptr %offset, align 4
  %add5 = add i32 %and, 4219
  %and6 = and i32 %add5, -4096
  %img = getelementptr i8, ptr %.pn44, i32 68
  %2 = ptrtoint ptr %img to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and6, ptr %img, align 4
  %size = getelementptr i8, ptr %.pn44, i32 12
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %add9 = or i32 %and6, 255
  %add10 = add i32 %add9, %4
  %and11 = and i32 %add10, -256
  %bld = getelementptr i8, ptr %.pn44, i32 72
  %5 = ptrtoint ptr %bld to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and11, ptr %bld, align 4
  %6 = ptrtoint ptr %lsfw.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lsfw.0, align 4
  %bld_size = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bld_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bld_size, align 4
  %add13 = add i32 %9, 255
  %and14 = and i32 %add13, -256
  %bl_data_size = getelementptr i8, ptr %.pn44, i32 76
  %10 = ptrtoint ptr %bl_data_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and14, ptr %bl_data_size, align 4
  %add16 = add i32 %and14, %and11
  %11 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %lsfw1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %wpr.0.lcssa = phi i32 [ 220, %entry.for.end_crit_edge ], [ %add16, %for.body.for.end_crit_edge ]
  ret i32 %wpr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_wpr_parse(ptr noundef %acr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @wpr_header_dump(ptr noundef %subdev, ptr noundef %hdr.0) #8
  %incdec.ptr = getelementptr %struct.wpr_header, ptr %hdr.0, i32 1
  %6 = ptrtoint ptr %hdr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr.0, align 4
  %call = tail call ptr @nvkm_acr_lsfw_add(ptr noundef null, ptr noundef %acr, ptr noundef null, i32 noundef %7) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_acr_lsfw_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_acr_hsfw_bld(ptr noundef %acr, ptr nocapture noundef readonly %hsf) #0 align 64 {
entry:
  %hsdesc = alloca %struct.flcn_bl_dmem_desc_v1, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %hsdesc) #8
  %ctx_dma = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 2
  %0 = call ptr @memset(ptr %hsdesc, i32 0, i32 32)
  %1 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1, ptr %ctx_dma, align 1
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 3
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
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 4
  %non_sec_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 6
  %7 = ptrtoint ptr %non_sec_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %non_sec_addr, align 4
  %9 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %non_sec_code_off, align 1
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 5
  %non_sec_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 7
  %10 = ptrtoint ptr %non_sec_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %non_sec_size, align 4
  %12 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %non_sec_code_size, align 1
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 6
  %sec_addr = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 8
  %13 = ptrtoint ptr %sec_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec_addr, align 4
  %15 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %sec_code_off, align 1
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 7
  %sec_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 9
  %16 = ptrtoint ptr %sec_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sec_size, align 4
  %18 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %sec_code_size, align 1
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 8
  %19 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %code_entry_point, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 9
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
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hsdesc, i32 0, i32 10
  %data_size3 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 11
  %24 = ptrtoint ptr %data_size3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_size3, align 4
  %26 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %data_size, align 1
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v1_dump(ptr noundef %subdev, ptr noundef nonnull %hsdesc) #8
  %falcon = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 14
  %27 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %falcon, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %28, ptr noundef nonnull %hsdesc, i32 noundef 0, i32 noundef 76, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %hsdesc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_hsfw_boot(ptr noundef %acr, ptr noundef %hsf, i32 noundef %intr_clear, i32 noundef %mbox0_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %falcon3 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 14
  %2 = ptrtoint ptr %falcon3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %falcon3, align 4
  %call = tail call i32 @nvkm_falcon_reset(ptr noundef %3) #8
  %inst = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 11
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst, align 8
  tail call void @nvkm_falcon_bind_context(ptr noundef %3, ptr noundef %5) #8
  %imem = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 5
  %6 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imem, align 4
  %code = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  %imem_size = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 3
  %10 = ptrtoint ptr %imem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imem_size, align 4
  %sub = sub i32 %9, %11
  %imem_tag = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %hsf, i32 0, i32 4
  %12 = ptrtoint ptr %imem_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %imem_tag, align 4
  %conv = trunc i32 %13 to i16
  tail call void @nvkm_falcon_load_imem(ptr noundef %3, ptr noundef %7, i32 noundef %sub, i32 noundef %11, i16 noundef zeroext %conv, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %hsf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsf, align 4
  %bld = getelementptr inbounds %struct.nvkm_acr_hsf_func, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bld to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bld, align 4
  tail call void %17(ptr noundef %acr, ptr noundef %hsf) #8
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %owner, align 4
  %type = getelementptr inbounds %struct.nvkm_subdev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %inst6 = getelementptr inbounds %struct.nvkm_subdev, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %inst6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inst6, align 4
  tail call void @nvkm_mc_intr_mask(ptr noundef %1, i32 noundef %21, i32 noundef %23, i1 noundef zeroext false) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %31, 64
  %add.ptr.i = getelementptr i8, ptr %29, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -559045211) #8, !srcloc !83
  %32 = ptrtoint ptr %imem_tag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %imem_tag, align 4
  %shl = shl i32 %33, 8
  tail call void @nvkm_falcon_set_start_addr(ptr noundef %3, i32 noundef %shl) #8
  tail call void @nvkm_falcon_start(ptr noundef %3) #8
  %call8 = tail call i32 @nvkm_falcon_wait_for_halt(ptr noundef %3, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %34 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner, align 4
  %device.i65 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %device.i65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i65, align 4
  %pri.i66 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %pri.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i66, align 4
  %40 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr1.i, align 4
  %add.i68 = add i32 %41, 64
  %add.ptr.i69 = getelementptr i8, ptr %39, i32 %add.i68
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %43 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %owner, align 4
  %device.i71 = getelementptr inbounds %struct.nvkm_subdev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %device.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i71, align 4
  %pri.i72 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %pri.i72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i72, align 4
  %49 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr1.i, align 4
  %add.i74 = add i32 %50, 68
  %add.ptr.i75 = getelementptr i8, ptr %48, i32 %add.i74
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %debug = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %52 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp = icmp ugt i32 %53, 3
  br i1 %cmp, label %do.end, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %42, i32 noundef %51) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool18.not = icmp eq i32 %42, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %mbox0_ok)
  %cmp19.not = icmp eq i32 %42, %mbox0_ok
  %or.cond = or i1 %tobool18.not, %cmp19.not
  br i1 %or.cond, label %if.end22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @nvkm_falcon_clear_interrupt(ptr noundef %3, i32 noundef %intr_clear) #8
  %58 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %owner, align 4
  %type25 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %type25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type25, align 4
  %inst27 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %inst27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %inst27, align 4
  tail call void @nvkm_mc_intr_mask(ptr noundef %1, i32 noundef %61, i32 noundef %63, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call8, %entry.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_bind_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_mask(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_set_start_addr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_wait_for_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_clear_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_hsfw_load(ptr noundef %acr, ptr nocapture noundef readonly %hsfw, ptr noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  %call = tail call i32 @nvkm_falcon_get(ptr noundef %falcon, ptr noundef %subdev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sig = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14
  %patch_loc = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %patch_loc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %patch_loc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.if.end42_crit_edge, label %if.then3

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then3:                                         ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 10
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debug, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %debug6 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %tobool4.not, label %do.body, label %do.body17

do.body:                                          ; preds = %if.then3
  br i1 %cmp, label %do.end, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %name) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge
  %image = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 6
  %10 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %image, align 4
  %12 = ptrtoint ptr %patch_loc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %patch_loc, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %14 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sig, align 4
  %size = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14, i32 0, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %15, i32 %17)
  br label %if.end42

do.body17:                                        ; preds = %if.then3
  br i1 %cmp, label %do.end24, label %do.body17.if.end29_crit_edge

do.body17.if.end29_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end24:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %device25 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device25, align 4
  %dev26 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev26, align 8
  %name27 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef %name27) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %do.body17.if.end29_crit_edge
  %image32 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 6
  %23 = ptrtoint ptr %image32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %image32, align 4
  %25 = ptrtoint ptr %patch_loc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %patch_loc, align 4
  %add.ptr35 = getelementptr i8, ptr %24, i32 %26
  %dbg = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dbg, align 4
  %size40 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14, i32 1, i32 1
  %29 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size40, align 4
  %31 = call ptr @memcpy(ptr %add.ptr35, ptr %28, i32 %30)
  br label %if.end42

if.end42:                                         ; preds = %if.end29, %if.end9, %if.end.if.end42_crit_edge
  tail call void @nvkm_falcon_put(ptr noundef %falcon, ptr noundef %subdev1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 64) #12
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %33 = ptrtoint ptr %hsfw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hsfw, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call7.i.i, align 8
  %name48 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 1
  %36 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name48, align 4
  %name49 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %name49, align 4
  %head = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 2
  %hsf50 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %40, ptr noundef %hsf50) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_add_tail.exit_crit_edge

if.end46.list_add_tail.exit_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %prev.i, align 4
  %42 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %hsf50, ptr %head, align 8
  %prev3.i.i = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %head, ptr %40, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end46.list_add_tail.exit_crit_edge
  %imem_size = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 3
  %45 = ptrtoint ptr %imem_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %imem_size, align 4
  %imem_size51 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %imem_size51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %imem_size51, align 8
  %imem_tag = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 4
  %48 = ptrtoint ptr %imem_tag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %imem_tag, align 4
  %imem_tag52 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %imem_tag52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %imem_tag52, align 4
  %imem = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 5
  %51 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %imem, align 4
  %call54 = tail call ptr @kmemdup(ptr noundef %52, i32 noundef %46, i32 noundef 3264) #8
  %imem55 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %imem55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call54, ptr %imem55, align 8
  %tobool57.not = icmp eq ptr %call54, null
  br i1 %tobool57.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.end59

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %list_add_tail.exit
  %non_sec_addr = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 8
  %54 = ptrtoint ptr %non_sec_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %non_sec_addr, align 4
  %non_sec_addr60 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %non_sec_addr60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %non_sec_addr60, align 4
  %non_sec_size = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 9
  %57 = ptrtoint ptr %non_sec_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %non_sec_size, align 4
  %non_sec_size61 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %non_sec_size61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %non_sec_size61, align 8
  %sec_addr = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 10
  %60 = ptrtoint ptr %sec_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sec_addr, align 4
  %sec_addr62 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 8
  %62 = ptrtoint ptr %sec_addr62 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %sec_addr62, align 4
  %sec_size = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 11
  %63 = ptrtoint ptr %sec_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sec_size, align 4
  %sec_size63 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 9
  %65 = ptrtoint ptr %sec_size63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %sec_size63, align 8
  %data_addr = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 12
  %66 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_addr, align 4
  %data_addr64 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 10
  %68 = ptrtoint ptr %data_addr64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %data_addr64, align 4
  %data_size = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 13
  %69 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_size, align 4
  %data_size65 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 11
  %71 = ptrtoint ptr %data_size65 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %data_size65, align 8
  %device66 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %device66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device66, align 4
  %image_size = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 7
  %74 = ptrtoint ptr %image_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %image_size, align 4
  %conv = zext i32 %75 to i64
  %ucode = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 12
  %call67 = tail call i32 @nvkm_memory_new(ptr noundef %73, i32 noundef 0, i64 noundef %conv, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %ucode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %if.end59
  %76 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ucode, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %acquire, align 4
  %call74 = tail call ptr %81(ptr noundef %77) #8
  %82 = ptrtoint ptr %image_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %image_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %tobool78.not179 = icmp ult i32 %83, 4
  br i1 %tobool78.not179, label %if.end70.while.end_crit_edge, label %while.body.preheader

if.end70.while.end_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %if.end70
  %image77 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 6
  %84 = ptrtoint ptr %image77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %image77, align 4
  %shr = lshr i32 %83, 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %_data.0182 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %85, %while.body.preheader ]
  %_size.0181 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %_addr.0180 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dec = add nsw i32 %_size.0181, -1
  %86 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ucode, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr32, align 4
  %conv81 = zext i32 %_addr.0180 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.0182, i32 1
  %92 = ptrtoint ptr %_data.0182 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %_data.0182, align 4
  tail call void %91(ptr noundef %87, i64 noundef %conv81, i32 noundef %93) #8
  %add = add nuw i32 %_addr.0180, 4
  %tobool78.not = icmp eq i32 %dec, 0
  br i1 %tobool78.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end70.while.end_crit_edge
  %94 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ucode, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %release, align 4
  tail call void %99(ptr noundef %95) #8
  %vmm = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 12
  %100 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vmm, align 4
  %102 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ucode, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %size89 = getelementptr inbounds %struct.nvkm_memory_func, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %size89 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %size89, align 4
  %call91 = tail call i64 %107(ptr noundef %103) #8
  %vma = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 13
  %call92 = tail call i32 @nvkm_vmm_get(ptr noundef %101, i8 noundef zeroext 12, i64 noundef %call91, ptr noundef %vma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %while.end
  %108 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ucode, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map, align 4
  %114 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vmm, align 4
  %116 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vma, align 8
  %call101 = tail call i32 %113(ptr noundef %109, i64 noundef 0, ptr noundef %115, ptr noundef %117, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %falcon105 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %call7.i.i, i32 0, i32 14
  %118 = ptrtoint ptr %falcon105 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %falcon, ptr %falcon105, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end95.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end104 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end42.cleanup_crit_edge ], [ -12, %list_add_tail.exit.cleanup_crit_edge ], [ %call67, %if.end59.cleanup_crit_edge ], [ %call92, %while.end.cleanup_crit_edge ], [ %call101, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_unload_boot(ptr noundef %acr, ptr noundef %hsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gm200_acr_hsfw_boot(ptr noundef %acr, ptr noundef %hsf, i32 noundef 0, i32 noundef 29)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_unload_load(ptr noundef %acr, ptr nocapture noundef readonly %hsfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pmu = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %falcon = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 2
  %call = tail call i32 @gm200_acr_hsfw_load(ptr noundef %acr, ptr noundef %hsfw, ptr noundef %falcon)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_load_boot(ptr noundef %acr, ptr noundef %hsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gm200_acr_hsfw_boot(ptr noundef %acr, ptr noundef %hsf, i32 noundef 16, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gm200_acr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pacr) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm200_acr_load(ptr noundef %acr, i32 noundef %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  %_option56 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #8
  %func = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %fwif, i32 0, i32 2
  %0 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14)
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgopt, align 4
  %call3 = call i32 @nvkm_longopt(ptr noundef %8, ptr noundef nonnull %_option, i32 noundef -2) #8
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14)
  %13 = ptrtoint ptr %_next.0262 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_next.0262, align 4
  br label %16

15:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call13207 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14)
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
  %call20 = call i32 @nvkm_longopt(ptr noundef %21, ptr noundef nonnull %_option, i32 noundef %.sink310) #8
  %load27263 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %load27263 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %load27263, align 4
  %tobool28.not264 = icmp eq ptr %23, null
  br i1 %tobool28.not264, label %.if.end49_crit_edge, label %for.body29.lr.ph

.if.end49_crit_edge:                              ; preds = %16
  call void @__sanitizer_cov_trace_pc() #10
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
  %call37 = call i32 %24(ptr noundef %acr, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef %26, ptr noundef %_next.1265) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cond.end34.if.end49_crit_edge, label %for.inc42

cond.end34.if.end49_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.inc42.if.then47_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end45:                                         ; preds = %for.body29
  %call37220 = call i32 %23(ptr noundef %acr, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef %call20, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37220)
  %tobool46.not = icmp eq i32 %call37220, 0
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %for.inc42.if.then47_crit_edge, %land.rhs.if.then47_crit_edge
  %_ret.2226 = phi i32 [ %call37220, %if.end45.if.then47_crit_edge ], [ %call37, %for.inc42.if.then47_crit_edge ], [ -22, %land.rhs.if.then47_crit_edge ]
  %29 = inttoptr i32 %_ret.2226 to ptr
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge, %cond.end34.if.end49_crit_edge, %.if.end49_crit_edge
  %_fwif.4 = phi ptr [ %29, %if.then47 ], [ %17, %if.end45.if.end49_crit_edge ], [ %_fwif.2205215, %.if.end49_crit_edge ], [ %_next.1265, %cond.end34.if.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #8
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option56) #8
  %31 = call ptr @memset(ptr %_option56, i32 255, i32 32)
  %32 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func, align 4
  %unload = getelementptr inbounds %struct.nvkm_acr_func, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %unload to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unload, align 4
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19)
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %cfgopt67 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %cfgopt67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfgopt67, align 4
  %call69 = call i32 @nvkm_longopt(ptr noundef %39, ptr noundef nonnull %_option56, i32 noundef -2) #8
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs74

cond.end97:                                       ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  %call92 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19)
  %44 = ptrtoint ptr %_next59.0269 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %_next59.0269, align 4
  br label %47

46:                                               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call92234 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option56, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19)
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
  %call102 = call i32 @nvkm_longopt(ptr noundef %52, ptr noundef nonnull %_option56, i32 noundef %.sink311) #8
  %load109270 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %load109270 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %load109270, align 4
  %tobool110.not271 = icmp eq ptr %54, null
  br i1 %tobool110.not271, label %.if.end132_crit_edge, label %for.body111.lr.ph

.if.end132_crit_edge:                             ; preds = %47
  call void @__sanitizer_cov_trace_pc() #10
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
  %call119 = call i32 %55(ptr noundef %acr, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %57, ptr noundef %_next59.1272) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %cond.end116.if.end132_crit_edge, label %for.inc125

cond.end116.if.end132_crit_edge:                  ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111

for.inc125.if.then130_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then130

if.end128:                                        ; preds = %for.body111
  %call119247 = call i32 %54(ptr noundef %acr, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call102, ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119247)
  %tobool129.not = icmp eq i32 %call119247, 0
  br i1 %tobool129.not, label %if.end128.if.end132_crit_edge, label %if.end128.if.then130_crit_edge

if.end128.if.then130_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then130:                                       ; preds = %if.end128.if.then130_crit_edge, %for.inc125.if.then130_crit_edge, %land.rhs74.if.then130_crit_edge
  %_ret63.2253 = phi i32 [ %call119247, %if.end128.if.then130_crit_edge ], [ %call119, %for.inc125.if.then130_crit_edge ], [ -22, %land.rhs74.if.then130_crit_edge ]
  %60 = inttoptr i32 %_ret63.2253 to ptr
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge, %cond.end116.if.end132_crit_edge, %.if.end132_crit_edge
  %_fwif60.4 = phi ptr [ %60, %if.then130 ], [ %48, %if.end128.if.end132_crit_edge ], [ %_fwif60.2232242, %.if.end132_crit_edge ], [ %_next59.1272, %cond.end116.if.end132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option56) #8
  %cmp.i200 = icmp ugt ptr %_fwif60.4, inttoptr (i32 -4096 to ptr)
  %61 = ptrtoint ptr %_fwif60.4 to i32
  %spec.select255 = select i1 %cmp.i200, i32 %61, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.then51
  %retval.0 = phi i32 [ %30, %if.then51 ], [ %spec.select255, %if.end132 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm200_acr_wpr_alloc(ptr noundef %acr, i32 noundef %wpr_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add = add i32 %wpr_size, 262143
  %and = and i32 %add, -262144
  %conv = zext i32 %and to i64
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  %call = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv, i32 noundef 262144, i1 noundef zeroext true, ptr noundef %wpr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call3 = tail call i64 %7(ptr noundef %3) #8
  %wpr_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 8
  %8 = ptrtoint ptr %wpr_start to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call3, ptr %wpr_start, align 8
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
  %call8 = tail call i64 %14(ptr noundef %10) #8
  %add9 = add i64 %call8, %call3
  %wpr_end = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  %15 = ptrtoint ptr %wpr_end to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add9, ptr %wpr_end, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm200_acr_load_load(ptr noundef %acr, ptr nocapture noundef readonly %hsfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %wpr_region_id = getelementptr inbounds %struct.flcn_acr_desc, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %wpr_region_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %wpr_region_id, align 8
  %regions = getelementptr inbounds %struct.flcn_acr_desc, ptr %arrayidx, i32 0, i32 4
  %5 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %regions, align 4
  %wpr_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 8
  %6 = ptrtoint ptr %wpr_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wpr_start, align 8
  %shr = lshr i64 %7, 8
  %conv = trunc i64 %shr to i32
  %region_props = getelementptr inbounds %struct.anon.156, ptr %regions, i32 0, i32 1
  %8 = ptrtoint ptr %region_props to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %region_props, align 4
  %wpr_end = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  %9 = ptrtoint ptr %wpr_end to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wpr_end, align 8
  %shr3 = lshr i64 %10, 8
  %conv4 = trunc i64 %shr3 to i32
  %end_addr = getelementptr inbounds %struct.anon.156, ptr %regions, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4, ptr %end_addr, align 4
  %region_id = getelementptr inbounds %struct.anon.156, ptr %regions, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %region_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %region_id, align 4
  %read_mask = getelementptr inbounds %struct.anon.156, ptr %regions, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %read_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 15, ptr %read_mask, align 4
  %write_mask = getelementptr inbounds %struct.anon.156, ptr %regions, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %write_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %write_mask, align 4
  %client_mask = getelementptr inbounds %struct.anon.156, ptr %regions, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %client_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %client_mask, align 4
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  tail call void @flcn_acr_desc_dump(ptr noundef %subdev, ptr noundef %arrayidx) #8
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %pmu = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 39
  %18 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmu, align 8
  %falcon = getelementptr inbounds %struct.nvkm_pmu, ptr %19, i32 0, i32 2
  %call = tail call i32 @gm200_acr_hsfw_load(ptr noundef %acr, ptr noundef %hsfw, ptr noundef %falcon)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_acr_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @gm200_acr, !1, !"gm200_acr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 36, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 42, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gm200_acr_nofw._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @gm200_acr_nofw._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 49, i32 32}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 279, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gm200_acr_hsfw_boot._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @gm200_acr_hsfw_boot._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 305, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gm200_acr_hsfw_load._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @gm200_acr_hsfw_load._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 310, i32 4}
!25 = !{ptr @gm200_acr_hsfw_load._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gm200_acr_hsfw_load._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @gm200_acr_unload_0, !28, !"gm200_acr_unload_0", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 374, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware293, !30, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 380, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware294, !32, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 381, i32 1}
!33 = !{ptr @__UNIQUE_ID_firmware295, !34, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 382, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware296, !36, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 383, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware297, !38, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 422, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware298, !40, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 423, i32 1}
!41 = !{ptr @__UNIQUE_ID_firmware299, !42, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 425, i32 1}
!43 = !{ptr @__UNIQUE_ID_firmware300, !44, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 426, i32 1}
!45 = !{ptr @__UNIQUE_ID_firmware301, !46, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 428, i32 1}
!47 = !{ptr @__UNIQUE_ID_firmware302, !48, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 429, i32 1}
!49 = !{ptr @__UNIQUE_ID_firmware303, !50, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 431, i32 1}
!51 = !{ptr @__UNIQUE_ID_firmware304, !52, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 432, i32 1}
!53 = !{ptr @gm200_acr_fwif, !54, !"gm200_acr_fwif", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 476, i32 1}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 461, i32 11}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 466, i32 11}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gm200_acr_0, !66, !"gm200_acr_0", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 441, i32 1}
!67 = !{ptr @gm200_acr_load_fwif, !68, !"gm200_acr_load_fwif", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 435, i32 1}
!69 = !{ptr @gm200_acr_load_0, !70, !"gm200_acr_load_0", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 416, i32 1}
!71 = !{ptr @gm200_acr_unload_fwif, !72, !"gm200_acr_unload_fwif", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c", i32 386, i32 1}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2156278683}
!83 = !{i64 5400998}
!84 = !{i64 5401416}
!85 = !{i64 2156279130}
!86 = !{i64 2156279454}
!87 = !{i64 2156279901}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2156246431}
!90 = !{i64 2156245880}
!91 = !{i8 0, i8 2}
