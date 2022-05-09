; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mmp/hw/mmp_ctrl.c_pt.bc'
source_filename = "../drivers/video/fbdev/mmp/hw/mmp_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mmp_overlay_ops = type { ptr, ptr, ptr, ptr }
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
%struct.mmp_mach_plat_info = type { ptr, ptr, i32, ptr }
%struct.mmphw_ctrl = type { ptr, i32, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, [0 x %struct.mmphw_path_plat] }
%struct.mmphw_path_plat = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_mach_path_config = type { ptr, i32, i32, i32, i32, i32 }
%struct.mmp_path_info = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mmp_path = type { %struct.list_head, ptr, i32, ptr, i32, ptr, ptr, %struct.mmp_mode, i32, i32, %struct.mutex, %struct.mmp_path_ops, i32, [0 x %struct.mmp_overlay] }
%struct.mmp_mode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmp_path_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mmp_overlay = type { i32, ptr, ptr, i32, %struct.mmp_addr, %struct.mmp_win, i32, i32, %struct.mutex, ptr }
%struct.mmp_addr = type { [6 x i32] }
%struct.mmp_win = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, [3 x i32] }
%struct.lcd_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmp_panel = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_mmp_ctrl__234_574_mmphw_init6 = internal global ptr @mmphw_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author235 = internal constant [45 x i8] c"mmp_ctrl.author=Li Guoqing<ligq@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"mmp_ctrl.description=Framebuffer driver for mmp\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [50 x i8] c"mmp_ctrl.file=drivers/video/fbdev/mmp/hw/mmp_ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [21 x i8] c"mmp_ctrl.license=GPL\00", section ".modinfo", align 1
@mmphw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmphw_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmp-disp\00", [23 x i8] zeroinitializer }, align 32
@mmphw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: no IO memory defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmphw_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/fbdev/mmp/hw/mmp_ctrl.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr = internal global ptr @mmphw_probe._entry, section ".printk_index", align 4
@mmphw_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: no platform data defined\0A\00", [34 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.8 = internal global ptr @mmphw_probe._entry.6, section ".printk_index", align 4
@mmphw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ctrl->access_ok\00", [47 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@mmphw_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't request region for resource %pR\0A\00", [57 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.12 = internal global ptr @mmphw_probe._entry.10, section ".printk_index", align 4
@mmphw_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: res %pR map failed\0A\00", [40 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.15 = internal global ptr @mmphw_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcd_controller\00", [17 x i8] zeroinitializer }, align 32
@mmphw_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s unable to request IRQ %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.19 = internal global ptr @mmphw_probe._entry.17, section ".printk_index", align 4
@mmphw_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to get clk %s\0A\00", [42 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.22 = internal global ptr @mmphw_probe._entry.20, section ".printk_index", align 4
@mmphw_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device init done\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.26 = internal global ptr @mmphw_probe._entry.23, section ".printk_index", align 4
@mmphw_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@mmphw_probe._entry_ptr.29 = internal global ptr @mmphw_probe._entry.27, section ".printk_index", align 4
@path_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 402, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path_init\00", [22 x i8] zeroinitializer }, align 32
@path_init._entry_ptr = internal global ptr @path_init._entry, section ".printk_index", align 4
@mmphw_overlay_ops = internal global { %struct.mmp_overlay_ops, [16 x i8] } { %struct.mmp_overlay_ops { ptr @overlay_set_fetch, ptr @overlay_set_onoff, ptr @overlay_set_win, ptr @overlay_set_addr }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@overlay_set_onoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 220, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"overlay %s is already %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"overlay_set_onoff\00", [46 x i8] zeroinitializer }, align 32
@overlay_set_onoff._entry_ptr = internal global ptr @overlay_set_onoff._entry, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNKNOWNSTAT\00", [20 x i8] zeroinitializer }, align 32
@path_onoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 198, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"path %s is already %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"path_onoff\00", [21 x i8] zeroinitializer }, align 32
@path_onoff._entry_ptr = internal global ptr @path_onoff._entry, section ".printk_index", align 4
@path_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 1447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"path id %d invalid\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path_regs\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/fbdev/mmp/hw/mmp_ctrl.h\00", [58 x i8] zeroinitializer }, align 32
@path_regs._entry_ptr = internal global ptr @path_regs._entry, section ".printk_index", align 4
@path_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 306, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s sclk_src %d sclk_div 0x%x pclk %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"path_set_mode\00", [18 x i8] zeroinitializer }, align 32
@path_set_mode._entry_ptr = internal global ptr @path_set_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 6, i64 256, i64 258, i64 260, i64 262, i64 264]
@__sancov_gen_cov_switch_values.47 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"mmphw_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 563, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 565, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 452, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 466, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 485, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 490, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 499, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 506, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 508, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 517, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 546, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 558, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 402, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"mmphw_overlay_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 316, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 219, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 127, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 129, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"../include/video/mmp_disp.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 131, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 197, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [41 x i8] c"../drivers/video/fbdev/mmp/hw/mmp_ctrl.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1447, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [41 x i8] c"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 305, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__initcall__kmod_mmp_ctrl__234_574_mmphw_init6, ptr @mmphw_probe._entry, ptr @mmphw_probe._entry.10, ptr @mmphw_probe._entry.13, ptr @mmphw_probe._entry.17, ptr @mmphw_probe._entry.20, ptr @mmphw_probe._entry.23, ptr @mmphw_probe._entry.27, ptr @mmphw_probe._entry.6, ptr @mmphw_probe._entry_ptr, ptr @mmphw_probe._entry_ptr.12, ptr @mmphw_probe._entry_ptr.15, ptr @mmphw_probe._entry_ptr.19, ptr @mmphw_probe._entry_ptr.22, ptr @mmphw_probe._entry_ptr.26, ptr @mmphw_probe._entry_ptr.29, ptr @mmphw_probe._entry_ptr.8, ptr @overlay_set_onoff._entry, ptr @overlay_set_onoff._entry_ptr, ptr @path_init._entry, ptr @path_init._entry_ptr, ptr @path_onoff._entry, ptr @path_onoff._entry_ptr, ptr @path_regs._entry, ptr @path_regs._entry_ptr, ptr @path_set_mode._entry, ptr @path_set_mode._entry_ptr, ptr @mmphw_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mmphw_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @mmphw_overlay_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmphw_overlay_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlay_set_onoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_onoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmphw_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmphw_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmphw_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %do.end107

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.do.end107_crit_edge, label %if.end4

if.end.do.end107_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end107

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp6 = icmp eq ptr %1, null
  br i1 %cmp6, label %if.end4.do.end12_crit_edge, label %lor.lhs.false

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end4
  %path_num = getelementptr inbounds %struct.mmp_mach_plat_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %path_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end12_crit_edge, label %lor.lhs.false7

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %paths = getelementptr inbounds %struct.mmp_mach_plat_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %paths, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.end12_crit_edge, label %if.end14

lor.lhs.false7.do.end12_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false7.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %if.end4.do.end12_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #10
  br label %do.end107

if.end14:                                         ; preds = %lor.lhs.false7
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 24) #7
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 124) #7
  %retval.0.i = select i1 %7, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end14.do.end107_crit_edge, label %if.end21

if.end14.do.end107_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end107

if.end21:                                         ; preds = %if.end14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call.i, align 4
  %12 = ptrtoint ptr %path_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path_num, align 4
  %path_num24 = getelementptr inbounds %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %path_num24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %path_num24, align 4
  %dev26 = getelementptr inbounds %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev5, ptr %dev26, align 4
  %irq27 = getelementptr inbounds %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %irq27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call1, ptr %irq27, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %access_ok = getelementptr inbounds %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %access_ok, ptr noundef nonnull @.str.9, ptr noundef nonnull @mmphw_probe.__key) #7
  %18 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev26, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %21
  %add.i = add i32 %sub.i, %23
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call34 = tail call ptr @__devm_request_region(ptr noundef %19, ptr noundef nonnull @iomem_resource, i32 noundef %21, i32 noundef %add.i, ptr noundef %25) #7
  %tobool35.not = icmp eq ptr %call34, null
  %26 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev26, align 4
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.11, ptr noundef nonnull %call) #10
  br label %do.end107

if.end41:                                         ; preds = %if.end21
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call, align 4
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  %sub.i184 = sub i32 1, %29
  %add.i185 = add i32 %sub.i184, %31
  %call45 = tail call ptr @devm_ioremap(ptr noundef %27, i32 noundef %29, i32 noundef %add.i185) #7
  %reg_base = getelementptr inbounds %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %reg_base, align 4
  %cmp47 = icmp eq ptr %call45, null
  %33 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev26, align 4
  br i1 %cmp47, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #10
  br label %do.end107

if.end53:                                         ; preds = %if.end41
  %35 = ptrtoint ptr %irq27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq27, align 4
  %call.i186 = tail call i32 @devm_request_threaded_irq(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @ctrl_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %cmp57 = icmp slt i32 %call.i186, 0
  %37 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev26, align 4
  br i1 %cmp57, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %irq27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef %40) #10
  br label %do.end107

if.end64:                                         ; preds = %if.end53
  %clk_name = getelementptr inbounds %struct.mmp_mach_plat_info, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_name, align 4
  %call66 = tail call ptr @devm_clk_get(ptr noundef %38, ptr noundef %42) #7
  %clk = getelementptr inbounds %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call66, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end72, label %if.end75

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev26, align 4
  %46 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %47) #10
  br label %do.end107

if.end75:                                         ; preds = %if.end64
  tail call fastcc void @clk_prepare_enable(ptr noundef %call66)
  tail call fastcc void @ctrl_set_default(ptr noundef nonnull %call.i)
  %48 = ptrtoint ptr %path_num24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %path_num24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp79199 = icmp sgt i32 %49, 0
  br i1 %cmp79199, label %if.end75.for.body_crit_edge, label %if.end75.for.end_crit_edge

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end75.for.body_crit_edge
  %i.0200 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end75.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.0200
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.0200, ptr %arrayidx, align 4
  %ctrl80 = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.0200, i32 1
  %51 = ptrtoint ptr %ctrl80 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %ctrl80, align 4
  %52 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %paths, align 4
  %arrayidx82 = getelementptr %struct.mmp_mach_path_config, ptr %53, i32 %i.0200
  %54 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev26, align 4
  %56 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx82, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef %57) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.failed_path_init_crit_edge, label %if.end.i

for.body.failed_path_init_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_path_init

if.end.i:                                         ; preds = %for.body
  %59 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx82, align 4
  %61 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %call7.i.i.i, align 8
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  %id4.i = getelementptr inbounds %struct.mmp_path_info, ptr %call7.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %id4.i, align 8
  %65 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev26, align 4
  %dev6.i = getelementptr inbounds %struct.mmp_path_info, ptr %call7.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %dev6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %dev6.i, align 4
  %overlay_num.i = getelementptr %struct.mmp_mach_path_config, ptr %53, i32 %i.0200, i32 1
  %68 = ptrtoint ptr %overlay_num.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %overlay_num.i, align 4
  %overlay_num7.i = getelementptr inbounds %struct.mmp_path_info, ptr %call7.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %overlay_num7.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %overlay_num7.i, align 8
  %overlay_ops.i = getelementptr inbounds %struct.mmp_path_info, ptr %call7.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %overlay_ops.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mmphw_overlay_ops, ptr %overlay_ops.i, align 4
  %set_mode.i = getelementptr inbounds %struct.mmp_path_info, ptr %call7.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @path_set_mode, ptr %set_mode.i, align 4
  %plat_data.i = getelementptr inbounds %struct.mmp_path_info, ptr %call7.i.i.i, i32 0, i32 8
  %73 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx, ptr %plat_data.i, align 8
  %call8.i = tail call ptr @mmp_register_path(ptr noundef nonnull %call7.i.i.i) #7
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %path_init.exit.thread192, label %if.end11.i

path_init.exit.thread192:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %failed_path_init

if.end11.i:                                       ; preds = %if.end.i
  %path12.i = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.0200, i32 2
  %74 = ptrtoint ptr %path12.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call8.i, ptr %path12.i, align 4
  %path_config.i = getelementptr %struct.mmp_mach_path_config, ptr %53, i32 %i.0200, i32 3
  %75 = ptrtoint ptr %path_config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %path_config.i, align 4
  %path_config13.i = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.0200, i32 3
  %77 = ptrtoint ptr %path_config13.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %path_config13.i, align 4
  %link_config.i = getelementptr %struct.mmp_mach_path_config, ptr %53, i32 %i.0200, i32 4
  %78 = ptrtoint ptr %link_config.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_config.i, align 4
  %link_config14.i = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.0200, i32 4
  %80 = ptrtoint ptr %link_config14.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %link_config14.i, align 4
  %dsi_rbswap.i = getelementptr %struct.mmp_mach_path_config, ptr %53, i32 %i.0200, i32 5
  %81 = ptrtoint ptr %dsi_rbswap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dsi_rbswap.i, align 4
  %dsi_rbswap15.i = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.0200, i32 5
  %83 = ptrtoint ptr %dsi_rbswap15.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %dsi_rbswap15.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 2
  %84 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id.i.i.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %85, label %do.end.i.i.i [
    i32 0, label %if.then.i.i.i
    i32 1, label %if.then3.i.i.i
    i32 2, label %if.then8.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 6
  %87 = ptrtoint ptr %plat_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %plat_data.i.i.i.i.i.i, align 4
  %ctrl.i.i.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %ctrl.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctrl.i.i.i.i.i, align 4
  %reg_base.i.i.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %reg_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %92, i32 192
  br label %path_regs.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i26.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 6
  %93 = ptrtoint ptr %plat_data.i.i.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %plat_data.i.i.i26.i.i.i, align 4
  %ctrl.i.i27.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %ctrl.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctrl.i.i27.i.i.i, align 4
  %reg_base.i28.i.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %reg_base.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_base.i28.i.i.i, align 4
  br label %path_regs.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i29.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 6
  %99 = ptrtoint ptr %plat_data.i.i.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %plat_data.i.i.i29.i.i.i, align 4
  %ctrl.i.i30.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %ctrl.i.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ctrl.i.i30.i.i.i, align 4
  %reg_base.i31.i.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %reg_base.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_base.i31.i.i.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %104, i32 512
  br label %path_regs.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 1
  %105 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.39, i32 noundef %85) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/mmp/hw/mmp_ctrl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1448, 0\0A.popsection", ""() #7, !srcloc !98
  unreachable

path_regs.exit.i.i:                               ; preds = %if.then8.i.i.i, %if.then3.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ %98, %if.then3.i.i.i ], [ %add.ptr10.i.i.i, %if.then8.i.i.i ]
  %plat_data.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 6
  %107 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %plat_data.i.i.i, align 4
  %path_config2.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %path_config2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %path_config2.i.i, align 4
  %output_type.i.i = getelementptr inbounds %struct.mmp_path, ptr %call8.i, i32 0, i32 4
  %111 = ptrtoint ptr %output_type.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %output_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i.i = icmp eq i32 %112, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %path_regs.exit.i.i.for.inc_crit_edge

path_regs.exit.i.i.for.inc_crit_edge:             ; preds = %path_regs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i.i:                                      ; preds = %path_regs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl.i.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %108, i32 0, i32 1
  %113 = ptrtoint ptr %ctrl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctrl.i.i.i.i, align 4
  %reg_base.i.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %116, i32 444
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !99
  %118 = and i32 %117, -1056964609
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #7
  %or.i.i = or i32 %119, %110
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %121 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i113.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %ctrl.i.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctrl.i.i113.i.i, align 4
  %reg_base.i114.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %reg_base.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg_base.i114.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %126, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %120) #7, !srcloc !100
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %path_regs.exit.i.i.for.inc_crit_edge
  %127 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i116.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %ctrl.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ctrl.i.i116.i.i, align 4
  %reg_base.i117.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %reg_base.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_base.i117.i.i, align 4
  %133 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp10.i.i = icmp eq i32 %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp12.i.i = icmp eq i32 %134, 1
  %cond.i.i = select i1 %cmp12.i.i, i32 156, i32 492
  %cond13.i.i = select i1 %cmp10.i.i, i32 424, i32 %cond.i.i
  %add.ptr14.i.i = getelementptr i8, ptr %132, i32 %cond13.i.i
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #7, !srcloc !99
  %136 = and i32 %135, -129
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #7
  %or18.i.i = or i32 %137, %110
  %138 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i) #7
  %139 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i119.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %ctrl.i.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ctrl.i.i119.i.i, align 4
  %reg_base.i120.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %reg_base.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_base.i120.i.i, align 4
  %145 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp21.i.i = icmp eq i32 %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp25.i.i = icmp eq i32 %146, 1
  %cond26.i.i = select i1 %cmp25.i.i, i32 156, i32 492
  %cond28.i.i = select i1 %cmp21.i.i, i32 424, i32 %cond26.i.i
  %add.ptr29.i.i = getelementptr i8, ptr %144, i32 %cond28.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 %138) #7, !srcloc !100
  %147 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i122.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %ctrl.i.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ctrl.i.i122.i.i, align 4
  %reg_base.i123.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %reg_base.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_base.i123.i.i, align 4
  %153 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i.i = icmp eq i32 %154, 0
  %and35.i.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  %cond37.i.i = select i1 %tobool36.not.i.i, i32 732, i32 132
  %cond40.i.i = select i1 %tobool.not.i.i, i32 404, i32 %cond37.i.i
  %add.ptr41.i.i = getelementptr i8, ptr %152, i32 %cond40.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i, i32 -2113981912) #7, !srcloc !100
  %blank_color.i.i = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i.i.i, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %blank_color.i.i, i32 0) #7, !srcloc !100
  %g_1.i.i = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i.i.i, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_1.i.i, i32 0) #7, !srcloc !100
  %g_start.i.i = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i.i.i, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_start.i.i, i32 0) #7, !srcloc !100
  %155 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i125.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %ctrl.i.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ctrl.i.i125.i.i, align 4
  %reg_base.i126.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %reg_base.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg_base.i126.i.i, align 4
  %161 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool45.not.i.i = icmp eq i32 %162, 0
  %and48.i.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  %cond50.i.i = select i1 %tobool49.not.i.i, i32 712, i32 128
  %cond53.i.i = select i1 %tobool45.not.i.i, i32 400, i32 %cond50.i.i
  %add.ptr54.i.i = getelementptr i8, ptr %160, i32 %cond53.i.i
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i.i) #7, !srcloc !99
  %164 = or i32 %163, 1077936136
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #7
  %166 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp59.i.i = icmp eq i32 %167, 1
  %and61.i.i = and i32 %165, -134217729
  %tmp.0.i.i = select i1 %cmp59.i.i, i32 %and61.i.i, i32 %165
  %168 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i128.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %ctrl.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctrl.i.i128.i.i, align 4
  %reg_base.i129.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %reg_base.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reg_base.i129.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool65.not.i.i = icmp eq i32 %167, 0
  %and68.i.i = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  %cond70.i.i = select i1 %tobool69.not.i.i, i32 712, i32 128
  %cond73.i.i = select i1 %tobool65.not.i.i, i32 400, i32 %cond70.i.i
  %174 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i.i) #7
  %add.ptr74.i.i = getelementptr i8, ptr %173, i32 %cond73.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i, i32 %174) #7, !srcloc !100
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %inc = add nuw nsw i32 %i.0200, 1
  %175 = ptrtoint ptr %path_num24 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %path_num24, align 4
  %cmp79 = icmp slt i32 %inc, %176
  br i1 %cmp79, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end75.for.end_crit_edge
  %call87 = tail call i32 @lcd_spi_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %for.end.failed_path_init_crit_edge, label %do.end93

for.end.failed_path_init_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_path_init

do.end93:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %178, ptr noundef nonnull @.str.24) #10
  br label %cleanup

failed_path_init:                                 ; preds = %for.end.failed_path_init_crit_edge, %path_init.exit.thread192, %for.body.failed_path_init_crit_edge
  %ret.0 = phi i32 [ %call87, %for.end.failed_path_init_crit_edge ], [ -22, %path_init.exit.thread192 ], [ -22, %for.body.failed_path_init_crit_edge ]
  %179 = ptrtoint ptr %path_num24 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %path_num24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp97201 = icmp sgt i32 %180, 0
  br i1 %cmp97201, label %failed_path_init.for.body98_crit_edge, label %failed_path_init.for.end103_crit_edge

failed_path_init.for.end103_crit_edge:            ; preds = %failed_path_init
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end103

failed_path_init.for.body98_crit_edge:            ; preds = %failed_path_init
  br label %for.body98

for.body98:                                       ; preds = %path_deinit.exit.for.body98_crit_edge, %failed_path_init.for.body98_crit_edge
  %i.1202 = phi i32 [ %inc102, %path_deinit.exit.for.body98_crit_edge ], [ 0, %failed_path_init.for.body98_crit_edge ]
  %arrayidx100 = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.1202
  %tobool.not.i188 = icmp eq ptr %arrayidx100, null
  br i1 %tobool.not.i188, label %for.body98.path_deinit.exit_crit_edge, label %if.end.i189

for.body98.path_deinit.exit_crit_edge:            ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %path_deinit.exit

if.end.i189:                                      ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #9
  %path.i = getelementptr %struct.mmphw_ctrl, ptr %call.i, i32 0, i32 9, i32 %i.1202, i32 2
  %181 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %path.i, align 4
  tail call void @mmp_unregister_path(ptr noundef %182) #7
  br label %path_deinit.exit

path_deinit.exit:                                 ; preds = %if.end.i189, %for.body98.path_deinit.exit_crit_edge
  %inc102 = add nuw nsw i32 %i.1202, 1
  %183 = ptrtoint ptr %path_num24 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %path_num24, align 4
  %cmp97 = icmp slt i32 %inc102, %184
  br i1 %cmp97, label %path_deinit.exit.for.body98_crit_edge, label %path_deinit.exit.for.end103_crit_edge

path_deinit.exit.for.end103_crit_edge:            ; preds = %path_deinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end103

path_deinit.exit.for.body98_crit_edge:            ; preds = %path_deinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body98

for.end103:                                       ; preds = %path_deinit.exit.for.end103_crit_edge, %failed_path_init.for.end103_crit_edge
  %185 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %186) #7
  tail call void @clk_unprepare(ptr noundef %186) #7
  br label %do.end107

do.end107:                                        ; preds = %for.end103, %do.end72, %do.end61, %do.end51, %do.end39, %if.end14.do.end107_crit_edge, %do.end12, %if.end.do.end107_crit_edge, %do.end
  %ret.1 = phi i32 [ -2, %do.end ], [ -22, %do.end12 ], [ -12, %do.end51 ], [ -6, %do.end61 ], [ -2, %do.end72 ], [ %ret.0, %for.end103 ], [ -22, %do.end39 ], [ -2, %if.end.do.end107_crit_edge ], [ -12, %if.end14.do.end107_crit_edge ]
  %dev108 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.28) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %do.end93
  %retval.0 = phi i32 [ %ret.1, %do.end107 ], [ 0, %do.end93 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.mmphw_ctrl, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 452
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 448
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !99
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %isr.0 = phi i32 [ %3, %entry ], [ %17, %do.cond.do.body_crit_edge ]
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 452
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !99
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and = and i32 %10, %isr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.cond_crit_edge, label %if.then

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %isr.0, -1
  %11 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #7, !srcloc !100
  br label %do.cond

do.cond:                                          ; preds = %if.then, %do.body.do.cond_crit_edge
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 452
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !99
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = and i32 %16, %6
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ctrl_set_default(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.mmphw_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 476
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %3 = or i32 %2, -251723776
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #7, !srcloc !100
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 448
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !99
  %9 = or i32 %8, 16761342
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #7, !srcloc !100
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lcd_spi_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @path_set_mode(ptr noundef %path, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 2
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %do.end.i [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
    i32 2, label %if.then8.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 6
  %3 = ptrtoint ptr %plat_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_data.i.i.i.i, align 4
  %ctrl.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl.i.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 192
  br label %path_regs.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i26.i = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 6
  %9 = ptrtoint ptr %plat_data.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat_data.i.i.i26.i, align 4
  %ctrl.i.i27.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ctrl.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl.i.i27.i, align 4
  %reg_base.i28.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %reg_base.i28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i28.i, align 4
  br label %path_regs.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i29.i = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 6
  %15 = ptrtoint ptr %plat_data.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %plat_data.i.i.i29.i, align 4
  %ctrl.i.i30.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ctrl.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl.i.i30.i, align 4
  %reg_base.i31.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %reg_base.i31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i31.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %20, i32 512
  br label %path_regs.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.39, i32 noundef %1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/mmp/hw/mmp_ctrl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1448, 0\0A.popsection", ""() #7, !srcloc !98
  unreachable

path_regs.exit:                                   ; preds = %if.then8.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %14, %if.then3.i ], [ %add.ptr10.i, %if.then8.i ]
  %plat_data.i = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 6
  %23 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %plat_data.i, align 4
  %link_config2 = getelementptr inbounds %struct.mmphw_path_plat, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %link_config2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_config2, align 4
  %mode5 = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 7
  %27 = call ptr @memcpy(ptr %mode5, ptr %mode, i32 60)
  %access_ok = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %access_ok, i32 noundef 0) #7
  %28 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl.i.i, align 4
  %reg_base.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool8.not, i32 728, i32 148
  %cond9 = select i1 %tobool.not, i32 440, i32 %cond
  %add.ptr = getelementptr i8, ptr %33, i32 %cond9
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %vsync_invert = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 11
  %37 = ptrtoint ptr %vsync_invert to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vsync_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not = icmp eq i32 %38, 0
  %cond14 = select i1 %tobool13.not, i32 8, i32 0
  %hsync_invert = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 10
  %39 = ptrtoint ptr %hsync_invert to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hsync_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool15.not = icmp eq i32 %40, 0
  %cond16 = select i1 %tobool15.not, i32 4, i32 0
  %and18 = and i32 %26, -268435456
  %or17 = or i32 %and18, %cond14
  %or19 = or i32 %or17, %cond16
  %or20 = or i32 %or19, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %42 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i.i199 = getelementptr inbounds %struct.mmphw_path_plat, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ctrl.i.i199 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl.i.i199, align 4
  %reg_base.i200 = getelementptr inbounds %struct.mmphw_ctrl, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %reg_base.i200 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i200, align 4
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool23.not = icmp eq i32 %49, 0
  %and26 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, i32 728, i32 148
  %cond31 = select i1 %tobool23.not, i32 440, i32 %cond28
  %add.ptr32 = getelementptr i8, ptr %47, i32 %cond31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %41) #7, !srcloc !100
  %50 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i.i202 = getelementptr inbounds %struct.mmphw_path_plat, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ctrl.i.i202 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl.i.i202, align 4
  %reg_base.i203 = getelementptr inbounds %struct.mmphw_ctrl, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %reg_base.i203 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base.i203, align 4
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool36.not = icmp eq i32 %57, 0
  %and39 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, i32 736, i32 148
  %cond44 = select i1 %tobool36.not, i32 476, i32 %cond41
  %add.ptr45 = getelementptr i8, ptr %55, i32 %cond44
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !99
  %59 = and i32 %58, -16
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %and49 = and i32 %26, 251658240
  %or50 = or i32 %60, %and49
  %61 = tail call i32 @llvm.bswap.i32(i32 %or50)
  %62 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i.i205 = getelementptr inbounds %struct.mmphw_path_plat, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %ctrl.i.i205 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl.i.i205, align 4
  %reg_base.i206 = getelementptr inbounds %struct.mmphw_ctrl, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %reg_base.i206 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base.i206, align 4
  %68 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool53.not = icmp eq i32 %69, 0
  %and56 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond58 = select i1 %tobool57.not, i32 736, i32 148
  %cond61 = select i1 %tobool53.not, i32 476, i32 %cond58
  %add.ptr62 = getelementptr i8, ptr %67, i32 %cond61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %61) #7, !srcloc !100
  %yres = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 3
  %70 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yres, align 4
  %shl = shl i32 %71, 16
  %xres = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 2
  %72 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xres, align 4
  %or63 = or i32 %shl, %73
  %74 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %screen_active = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %screen_active, i32 %74) #7, !srcloc !100
  %left_margin = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 4
  %75 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %left_margin, align 4
  %shl64 = shl i32 %76, 16
  %right_margin = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 5
  %77 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %right_margin, align 4
  %or65 = or i32 %shl64, %78
  %79 = tail call i32 @llvm.bswap.i32(i32 %or65)
  %screen_h_porch = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %screen_h_porch, i32 %79) #7, !srcloc !100
  %upper_margin = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 6
  %80 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %upper_margin, align 4
  %shl66 = shl i32 %81, 16
  %lower_margin = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 7
  %82 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lower_margin, align 4
  %or67 = or i32 %shl66, %83
  %84 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %screen_v_porch = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %screen_v_porch, i32 %84) #7, !srcloc !100
  %85 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %xres, align 4
  %87 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %left_margin, align 4
  %add = add i32 %88, %86
  %89 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %right_margin, align 4
  %add71 = add i32 %add, %90
  %hsync_len = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 8
  %91 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hsync_len, align 4
  %add72 = add i32 %add71, %92
  %93 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %yres, align 4
  %95 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %upper_margin, align 4
  %add75 = add i32 %96, %94
  %97 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lower_margin, align 4
  %add77 = add i32 %add75, %98
  %vsync_len = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 9
  %99 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vsync_len, align 4
  %add78 = add i32 %add77, %100
  %shl79 = shl i32 %add78, 16
  %or80 = or i32 %shl79, %add72
  %101 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %screen_size = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %screen_size, i32 %101) #7, !srcloc !100
  %output_type = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 4
  %102 = ptrtoint ptr %output_type to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %output_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp = icmp eq i32 %103, 1
  br i1 %cmp, label %path_regs.exit.if.end_crit_edge, label %if.else

path_regs.exit.if.end_crit_edge:                  ; preds = %path_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %path_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %xres, align 4
  %106 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %right_margin, align 4
  %add83 = add i32 %107, %105
  %shl84 = shl i32 %add83, 16
  %or88 = or i32 %shl84, %add83
  br label %if.end

if.end:                                           ; preds = %if.else, %path_regs.exit.if.end_crit_edge
  %vsync_ctrl.0 = phi i32 [ %or88, %if.else ], [ 20119859, %path_regs.exit.if.end_crit_edge ]
  %108 = tail call i32 @llvm.bswap.i32(i32 %vsync_ctrl.0)
  %vsync_ctrl89 = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %vsync_ctrl89, i32 %108) #7, !srcloc !100
  %109 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctrl.i, align 4
  %clk = getelementptr inbounds %struct.mmphw_ctrl, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %clk, align 4
  %call91 = tail call i32 @clk_get_rate(ptr noundef %114) #7
  %pixclock_freq = getelementptr inbounds %struct.mmp_mode, ptr %mode, i32 0, i32 13
  %115 = ptrtoint ptr %pixclock_freq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pixclock_freq, align 4
  %div = udiv i32 %call91, %116
  %mul = mul i32 %div, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %call91)
  %cmp93 = icmp ult i32 %mul, %call91
  %inc = zext i1 %cmp93 to i32
  %spec.select = add i32 %div, %inc
  %dev = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 1
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %call91, i32 noundef %spec.select, i32 noundef %116) #10
  %119 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i.i208 = getelementptr inbounds %struct.mmphw_path_plat, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %ctrl.i.i208 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctrl.i.i208, align 4
  %reg_base.i209 = getelementptr inbounds %struct.mmphw_ctrl, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %reg_base.i209 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_base.i209, align 4
  %125 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp100 = icmp eq i32 %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp104 = icmp eq i32 %126, 1
  %cond105 = select i1 %cmp104, i32 156, i32 492
  %cond107 = select i1 %cmp100, i32 424, i32 %cond105
  %add.ptr108 = getelementptr i8, ptr %124, i32 %cond107
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #7, !srcloc !99
  %128 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %plat_data.i, align 4
  %ctrl.i.i211 = getelementptr inbounds %struct.mmphw_path_plat, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %ctrl.i.i211 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctrl.i.i211, align 4
  %reg_base.i212 = getelementptr inbounds %struct.mmphw_ctrl, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %reg_base.i212 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_base.i212, align 4
  %134 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp115 = icmp eq i32 %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp119 = icmp eq i32 %135, 1
  %cond120 = select i1 %cmp119, i32 156, i32 492
  %cond122 = select i1 %cmp115, i32 424, i32 %cond120
  %136 = and i32 %127, 16777215
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  %or112 = or i32 %137, %spec.select
  %138 = tail call i32 @llvm.bswap.i32(i32 %or112)
  %add.ptr123 = getelementptr i8, ptr %133, i32 %cond122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %138) #7, !srcloc !100
  tail call void @mutex_unlock(ptr noundef %access_ok) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_register_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @overlay_set_fetch(ptr nocapture noundef writeonly %overlay, i32 noundef %fetch_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dmafetch_id = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 3
  %0 = ptrtoint ptr %dmafetch_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %fetch_id, ptr %dmafetch_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @overlay_set_onoff(ptr noundef %overlay, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %on)
  %cmp = icmp eq i32 %1, %on
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %path.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 2
  %2 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path.i, align 4
  %plat_data.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %plat_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data.i.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl.i.i, align 4
  %dev = getelementptr inbounds %struct.mmphw_ctrl, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.mmp_path, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %switch.selectcmp.i = icmp eq i32 %on, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.35, ptr @.str.36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %switch.selectcmp2.i = icmp eq i32 %on, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.34, ptr %switch.select.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef %11, ptr noundef nonnull %switch.select3.i) #10
  br label %if.end12

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %on, ptr %status, align 4
  %dmafetch_id.i.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 3
  %13 = ptrtoint ptr %dmafetch_id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmafetch_id.i.i, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i = icmp eq i32 %and.i.i, 0
  %cond3.i = select i1 %tobool2.not.i, i32 256, i32 1
  %path4.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 2
  %15 = ptrtoint ptr %path4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %path4.i, align 4
  %access_ok.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %access_ok.i, i32 noundef 0) #7
  %plat_data.i.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %plat_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat_data.i.i.i.i, align 4
  %ctrl.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl.i.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i.i, align 4
  %id.i = getelementptr inbounds %struct.mmp_path, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i = icmp eq i32 %24, 0
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %cond9.i = select i1 %tobool8.not.i, i32 712, i32 128
  %cond10.i = select i1 %tobool6.not.i, i32 400, i32 %cond9.i
  %add.ptr.i = getelementptr i8, ptr %22, i32 %cond10.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool14.not.i = icmp eq i32 %on, 0
  %cond18.i = select i1 %tobool14.not.i, i32 0, i32 %cond3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %plat_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plat_data.i.i.i.i, align 4
  %ctrl.i.i47.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ctrl.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl.i.i47.i, align 4
  %reg_base.i48.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %reg_base.i48.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i48.i, align 4
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool21.not.i = icmp eq i32 %33, 0
  %and24.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, i32 712, i32 128
  %cond29.i = select i1 %tobool21.not.i, i32 400, i32 %cond26.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %neg.i = select i1 %tobool2.not.i, i32 -257, i32 -2
  %and13.i = and i32 %34, %neg.i
  %or.i = or i32 %and13.i, %cond18.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr30.i = getelementptr i8, ptr %31, i32 %cond29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %35) #7, !srcloc !100
  tail call void @mutex_unlock(ptr noundef %access_ok.i) #7
  %36 = ptrtoint ptr %path4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %path4.i, align 4
  %ops = getelementptr inbounds %struct.mmp_path, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %call6 = tail call i32 %39(ptr noundef %37) #7
  %40 = ptrtoint ptr %path4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %path4.i, align 4
  %status8 = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %43)
  %cmp9.not = icmp eq i32 %call6, %43
  br i1 %cmp9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %on)
  %cmp.i = icmp eq i32 %43, %on
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 3
  %46 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %switch.selectcmp.i.i = icmp eq i32 %on, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.35, ptr @.str.36
  %switch.select3.i.i = select i1 %tobool14.not.i, ptr @.str.34, ptr %switch.select.i.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.37, ptr noundef %47, ptr noundef nonnull %switch.select3.i.i) #10
  br label %if.end12

if.end.i:                                         ; preds = %if.then10
  br i1 %tobool14.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %access_ok.i.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %access_ok.i.i, i32 noundef 0) #7
  %plat_data.i.i.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 6
  %48 = ptrtoint ptr %plat_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %plat_data.i.i.i.i.i, align 4
  %ctrl.i.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ctrl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl.i.i.i.i, align 4
  %reg_base.i.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 2
  %54 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp2.i.i = icmp eq i32 %55, 1
  %cond.i.i = select i1 %cmp2.i.i, i32 156, i32 492
  %cond3.i.i = select i1 %cmp.i.i, i32 424, i32 %cond.i.i
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %cond3.i.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !99
  %57 = and i32 %56, -17
  %58 = ptrtoint ptr %plat_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %plat_data.i.i.i.i.i, align 4
  %ctrl.i.i29.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ctrl.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctrl.i.i29.i.i, align 4
  %reg_base.i30.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %reg_base.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_base.i30.i.i, align 4
  %64 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp8.i.i = icmp eq i32 %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp12.i.i = icmp eq i32 %65, 1
  %cond13.i.i = select i1 %cmp12.i.i, i32 156, i32 492
  %cond15.i.i = select i1 %cmp8.i.i, i32 424, i32 %cond13.i.i
  %add.ptr16.i.i = getelementptr i8, ptr %63, i32 %cond15.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %57) #7, !srcloc !100
  tail call void @mutex_unlock(ptr noundef %access_ok.i.i) #7
  %panel.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 5
  %66 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %panel.i, align 4
  %tobool3.not.i = icmp eq ptr %67, null
  br i1 %tobool3.not.i, label %if.then2.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.then2.i.if.end22.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %set_onoff.i = getelementptr inbounds %struct.mmp_panel, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %set_onoff.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_onoff.i, align 4
  %tobool5.not.i = icmp eq ptr %69, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %69(ptr noundef nonnull %67, i32 noundef 1) #7
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i
  %panel11.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 5
  %70 = ptrtoint ptr %panel11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %panel11.i, align 4
  %tobool12.not.i = icmp eq ptr %71, null
  br i1 %tobool12.not.i, label %if.else.i.if.end21.i_crit_edge, label %land.lhs.true13.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true13.i:                                ; preds = %if.else.i
  %set_onoff15.i = getelementptr inbounds %struct.mmp_panel, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %set_onoff15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_onoff15.i, align 4
  %tobool16.not.i = icmp eq ptr %73, null
  br i1 %tobool16.not.i, label %land.lhs.true13.i.if.end21.i_crit_edge, label %if.then17.i

land.lhs.true13.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then17.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %73(ptr noundef nonnull %71, i32 noundef 0) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %land.lhs.true13.i.if.end21.i_crit_edge, %if.else.i.if.end21.i_crit_edge
  %access_ok.i44.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %access_ok.i44.i, i32 noundef 0) #7
  %plat_data.i.i.i.i45.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 6
  %74 = ptrtoint ptr %plat_data.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %plat_data.i.i.i.i45.i, align 4
  %ctrl.i.i.i46.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ctrl.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl.i.i.i46.i, align 4
  %reg_base.i.i47.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %reg_base.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i.i47.i, align 4
  %id.i48.i = getelementptr inbounds %struct.mmp_path, ptr %41, i32 0, i32 2
  %80 = ptrtoint ptr %id.i48.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id.i48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i49.i = icmp eq i32 %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp2.i50.i = icmp eq i32 %81, 1
  %cond.i51.i = select i1 %cmp2.i50.i, i32 156, i32 492
  %cond3.i52.i = select i1 %cmp.i49.i, i32 424, i32 %cond.i51.i
  %add.ptr.i53.i = getelementptr i8, ptr %79, i32 %cond3.i52.i
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #7, !srcloc !99
  %83 = or i32 %82, 16
  %84 = ptrtoint ptr %plat_data.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %plat_data.i.i.i.i45.i, align 4
  %ctrl.i.i29.i54.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %ctrl.i.i29.i54.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl.i.i29.i54.i, align 4
  %reg_base.i30.i55.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %reg_base.i30.i55.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i30.i55.i, align 4
  %90 = ptrtoint ptr %id.i48.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id.i48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp8.i56.i = icmp eq i32 %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp12.i57.i = icmp eq i32 %91, 1
  %cond13.i58.i = select i1 %cmp12.i57.i, i32 156, i32 492
  %cond15.i59.i = select i1 %cmp8.i56.i, i32 424, i32 %cond13.i58.i
  %add.ptr16.i60.i = getelementptr i8, ptr %89, i32 %cond15.i59.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i60.i, i32 %83) #7, !srcloc !100
  tail call void @mutex_unlock(ptr noundef %access_ok.i44.i) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end21.i, %if.then6.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.then2.i.if.end22.i_crit_edge
  %92 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %on, ptr %status8, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end22.i, %do.end.i, %if.end.if.end12_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @overlay_set_win(ptr noundef %overlay, ptr nocapture noundef readonly %win) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %path = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 2
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %id.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %do.end.i [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
    i32 2, label %if.then8.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %plat_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat_data.i.i.i.i, align 4
  %ctrl.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 192
  br label %path_regs.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i26.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %plat_data.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat_data.i.i.i26.i, align 4
  %ctrl.i.i27.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ctrl.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl.i.i27.i, align 4
  %reg_base.i28.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %reg_base.i28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i28.i, align 4
  br label %path_regs.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i29.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %plat_data.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat_data.i.i.i29.i, align 4
  %ctrl.i.i30.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ctrl.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl.i.i30.i, align 4
  %reg_base.i31.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reg_base.i31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i31.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %22, i32 512
  br label %path_regs.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.39, i32 noundef %3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/mmp/hw/mmp_ctrl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1448, 0\0A.popsection", ""() #7, !srcloc !98
  unreachable

path_regs.exit:                                   ; preds = %if.then8.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %16, %if.then3.i ], [ %add.ptr10.i, %if.then8.i ]
  %win1 = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %win1, ptr %win, i32 36)
  %access_ok = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %access_ok, i32 noundef 0) #7
  %dmafetch_id.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 3
  %26 = ptrtoint ptr %dmafetch_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dmafetch_id.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %pitch18 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 11
  %28 = ptrtoint ptr %pitch18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pitch18, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %path_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %v_pitch_yc = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_pitch_yc, i32 %30) #7, !srcloc !100
  %arrayidx4 = getelementptr %struct.mmp_win, ptr %win, i32 0, i32 11, i32 2
  %31 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4, align 4
  %shl = shl i32 %32, 16
  %arrayidx6 = getelementptr %struct.mmp_win, ptr %win, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6, align 4
  %or = or i32 %shl, %34
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %v_pitch_uv = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_pitch_uv, i32 %35) #7, !srcloc !100
  %ysrc = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 1
  %36 = ptrtoint ptr %ysrc to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ysrc, align 2
  %conv = zext i16 %37 to i32
  %shl7 = shl nuw i32 %conv, 16
  %38 = ptrtoint ptr %win to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %win, align 4
  %conv8 = zext i16 %39 to i32
  %or9 = or i32 %shl7, %conv8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %v_size = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_size, i32 %40) #7, !srcloc !100
  %ydst = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 3
  %41 = ptrtoint ptr %ydst to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ydst, align 2
  %conv10 = zext i16 %42 to i32
  %shl11 = shl nuw i32 %conv10, 16
  %xdst = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 2
  %43 = ptrtoint ptr %xdst to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %xdst, align 4
  %conv12 = zext i16 %44 to i32
  %or13 = or i32 %shl11, %conv12
  %45 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %v_size_z = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_size_z, i32 %45) #7, !srcloc !100
  %ypos = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 5
  %46 = ptrtoint ptr %ypos to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ypos, align 2
  %conv14 = zext i16 %47 to i32
  %shl15 = shl nuw i32 %conv14, 16
  %xpos = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 4
  %48 = ptrtoint ptr %xpos to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %xpos, align 4
  %conv16 = zext i16 %49 to i32
  %or17 = or i32 %shl15, %conv16
  %50 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %v_start = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_start, i32 %50) #7, !srcloc !100
  br label %if.end

if.else:                                          ; preds = %path_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %g_pitch = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_pitch, i32 %30) #7, !srcloc !100
  %ysrc20 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 1
  %51 = ptrtoint ptr %ysrc20 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ysrc20, align 2
  %conv21 = zext i16 %52 to i32
  %shl22 = shl nuw i32 %conv21, 16
  %53 = ptrtoint ptr %win to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %win, align 4
  %conv24 = zext i16 %54 to i32
  %or25 = or i32 %shl22, %conv24
  %55 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %g_size = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_size, i32 %55) #7, !srcloc !100
  %ydst26 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 3
  %56 = ptrtoint ptr %ydst26 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ydst26, align 2
  %conv27 = zext i16 %57 to i32
  %shl28 = shl nuw i32 %conv27, 16
  %xdst29 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 2
  %58 = ptrtoint ptr %xdst29 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %xdst29, align 4
  %conv30 = zext i16 %59 to i32
  %or31 = or i32 %shl28, %conv30
  %60 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %g_size_z = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_size_z, i32 %60) #7, !srcloc !100
  %ypos32 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 5
  %61 = ptrtoint ptr %ypos32 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ypos32, align 2
  %conv33 = zext i16 %62 to i32
  %shl34 = shl nuw i32 %conv33, 16
  %xpos35 = getelementptr inbounds %struct.mmp_win, ptr %win, i32 0, i32 4
  %63 = ptrtoint ptr %xpos35 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %xpos35, align 4
  %conv36 = zext i16 %64 to i32
  %or37 = or i32 %shl34, %conv36
  %65 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %g_start = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_start, i32 %65) #7, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %66 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %path, align 4
  %plat_data.i.i.i.i68 = getelementptr inbounds %struct.mmp_path, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %plat_data.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %plat_data.i.i.i.i68, align 4
  %ctrl.i.i.i69 = getelementptr inbounds %struct.mmphw_path_plat, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ctrl.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl.i.i.i69, align 4
  %reg_base.i.i70 = getelementptr inbounds %struct.mmphw_ctrl, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %reg_base.i.i70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i.i70, align 4
  %id.i71 = getelementptr inbounds %struct.mmp_path, ptr %67, i32 0, i32 2
  %74 = ptrtoint ptr %id.i71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  %and.i72 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool3.not.i = icmp eq i32 %and.i72, 0
  %cond.i = select i1 %tobool3.not.i, i32 712, i32 128
  %cond4.i = select i1 %tobool.not.i, i32 400, i32 %cond.i
  %add.ptr.i73 = getelementptr i8, ptr %73, i32 %cond4.i
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !99
  %77 = ptrtoint ptr %dmafetch_id.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dmafetch_id.i, align 4
  %pix_fmt.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 5, i32 10
  %79 = ptrtoint ptr %pix_fmt.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pix_fmt.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %80, label %if.end.sw.epilog.i.i_crit_edge [
    i32 256, label %if.end.sw.bb.i.i_crit_edge
    i32 258, label %if.end.sw.bb.i.i_crit_edge74
    i32 260, label %if.end.sw.bb.i.i_crit_edge75
    i32 262, label %if.end.sw.bb.i.i_crit_edge76
    i32 264, label %if.end.sw.bb.i.i_crit_edge77
    i32 1, label %if.end.sw.bb1.i.i_crit_edge
    i32 4, label %if.end.sw.bb1.i.i_crit_edge78
    i32 6, label %if.end.sw.bb1.i.i_crit_edge79
    i32 2, label %if.end.sw.bb8.i.i_crit_edge
  ]

if.end.sw.bb8.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

if.end.sw.bb1.i.i_crit_edge79:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.end.sw.bb1.i.i_crit_edge78:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.end.sw.bb1.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.end.sw.bb.i.i_crit_edge77:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.end.sw.bb.i.i_crit_edge76:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.end.sw.bb.i.i_crit_edge75:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.end.sw.bb.i.i_crit_edge74:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.end.sw.bb.i.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.end.sw.epilog.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.sw.bb.i.i_crit_edge, %if.end.sw.bb.i.i_crit_edge74, %if.end.sw.bb.i.i_crit_edge75, %if.end.sw.bb.i.i_crit_edge76, %if.end.sw.bb.i.i_crit_edge77
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end.sw.bb1.i.i_crit_edge, %if.end.sw.bb1.i.i_crit_edge78, %if.end.sw.bb1.i.i_crit_edge79
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i, %if.end.sw.epilog.i.i_crit_edge
  %tobool13.not.i.i = phi i32 [ 0, %if.end.sw.epilog.i.i_crit_edge ], [ 0, %sw.bb1.i.i ], [ 1, %sw.bb.i.i ]
  %tobool19.not.i.i = phi i32 [ 0, %if.end.sw.epilog.i.i_crit_edge ], [ 1, %sw.bb1.i.i ], [ 0, %sw.bb.i.i ]
  %82 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %80, label %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge [
    i32 6, label %sw.epilog.i.i.sw.bb10.i.i_crit_edge
    i32 5, label %sw.epilog.i.i.sw.bb10.i.i_crit_edge80
    i32 258, label %sw.epilog.i.i.sw.bb4.i.i_crit_edge
    i32 259, label %sw.epilog.i.i.sw.bb4.i.i_crit_edge81
    i32 260, label %sw.epilog.i.i.sw.bb5.i.i_crit_edge
    i32 261, label %sw.epilog.i.i.sw.bb5.i.i_crit_edge82
    i32 262, label %sw.epilog.i.i.sw.bb6.i.i_crit_edge
    i32 263, label %sw.epilog.i.i.sw.bb6.i.i_crit_edge83
    i32 264, label %sw.epilog.i.i.sw.bb7.i.i_crit_edge
    i32 265, label %sw.epilog.i.i.sw.bb7.i.i_crit_edge84
    i32 0, label %sw.epilog.i.i.sw.bb8.i.i_crit_edge
    i32 1, label %sw.epilog.i.i.sw.bb8.i.i_crit_edge85
    i32 2, label %sw.epilog.i.i.sw.bb8.i.i_crit_edge86
    i32 3, label %sw.epilog.i.i.sw.bb9.i.i_crit_edge
    i32 4, label %sw.epilog.i.i.sw.bb9.i.i_crit_edge87
  ]

sw.epilog.i.i.sw.bb9.i.i_crit_edge87:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i.i

sw.epilog.i.i.sw.bb9.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i.i

sw.epilog.i.i.sw.bb8.i.i_crit_edge86:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

sw.epilog.i.i.sw.bb8.i.i_crit_edge85:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

sw.epilog.i.i.sw.bb8.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

sw.epilog.i.i.sw.bb7.i.i_crit_edge84:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i.i

sw.epilog.i.i.sw.bb7.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i.i

sw.epilog.i.i.sw.bb6.i.i_crit_edge83:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i.i

sw.epilog.i.i.sw.bb6.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i.i

sw.epilog.i.i.sw.bb5.i.i_crit_edge82:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i.i

sw.epilog.i.i.sw.bb5.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i.i

sw.epilog.i.i.sw.bb4.i.i_crit_edge81:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i.i

sw.epilog.i.i.sw.bb4.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i.i

sw.epilog.i.i.sw.bb10.i.i_crit_edge80:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10.i.i

sw.epilog.i.i.sw.bb10.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10.i.i

sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge:    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmafetch_set_fmt.exit

sw.bb4.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb4.i.i_crit_edge, %sw.epilog.i.i.sw.bb4.i.i_crit_edge81
  br label %dmafetch_set_fmt.exit

sw.bb5.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb5.i.i_crit_edge, %sw.epilog.i.i.sw.bb5.i.i_crit_edge82
  br label %dmafetch_set_fmt.exit

sw.bb6.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb6.i.i_crit_edge, %sw.epilog.i.i.sw.bb6.i.i_crit_edge83
  br label %dmafetch_set_fmt.exit

sw.bb7.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb7.i.i_crit_edge, %sw.epilog.i.i.sw.bb7.i.i_crit_edge84
  br label %dmafetch_set_fmt.exit

sw.bb8.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb8.i.i_crit_edge, %sw.epilog.i.i.sw.bb8.i.i_crit_edge85, %sw.epilog.i.i.sw.bb8.i.i_crit_edge86, %if.end.sw.bb8.i.i_crit_edge
  %tobool25.not49.i.i = phi i32 [ 0, %sw.epilog.i.i.sw.bb8.i.i_crit_edge ], [ 0, %sw.epilog.i.i.sw.bb8.i.i_crit_edge85 ], [ 0, %sw.epilog.i.i.sw.bb8.i.i_crit_edge86 ], [ 1, %if.end.sw.bb8.i.i_crit_edge ]
  %tobool19.not47.i.i = phi i32 [ %tobool19.not.i.i, %sw.epilog.i.i.sw.bb8.i.i_crit_edge ], [ %tobool19.not.i.i, %sw.epilog.i.i.sw.bb8.i.i_crit_edge85 ], [ %tobool19.not.i.i, %sw.epilog.i.i.sw.bb8.i.i_crit_edge86 ], [ 0, %if.end.sw.bb8.i.i_crit_edge ]
  %tobool13.not45.i.i = phi i32 [ %tobool13.not.i.i, %sw.epilog.i.i.sw.bb8.i.i_crit_edge ], [ %tobool13.not.i.i, %sw.epilog.i.i.sw.bb8.i.i_crit_edge85 ], [ %tobool13.not.i.i, %sw.epilog.i.i.sw.bb8.i.i_crit_edge86 ], [ 0, %if.end.sw.bb8.i.i_crit_edge ]
  br label %dmafetch_set_fmt.exit

sw.bb9.i.i:                                       ; preds = %sw.epilog.i.i.sw.bb9.i.i_crit_edge, %sw.epilog.i.i.sw.bb9.i.i_crit_edge87
  br label %dmafetch_set_fmt.exit

sw.bb10.i.i:                                      ; preds = %sw.epilog.i.i.sw.bb10.i.i_crit_edge, %sw.epilog.i.i.sw.bb10.i.i_crit_edge80
  br label %dmafetch_set_fmt.exit

dmafetch_set_fmt.exit:                            ; preds = %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge
  %tobool25.not50.i.i = phi i32 [ 0, %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge ], [ 0, %sw.bb10.i.i ], [ 0, %sw.bb9.i.i ], [ %tobool25.not49.i.i, %sw.bb8.i.i ], [ 0, %sw.bb7.i.i ], [ 0, %sw.bb6.i.i ], [ 0, %sw.bb5.i.i ], [ 0, %sw.bb4.i.i ]
  %tobool19.not48.i.i = phi i32 [ %tobool19.not.i.i, %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge ], [ %tobool19.not.i.i, %sw.bb10.i.i ], [ %tobool19.not.i.i, %sw.bb9.i.i ], [ %tobool19.not47.i.i, %sw.bb8.i.i ], [ %tobool19.not.i.i, %sw.bb7.i.i ], [ %tobool19.not.i.i, %sw.bb6.i.i ], [ %tobool19.not.i.i, %sw.bb5.i.i ], [ %tobool19.not.i.i, %sw.bb4.i.i ]
  %tobool13.not46.i.i = phi i32 [ %tobool13.not.i.i, %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge ], [ %tobool13.not.i.i, %sw.bb10.i.i ], [ %tobool13.not.i.i, %sw.bb9.i.i ], [ %tobool13.not45.i.i, %sw.bb8.i.i ], [ %tobool13.not.i.i, %sw.bb7.i.i ], [ %tobool13.not.i.i, %sw.bb6.i.i ], [ %tobool13.not.i.i, %sw.bb5.i.i ], [ %tobool13.not.i.i, %sw.bb4.i.i ]
  %tobool31.not.i.i = phi i32 [ 0, %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge ], [ 1, %sw.bb10.i.i ], [ 1, %sw.bb9.i.i ], [ 1, %sw.bb8.i.i ], [ 0, %sw.bb7.i.i ], [ 0, %sw.bb6.i.i ], [ 0, %sw.bb5.i.i ], [ 0, %sw.bb4.i.i ]
  %val.0.i.i = phi i32 [ 0, %sw.epilog.i.i.dmafetch_set_fmt.exit_crit_edge ], [ 7, %sw.bb10.i.i ], [ 6, %sw.bb9.i.i ], [ 5, %sw.bb8.i.i ], [ 4, %sw.bb7.i.i ], [ 3, %sw.bb6.i.i ], [ 2, %sw.bb5.i.i ], [ 1, %sw.bb4.i.i ]
  %and.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 16, i32 20
  %shl.i.i = shl nuw nsw i32 %val.0.i.i, %cond.i.i
  %cond16.i.i = select i1 %tobool.not.i.i, i32 12, i32 4
  %shl17.i.i = shl nuw nsw i32 %tobool13.not46.i.i, %cond16.i.i
  %cond22.i.i = select i1 %tobool.not.i.i, i32 11, i32 3
  %shl23.i.i = shl nuw nsw i32 %tobool19.not48.i.i, %cond22.i.i
  %cond28.i.i = select i1 %tobool.not.i.i, i32 10, i32 2
  %shl29.i.i = shl nuw nsw i32 %tobool25.not50.i.i, %cond28.i.i
  %cond34.i.i = select i1 %tobool.not.i.i, i32 9, i32 1
  %shl35.i.i = shl nuw nsw i32 %tobool31.not.i.i, %cond34.i.i
  %83 = ptrtoint ptr %plat_data.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %plat_data.i.i.i.i68, align 4
  %ctrl.i.i69.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %ctrl.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctrl.i.i69.i, align 4
  %reg_base.i70.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %reg_base.i70.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_base.i70.i, align 4
  %89 = ptrtoint ptr %id.i71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool35.not.i = icmp eq i32 %90, 0
  %and38.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond40.i = select i1 %tobool39.not.i, i32 712, i32 128
  %cond43.i = select i1 %tobool35.not.i, i32 400, i32 %cond40.i
  %91 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  %neg.i = select i1 %tobool.not.i.i, i32 -269426177, i32 -284164127
  %and30.i = and i32 %neg.i, %91
  %or18.i.i = or i32 %shl29.i.i, %and30.i
  %or24.i.i = or i32 %or18.i.i, %shl23.i.i
  %or30.i.i = or i32 %or24.i.i, %shl17.i.i
  %or36.i.i = or i32 %or30.i.i, %shl35.i.i
  %or32.i = or i32 %or36.i.i, %shl.i.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #7
  %add.ptr44.i = getelementptr i8, ptr %88, i32 %cond43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %92) #7, !srcloc !100
  tail call void @mutex_unlock(ptr noundef %access_ok) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @overlay_set_addr(ptr nocapture noundef %overlay, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %path = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 2
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %id.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %do.end.i [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
    i32 2, label %if.then8.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %plat_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat_data.i.i.i.i, align 4
  %ctrl.i.i.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 192
  br label %path_regs.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i26.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %plat_data.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat_data.i.i.i26.i, align 4
  %ctrl.i.i27.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ctrl.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl.i.i27.i, align 4
  %reg_base.i28.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %reg_base.i28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i28.i, align 4
  br label %path_regs.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_data.i.i.i29.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %plat_data.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat_data.i.i.i29.i, align 4
  %ctrl.i.i30.i = getelementptr inbounds %struct.mmphw_path_plat, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ctrl.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl.i.i30.i, align 4
  %reg_base.i31.i = getelementptr inbounds %struct.mmphw_ctrl, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reg_base.i31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i31.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %22, i32 512
  br label %path_regs.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.mmp_path, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.39, i32 noundef %3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/mmp/hw/mmp_ctrl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1448, 0\0A.popsection", ""() #7, !srcloc !98
  unreachable

path_regs.exit:                                   ; preds = %if.then8.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %16, %if.then3.i ], [ %add.ptr10.i, %if.then8.i ]
  %addr1 = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 24)
  %dmafetch_id.i = getelementptr inbounds %struct.mmp_overlay, ptr %overlay, i32 0, i32 3
  %26 = ptrtoint ptr %dmafetch_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dmafetch_id.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %path_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i, i32 %30) #7, !srcloc !100
  %arrayidx4 = getelementptr [6 x i32], ptr %addr, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %v_u0 = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_u0, i32 %33) #7, !srcloc !100
  %arrayidx6 = getelementptr [6 x i32], ptr %addr, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %v_v0 = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %v_v0, i32 %36) #7, !srcloc !100
  br label %if.end

if.else:                                          ; preds = %path_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %g_0 = getelementptr inbounds %struct.lcd_regs, ptr %retval.0.i, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %g_0, i32 %30) #7, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr1, align 4
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_unregister_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_mmp_ctrl__234_574_mmphw_init6, !1, !"__initcall__kmod_mmp_ctrl__234_574_mmphw_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 574, i32 1}
!2 = !{ptr @__UNIQUE_ID_author235, !3, !"__UNIQUE_ID_author235", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 576, i32 1}
!4 = !{ptr @__UNIQUE_ID_description236, !5, !"__UNIQUE_ID_description236", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 577, i32 1}
!6 = !{ptr @__UNIQUE_ID_file237, !7, !"__UNIQUE_ID_file237", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 578, i32 1}
!8 = !{ptr @__UNIQUE_ID_license238, !7, !"__UNIQUE_ID_license238", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 565, i32 11}
!11 = !{ptr @mmphw_driver, !12, !"mmphw_driver", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 563, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 452, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mmphw_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @mmphw_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 466, i32 3}
!23 = !{ptr @mmphw_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mmphw_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mmphw_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 485, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 490, i32 3}
!30 = !{ptr @mmphw_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mmphw_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 499, i32 3}
!34 = !{ptr @mmphw_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mmphw_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 506, i32 16}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 508, i32 3}
!40 = !{ptr @mmphw_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mmphw_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 517, i32 3}
!44 = !{ptr @mmphw_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mmphw_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 546, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mmphw_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mmphw_probe._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 558, i32 2}
!53 = !{ptr @mmphw_probe._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mmphw_probe._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 402, i32 2}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @path_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @path_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @mmphw_overlay_ops, !61, !"mmphw_overlay_ops", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 316, i32 31}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 219, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @overlay_set_onoff._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @overlay_set_onoff._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/video/mmp_disp.h", i32 127, i32 10}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/video/mmp_disp.h", i32 129, i32 10}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/video/mmp_disp.h", i32 131, i32 10}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 197, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @path_onoff._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @path_onoff._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.h", i32 1447, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @path_regs._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @path_regs._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/fbdev/mmp/hw/mmp_ctrl.c", i32 305, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @path_set_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @path_set_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2154218040, i64 2154218543, i64 2154218077, i64 2154218133, i64 2154218167, i64 2154218191, i64 2154218232, i64 2154218253, i64 2154218281, i64 2154218315}
!99 = !{i64 4629597}
!100 = !{i64 4629179}
!101 = !{i64 2154227633}
