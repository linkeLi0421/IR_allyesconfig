; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2 = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.135, %struct.anon.136, %struct.nvkm_engine }
%struct.anon.135 = type { i32, ptr, i32, i8 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv_sec2_init_msg = type { %struct.nvfw_falcon_msg, i8, i8, i16, [2 x %struct.anon.148], i32, i16 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.anon.148 = type { i32, i16, i8, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.147, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.147 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nv_sec2_args = type { i32, i32, i32, i32, i8 }
%struct.nv_sec2_acr_bootstrap_falcon_cmd = type { %struct.nv_sec2_acr_cmd, i32, i32 }
%struct.nv_sec2_acr_cmd = type { %struct.nvfw_falcon_msg, i8 }
%struct.nv_sec2_acr_bootstrap_falcon_msg = type { %struct.nv_sec2_acr_msg, i32, i32 }
%struct.nv_sec2_acr_msg = type { %struct.nvfw_falcon_msg, i8 }
%struct.loader_config_v1 = type <{ i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32 }>

@gp102_sec2_nofw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: firmware unavailable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gp102_sec2_nofw\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gp102_sec2_nofw._entry_ptr = internal global ptr @gp102_sec2_nofw._entry, section ".printk_index", align 4
@gp102_sec2_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 178, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unhandled intr %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gp102_sec2_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gp102_sec2_intr._entry_ptr = internal global ptr @gp102_sec2_intr._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gp102_sec2_flcn = internal constant { %struct.nvkm_falcon_func, [56 x i8] } { %struct.nvkm_falcon_func { %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr null, ptr null, i32 1032, i32 1536, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 16777216, ptr @gp102_sec2_flcn_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @gp102_sec2_flcn_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.140 { i32 2560, i32 2564, i32 8 }, %struct.anon.140 { i32 2608, i32 2612, i32 8 }, [0 x %struct.nvkm_sclass] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@gp102_sec2 = dso_local constant { %struct.nvkm_sec2_func, [16 x i8] } { %struct.nvkm_sec2_func { ptr @gp102_sec2_flcn, i8 8, ptr @gp102_sec2_intr, ptr @gp102_sec2_initmsg }, [16 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp102/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp102/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [43 x i8] c"nouveau.firmware=nvidia/gp102/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp104/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp104/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [43 x i8] c"nouveau.firmware=nvidia/gp104/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp106/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp106/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [43 x i8] c"nouveau.firmware=nvidia/gp106/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp107/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp107/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [43 x i8] c"nouveau.firmware=nvidia/gp107/sec2/sig.bin\00", section ".modinfo", align 1
@gp102_sec2_acr_1 = dso_local constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 0, i32 84, ptr @gp102_sec2_acr_bld_write_1, ptr @gp102_sec2_acr_bld_patch_1, ptr @gp102_sec2_acr_boot, i64 140, ptr @gp102_sec2_acr_bootstrap_falcon, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sec2/\00", [26 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware305 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp102/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp102/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp102/sec2/sig-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp104/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp104/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp104/sec2/sig-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp106/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware312 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp106/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp106/sec2/sig-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp107/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware315 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp107/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp107/sec2/sig-1.bin\00", section ".modinfo", align 1
@gp102_sec2_fwif = internal constant { [4 x %struct.nvkm_sec2_fwif], [32 x i8] } { [4 x %struct.nvkm_sec2_fwif] [%struct.nvkm_sec2_fwif { i32 1, ptr @gp102_sec2_load, ptr @gp102_sec2, ptr @gp102_sec2_acr_1 }, %struct.nvkm_sec2_fwif { i32 0, ptr @gp102_sec2_load, ptr @gp102_sec2, ptr @gp102_sec2_acr_0 }, %struct.nvkm_sec2_fwif { i32 -1, ptr @gp102_sec2_nofw, ptr @gp102_sec2, ptr null }, %struct.nvkm_sec2_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gp102_sec2_acr_bootstrap_falcon_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 50, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: ACR_BOOTSTRAP_FALCON failed for falcon %d [%s]: %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gp102_sec2_acr_bootstrap_falcon_callback\00", [55 x i8] zeroinitializer }, align 32
@gp102_sec2_acr_bootstrap_falcon_callback._entry_ptr = internal global ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry, section ".printk_index", align 4
@gp102_sec2_acr_bootstrap_falcon_callback._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 54, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %s booted\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gp102_sec2_acr_bootstrap_falcon_callback._entry_ptr.15 = internal global ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gsplite\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fecs\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpccs\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvdec\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sec2\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"minion\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gp102_sec2_acr_0 = internal constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 0, i32 56, ptr @gp102_sec2_acr_bld_write, ptr @gp102_sec2_acr_bld_patch, ptr @gp102_sec2_acr_boot, i64 140, ptr @gp102_sec2_acr_bootstrap_falcon, ptr null }, [56 x i8] zeroinitializer }, align 32
@switch.table.gp102_sec2_acr_bootstrap_falcon_callback = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.23, ptr @.str.21, ptr @.str.23, ptr @.str.23, ptr @.str.22], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 35, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 178, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 213, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"gp102_sec2_flcn\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 232, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"gp102_sec2\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 251, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"gp102_sec2_acr_1\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 303, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 320, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"gp102_sec2_fwif\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 338, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 48, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 54, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 23, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 24, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 25, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 26, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 27, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 28, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 29, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 31, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"gp102_sec2_acr_0\00", align 1
@___asan_gen_.115 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 121, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [54 x i8] c"switch.table.gp102_sec2_acr_bootstrap_falcon_callback\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_firmware315, ptr @__UNIQUE_ID_firmware316, ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry, ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry.12, ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry_ptr, ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry_ptr.15, ptr @gp102_sec2_intr._entry, ptr @gp102_sec2_intr._entry_ptr, ptr @gp102_sec2_nofw._entry, ptr @gp102_sec2_nofw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gp102_sec2_flcn, ptr @gp102_sec2, ptr @gp102_sec2_acr_1, ptr @.str.9, ptr @gp102_sec2_fwif, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @gp102_sec2_acr_0, ptr @switch.table.gp102_sec2_acr_bootstrap_falcon_callback], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_nofw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_flcn to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_acr_1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_fwif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_sec2_acr_0 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gp102_sec2_acr_bootstrap_falcon_callback to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_nofw(ptr noundef %sec2, i32 %ver, ptr nocapture readnone %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name) #7
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
define dso_local i32 @gp102_sec2_initmsg(ptr nocapture noundef readonly %sec2) #0 align 64 {
entry:
  %msg = alloca %struct.nv_sec2_init_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg) #4
  %0 = call ptr @memset(ptr %msg, i32 255, i32 32)
  %msgq = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 5
  %1 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msgq, align 4
  %call = call i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef %2, ptr noundef nonnull %msg, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %msg_type = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %msg_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.not = icmp eq i8 %6, 0
  br i1 %cmp3.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmdq = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 4
  %arrayidx = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 0
  %id = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp10 = icmp eq i8 %8, 1
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msgq, align 4
  %index = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 2
  %conv16 = zext i8 %12 to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size, align 4
  %conv21 = zext i16 %16 to i32
  call void @nvkm_falcon_msgq_init(ptr noundef %10, i32 noundef %conv16, i32 noundef %14, i32 noundef %conv21) #4
  br label %for.inc

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmdq, align 4
  %index24 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %index24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index24, align 2
  %conv25 = zext i8 %20 to i32
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %size31 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %size31 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size31, align 4
  %conv32 = zext i16 %24 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %18, i32 noundef %conv25, i32 noundef %22, i32 noundef %conv32) #4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then12
  %arrayidx.1 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 1
  %id.1 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 3
  %25 = ptrtoint ptr %id.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %id.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp10.1 = icmp eq i8 %26, 1
  br i1 %cmp10.1, label %if.then12.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmdq, align 4
  %index24.1 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 2
  %29 = ptrtoint ptr %index24.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index24.1, align 2
  %conv25.1 = zext i8 %30 to i32
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1, align 4
  %size31.1 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %size31.1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %size31.1, align 4
  %conv32.1 = zext i16 %34 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %28, i32 noundef %conv25.1, i32 noundef %32, i32 noundef %conv32.1) #4
  br label %cleanup

if.then12.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %msgq, align 4
  %index.1 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 2
  %37 = ptrtoint ptr %index.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index.1, align 2
  %conv16.1 = zext i8 %38 to i32
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1, align 4
  %size.1 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %msg, i32 0, i32 4, i32 1, i32 1
  %41 = ptrtoint ptr %size.1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size.1, align 4
  %conv21.1 = zext i16 %42 to i32
  call void @nvkm_falcon_msgq_init(ptr noundef %36, i32 noundef %conv16.1, i32 noundef %40, i32 noundef %conv21.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12.1, %if.else.1, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then12.1 ], [ 0, %if.else.1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp102_sec2_intr(ptr noundef %sec2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 28
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  %device.i29 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device.i29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i29, align 4
  %pri.i30 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i30, align 4
  %15 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr1.i, align 4
  %add.i32 = add i32 %16, 8
  %add.ptr.i33 = getelementptr i8, ptr %14, i32 %add.i32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %shr = lshr i32 %8, 16
  %neg = xor i32 %shr, -1
  %and = and i32 %8, %neg
  %and4 = and i32 %and, %17
  %and5 = and i32 %and4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i, align 4
  %device.i35 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %device.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i35, align 4
  %pri.i36 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i36, align 4
  %25 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr1.i, align 4
  %add.i38 = add i32 %26, 4
  %add.ptr.i39 = getelementptr i8, ptr %24, i32 %add.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 64) #4, !srcloc !114
  %and7 = and i32 %and4, -65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %intr.0 = phi i32 [ %and7, %if.then ], [ %and4, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr.0)
  %tobool8.not = icmp eq i32 %intr.0, 0
  br i1 %tobool8.not, label %if.end.if.end15_crit_edge, label %do.body

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1, i32 5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %do.body.if.end12_crit_edge, label %do.end

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %intr.0) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %owner.i, align 4
  %device.i41 = getelementptr inbounds %struct.nvkm_subdev, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %device.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i41, align 4
  %pri.i42 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %pri.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri.i42, align 4
  %39 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr1.i, align 4
  %add.i44 = add i32 %40, 4
  %add.ptr.i45 = getelementptr i8, ptr %38, i32 %add.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %intr.0) #4, !srcloc !114
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_flcn_enable(ptr noundef %falcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1.i, align 4
  %addr2.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr2.i, align 4
  %add.i = add i32 %5, 960
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %or.i = or i32 %8, 1
  %9 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #4, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #4
  %12 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner.i, align 4
  %device1.i6 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device1.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device1.i6, align 4
  %16 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr2.i, align 4
  %add.i8 = add i32 %17, 960
  %pri.i9 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %19, i32 %add.i8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #4, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %and.i11 = and i32 %20, -2
  %21 = ptrtoint ptr %pri.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i9, align 4
  %add.ptr4.i12 = getelementptr i8, ptr %22, i32 %add.i8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i12, i32 %and.i11) #4, !srcloc !114
  %call2 = tail call i32 @nvkm_falcon_v1_enable(ptr noundef %falcon) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp102_sec2_flcn_bind_context(ptr noundef %falcon, ptr noundef %ctx) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait45 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void @nvkm_falcon_v1_bind_context(ptr noundef %falcon, ptr noundef %ctx) #4
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup104

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 10000000, ptr noundef nonnull %_wait) #4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i, align 4
  %11 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %12, 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add.i
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner, align 4
  %device.i121 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device.i121 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i121, align 4
  %pri.i122 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i122 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i122, align 4
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr1.i, align 4
  %add.i124 = add i32 %21, 220
  %add.ptr.i125 = getelementptr i8, ptr %19, i32 %add.i124
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp ne i32 %and, 0
  %and4 = and i32 %22, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and4)
  %cmp = icmp eq i32 %and4, 20480
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body.if.end41_crit_edge, label %do.cond

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.cond:                                          ; preds = %do.body
  %call8 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp9 = icmp sgt i64 %call8, -1
  br i1 %cmp9, label %do.cond.do.body_crit_edge, label %do.end21

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end21:                                         ; preds = %do.cond
  %23 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_wait, align 8
  %device22 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device22, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %28) #4
  %29 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_wait, align 8
  %device26 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device26, align 4
  %dev27 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev27, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end21.dev_name.exit_crit_edge

do.end21.dev_name.exit_crit_edge:                 ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %38, %if.end.i ], [ %36, %do.end21.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call23, ptr noundef %retval.0.i) #4
  br label %if.end41

if.end41:                                         ; preds = %dev_name.exit, %do.body.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %39 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %owner, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device1.i, align 4
  %43 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr1.i, align 4
  %add.i127 = add i32 %44, 4
  %pri.i128 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 11
  %45 = ptrtoint ptr %pri.i128 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %46, i32 %add.i127
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  call void @arm_heavy_mb() #4
  %or.i = or i32 %47, 8
  %48 = ptrtoint ptr %pri.i128 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i128, align 4
  %add.ptr4.i = getelementptr i8, ptr %49, i32 %add.i127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #4, !srcloc !114
  %50 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %owner, align 4
  %device1.i131 = getelementptr inbounds %struct.nvkm_subdev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %device1.i131 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device1.i131, align 4
  %54 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr1.i, align 4
  %add.i133 = add i32 %55, 88
  %pri.i134 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 11
  %56 = ptrtoint ptr %pri.i134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %57, i32 %add.i133
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  call void @arm_heavy_mb() #4
  %or.i137 = or i32 %58, 2
  %59 = ptrtoint ptr %pri.i134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri.i134, align 4
  %add.ptr4.i138 = getelementptr i8, ptr %60, i32 %add.i133
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i138, i32 %or.i137) #4, !srcloc !114
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait45) #4
  %61 = call ptr @memset(ptr %_wait45, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 10000000, ptr noundef nonnull %_wait45) #4
  br label %do.body48

do.body48:                                        ; preds = %do.cond58.do.body48_crit_edge, %if.end41
  %62 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %owner, align 4
  %device.i140 = getelementptr inbounds %struct.nvkm_subdev, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %device.i140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device.i140, align 4
  %pri.i141 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %pri.i141 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i141, align 4
  %68 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr1.i, align 4
  %add.i143 = add i32 %69, 220
  %add.ptr.i144 = getelementptr i8, ptr %67, i32 %add.i143
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #4, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %and51 = and i32 %70, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %do.body48.if.end102_crit_edge, label %do.cond58

do.body48.if.end102_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

do.cond58:                                        ; preds = %do.body48
  %call59 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait45) #4
  %cmp60 = icmp sgt i64 %call59, -1
  br i1 %cmp60, label %do.cond58.do.body48_crit_edge, label %do.end78

do.cond58.do.body48_crit_edge:                    ; preds = %do.cond58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body48

do.end78:                                         ; preds = %do.cond58
  %71 = ptrtoint ptr %_wait45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_wait45, align 8
  %device81 = getelementptr inbounds %struct.nvkm_timer, ptr %72, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %device81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device81, align 4
  %dev82 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev82, align 8
  %call83 = call ptr @dev_driver_string(ptr noundef %76) #4
  %77 = ptrtoint ptr %_wait45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %_wait45, align 8
  %device86 = getelementptr inbounds %struct.nvkm_timer, ptr %78, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %device86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device86, align 4
  %dev87 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev87, align 8
  %init_name.i145 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %init_name.i145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i145, align 8
  %tobool.not.i146 = icmp eq ptr %84, null
  br i1 %tobool.not.i146, label %if.end.i147, label %do.end78.dev_name.exit149_crit_edge

do.end78.dev_name.exit149_crit_edge:              ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit149

if.end.i147:                                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  br label %dev_name.exit149

dev_name.exit149:                                 ; preds = %if.end.i147, %do.end78.dev_name.exit149_crit_edge
  %retval.0.i148 = phi ptr [ %86, %if.end.i147 ], [ %84, %do.end78.dev_name.exit149_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call83, ptr noundef %retval.0.i148) #4
  br label %if.end102

if.end102:                                        ; preds = %dev_name.exit149, %do.body48.if.end102_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait45) #4
  br label %cleanup104

cleanup104:                                       ; preds = %if.end102, %entry.cleanup104_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_bind_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_write_1(ptr nocapture noundef readonly %acr, i32 noundef %bld, ptr nocapture noundef readonly %lsfw) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hdr) #4
  %ctx_dma = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 2
  %0 = call ptr @memset(ptr %hdr, i32 0, i32 32)
  %1 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 6, ptr %ctx_dma, align 1
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 3
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %img, align 4
  %app_start_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 9
  %4 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %app_start_offset, align 4
  %add = add i32 %5, %3
  %conv = zext i32 %add to i64
  %6 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv, ptr %code_dma_base, align 1
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 4
  %app_resident_code_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 11
  %7 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %app_resident_code_offset, align 4
  %9 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %non_sec_code_off, align 1
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 5
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %10 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %app_resident_code_size, align 4
  %12 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %non_sec_code_size, align 1
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 6
  %13 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %sec_code_off, align 1
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 7
  %14 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %sec_code_size, align 1
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 8
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 10
  %15 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %app_imem_entry, align 4
  %17 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %code_entry_point, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 9
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %18 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %app_resident_data_offset, align 4
  %add5 = add i32 %19, %add
  %conv6 = zext i32 %add5 to i64
  %20 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %conv6, ptr %data_dma_base, align 1
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 10
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %21 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %app_resident_data_size, align 4
  %23 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %data_size, align 1
  %argc = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 11
  %24 = ptrtoint ptr %argc to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 1, ptr %argc, align 1
  %argv = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 12
  %falcon = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 1
  %25 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %falcon, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %emem_addr = getelementptr inbounds %struct.nvkm_falcon_func, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %emem_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %emem_addr, align 4
  %31 = ptrtoint ptr %argv to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %argv, align 1
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.023 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.022 = phi i32 [ 21, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.021 = phi i32 [ %bld, %entry ], [ %add9, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.022, -1
  %32 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr32, align 4
  %conv8 = zext i32 %_addr.021 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.023, i32 1
  %38 = ptrtoint ptr %_data.023 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %_data.023, align 4
  tail call void %37(ptr noundef %33, i64 noundef %conv8, i32 noundef %39) #4
  %add9 = add i32 %_addr.021, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_patch_1(ptr noundef %acr, i32 noundef %bld, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hdr) #4
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
  %call = tail call i32 %6(ptr noundef %2, i64 noundef %conv) #4
  %incdec.ptr = getelementptr i32, ptr %_data.033, i32 1
  %7 = ptrtoint ptr %_data.033 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %_data.033, align 4
  %add = add i32 %_addr.031, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void %17(ptr noundef %13, i64 noundef %conv17, i32 noundef %19) #4
  %add19 = add i32 %_addr7.034, 4
  %tobool12.not = icmp eq i32 %dec11, 0
  br i1 %tobool12.not, label %while.end20, label %while.body13.while.body13_crit_edge

while.body13.while.body13_crit_edge:              ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body13

while.end20:                                      ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #6
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v2_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp102_sec2_acr_boot(ptr noundef %falcon) #0 align 64 {
entry:
  %args = alloca %struct.nv_sec2_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #4
  %0 = call ptr @memset(ptr %args, i32 0, i32 20)
  %1 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %falcon, align 4
  %emem_addr = getelementptr inbounds %struct.nvkm_falcon_func, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %emem_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %emem_addr, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %falcon, ptr noundef nonnull %args, i32 noundef %4, i32 noundef 20, i8 noundef zeroext 0) #4
  call void @nvkm_falcon_start(ptr noundef %falcon) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp102_sec2_acr_bootstrap_falcon(ptr noundef %falcon, i32 noundef %id) #0 align 64 {
entry:
  %cmd = alloca %struct.nv_sec2_acr_bootstrap_falcon_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %falcon, i32 -204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %unit_acr = getelementptr inbounds %struct.nvkm_sec2_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unit_acr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unit_acr, align 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %cmd, align 4
  %size = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %size, align 1
  %ctrl_flags = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ctrl_flags, align 2
  %seq_id = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %seq_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %seq_id, align 1
  %cmd_type = getelementptr inbounds %struct.nv_sec2_acr_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %cmd_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cmd_type, align 4
  %flags = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_cmd, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %falcon_id = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_cmd, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %falcon_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %id, ptr %falcon_id, align 4
  %cmdq = getelementptr i8, ptr %falcon, i32 456
  %13 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmdq, align 4
  %subdev = getelementptr i8, ptr %falcon, i32 -196
  %call4 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %14, ptr noundef nonnull %cmd, ptr noundef nonnull @gp102_sec2_acr_bootstrap_falcon_callback, ptr noundef %subdev, i32 noundef 100) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #4
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_load(ptr noundef %sec2, i32 noundef %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 1, i32 1
  %falcon = getelementptr inbounds %struct.nvkm_sec2, ptr %sec2, i32 0, i32 2
  %acr = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %fwif, i32 0, i32 3
  %0 = ptrtoint ptr %acr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acr, align 4
  %call = tail call i32 @nvkm_acr_lsfw_load_sig_image_desc_v1(ptr noundef %subdev, ptr noundef %falcon, i32 noundef 7, ptr noundef nonnull @.str.9, i32 noundef %ver, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc_v1(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psec2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_sec2_new_(ptr noundef nonnull @gp102_sec2_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 0, ptr noundef %psec2) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sec2_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp102_sec2_acr_bootstrap_falcon_callback(ptr noundef %priv, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %falcon_id = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_msg, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %falcon_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %falcon_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %2 = icmp ult i32 %1, 11
  br i1 %2, label %switch.lookup, label %entry.nvkm_acr_lsf_id.exit_crit_edge

entry.nvkm_acr_lsf_id.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_acr_lsf_id.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.gp102_sec2_acr_bootstrap_falcon_callback, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvkm_acr_lsf_id.exit

nvkm_acr_lsf_id.exit:                             ; preds = %switch.lookup, %entry.nvkm_acr_lsf_id.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.23, %entry.nvkm_acr_lsf_id.exit_crit_edge ]
  %error_code = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_msg, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %debug11 = getelementptr inbounds %struct.nvkm_subdev, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %debug11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug11, align 4
  br i1 %tobool.not, label %do.body9, label %do.body

do.body:                                          ; preds = %nvkm_acr_lsf_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name3 = getelementptr inbounds %struct.nvkm_subdev, ptr %priv, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef %name3, i32 noundef %1, ptr noundef nonnull %retval.0.i, i32 noundef %5) #7
  br label %cleanup

do.body9:                                         ; preds = %nvkm_acr_lsf_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp12 = icmp ugt i32 %7, 3
  br i1 %cmp12, label %do.end16, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end16:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %device17 = getelementptr inbounds %struct.nvkm_subdev, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device17, align 4
  %dev18 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 8
  %name19 = getelementptr inbounds %struct.nvkm_subdev, ptr %priv, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef %name19, ptr noundef nonnull %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.body9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %do.end16 ], [ 0, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_write(ptr nocapture noundef readonly %acr, i32 noundef %bld, ptr nocapture noundef readonly %lsfw) #0 align 64 {
entry:
  %hdr = alloca %struct.loader_config_v1, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #4
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %hdr, align 4
  %dma_idx = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 1
  %1 = ptrtoint ptr %dma_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %dma_idx, align 4
  %code_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 2
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %img, align 4
  %app_start_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 9
  %4 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %app_start_offset, align 4
  %add = add i32 %5, %3
  %conv = zext i32 %add to i64
  %6 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv, ptr %code_dma_base, align 4
  %code_size_total = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 3
  %app_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 8
  %7 = ptrtoint ptr %app_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %app_size, align 4
  %9 = ptrtoint ptr %code_size_total to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %code_size_total, align 4
  %code_size_to_load = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 4
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %10 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %app_resident_code_size, align 4
  %12 = ptrtoint ptr %code_size_to_load to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code_size_to_load, align 4
  %code_entry_point = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 5
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 10
  %13 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %app_imem_entry, align 4
  %15 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %code_entry_point, align 4
  %data_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 6
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %16 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %app_resident_data_offset, align 4
  %add5 = add i32 %17, %add
  %conv6 = zext i32 %add5 to i64
  %18 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %conv6, ptr %data_dma_base, align 4
  %data_size = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 7
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %19 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %app_resident_data_size, align 4
  %21 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %data_size, align 4
  %overlay_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 8
  %22 = ptrtoint ptr %overlay_dma_base to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %conv, ptr %overlay_dma_base, align 4
  %argc = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 9
  %23 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %argc, align 4
  %argv = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 10
  %falcon = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 1
  %24 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %falcon, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %emem_addr = getelementptr inbounds %struct.nvkm_falcon_func, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %emem_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %emem_addr, align 4
  %30 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %argv, align 4
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.030 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.029 = phi i32 [ 14, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.028 = phi i32 [ %bld, %entry ], [ %add14, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.029, -1
  %31 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr32, align 4
  %conv13 = zext i32 %_addr.028 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.030, i32 1
  %37 = ptrtoint ptr %_data.030 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %_data.030, align 4
  tail call void %36(ptr noundef %32, i64 noundef %conv13, i32 noundef %38) #4
  %add14 = add i32 %_addr.028, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_patch(ptr noundef %acr, i32 noundef %bld, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.loader_config_v1, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #4
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
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
  %call = tail call i32 %6(ptr noundef %2, i64 noundef %conv) #4
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
  %call.1 = tail call i32 %13(ptr noundef %9, i64 noundef %conv.1) #4
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
  %call.2 = tail call i32 %20(ptr noundef %16, i64 noundef %conv.2) #4
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
  %call.3 = tail call i32 %27(ptr noundef %23, i64 noundef %conv.3) #4
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
  %call.4 = tail call i32 %34(ptr noundef %30, i64 noundef %conv.4) #4
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
  %call.5 = tail call i32 %41(ptr noundef %37, i64 noundef %conv.5) #4
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
  %call.6 = tail call i32 %48(ptr noundef %44, i64 noundef %conv.6) #4
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
  %call.7 = tail call i32 %55(ptr noundef %51, i64 noundef %conv.7) #4
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
  %call.8 = tail call i32 %62(ptr noundef %58, i64 noundef %conv.8) #4
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
  %call.9 = tail call i32 %69(ptr noundef %65, i64 noundef %conv.9) #4
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
  %call.10 = tail call i32 %76(ptr noundef %72, i64 noundef %conv.10) #4
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
  %call.11 = tail call i32 %83(ptr noundef %79, i64 noundef %conv.11) #4
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
  %call.12 = tail call i32 %90(ptr noundef %86, i64 noundef %conv.12) #4
  %incdec.ptr.12 = getelementptr inbounds i32, ptr %hdr, i32 13
  %91 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.12, ptr %incdec.ptr.11, align 4
  %add.12 = add i32 %bld, 52
  %92 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wpr, align 8
  %ptrs.13 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %ptrs.13 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ptrs.13, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %conv.13 = zext i32 %add.12 to i64
  %call.13 = tail call i32 %97(ptr noundef %93, i64 noundef %conv.13) #4
  %98 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call.13, ptr %incdec.ptr.12, align 4
  %code_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 2
  %99 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %100 = load i64, ptr %code_dma_base, align 4
  %add2 = add i64 %100, %adjust
  store i64 %add2, ptr %code_dma_base, align 4
  %data_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 6
  %101 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %102 = load i64, ptr %data_dma_base, align 4
  %add4 = add i64 %102, %adjust
  store i64 %add4, ptr %data_dma_base, align 4
  %overlay_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 8
  %103 = ptrtoint ptr %overlay_dma_base to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %overlay_dma_base, align 4
  %add6 = add i64 %104, %adjust
  store i64 %add6, ptr %overlay_dma_base, align 4
  br label %while.body15

while.body15:                                     ; preds = %while.body15.while.body15_crit_edge, %entry
  %_data11.039 = phi ptr [ %hdr, %entry ], [ %incdec.ptr20, %while.body15.while.body15_crit_edge ]
  %_size10.038 = phi i32 [ 14, %entry ], [ %dec13, %while.body15.while.body15_crit_edge ]
  %_addr9.037 = phi i32 [ %bld, %entry ], [ %add21, %while.body15.while.body15_crit_edge ]
  %dec13 = add nsw i32 %_size10.038, -1
  %105 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wpr, align 8
  %ptrs17 = getelementptr inbounds %struct.nvkm_memory, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %ptrs17 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ptrs17, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wr32, align 4
  %conv19 = zext i32 %_addr9.037 to i64
  %incdec.ptr20 = getelementptr i32, ptr %_data11.039, i32 1
  %111 = ptrtoint ptr %_data11.039 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %_data11.039, align 4
  tail call void %110(ptr noundef %106, i64 noundef %conv19, i32 noundef %112) #4
  %add21 = add i32 %_addr9.037, 4
  %tobool14.not = icmp eq i32 %dec13, 0
  br i1 %tobool14.not, label %while.end22, label %while.body15.while.body15_crit_edge

while.body15.while.body15_crit_edge:              ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body15

while.end22:                                      ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #6
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @loader_config_v1_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @loader_config_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 35, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gp102_sec2_nofw._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gp102_sec2_nofw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 178, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gp102_sec2_intr._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @gp102_sec2_intr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 213, i32 2}
!16 = !{ptr @gp102_sec2, !17, !"gp102_sec2", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 251, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware293, !19, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 258, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware294, !21, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 259, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware295, !23, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 260, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware296, !25, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 261, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware297, !27, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 262, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware298, !29, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 263, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware299, !31, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 264, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware300, !33, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 265, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware301, !35, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 266, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware302, !37, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 267, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware303, !39, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 268, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware304, !41, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 269, i32 1}
!42 = !{ptr @gp102_sec2_acr_1, !43, !"gp102_sec2_acr_1", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 303, i32 1}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 320, i32 30}
!46 = !{ptr @__UNIQUE_ID_firmware305, !47, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 324, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware306, !49, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 325, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware307, !51, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 326, i32 1}
!52 = !{ptr @__UNIQUE_ID_firmware308, !53, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 327, i32 1}
!54 = !{ptr @__UNIQUE_ID_firmware309, !55, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 328, i32 1}
!56 = !{ptr @__UNIQUE_ID_firmware310, !57, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 329, i32 1}
!58 = !{ptr @__UNIQUE_ID_firmware311, !59, !"__UNIQUE_ID_firmware311", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 330, i32 1}
!60 = !{ptr @__UNIQUE_ID_firmware312, !61, !"__UNIQUE_ID_firmware312", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 331, i32 1}
!62 = !{ptr @__UNIQUE_ID_firmware313, !63, !"__UNIQUE_ID_firmware313", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 332, i32 1}
!64 = !{ptr @__UNIQUE_ID_firmware314, !65, !"__UNIQUE_ID_firmware314", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 333, i32 1}
!66 = !{ptr @__UNIQUE_ID_firmware315, !67, !"__UNIQUE_ID_firmware315", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 334, i32 1}
!68 = !{ptr @__UNIQUE_ID_firmware316, !69, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 335, i32 1}
!70 = !{ptr @gp102_sec2_flcn, !71, !"gp102_sec2_flcn", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 232, i32 1}
!72 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 48, i32 3}
!74 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 54, i32 2}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry.12, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @gp102_sec2_acr_bootstrap_falcon_callback._entry_ptr.15, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 23, i32 36}
!84 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 24, i32 36}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 25, i32 36}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 26, i32 36}
!90 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 27, i32 36}
!92 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 28, i32 36}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 29, i32 36}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 31, i32 10}
!98 = !{ptr @gp102_sec2_fwif, !99, !"gp102_sec2_fwif", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 338, i32 1}
!100 = !{ptr @gp102_sec2_acr_0, !101, !"gp102_sec2_acr_0", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c", i32 121, i32 1}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 5394350}
!112 = !{i64 2156237018}
!113 = !{i64 2156237569}
!114 = !{i64 5393932}
!115 = !{i64 2156238571}
!116 = !{i64 2156238947}
