; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/xlnx/zynqmp_dpsub.c_pt.bc'
source_filename = "../drivers/gpu/drm/xlnx/zynqmp_dpsub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.zynqmp_dpsub = type { %struct.drm_device, ptr, ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }

@__initcall__kmod_zynqmp_dpsub__319_289_zynqmp_dpsub_driver_init6 = internal global ptr @zynqmp_dpsub_driver_init, section ".initcall6.init", align 4
@zynqmp_dpsub_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynqmp_dpsub_probe, ptr @zynqmp_dpsub_remove, ptr @zynqmp_dpsub_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynqmp_dpsub_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_dpsub_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynqmp_dpsub_driver_exit = internal global ptr @zynqmp_dpsub_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [33 x i8] c"zynqmp_dpsub.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description321 = internal constant [52 x i8] c"zynqmp_dpsub.description=ZynqMP DP Subsystem Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [52 x i8] c"zynqmp_dpsub.file=drivers/gpu/drm/xlnx/zynqmp-dpsub\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [28 x i8] c"zynqmp_dpsub.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zynqmp-dpsub\00", [19 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-dpsub-1.7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @zynqmp_dpsub_suspend, ptr @zynqmp_dpsub_resume, ptr @zynqmp_dpsub_suspend, ptr @zynqmp_dpsub_resume, ptr @zynqmp_dpsub_suspend, ptr @zynqmp_dpsub_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @zynqmp_dpsub_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.6, ptr @.str.7, i32 19, ptr null, i32 0, ptr @zynqmp_dpsub_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ZynqMP DisplayPort Subsystem driver probed\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zynqmp_dpsub_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/xlnx/zynqmp_dpsub.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_probe._entry_ptr = internal global ptr @zynqmp_dpsub_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Xilinx DisplayPort Subsystem Driver\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20130509\00", [23 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dp_apb_clk\00", [21 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 182, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable the APB clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zynqmp_dpsub_init_clocks\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@zynqmp_dpsub_init_clocks._entry_ptr = internal global ptr @zynqmp_dpsub_init_clocks._entry, section ".printk_index", align 4
@zynqmp_dpsub_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @zynqmp_dpsub_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"zynqmp_dpsub_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 278, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 283, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"zynqmp_dpsub_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 272, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"zynqmp_dpsub_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 164, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"zynqmp_dpsub_drm_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 79, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 230, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 88, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 89, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"zynqmp_dpsub_drm_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 77, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 176, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 182, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"zynqmp_dpsub_mode_config_funcs\00", align 1
@___asan_gen_.70 = private constant [39 x i8] c"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 67, i32 43 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_zynqmp_dpsub_driver_exit, ptr @__initcall__kmod_zynqmp_dpsub__319_289_zynqmp_dpsub_driver_init6, ptr @zynqmp_dpsub_driver_exit, ptr @zynqmp_dpsub_init_clocks._entry, ptr @zynqmp_dpsub_init_clocks._entry_ptr, ptr @zynqmp_dpsub_probe._entry, ptr @zynqmp_dpsub_probe._entry_ptr, ptr @zynqmp_dpsub_driver, ptr @.str, ptr @zynqmp_dpsub_of_match, ptr @zynqmp_dpsub_pm_ops, ptr @zynqmp_dpsub_drm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @zynqmp_dpsub_drm_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @zynqmp_dpsub_mode_config_funcs], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dpsub_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dpsub_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynqmp_dpsub_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dpsub_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynqmp_dpsub_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dpsub_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev, ptr noundef nonnull @zynqmp_dpsub_drm_driver, i32 noundef 2352, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = load ptr, ptr %dev4, align 4
  %call6 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 17592186044415) #5
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %5, i32 noundef 0) #5
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %call.i53 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.8) #5
  %apb_clk.i = getelementptr inbounds %struct.zynqmp_dpsub, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i53, ptr %apb_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call.i53 to i32
  br label %zynqmp_dpsub_init_clocks.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end11_crit_edge, label %if.then3.i.i

if.end.i.i.if.end11_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call.i53) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.do.end.i_crit_edge ]
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  br label %zynqmp_dpsub_init_clocks.exit

zynqmp_dpsub_init_clocks.exit:                    ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %retval.0.i.ph.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %zynqmp_dpsub_init_clocks.exit.err_mem_crit_edge, label %zynqmp_dpsub_init_clocks.exit.if.end11_crit_edge

zynqmp_dpsub_init_clocks.exit.if.end11_crit_edge: ; preds = %zynqmp_dpsub_init_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

zynqmp_dpsub_init_clocks.exit.err_mem_crit_edge:  ; preds = %zynqmp_dpsub_init_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mem

if.end11:                                         ; preds = %zynqmp_dpsub_init_clocks.exit.if.end11_crit_edge, %if.end.i.i.if.end11_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %call13 = tail call i32 @zynqmp_dp_probe(ptr noundef %call, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end11.err_pm_crit_edge

if.end11.err_pm_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pm

if.end15:                                         ; preds = %if.end11
  %call17 = tail call i32 @zynqmp_disp_probe(ptr noundef %call, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.err_dp_crit_edge

if.end15.err_dp_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dp

if.end20:                                         ; preds = %if.end15
  %call.i54 = tail call i32 @drmm_mode_config_init(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %if.end20.err_disp_crit_edge, label %if.end.i56

if.end20.err_disp_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disp

if.end.i56:                                       ; preds = %if.end20
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 27
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @zynqmp_dpsub_mode_config_funcs, ptr %funcs.i, align 4
  %min_width.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 23
  %13 = ptrtoint ptr %min_width.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %min_width.i, align 4
  %min_height.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 24
  %14 = ptrtoint ptr %min_height.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %min_height.i, align 4
  %max_width.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 25
  %15 = ptrtoint ptr %max_width.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %max_width.i, align 4
  %max_height.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 26
  %16 = ptrtoint ptr %max_height.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %max_height.i, align 4
  %call6.i = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i56.err_disp_crit_edge

if.end.i56.err_disp_crit_edge:                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disp

if.end8.i:                                        ; preds = %if.end.i56
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #5
  %call9.i = tail call i32 @zynqmp_disp_drm_init(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.err_poll_fini.i_crit_edge

if.end8.i.err_poll_fini.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_poll_fini.i

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call i32 @zynqmp_dp_drm_init(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.err_poll_fini.i_crit_edge

if.end12.i.err_poll_fini.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_poll_fini.i

if.end16.i:                                       ; preds = %if.end12.i
  tail call void @drm_mode_config_reset(ptr noundef %call) #5
  %call17.i = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end16.i.err_poll_fini.i_crit_edge, label %do.end

if.end16.i.err_poll_fini.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_poll_fini.i

err_poll_fini.i:                                  ; preds = %if.end16.i.err_poll_fini.i_crit_edge, %if.end12.i.err_poll_fini.i_crit_edge, %if.end8.i.err_poll_fini.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %if.end8.i.err_poll_fini.i_crit_edge ], [ %call13.i, %if.end12.i.err_poll_fini.i_crit_edge ], [ %call17.i, %if.end16.i.err_poll_fini.i_crit_edge ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call) #5
  br label %err_disp

do.end:                                           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 24) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

err_disp:                                         ; preds = %err_poll_fini.i, %if.end.i56.err_disp_crit_edge, %if.end20.err_disp_crit_edge
  %retval.0.i57.ph = phi i32 [ %call6.i, %if.end.i56.err_disp_crit_edge ], [ %call.i54, %if.end20.err_disp_crit_edge ], [ %ret.0.i, %err_poll_fini.i ]
  tail call void @zynqmp_disp_remove(ptr noundef %call) #5
  br label %err_dp

err_dp:                                           ; preds = %err_disp, %if.end15.err_dp_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end15.err_dp_crit_edge ], [ %retval.0.i57.ph, %err_disp ]
  tail call void @zynqmp_dp_remove(ptr noundef %call) #5
  br label %err_pm

err_pm:                                           ; preds = %err_dp, %if.end11.err_pm_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end11.err_pm_crit_edge ], [ %ret.0, %err_dp ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %17 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %apb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %18) #5
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %err_mem

err_mem:                                          ; preds = %err_pm, %zynqmp_dpsub_init_clocks.exit.err_mem_crit_edge
  %ret.2 = phi i32 [ %retval.0.i, %zynqmp_dpsub_init_clocks.exit.err_mem_crit_edge ], [ %ret.1, %err_pm ]
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %err_mem, %do.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.2, %err_mem ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dpsub_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  tail call void @zynqmp_disp_remove(ptr noundef %1) #5
  tail call void @zynqmp_dp_remove(ptr noundef %1) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %apb_clk = getelementptr inbounds %struct.zynqmp_dpsub, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dpsub_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynqmp_dp_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynqmp_disp_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynqmp_disp_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynqmp_dp_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dpsub_dumb_create(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 7
  %div12 = lshr i32 %sub, 3
  %dma_align = getelementptr inbounds %struct.zynqmp_dpsub, ptr %drm, i32 0, i32 5
  %4 = ptrtoint ptr %dma_align to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_align, align 4
  %sub1 = add i32 %5, -1
  %add2 = add i32 %sub1, %div12
  %neg = sub i32 0, %5
  %and = and i32 %add2, %neg
  %pitch5 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %6 = ptrtoint ptr %pitch5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %pitch5, align 4
  %call6 = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #5
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynqmp_disp_drm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynqmp_dp_drm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zynqmp_dpsub_fb_create(ptr noundef %drm, ptr noundef %file_priv, ptr nocapture noundef readonly %mode_cmd) #2 align 64 {
entry:
  %cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %cmd) #5
  %0 = call ptr @memcpy(ptr %cmd, ptr %mode_cmd, i32 104)
  %dma_align = getelementptr inbounds %struct.zynqmp_dpsub, ptr %drm, i32 0, i32 5
  %1 = ptrtoint ptr %dma_align to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_align, align 4
  %neg = sub i32 0, %2
  %arrayidx = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %4, -1
  %add = add i32 %sub, %2
  %and = and i32 %add, %neg
  store i32 %and, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = add i32 %6, -1
  %add.1 = add i32 %sub.1, %2
  %and.1 = and i32 %add.1, %neg
  store i32 %and.1, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2, align 4
  %sub.2 = add i32 %8, -1
  %add.2 = add i32 %sub.2, %2
  %and.2 = and i32 %add.2, %neg
  store i32 %and.2, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = add i32 %10, -1
  %add.3 = add i32 %sub.3, %2
  %and.3 = and i32 %add.3, %neg
  store i32 %and.3, ptr %arrayidx.3, align 8
  %call5 = call ptr @drm_gem_fb_create(ptr noundef %drm, ptr noundef %file_priv, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %cmd) #5
  ret ptr %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dpsub_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dpsub_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_zynqmp_dpsub__319_289_zynqmp_dpsub_driver_init6, !1, !"__initcall__kmod_zynqmp_dpsub__319_289_zynqmp_dpsub_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_zynqmp_dpsub_driver_exit, !1, !"__exitcall_zynqmp_dpsub_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author320, !4, !"__UNIQUE_ID_author320", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_description321, !6, !"__UNIQUE_ID_description321", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file322, !8, !"__UNIQUE_ID_file322", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license323, !8, !"__UNIQUE_ID_license323", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 283, i32 12}
!12 = !{ptr @zynqmp_dpsub_driver, !13, !"zynqmp_dpsub_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 278, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 230, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @zynqmp_dpsub_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @zynqmp_dpsub_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 88, i32 13}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 89, i32 13}
!26 = !{ptr @zynqmp_dpsub_drm_driver, !27, !"zynqmp_dpsub_drm_driver", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 79, i32 32}
!28 = !{ptr @zynqmp_dpsub_drm_fops, !29, !"zynqmp_dpsub_drm_fops", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 77, i32 1}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 176, i32 44}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 182, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @zynqmp_dpsub_init_clocks._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @zynqmp_dpsub_init_clocks._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @zynqmp_dpsub_mode_config_funcs, !39, !"zynqmp_dpsub_mode_config_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 67, i32 43}
!40 = !{ptr @zynqmp_dpsub_of_match, !41, !"zynqmp_dpsub_of_match", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 272, i32 34}
!42 = !{ptr @zynqmp_dpsub_pm_ops, !43, !"zynqmp_dpsub_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dpsub.c", i32 164, i32 32}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
