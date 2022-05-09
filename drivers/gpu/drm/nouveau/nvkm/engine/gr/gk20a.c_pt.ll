; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gk20a_fw_av = type { i32, i32 }
%struct.gk20a_fw_aiv = type { i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sw_nonctx\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sw_ctx\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sw_bundle_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sw_method_init\00", [17 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gk20a/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gk20a/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gk20a/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gk20a/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gk20a/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [41 x i8] c"nouveau.firmware=nvidia/gk20a/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [49 x i8] c"nouveau.firmware=nvidia/gk20a/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gk20a/sw_nonctx.bin\00", section ".modinfo", align 1
@gk20a_gr_fwif = internal constant { [2 x %struct.gf100_gr_fwif], [56 x i8] } { [2 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gk20a_gr_load, ptr @gk20a_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gk20a_gr_wait_mem_scrubbing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 200, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FECS mem scrubbing timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gk20a_gr_wait_mem_scrubbing\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk20a_gr_wait_mem_scrubbing._entry_ptr = internal global ptr @gk20a_gr_wait_mem_scrubbing._entry, section ".printk_index", align 4
@gk20a_gr_wait_mem_scrubbing._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.4, i32 208, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: GPCCS mem scrubbing timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@gk20a_gr_wait_mem_scrubbing._entry_ptr.12 = internal global ptr @gk20a_gr_wait_mem_scrubbing._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fecs_inst\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fecs_data\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpccs_inst\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpccs_data\00", [21 x i8] zeroinitializer }, align 32
@gk20a_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gk20a_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gk20a_gr_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf117_gr_init_zcull, ptr null, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr @gk20a_gr_set_hww_esr_report_mask, ptr null, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gf100_gr_rops, i32 0, i32 0, i32 1, ptr @gk20a_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41024, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41623, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41152, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 313, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 314, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 315, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 316, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"gk20a_gr_fwif\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 354, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 196, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 200, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 208, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 338, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 338, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 340, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 342, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 344, i32 42 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"gk20a_gr\00", align 1
@___asan_gen_.77 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 289, i32 1 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @gk20a_gr_wait_mem_scrubbing._entry, ptr @gk20a_gr_wait_mem_scrubbing._entry.10, ptr @gk20a_gr_wait_mem_scrubbing._entry_ptr, ptr @gk20a_gr_wait_mem_scrubbing._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gk20a_gr_fwif, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @gk20a_gr], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_gr_fwif to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_gr_wait_mem_scrubbing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_gr_wait_mem_scrubbing._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_gr_init(ptr noundef %gr) #0 align 64 {
entry:
  %_wait.i = alloca %struct.nvkm_timer_wait, align 8
  %_wait52.i = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4227116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #6, !srcloc !64
  %sw_nonctx = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 5
  %4 = ptrtoint ptr %sw_nonctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_nonctx, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %5) #6
  %6 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #6
  %8 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %_wait.i) #6
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %9 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4231436
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %and.i = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end51.i, label %do.cond.i

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i) #6
  %cmp.i = icmp sgt i64 %call3.i, -1
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.end14.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end14.i:                                       ; preds = %do.cond.i
  %12 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_wait.i, align 8
  %device16.i = getelementptr inbounds %struct.nvkm_timer, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device16.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  %call17.i = call ptr @dev_driver_string(ptr noundef %17) #6
  %18 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_wait.i, align 8
  %device20.i = getelementptr inbounds %struct.nvkm_timer, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device20.i, align 4
  %dev21.i = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev21.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end14.i.do.body40.i_crit_edge

do.end14.i.do.body40.i_crit_edge:                 ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.i

if.end.i.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %do.body40.i

do.body40.i:                                      ; preds = %if.end.i.i, %do.end14.i.do.body40.i_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %do.end14.i.do.body40.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call17.i, ptr noundef %retval.0.i.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #6
  %debug.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %28 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp41.not.i = icmp eq i32 %29, 0
  br i1 %cmp41.not.i, label %do.body40.i.cleanup_crit_edge, label %do.end45.i

do.body40.i.cleanup_crit_edge:                    ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end45.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device1, align 4
  %dev47.i = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev47.i, align 8
  %name.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.6, ptr noundef %name.i) #9
  br label %cleanup

if.end51.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait52.i) #6
  %34 = call ptr @memset(ptr %_wait52.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %_wait52.i) #6
  br label %do.body55.i

do.body55.i:                                      ; preds = %do.cond65.i.do.body55.i_crit_edge, %if.end51.i
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %36, i32 4301068
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %and61.i = and i32 %37, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end, label %do.cond65.i

do.cond65.i:                                      ; preds = %do.body55.i
  %call66.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait52.i) #6
  %cmp67.i = icmp sgt i64 %call66.i, -1
  br i1 %cmp67.i, label %do.cond65.i.do.body55.i_crit_edge, label %do.end85.i

do.cond65.i.do.body55.i_crit_edge:                ; preds = %do.cond65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55.i

do.end85.i:                                       ; preds = %do.cond65.i
  %38 = ptrtoint ptr %_wait52.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_wait52.i, align 8
  %device88.i = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device88.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device88.i, align 4
  %dev89.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev89.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev89.i, align 8
  %call90.i = call ptr @dev_driver_string(ptr noundef %43) #6
  %44 = ptrtoint ptr %_wait52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_wait52.i, align 8
  %device93.i = getelementptr inbounds %struct.nvkm_timer, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %device93.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device93.i, align 4
  %dev94.i = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dev94.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev94.i, align 8
  %init_name.i143.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i143.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i143.i, align 8
  %tobool.not.i144.i = icmp eq ptr %51, null
  br i1 %tobool.not.i144.i, label %if.end.i145.i, label %do.end85.i.do.body113.i_crit_edge

do.end85.i.do.body113.i_crit_edge:                ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body113.i

if.end.i145.i:                                    ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  br label %do.body113.i

do.body113.i:                                     ; preds = %if.end.i145.i, %do.end85.i.do.body113.i_crit_edge
  %retval.0.i146.i = phi ptr [ %53, %if.end.i145.i ], [ %51, %do.end85.i.do.body113.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 207, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call90.i, ptr noundef %retval.0.i146.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait52.i) #6
  %debug115.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %54 = ptrtoint ptr %debug115.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp116.not.i = icmp eq i32 %55, 0
  br i1 %cmp116.not.i, label %do.body113.i.cleanup_crit_edge, label %do.end120.i

do.body113.i.cleanup_crit_edge:                   ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end120.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device1, align 4
  %dev122.i = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev122.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev122.i, align 8
  %name123.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.11, ptr noundef %name123.i) #9
  br label %cleanup

if.end:                                           ; preds = %do.body55.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait52.i) #6
  %call2 = call i32 @gf100_gr_wait_idle(ptr noundef %gr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %60 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gr, align 4
  %init_gpc_mmu = getelementptr inbounds %struct.gf100_gr_func, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %init_gpc_mmu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_gpc_mmu, align 4
  %tobool6.not = icmp eq ptr %63, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void %63(ptr noundef %gr) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %65, i32 5255192
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  %or = or i32 %66, 1
  %67 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %68, i32 5255192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or) #6, !srcloc !64
  %69 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gr, align 4
  %init_zcull = getelementptr inbounds %struct.gf100_gr_func, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %init_zcull to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_zcull, align 4
  call void %72(ptr noundef %gr) #6
  %73 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gr, align 4
  %init_rop_active_fbps = getelementptr inbounds %struct.gf100_gr_func, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %init_rop_active_fbps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_rop_active_fbps, align 4
  call void %76(ptr noundef %gr) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %78, i32 4195584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 65537) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %80, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %82, i32 4194620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %84, i32 4234276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 983040) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %86, i32 4210688
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 -1073741824) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %88, i32 4212224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -1073741824) #6, !srcloc !64
  %89 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %gr, align 4
  %set_hww_esr_report_mask = getelementptr inbounds %struct.gf100_gr_func, ptr %90, i32 0, i32 28
  %91 = ptrtoint ptr %set_hww_esr_report_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_hww_esr_report_mask, align 4
  %tobool53.not = icmp eq ptr %92, null
  br i1 %tobool53.not, label %if.end10.do.body58_crit_edge, label %if.then54

if.end10.do.body58_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body58

if.then54:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void %92(ptr noundef %gr) #6
  br label %do.body58

do.body58:                                        ; preds = %if.then54, %if.end10.do.body58_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri, align 4
  %add.ptr62 = getelementptr i8, ptr %94, i32 4300044
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 2) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @arm_heavy_mb() #6
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %95 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %96 to i32
  %sub = shl i32 -65536, %conv
  %and66 = and i32 %sub, 16711680
  %shl67 = xor i32 %and66, 16711680
  %97 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri, align 4
  %add.ptr69 = getelementptr i8, ptr %98, i32 4304020
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %shl67) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %100, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  call void @arm_heavy_mb() #6
  %101 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri, align 4
  %add.ptr79 = getelementptr i8, ptr %102, i32 4194616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri, align 4
  %add.ptr84 = getelementptr i8, ptr %104, i32 4194584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  call void @arm_heavy_mb() #6
  %105 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %106, i32 4194608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %108, i32 4194588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 -1) #6, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %110, i32 4194612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 -1) #6, !srcloc !64
  call void @gf100_gr_zbc_init(ptr noundef %gr) #6
  %call100 = call i32 @gf100_gr_init_ctxctl(ptr noundef %gr) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body58, %if.end.cleanup_crit_edge, %do.end120.i, %do.body113.i.cleanup_crit_edge, %do.end45.i, %do.body40.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call100, %do.body58 ], [ %call2, %if.end.cleanup_crit_edge ], [ -110, %do.end45.i ], [ -110, %do.body40.i.cleanup_crit_edge ], [ -110, %do.end120.i ], [ -110, %do.body113.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mmio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_wait_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_zbc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init_ctxctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_gr_load_sw(ptr noundef %gr, ptr noundef %path, i32 noundef %ver) local_unnamed_addr #0 align 64 {
entry:
  %blob.i78 = alloca %struct.nvkm_blob, align 4
  %blob.i48 = alloca %struct.nvkm_blob, align 4
  %blob.i22 = alloca %struct.nvkm_blob, align 4
  %blob.i = alloca %struct.nvkm_blob, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_nonctx = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 5
  %subdev1.i = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blob.i) #6
  %0 = ptrtoint ptr %blob.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %blob.i, align 4, !annotation !84
  %1 = getelementptr inbounds %struct.nvkm_blob, ptr %blob.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !84
  %call.i = call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1.i, ptr noundef %path, ptr noundef nonnull @.str, i32 noundef %ver, ptr noundef nonnull %blob.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %gk20a_gr_av_to_init.exit.thread

gk20a_gr_av_to_init.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i) #6
  br label %return

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %div33.i = lshr i32 %4, 3
  %add.i = shl i32 %div33.i, 4
  %add2.i = add i32 %add.i, 32
  %call3.i = call noalias ptr @vzalloc(i32 noundef %add2.i) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %gk20a_gr_av_to_init.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.gf100_gr_pack, ptr %call3.i, i32 2
  %5 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %call3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp34.not.i = icmp ult i32 %4, 8
  br i1 %cmp34.not.i, label %if.end6.i.lor.lhs.false_crit_edge, label %for.body.lr.ph.i

if.end6.i.lor.lhs.false_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.body.lr.ph.i:                                 ; preds = %if.end6.i
  %6 = ptrtoint ptr %blob.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blob.i, align 4
  %umax.i = call i32 @llvm.umax.i32(i32 %div33.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.gf100_gr_init, ptr %add.ptr.i, i32 %i.035.i
  %arrayidx9.i = getelementptr %struct.gk20a_fw_av, ptr %7, i32 %i.035.i
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.i, align 4
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx8.i, align 4
  %data11.i = getelementptr %struct.gk20a_fw_av, ptr %7, i32 %i.035.i, i32 1
  %11 = ptrtoint ptr %data11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data11.i, align 4
  %data12.i = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i, i32 0, i32 3
  %13 = ptrtoint ptr %data12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data12.i, align 4
  %count.i = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i, i32 0, i32 1
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %count.i, align 4
  %pitch.i = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i, i32 0, i32 2
  %15 = ptrtoint ptr %pitch.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %pitch.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.lor.lhs.false_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.lor.lhs.false_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

gk20a_gr_av_to_init.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %blob.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blob.i, align 4
  call void @kfree(ptr noundef %17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i) #6
  br label %return

lor.lhs.false:                                    ; preds = %for.body.i.lor.lhs.false_crit_edge, %if.end6.i.lor.lhs.false_crit_edge
  %18 = ptrtoint ptr %sw_nonctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3.i, ptr %sw_nonctx, align 4
  %19 = ptrtoint ptr %blob.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %blob.i, align 4
  call void @kfree(ptr noundef %20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i) #6
  %sw_ctx = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blob.i22) #6
  %21 = ptrtoint ptr %blob.i22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %blob.i22, align 4, !annotation !84
  %22 = getelementptr inbounds %struct.nvkm_blob, ptr %blob.i22, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !84
  %call.i24 = call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1.i, ptr noundef %path, ptr noundef nonnull @.str.1, i32 noundef %ver, ptr noundef nonnull %blob.i22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end.i30, label %gk20a_gr_aiv_to_init.exit.thread

gk20a_gr_aiv_to_init.exit.thread:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i22) #6
  br label %return

if.end.i30:                                       ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 4
  %div.i = udiv i32 %25, 12
  %add.i26 = shl i32 %div.i, 4
  %add2.i27 = add i32 %add.i26, 32
  %call3.i28 = call noalias ptr @vzalloc(i32 noundef %add2.i27) #10
  %tobool4.not.i29 = icmp eq ptr %call3.i28, null
  br i1 %tobool4.not.i29, label %gk20a_gr_aiv_to_init.exit, label %if.end6.i32

if.end6.i32:                                      ; preds = %if.end.i30
  %add.ptr.i31 = getelementptr %struct.gf100_gr_pack, ptr %call3.i28, i32 2
  %26 = ptrtoint ptr %call3.i28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i31, ptr %call3.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %27 = icmp ult i32 %25, 12
  br i1 %27, label %if.end6.i32.lor.lhs.false3_crit_edge, label %for.body.lr.ph.i34

if.end6.i32.lor.lhs.false3_crit_edge:             ; preds = %if.end6.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3

for.body.lr.ph.i34:                               ; preds = %if.end6.i32
  %28 = ptrtoint ptr %blob.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blob.i22, align 4
  %umax.i33 = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #6
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %for.body.lr.ph.i34
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i34 ], [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ]
  %arrayidx8.i35 = getelementptr %struct.gf100_gr_init, ptr %add.ptr.i31, i32 %i.02.i
  %arrayidx9.i36 = getelementptr %struct.gk20a_fw_aiv, ptr %29, i32 %i.02.i
  %30 = ptrtoint ptr %arrayidx9.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i36, align 4
  %32 = ptrtoint ptr %arrayidx8.i35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx8.i35, align 4
  %data11.i37 = getelementptr %struct.gk20a_fw_aiv, ptr %29, i32 %i.02.i, i32 2
  %33 = ptrtoint ptr %data11.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data11.i37, align 4
  %data12.i38 = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i35, i32 0, i32 3
  %35 = ptrtoint ptr %data12.i38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %data12.i38, align 4
  %count.i39 = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i35, i32 0, i32 1
  %36 = ptrtoint ptr %count.i39 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %count.i39, align 4
  %pitch.i40 = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i35, i32 0, i32 2
  %37 = ptrtoint ptr %pitch.i40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %pitch.i40, align 4
  %inc.i41 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, %umax.i33
  br i1 %exitcond.not.i42, label %for.body.i43.lor.lhs.false3_crit_edge, label %for.body.i43.for.body.i43_crit_edge

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i43

for.body.i43.lor.lhs.false3_crit_edge:            ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3

gk20a_gr_aiv_to_init.exit:                        ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %blob.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %blob.i22, align 4
  call void @kfree(ptr noundef %39) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i22) #6
  br label %return

lor.lhs.false3:                                   ; preds = %for.body.i43.lor.lhs.false3_crit_edge, %if.end6.i32.lor.lhs.false3_crit_edge
  %40 = ptrtoint ptr %sw_ctx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call3.i28, ptr %sw_ctx, align 4
  %41 = ptrtoint ptr %blob.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %blob.i22, align 4
  call void @kfree(ptr noundef %42) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i22) #6
  %bundle = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blob.i48) #6
  %43 = ptrtoint ptr %blob.i48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %blob.i48, align 4, !annotation !84
  %44 = getelementptr inbounds %struct.nvkm_blob, ptr %blob.i48, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %44, align 4, !annotation !84
  %call.i50 = call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1.i, ptr noundef %path, ptr noundef nonnull @.str.2, i32 noundef %ver, ptr noundef nonnull %blob.i48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i57, label %gk20a_gr_av_to_init.exit77.thread

gk20a_gr_av_to_init.exit77.thread:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i48) #6
  br label %return

if.end.i57:                                       ; preds = %lor.lhs.false3
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %44, align 4
  %div33.i52 = lshr i32 %47, 3
  %add.i53 = shl i32 %div33.i52, 4
  %add2.i54 = add i32 %add.i53, 32
  %call3.i55 = call noalias ptr @vzalloc(i32 noundef %add2.i54) #10
  %tobool4.not.i56 = icmp eq ptr %call3.i55, null
  br i1 %tobool4.not.i56, label %gk20a_gr_av_to_init.exit77, label %if.end6.i60

if.end6.i60:                                      ; preds = %if.end.i57
  %add.ptr.i58 = getelementptr %struct.gf100_gr_pack, ptr %call3.i55, i32 2
  %48 = ptrtoint ptr %call3.i55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i58, ptr %call3.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp34.not.i59 = icmp ult i32 %47, 8
  br i1 %cmp34.not.i59, label %if.end6.i60.lor.lhs.false6_crit_edge, label %for.body.lr.ph.i62

if.end6.i60.lor.lhs.false6_crit_edge:             ; preds = %if.end6.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false6

for.body.lr.ph.i62:                               ; preds = %if.end6.i60
  %49 = ptrtoint ptr %blob.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %blob.i48, align 4
  %umax.i61 = call i32 @llvm.umax.i32(i32 %div33.i52, i32 1) #6
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.body.i72.for.body.i72_crit_edge, %for.body.lr.ph.i62
  %i.035.i63 = phi i32 [ 0, %for.body.lr.ph.i62 ], [ %inc.i70, %for.body.i72.for.body.i72_crit_edge ]
  %arrayidx8.i64 = getelementptr %struct.gf100_gr_init, ptr %add.ptr.i58, i32 %i.035.i63
  %arrayidx9.i65 = getelementptr %struct.gk20a_fw_av, ptr %50, i32 %i.035.i63
  %51 = ptrtoint ptr %arrayidx9.i65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx9.i65, align 4
  %53 = ptrtoint ptr %arrayidx8.i64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx8.i64, align 4
  %data11.i66 = getelementptr %struct.gk20a_fw_av, ptr %50, i32 %i.035.i63, i32 1
  %54 = ptrtoint ptr %data11.i66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data11.i66, align 4
  %data12.i67 = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i64, i32 0, i32 3
  %56 = ptrtoint ptr %data12.i67 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %data12.i67, align 4
  %count.i68 = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i64, i32 0, i32 1
  %57 = ptrtoint ptr %count.i68 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %count.i68, align 4
  %pitch.i69 = getelementptr inbounds %struct.gf100_gr_init, ptr %arrayidx8.i64, i32 0, i32 2
  %58 = ptrtoint ptr %pitch.i69 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %pitch.i69, align 4
  %inc.i70 = add nuw nsw i32 %i.035.i63, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, %umax.i61
  br i1 %exitcond.not.i71, label %for.body.i72.lor.lhs.false6_crit_edge, label %for.body.i72.for.body.i72_crit_edge

for.body.i72.for.body.i72_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i72

for.body.i72.lor.lhs.false6_crit_edge:            ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false6

gk20a_gr_av_to_init.exit77:                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %blob.i48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %blob.i48, align 4
  call void @kfree(ptr noundef %60) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i48) #6
  br label %return

lor.lhs.false6:                                   ; preds = %for.body.i72.lor.lhs.false6_crit_edge, %if.end6.i60.lor.lhs.false6_crit_edge
  %61 = ptrtoint ptr %bundle to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call3.i55, ptr %bundle, align 4
  %62 = ptrtoint ptr %blob.i48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %blob.i48, align 4
  call void @kfree(ptr noundef %63) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i48) #6
  %method = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blob.i78) #6
  %64 = ptrtoint ptr %blob.i78 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %blob.i78, align 4, !annotation !84
  %65 = getelementptr inbounds %struct.nvkm_blob, ptr %blob.i78, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %65, align 4, !annotation !84
  %call.i80 = call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1.i, ptr noundef %path, ptr noundef nonnull @.str.3, i32 noundef %ver, ptr noundef nonnull %blob.i78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i83, label %lor.lhs.false6.gk20a_gr_av_to_method.exit_crit_edge

lor.lhs.false6.gk20a_gr_av_to_method.exit_crit_edge: ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk20a_gr_av_to_method.exit

if.end.i83:                                       ; preds = %lor.lhs.false6
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %65, align 4
  %div1.i = lshr i32 %68, 3
  %add2.i82 = shl i32 %div1.i, 4
  %add3.i = add i32 %add2.i82, 408
  %call4.i = call noalias ptr @vzalloc(i32 noundef %add3.i) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i83.end.i91_crit_edge, label %if.end7.i

if.end.i83.end.i91_crit_edge:                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.i91

if.end7.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %68)
  %cmp13.not.i = icmp ult i32 %68, 8
  br i1 %cmp13.not.i, label %if.end7.i.for.end.i90_crit_edge, label %for.body.preheader.i

if.end7.i.for.end.i90_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i90

for.body.preheader.i:                             ; preds = %if.end7.i
  %add.ptr8.i = getelementptr %struct.gf100_gr_pack, ptr %call4.i, i32 17
  %umax.i84 = call i32 @llvm.umax.i32(i32 %div1.i, i32 1) #6
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.inc.i.for.body.i85_crit_edge, %for.body.preheader.i
  %i.017.i = phi i32 [ %inc29.i, %for.inc.i.for.body.i85_crit_edge ], [ 0, %for.body.preheader.i ]
  %prevclass.016.i = phi i32 [ %prevclass.1.i, %for.inc.i.for.body.i85_crit_edge ], [ 0, %for.body.preheader.i ]
  %classidx.015.i = phi i32 [ %classidx.1.i, %for.inc.i.for.body.i85_crit_edge ], [ 0, %for.body.preheader.i ]
  %init.014.i = phi ptr [ %incdec.ptr30.i, %for.inc.i.for.body.i85_crit_edge ], [ %add.ptr8.i, %for.body.preheader.i ]
  %69 = ptrtoint ptr %blob.i78 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %blob.i78, align 4
  %arrayidx.i = getelementptr %struct.gk20a_fw_av, ptr %70, i32 %i.017.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %72, 65535
  %and11.i = lshr i32 %72, 14
  %shr.i = and i32 %and11.i, 262140
  call void @__sanitizer_cov_trace_cmp4(i32 %prevclass.016.i, i32 %and.i)
  %cmp12.not.i = icmp eq i32 %prevclass.016.i, %and.i
  br i1 %cmp12.not.i, label %for.body.i85.for.inc.i_crit_edge, label %if.then13.i

for.body.i85.for.inc.i_crit_edge:                 ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prevclass.016.i)
  %tobool14.not.i = icmp ne i32 %prevclass.016.i, 0
  %spec.select.idx.i = zext i1 %tobool14.not.i to i32
  %spec.select.i = getelementptr %struct.gf100_gr_init, ptr %init.014.i, i32 %spec.select.idx.i
  %arrayidx17.i = getelementptr %struct.gf100_gr_pack, ptr %call4.i, i32 %classidx.015.i
  %73 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %spec.select.i, ptr %arrayidx17.i, align 4
  %type.i = getelementptr %struct.gf100_gr_pack, ptr %call4.i, i32 %classidx.015.i, i32 1
  %74 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and.i, ptr %type.i, align 4
  %inc.i86 = add i32 %classidx.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i86)
  %cmp20.i = icmp ugt i32 %inc.i86, 15
  br i1 %cmp20.i, label %cleanup.i, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @vfree(ptr noundef nonnull %call4.i) #6
  br label %end.i91

for.inc.i:                                        ; preds = %if.then13.i.for.inc.i_crit_edge, %for.body.i85.for.inc.i_crit_edge
  %init.2.i = phi ptr [ %spec.select.i, %if.then13.i.for.inc.i_crit_edge ], [ %init.014.i, %for.body.i85.for.inc.i_crit_edge ]
  %classidx.1.i = phi i32 [ %inc.i86, %if.then13.i.for.inc.i_crit_edge ], [ %classidx.015.i, %for.body.i85.for.inc.i_crit_edge ]
  %prevclass.1.i = phi i32 [ %and.i, %if.then13.i.for.inc.i_crit_edge ], [ %prevclass.016.i, %for.body.i85.for.inc.i_crit_edge ]
  %75 = ptrtoint ptr %init.2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr.i, ptr %init.2.i, align 4
  %data25.i = getelementptr %struct.gk20a_fw_av, ptr %70, i32 %i.017.i, i32 1
  %76 = ptrtoint ptr %data25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data25.i, align 4
  %data26.i = getelementptr inbounds %struct.gf100_gr_init, ptr %init.2.i, i32 0, i32 3
  %78 = ptrtoint ptr %data26.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %data26.i, align 4
  %count.i87 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.2.i, i32 0, i32 1
  %79 = ptrtoint ptr %count.i87 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %count.i87, align 4
  %pitch.i88 = getelementptr inbounds %struct.gf100_gr_init, ptr %init.2.i, i32 0, i32 2
  %80 = ptrtoint ptr %pitch.i88 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %pitch.i88, align 4
  %inc29.i = add nuw nsw i32 %i.017.i, 1
  %incdec.ptr30.i = getelementptr %struct.gf100_gr_init, ptr %init.2.i, i32 1
  %exitcond.not.i89 = icmp eq i32 %inc29.i, %umax.i84
  br i1 %exitcond.not.i89, label %for.inc.i.for.end.i90_crit_edge, label %for.inc.i.for.body.i85_crit_edge

for.inc.i.for.body.i85_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85

for.inc.i.for.end.i90_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i90

for.end.i90:                                      ; preds = %for.inc.i.for.end.i90_crit_edge, %if.end7.i.for.end.i90_crit_edge
  %81 = ptrtoint ptr %method to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call4.i, ptr %method, align 4
  br label %end.i91

end.i91:                                          ; preds = %for.end.i90, %cleanup.i, %if.end.i83.end.i91_crit_edge
  %ret.2.i = phi i32 [ -28, %cleanup.i ], [ 0, %for.end.i90 ], [ -12, %if.end.i83.end.i91_crit_edge ]
  %82 = ptrtoint ptr %blob.i78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %blob.i78, align 4
  call void @kfree(ptr noundef %83) #6
  br label %gk20a_gr_av_to_method.exit

gk20a_gr_av_to_method.exit:                       ; preds = %end.i91, %lor.lhs.false6.gk20a_gr_av_to_method.exit_crit_edge
  %retval.0.i92 = phi i32 [ %ret.2.i, %end.i91 ], [ %call.i80, %lor.lhs.false6.gk20a_gr_av_to_method.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blob.i78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92)
  %tobool8.not = icmp eq i32 %retval.0.i92, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -2
  br label %return

return:                                           ; preds = %gk20a_gr_av_to_method.exit, %gk20a_gr_av_to_init.exit77, %gk20a_gr_av_to_init.exit77.thread, %gk20a_gr_aiv_to_init.exit, %gk20a_gr_aiv_to_init.exit.thread, %gk20a_gr_av_to_init.exit, %gk20a_gr_av_to_init.exit.thread
  %retval.0 = phi i32 [ -2, %gk20a_gr_av_to_init.exit77 ], [ -2, %gk20a_gr_aiv_to_init.exit ], [ -2, %gk20a_gr_av_to_init.exit ], [ %spec.select, %gk20a_gr_av_to_method.exit ], [ -2, %gk20a_gr_av_to_init.exit.thread ], [ -2, %gk20a_gr_aiv_to_init.exit.thread ], [ -2, %gk20a_gr_av_to_init.exit77.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gk20a_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_gr_load(ptr noundef %gr, i32 noundef %ver, ptr nocapture noundef readnone %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %inst = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 1
  %call = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %ver, ptr noundef %inst) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2, i32 2
  %call3 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %ver, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %inst6 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 1
  %call7 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %ver, ptr noundef %inst6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %data11 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 2
  %call12 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef %ver, ptr noundef %data11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %firmware, align 4
  %call14 = tail call i32 @gk20a_gr_load_sw(ptr noundef %gr, ptr noundef nonnull @.str.13, i32 noundef %ver)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -2, %lor.lhs.false9.cleanup_crit_edge ], [ -2, %lor.lhs.false5.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk20a_gr_set_hww_esr_report_mask(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4300356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097150) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 4300364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 127) #6, !srcloc !64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 313, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 314, i32 37}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 315, i32 36}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 316, i32 38}
!8 = !{ptr @__UNIQUE_ID_firmware293, !9, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 323, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware294, !11, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 324, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware295, !13, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 325, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware296, !15, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 326, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware297, !17, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 327, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware298, !19, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 328, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware299, !21, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 329, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware300, !23, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 330, i32 1}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 196, i32 6}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 200, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gk20a_gr_wait_mem_scrubbing._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @gk20a_gr_wait_mem_scrubbing._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 208, i32 3}
!36 = !{ptr @gk20a_gr_wait_mem_scrubbing._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gk20a_gr_wait_mem_scrubbing._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"max_classes", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 138, i32 28}
!40 = !{ptr @gk20a_gr_fwif, !41, !"gk20a_gr_fwif", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 354, i32 1}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 338, i32 38}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 338, i32 42}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 340, i32 42}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 342, i32 42}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 344, i32 42}
!52 = !{ptr @gk20a_gr, !53, !"gk20a_gr", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c", i32 289, i32 1}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2156318599}
!64 = !{i64 5410496}
!65 = !{i64 5410914}
!66 = !{i64 2156309287}
!67 = !{i64 2156314278}
!68 = !{i64 2156319419}
!69 = !{i64 2156319793}
!70 = !{i64 2156320224}
!71 = !{i64 2156320637}
!72 = !{i64 2156321050}
!73 = !{i64 2156321463}
!74 = !{i64 2156321876}
!75 = !{i64 2156322289}
!76 = !{i64 2156322688}
!77 = !{i64 2156323156}
!78 = !{i64 2156323600}
!79 = !{i64 2156324013}
!80 = !{i64 2156324426}
!81 = !{i64 2156324839}
!82 = !{i64 2156325252}
!83 = !{i64 2156325665}
!84 = !{!"auto-init"}
!85 = !{i64 2156317807}
!86 = !{i64 2156318206}
