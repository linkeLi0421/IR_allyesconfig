; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/kmb/kmb_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/kmb/kmb_drv.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.kmb_drm_private = type { %struct.drm_device, ptr, ptr, %struct.kmb_clock, %struct.drm_crtc, ptr, ptr, %struct.spinlock, i32, i32, [2 x %struct.disp_cfg], [2 x %struct.layer_status], i32, i32, i32 }
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
%struct.kmb_clock = type { ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.disp_cfg = type { i32, i32, i32 }
%struct.layer_status = type { i8, i32 }
%struct.kmb_dsi = type { %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@__initcall__kmod_kmb_drm__319_631_kmb_platform_driver_init6 = internal global ptr @kmb_platform_driver_init, section ".initcall6.init", align 4
@kmb_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kmb_probe, ptr @kmb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kmb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kmb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kmb_platform_driver_exit = internal global ptr @kmb_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [33 x i8] c"kmb_drm.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description321 = internal constant [43 x i8] c"kmb_drm.description=Keembay Display driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [41 x i8] c"kmb_drm.file=drivers/gpu/drm/kmb/kmb-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [23 x i8] c"kmb_drm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmb-drm\00", [24 x i8] zeroinitializer }, align 32
@kmb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@kmb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @kmb_pm_suspend, ptr @kmb_pm_resume, ptr @kmb_pm_suspend, ptr @kmb_pm_resume, ptr @kmb_pm_suspend, ptr @kmb_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get dsi_in node info from DT\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get dsi node from DT\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get dsi platform device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"probe failed to initialize DSI host bridge\0A\00", [52 x i8] zeroinitializer }, align 32
@kmb_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str, ptr @.str.13, ptr @.str.14, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@kmb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 536, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm] *ERROR* failed to initialize DSI\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kmb_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/kmb/kmb_drv.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_probe._entry_ptr = internal global ptr @kmb_probe._entry, section ".printk_index", align 4
@kmb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 553, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[drm] *ERROR* failed to install IRQ handler\0A\00", [51 x i8] zeroinitializer }, align 32
@kmb_probe._entry_ptr.12 = internal global ptr @kmb_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"KEEMBAY DISPLAY DRIVER\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20210223\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@kmb_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 120, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[drm] *ERROR* failed to map LCD registers\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmb_hw_init\00", [20 x i8] zeroinitializer }, align 32
@kmb_hw_init._entry_ptr = internal global ptr @kmb_hw_init._entry, section ".printk_index", align 4
@kmb_hw_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.7, i32 141, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[drm] *ERROR* irq_lcd not found\00", [32 x i8] zeroinitializer }, align 32
@kmb_hw_init._entry_ptr.20 = internal global ptr @kmb_hw_init._entry.18, section ".printk_index", align 4
@kmb_hw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&kmb->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@kmb_map_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 101, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm] *ERROR* failed to get resource for %s\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kmb_map_mmio\00", [19 x i8] zeroinitializer }, align 32
@kmb_map_mmio._entry_ptr = internal global ptr @kmb_map_mmio._entry, section ".printk_index", align 4
@kmb_map_mmio._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.7, i32 106, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[drm] *ERROR* failed to ioremap %s registers\00", [51 x i8] zeroinitializer }, align 32
@kmb_map_mmio._entry_ptr.26 = internal global ptr @kmb_map_mmio._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_lcd\00", [24 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 48, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm] *ERROR* clk_get() failed clk_lcd\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmb_initialize_clocks\00", [42 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry_ptr = internal global ptr @kmb_initialize_clocks._entry, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_pll0\00", [23 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.7, i32 54, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[drm] *ERROR* clk_get() failed clk_pll0 \00", [55 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry_ptr.33 = internal global ptr @kmb_initialize_clocks._entry.31, section ".printk_index", align 4
@kmb_initialize_clocks._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.7, i32 58, ptr @.str.36, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[drm] system clk = %d Mhz\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry_ptr.37 = internal global ptr @kmb_initialize_clocks._entry.34, section ".printk_index", align 4
@kmb_initialize_clocks._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str.7, i32 66, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[drm] *ERROR* failed to set to clk_lcd to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry_ptr.40 = internal global ptr @kmb_initialize_clocks._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_lcd = %ld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel,keembay-msscam\00", [43 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.7, i32 77, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm] *ERROR* failed to get msscam syscon\00", [54 x i8] zeroinitializer }, align 32
@kmb_initialize_clocks._entry_ptr.45 = internal global ptr @kmb_initialize_clocks._entry.43, section ".printk_index", align 4
@kmb_display_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 34, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[drm] *ERROR* Failed to enable LCD clock: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kmb_display_clk_enable\00", [41 x i8] zeroinitializer }, align 32
@kmb_display_clk_enable._entry_ptr = internal global ptr @kmb_display_clk_enable._entry, section ".printk_index", align 4
@kmb_display_clk_enable._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.7, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] SUCCESS : enabled LCD clocks\0A\00", [58 x i8] zeroinitializer }, align 32
@kmb_display_clk_enable._entry_ptr.50 = internal global ptr @kmb_display_clk_enable._entry.48, section ".printk_index", align 4
@kmb_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmb_setup_mode_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.7, i32 185, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[drm] *ERROR* failed to create crtc\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmb_setup_mode_config\00", [42 x i8] zeroinitializer }, align 32
@kmb_setup_mode_config._entry_ptr = internal global ptr @kmb_setup_mode_config._entry, section ".printk_index", align 4
@kmb_setup_mode_config._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.7, i32 193, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[drm] *ERROR* failed to initialize vblank\0A\00", [53 x i8] zeroinitializer }, align 32
@kmb_setup_mode_config._entry_ptr.55 = internal global ptr @kmb_setup_mode_config._entry.53, section ".printk_index", align 4
@handle_lcd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 312, ptr @.str.36, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[drm] !LAYER0:VL0 DMA UNDERFLOW val = 0x%lx,under_flow=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_lcd_irq\00", [17 x i8] zeroinitializer }, align 32
@handle_lcd_irq._entry_ptr = internal global ptr @handle_lcd_irq._entry, section ".printk_index", align 4
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LAYER0:VL0 DMA OVERFLOW val = 0x%lx\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LAYER0:VL0 DMA CB OVERFLOW val = 0x%lx\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LAYER0:VL0 DMA CR OVERFLOW val = 0x%lx\00", [57 x i8] zeroinitializer }, align 32
@handle_lcd_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.7, i32 346, ptr @.str.36, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[drm] !LAYER1:VL1 DMA UNDERFLOW val = 0x%lx, under_flow=%d\00", [37 x i8] zeroinitializer }, align 32
@handle_lcd_irq._entry_ptr.63 = internal global ptr @handle_lcd_irq._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LAYER1:VL1 DMA OVERFLOW val = 0x%lx\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LAYER1:VL1 DMA CB OVERFLOW val = 0x%lx\00", [57 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LAYER1:VL1 DMA CR OVERFLOW val = 0x%lx\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LAYER2:GL0 DMA UNDERFLOW val = 0x%lx\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LAYER2:GL0 DMA OVERFLOW val = 0x%lx\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LAYER3:GL1 DMA UNDERFLOW val = 0x%lx\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LAYER3:GL1 DMA OVERFLOW val = 0x%lx\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"kmb_platform_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 621, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 625, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"kmb_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 582, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"kmb_pm_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 619, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 496, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 502, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 510, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 521, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"kmb_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 437, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 536, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 553, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 444, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 445, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 435, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 118, i32 42 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 120, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 141, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 150, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 101, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 106, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 46, i32 43 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 48, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 52, i32 44 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 54, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 58, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 65, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 69, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 75, i32 46 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 77, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 34, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 37, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"kmb_mode_config_funcs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 162, i32 43 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 185, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 193, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 310, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 330, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 333, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 336, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 344, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 364, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 367, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 370, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 375, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 378, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 383, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [33 x i8] c"../drivers/gpu/drm/kmb/kmb_drv.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 386, i32 4 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_kmb_platform_driver_exit, ptr @__initcall__kmod_kmb_drm__319_631_kmb_platform_driver_init6, ptr @handle_lcd_irq._entry, ptr @handle_lcd_irq._entry.61, ptr @handle_lcd_irq._entry_ptr, ptr @handle_lcd_irq._entry_ptr.63, ptr @kmb_display_clk_enable._entry, ptr @kmb_display_clk_enable._entry.48, ptr @kmb_display_clk_enable._entry_ptr, ptr @kmb_display_clk_enable._entry_ptr.50, ptr @kmb_hw_init._entry, ptr @kmb_hw_init._entry.18, ptr @kmb_hw_init._entry_ptr, ptr @kmb_hw_init._entry_ptr.20, ptr @kmb_initialize_clocks._entry, ptr @kmb_initialize_clocks._entry.31, ptr @kmb_initialize_clocks._entry.34, ptr @kmb_initialize_clocks._entry.38, ptr @kmb_initialize_clocks._entry.43, ptr @kmb_initialize_clocks._entry_ptr, ptr @kmb_initialize_clocks._entry_ptr.33, ptr @kmb_initialize_clocks._entry_ptr.37, ptr @kmb_initialize_clocks._entry_ptr.40, ptr @kmb_initialize_clocks._entry_ptr.45, ptr @kmb_map_mmio._entry, ptr @kmb_map_mmio._entry.24, ptr @kmb_map_mmio._entry_ptr, ptr @kmb_map_mmio._entry_ptr.26, ptr @kmb_platform_driver_exit, ptr @kmb_probe._entry, ptr @kmb_probe._entry.10, ptr @kmb_probe._entry_ptr, ptr @kmb_probe._entry_ptr.12, ptr @kmb_setup_mode_config._entry, ptr @kmb_setup_mode_config._entry.53, ptr @kmb_setup_mode_config._entry_ptr, ptr @kmb_setup_mode_config._entry_ptr.55, ptr @kmb_platform_driver, ptr @.str, ptr @kmb_of_match, ptr @kmb_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @kmb_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @fops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @kmb_hw_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @kmb_mode_config_funcs, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_hw_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_hw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_map_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_map_mmio._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_initialize_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_initialize_clocks._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_initialize_clocks._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_initialize_clocks._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_initialize_clocks._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_display_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_display_clk_enable._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_setup_mode_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_setup_mode_config._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_lcd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_lcd_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kmb_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kmb_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @kmb_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @get_device(ptr noundef %dev1) #5
  %of_node = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %1, i32 noundef 0, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call2) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %call2) #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call3) #5
  %tobool8.not = icmp eq ptr %call7, null
  tail call void @of_node_put(ptr noundef nonnull %call2) #5
  tail call void @of_node_put(ptr noundef nonnull %call3) #5
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %call7, i32 0, i32 3
  %call12 = tail call ptr @get_device(ptr noundef %dev11) #5
  %call13 = tail call i32 @kmb_dsi_host_bridge_init(ptr noundef %call12) #5
  %2 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %if.then16 [
    i32 -517, label %if.end10.cleanup_crit_edge
    i32 0, label %if.end18
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %call, ptr noundef nonnull @kmb_driver, i32 noundef 3456, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call19, ptr %driver_data.i, align 4
  %call24 = tail call ptr @kmb_dsi_init(ptr noundef nonnull %call7) #5
  %kmb_dsi = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 1
  %5 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call24, ptr %kmb_dsi, align 4
  %cmp.i117 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end, label %if.end32

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %call19, i32 0, i32 2
  %6 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #8
  %8 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kmb_dsi, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %err_free1

if.end32:                                         ; preds = %if.end23
  %dev35 = getelementptr inbounds %struct.kmb_dsi, ptr %call24, i32 0, i32 1
  %11 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev11, ptr %dev35, align 4
  %12 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kmb_dsi, align 4
  %pdev37 = getelementptr inbounds %struct.kmb_dsi, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pdev37 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %pdev37, align 4
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %call19, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 -16
  %call.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull @.str.15) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  br i1 %tobool.not.i.i, label %kmb_map_mmio.exit.thread.i, label %if.end.i.i

kmb_map_mmio.exit.thread.i:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15) #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end32
  %call3.i.i = tail call ptr @devm_ioremap_resource(ptr noundef %18, ptr noundef nonnull %call.i.i) #5
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %kmb_map_mmio.exit.thread10.i, label %if.end.i

kmb_map_mmio.exit.thread10.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.15) #8
  br label %do.end.i

do.end.i:                                         ; preds = %kmb_map_mmio.exit.thread10.i, %kmb_map_mmio.exit.thread.i
  %call3.i.sink.i = phi ptr [ %call3.i.i, %kmb_map_mmio.exit.thread10.i ], [ inttoptr (i32 -12 to ptr), %kmb_map_mmio.exit.thread.i ]
  %lcd_mmio11.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 2
  %21 = ptrtoint ptr %lcd_mmio11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call3.i.sink.i, ptr %lcd_mmio11.i, align 8
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.16) #8
  br label %err_free1

if.end.i:                                         ; preds = %if.end.i.i
  %lcd_mmio.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 2
  %24 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call3.i.i, ptr %lcd_mmio.i, align 8
  %25 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kmb_dsi, align 4
  %call6.i = tail call i32 @kmb_dsi_map_mmio(ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.err_free1_crit_edge

if.end.i.err_free1_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free1

if.end8.i:                                        ; preds = %if.end.i
  %call.i1.i = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.27) #5
  %kmb_clk.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 3
  %27 = ptrtoint ptr %kmb_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i1.i, ptr %kmb_clk.i.i, align 4
  %cmp.i.i2.i = icmp ugt ptr %call.i1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i2.i, label %do.end.i3.i, label %if.end.i4.i

do.end.i3.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.28) #8
  br label %kmb_initialize_clocks.exit.i

if.end.i4.i:                                      ; preds = %if.end8.i
  %call8.i.i = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.30) #5
  %clk_pll0.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %clk_pll0.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %clk_pll0.i.i, align 4
  %cmp.i1.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.i, label %do.end16.i.i, label %if.end22.i.i

do.end16.i.i:                                     ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.32) #8
  br label %kmb_initialize_clocks.exit.i

if.end22.i.i:                                     ; preds = %if.end.i4.i
  %call25.i.i = tail call i32 @clk_get_rate(ptr noundef %call8.i.i) #5
  %div.i.i = udiv i32 %call25.i.i, 1000000
  %sys_clk_mhz.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 9
  %33 = ptrtoint ptr %sys_clk_mhz.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div.i.i, ptr %sys_clk_mhz.i.i, align 8
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.35, i32 noundef %div.i.i) #8
  %36 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kmb_dsi, align 4
  %call32.i.i = tail call i32 @kmb_dsi_clk_init(ptr noundef %37) #5
  %38 = ptrtoint ptr %kmb_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kmb_clk.i.i, align 4
  %call35.i.i = tail call i32 @clk_set_rate(ptr noundef %39, i32 noundef 200000000) #5
  %40 = ptrtoint ptr %kmb_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %kmb_clk.i.i, align 4
  %call38.i.i = tail call i32 @clk_get_rate(ptr noundef %41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call38.i.i)
  %cmp.not.i.i = icmp eq i32 %call38.i.i, 200000000
  br i1 %cmp.not.i.i, label %if.end45.i.i, label %do.end42.i.i

do.end42.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.39, i32 noundef 200000000) #8
  br label %kmb_initialize_clocks.exit.i

if.end45.i.i:                                     ; preds = %if.end22.i.i
  %tobool.not.i5.i = icmp eq ptr %call19, null
  br i1 %tobool.not.i5.i, label %if.end45.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end45.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end45.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %45, %cond.true.i.i ], [ null, %if.end45.i.i.cond.end.i.i_crit_edge ]
  %46 = ptrtoint ptr %kmb_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kmb_clk.i.i, align 4
  %call51.i.i = tail call i32 @clk_get_rate(ptr noundef %47) #5
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i.i, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %call51.i.i) #5
  %48 = ptrtoint ptr %kmb_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %kmb_clk.i.i, align 4
  %call.i.i.i.i = tail call i32 @clk_prepare(ptr noundef %49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %cond.end.i.i.kmb_display_clk_enable.exit.i.i_crit_edge

cond.end.i.i.kmb_display_clk_enable.exit.i.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmb_display_clk_enable.exit.i.i

if.end.i.i.i.i:                                   ; preds = %cond.end.i.i
  %call1.i.i.i.i = tail call i32 @clk_enable(ptr noundef %49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end55.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %49) #5
  br label %kmb_display_clk_enable.exit.i.i

kmb_display_clk_enable.exit.i.i:                  ; preds = %if.then3.i.i.i.i, %cond.end.i.i.kmb_display_clk_enable.exit.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ %call1.i.i.i.i, %if.then3.i.i.i.i ], [ %call.i.i.i.i, %cond.end.i.i.kmb_display_clk_enable.exit.i.i_crit_edge ]
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i.ph.i.i.i) #8
  br label %kmb_initialize_clocks.exit.i

if.end55.i.i:                                     ; preds = %if.end.i.i.i.i
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #8
  %call56.i.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.42) #5
  %cmp.i2.i.i = icmp ugt ptr %call56.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i.i, label %do.end61.i.i, label %if.end64.i.i

do.end61.i.i:                                     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.44) #8
  br label %kmb_initialize_clocks.exit.i

if.end64.i.i:                                     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call56.i.i, i32 noundef 16, i32 noundef 8191, i32 noundef 8191, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i3.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call56.i.i, i32 noundef 20, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %kmb_initialize_clocks.exit.i

kmb_initialize_clocks.exit.i:                     ; preds = %if.end64.i.i, %do.end61.i.i, %kmb_display_clk_enable.exit.i.i, %do.end42.i.i, %do.end16.i.i, %do.end.i3.i
  %call11.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i118 = icmp slt i32 %call11.i, 0
  br i1 %cmp.i118, label %if.then12.i, label %if.end18.i

if.then12.i:                                      ; preds = %kmb_initialize_clocks.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.19) #8
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %57) #5
  br label %err_free1

if.end18.i:                                       ; preds = %kmb_initialize_clocks.exit.i
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node.i.i, align 8
  %call.i6.i = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %59, ptr noundef %61, i32 noundef 0) #5
  %62 = zext i32 %call.i6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call.i6.i, label %if.end18.i.err_free1_crit_edge [
    i32 0, label %if.end18.i.kmb_hw_init.exit.thread122_crit_edge
    i32 -19, label %if.end18.i.kmb_hw_init.exit.thread122_crit_edge125
  ]

if.end18.i.kmb_hw_init.exit.thread122_crit_edge125: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmb_hw_init.exit.thread122

if.end18.i.kmb_hw_init.exit.thread122_crit_edge:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmb_hw_init.exit.thread122

if.end18.i.err_free1_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free1

kmb_hw_init.exit.thread122:                       ; preds = %if.end18.i.kmb_hw_init.exit.thread122_crit_edge, %if.end18.i.kmb_hw_init.exit.thread122_crit_edge125
  %irq_lock.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @kmb_hw_init.__key, i16 noundef signext 3) #5
  %irq_lcd29.i = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 8
  %63 = ptrtoint ptr %irq_lcd29.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call11.i, ptr %irq_lcd29.i, align 4
  %call44 = tail call fastcc i32 @kmb_setup_mode_config(ptr noundef %call19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %kmb_hw_init.exit.thread122.err_free_crit_edge

kmb_hw_init.exit.thread122.err_free_crit_edge:    ; preds = %kmb_hw_init.exit.thread122
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end47:                                         ; preds = %kmb_hw_init.exit.thread122
  %64 = ptrtoint ptr %irq_lcd29.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq_lcd29.i, align 4
  %call49 = tail call fastcc i32 @kmb_irq_install(ptr noundef %call19, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.11) #8
  br label %err_irq

if.end57:                                         ; preds = %if.end47
  tail call void @drm_kms_helper_poll_init(ptr noundef %call19) #5
  %call60 = tail call i32 @drm_dev_register(ptr noundef %call19, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %err_register

if.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_fbdev_generic_setup(ptr noundef %call19, i32 noundef 0) #5
  br label %cleanup

err_register:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call19) #5
  br label %err_irq

err_irq:                                          ; preds = %err_register, %do.end54
  %ret.0 = phi i32 [ %call49, %do.end54 ], [ %call60, %err_register ]
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %69, i1 noundef zeroext true) #5
  br label %err_free

err_free:                                         ; preds = %err_irq, %kmb_hw_init.exit.thread122.err_free_crit_edge
  %ret.1 = phi i32 [ %call44, %kmb_hw_init.exit.thread122.err_free_crit_edge ], [ %ret.0, %err_irq ]
  %crtc = getelementptr inbounds %struct.kmb_drm_private, ptr %call19, i32 0, i32 4
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %call19) #5
  br label %err_free1

err_free1:                                        ; preds = %err_free, %if.end18.i.err_free1_crit_edge, %if.then12.i, %if.end.i.err_free1_crit_edge, %do.end.i, %do.end
  %ret.2 = phi i32 [ %10, %do.end ], [ %ret.1, %err_free ], [ %call6.i, %if.end.i.err_free1_crit_edge ], [ %call11.i, %if.then12.i ], [ -12, %do.end.i ], [ %call.i6.i, %if.end18.i.err_free1_crit_edge ]
  %70 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %driver_data.i, align 4
  %71 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %kmb_dsi, align 4
  tail call void @kmb_dsi_host_unregister(ptr noundef %72) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free1, %if.end63, %if.then21, %if.then16, %if.end10.cleanup_crit_edge, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ %call13, %if.then16 ], [ %3, %if.then21 ], [ %ret.2, %err_free1 ], [ 0, %if.end63 ], [ -22, %if.then9 ], [ -22, %if.then5 ], [ -22, %if.then ], [ %call13, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  %port = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @of_node_put(ptr noundef %3) #5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %port, align 4
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %lcd_mmio.i.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %lcd_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lcd_mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -65536) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %lcd_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lcd_mmio.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 0) #5, !srcloc !158
  %irq_lcd.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %irq_lcd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_lcd.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %12, ptr noundef %1) #5
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  %call.i23 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #5
  %15 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev5, align 4
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #5
  %17 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev5, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %18) #5
  %kmb_clk.i = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %kmb_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kmb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #5
  tail call void @clk_unprepare(ptr noundef %20) #5
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %driver_data.i, align 4
  %kmb_dsi = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kmb_dsi, align 4
  tail call void @kmb_dsi_host_unregister(ptr noundef %23) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmb_dsi_host_bridge_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmb_dsi_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_setup_mode_config(ptr noundef %drm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @drmm_mode_config_init(ptr noundef %drm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_width = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 23
  %0 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 24
  %1 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1920, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 26
  %3 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1080, ptr %max_height, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 91
  %4 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %preferred_depth, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 27
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @kmb_mode_config_funcs, ptr %funcs, align 4
  %call7 = tail call i32 @kmb_setup_crtc(ptr noundef %drm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.51) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %kmb_dsi = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 1
  %8 = ptrtoint ptr %kmb_dsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kmb_dsi, align 4
  %call10 = tail call i32 @kmb_dsi_encoder_init(ptr noundef %drm, ptr noundef %9) #5
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call12 = tail call ptr @of_graph_get_port_by_id(ptr noundef %13, i32 noundef 0) #5
  %port = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %port, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 19
  %15 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_crtc, align 4
  %call14 = tail call i32 @drm_vblank_init(ptr noundef %drm, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.54) #8
  %19 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev11, align 4
  tail call void @__pm_runtime_disable(ptr noundef %20, i1 noundef zeroext true) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_config_reset(ptr noundef %drm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call14, %do.end19 ], [ 0, %if.end22 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_irq_install(ptr noundef %drm, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %lcd_mmio.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -65536) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #5, !srcloc !158
  %driver = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 4
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @kmb_isr, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef %drm) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -107, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmb_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table_vmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

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
declare dso_local i32 @kmb_dsi_map_mmio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmb_dsi_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmb_setup_crtc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmb_dsi_encoder_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_isr(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lcd_mmio.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !159
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %irq_lock.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %irq_lock.i) #5
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end32.i_crit_edge, label %if.then.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 16777216) #5, !srcloc !158
  %arrayidx.i = getelementptr %struct.kmb_drm_private, ptr %arg, i32 0, i32 11, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then3.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.then.i
  %8 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 1116
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %13, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %11) #5, !srcloc !158
  %ctrl6.i = getelementptr %struct.kmb_drm_private, ptr %arg, i32 0, i32 11, i32 0, i32 1
  %14 = ptrtoint ptr %ctrl6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl6.i, align 4
  %16 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lcd_mmio.i.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !159
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %neg.i.i = xor i32 %15, -1
  %and.i5.i = and i32 %19, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i5.i) #5
  %21 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lcd_mmio.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !158
  %23 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lcd_mmio.i.i, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %26 = and i32 %25, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not.i = icmp eq i32 %26, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then3.i.if.end.i_crit_edge

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lcd_mmio.i.i, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %30 = and i32 %29, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lcd_mmio.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !158
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then3.i.if.end.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.kmb_drm_private, ptr %arg, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.1.i, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool2.not.1.i = icmp eq i8 %35, 0
  br i1 %tobool2.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then3.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then3.1.i:                                     ; preds = %for.inc.i
  %36 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i.1.i = getelementptr i8, ptr %37, i32 2140
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %39 = and i32 %38, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i.1.i = getelementptr i8, ptr %41, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.1.i, i32 %39) #5, !srcloc !158
  %ctrl6.1.i = getelementptr %struct.kmb_drm_private, ptr %arg, i32 0, i32 11, i32 1, i32 1
  %42 = ptrtoint ptr %ctrl6.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctrl6.1.i, align 4
  %44 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lcd_mmio.i.i, align 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !159
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %neg.i.1.i = xor i32 %43, -1
  %and.i5.1.i = and i32 %47, %neg.i.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %and.i5.1.i) #5
  %49 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lcd_mmio.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !158
  %51 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lcd_mmio.i.i, align 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %54 = and i32 %53, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool9.not.1.i = icmp eq i32 %54, 0
  br i1 %tobool9.not.1.i, label %if.then10.1.i, label %if.then3.1.i.if.end.1.i_crit_edge

if.then3.1.i.if.end.1.i_crit_edge:                ; preds = %if.then3.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

if.then10.1.i:                                    ; preds = %if.then3.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lcd_mmio.i.i, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %58 = and i32 %57, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lcd_mmio.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !158
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then10.1.i, %if.then3.1.i.if.end.1.i_crit_edge
  %61 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %kmb_under_flow.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 12
  %62 = ptrtoint ptr %kmb_under_flow.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %kmb_under_flow.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool15.not.i = icmp eq i32 %63, 0
  br i1 %tobool15.not.i, label %for.inc.1.i.if.end32.i_crit_edge, label %if.then16.i

for.inc.1.i.if.end32.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then16.i:                                      ; preds = %for.inc.1.i
  %layer_no.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 14
  %64 = ptrtoint ptr %layer_no.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %layer_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp17.i = icmp eq i32 %65, 0
  %cond.i = select i1 %cmp17.i, i32 11268, i32 11292
  %cond20.i = select i1 %cmp17.i, i32 11276, i32 11300
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %67, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #5, !srcloc !158
  %68 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %69, i32 %cond.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %71 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %72, i32 %cond20.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %74 = and i32 %70, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool25.not.i = icmp eq i32 %74, 0
  %75 = and i32 %73, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool26.not.i = icmp eq i32 %75, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %layer_no.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %layer_no.i, align 4
  %mul28.i = shl i32 %77, 10
  %add29.i = add i32 %mul28.i, 1116
  %78 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i16.i = getelementptr i8, ptr %79, i32 %add29.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %81 = and i32 %80, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i18.i = getelementptr i8, ptr %83, i32 %add29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i18.i, i32 %81) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %85, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 16777216) #5, !srcloc !158
  %kmb_flush_done.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 13
  %86 = ptrtoint ptr %kmb_flush_done.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %kmb_flush_done.i, align 8
  %87 = ptrtoint ptr %kmb_under_flow.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %kmb_under_flow.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end.i, %for.inc.1.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %and33.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end36.i_crit_edge, label %if.then35.i

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %89, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 33554432) #5, !srcloc !158
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end36.i_crit_edge
  %and37.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end52.i_crit_edge, label %if.then39.i

if.end36.i.if.end52.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.then39.i:                                      ; preds = %if.end36.i
  %90 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %91, i32 24
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %93 = and i32 %92, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %switch.i = icmp eq i32 %93, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %95, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 67108864) #5
  br i1 %switch.i, label %sw.bb.i, label %if.then39.i.if.end52.i_crit_edge

if.then39.i.if.end52.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

sw.bb.i:                                          ; preds = %if.then39.i
  %kmb_flush_done42.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 13
  %96 = ptrtoint ptr %kmb_flush_done42.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %kmb_flush_done42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool43.not.i = icmp eq i32 %97, 0
  br i1 %tobool43.not.i, label %sw.bb.i.if.end49.i_crit_edge, label %if.then44.i

sw.bb.i.if.end49.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then44.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %layer_no45.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 14
  %98 = ptrtoint ptr %layer_no45.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %layer_no45.i, align 4
  %mul46.i = shl i32 %99, 10
  %add47.i = add i32 %mul46.i, 1116
  %100 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i28.i = getelementptr i8, ptr %101, i32 %add47.i
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %103 = or i32 %102, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i29.i = getelementptr i8, ptr %105, i32 %add47.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i29.i, i32 %103) #5, !srcloc !158
  %106 = ptrtoint ptr %kmb_flush_done42.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %kmb_flush_done42.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %sw.bb.i.if.end49.i_crit_edge
  %crtc.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 4
  %call50.i = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc.i) #5
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end49.i, %if.then39.i.if.end52.i_crit_edge, %if.end36.i.if.end52.i_crit_edge
  %and53.i = and i32 %3, 107472864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end52.i.if.end201.i_crit_edge, label %if.then55.i

if.end52.i.if.end201.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201.i

if.then55.i:                                      ; preds = %if.end52.i
  %107 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i33.i = getelementptr i8, ptr %108, i32 8
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #5, !srcloc !159
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %and58.i = and i32 %110, %and53.i
  %and59.i = and i32 %and58.i, 1344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.then55.i.if.end70.i_crit_edge, label %if.then61.i

if.then55.i.if.end70.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.i

if.then61.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %kmb_under_flow62.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 12
  %111 = ptrtoint ptr %kmb_under_flow62.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %kmb_under_flow62.i, align 4
  %inc63.i = add i32 %112, 1
  store i32 %inc63.i, ptr %kmb_under_flow62.i, align 4
  %dev67.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %113 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev67.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.56, i32 noundef %and58.i, i32 noundef %inc63.i) #8
  %115 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i35.i = getelementptr i8, ptr %116, i32 8
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %118 = and i32 %117, -1074069505
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i37.i = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i37.i, i32 %118) #5, !srcloc !158
  %121 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i39.i = getelementptr i8, ptr %122, i32 12
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %124 = or i32 %123, 1074069504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i41.i = getelementptr i8, ptr %126, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i41.i, i32 %124) #5, !srcloc !158
  %127 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i43.i = getelementptr i8, ptr %128, i32 1116
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %130 = and i32 %129, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i45.i = getelementptr i8, ptr %132, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i45.i, i32 %130) #5, !srcloc !158
  %layer_no69.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 14
  %133 = ptrtoint ptr %layer_no69.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %layer_no69.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then61.i, %if.then55.i.if.end70.i_crit_edge
  %and71.i = and i32 %and58.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end79.i_crit_edge, label %if.then73.i

if.end70.i.if.end79.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

if.then73.i:                                      ; preds = %if.end70.i
  %tobool75.not.i = icmp eq ptr %arg, null
  br i1 %tobool75.not.i, label %if.then73.i.cond.end.i_crit_edge, label %cond.true.i

if.then73.i.cond.end.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev77.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %134 = ptrtoint ptr %dev77.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev77.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then73.i.cond.end.i_crit_edge
  %cond78.i = phi ptr [ %135, %cond.true.i ], [ null, %if.then73.i.cond.end.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond78.i, i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef %and58.i) #5
  br label %if.end79.i

if.end79.i:                                       ; preds = %cond.end.i, %if.end70.i.if.end79.i_crit_edge
  %and80.i = and i32 %and58.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end91.i_crit_edge, label %if.then82.i

if.end79.i.if.end91.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.i

if.then82.i:                                      ; preds = %if.end79.i
  %tobool84.not.i = icmp eq ptr %arg, null
  br i1 %tobool84.not.i, label %if.then82.i.cond.end89.i_crit_edge, label %cond.true85.i

if.then82.i.cond.end89.i_crit_edge:               ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89.i

cond.true85.i:                                    ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev87.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %136 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev87.i, align 8
  br label %cond.end89.i

cond.end89.i:                                     ; preds = %cond.true85.i, %if.then82.i.cond.end89.i_crit_edge
  %cond90.i = phi ptr [ %137, %cond.true85.i ], [ null, %if.then82.i.cond.end89.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond90.i, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %and58.i) #5
  br label %if.end91.i

if.end91.i:                                       ; preds = %cond.end89.i, %if.end79.i.if.end91.i_crit_edge
  %and92.i = and i32 %and58.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.end103.i_crit_edge, label %if.then94.i

if.end91.i.if.end103.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103.i

if.then94.i:                                      ; preds = %if.end91.i
  %tobool96.not.i = icmp eq ptr %arg, null
  br i1 %tobool96.not.i, label %if.then94.i.cond.end101.i_crit_edge, label %cond.true97.i

if.then94.i.cond.end101.i_crit_edge:              ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end101.i

cond.true97.i:                                    ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev99.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %138 = ptrtoint ptr %dev99.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev99.i, align 8
  br label %cond.end101.i

cond.end101.i:                                    ; preds = %cond.true97.i, %if.then94.i.cond.end101.i_crit_edge
  %cond102.i = phi ptr [ %139, %cond.true97.i ], [ null, %if.then94.i.cond.end101.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond102.i, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef %and58.i) #5
  br label %if.end103.i

if.end103.i:                                      ; preds = %cond.end101.i, %if.end91.i.if.end103.i_crit_edge
  %and104.i = and i32 %and58.i, 344064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end116.i_crit_edge, label %if.then106.i

if.end103.i.if.end116.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  %kmb_under_flow107.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 12
  %140 = ptrtoint ptr %kmb_under_flow107.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %kmb_under_flow107.i, align 4
  %inc108.i = add i32 %141, 1
  store i32 %inc108.i, ptr %kmb_under_flow107.i, align 4
  %dev113.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %142 = ptrtoint ptr %dev113.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev113.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %143, ptr noundef nonnull @.str.62, i32 noundef %and58.i, i32 noundef %inc108.i) #8
  %144 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i47.i = getelementptr i8, ptr %145, i32 8
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %147 = and i32 %146, -4195585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i49.i = getelementptr i8, ptr %149, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i49.i, i32 %147) #5, !srcloc !158
  %150 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i51.i = getelementptr i8, ptr %151, i32 12
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %153 = or i32 %152, 4195584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i53.i = getelementptr i8, ptr %155, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i53.i, i32 %153) #5, !srcloc !158
  %156 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i55.i = getelementptr i8, ptr %157, i32 2140
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %159 = and i32 %158, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i57.i = getelementptr i8, ptr %161, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i57.i, i32 %159) #5, !srcloc !158
  %layer_no115.i = getelementptr inbounds %struct.kmb_drm_private, ptr %arg, i32 0, i32 14
  %162 = ptrtoint ptr %layer_no115.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %layer_no115.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end116.i_crit_edge
  %and117.i = and i32 %and58.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.end116.i.if.end128.i_crit_edge, label %if.then119.i

if.end116.i.if.end128.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128.i

if.then119.i:                                     ; preds = %if.end116.i
  %tobool121.not.i = icmp eq ptr %arg, null
  br i1 %tobool121.not.i, label %if.then119.i.cond.end126.i_crit_edge, label %cond.true122.i

if.then119.i.cond.end126.i_crit_edge:             ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end126.i

cond.true122.i:                                   ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev124.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %163 = ptrtoint ptr %dev124.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev124.i, align 8
  br label %cond.end126.i

cond.end126.i:                                    ; preds = %cond.true122.i, %if.then119.i.cond.end126.i_crit_edge
  %cond127.i = phi ptr [ %164, %cond.true122.i ], [ null, %if.then119.i.cond.end126.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond127.i, i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef %and58.i) #5
  br label %if.end128.i

if.end128.i:                                      ; preds = %cond.end126.i, %if.end116.i.if.end128.i_crit_edge
  %and129.i = and i32 %and58.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  br i1 %tobool130.not.i, label %if.end128.i.if.end140.i_crit_edge, label %if.then131.i

if.end128.i.if.end140.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140.i

if.then131.i:                                     ; preds = %if.end128.i
  %tobool133.not.i = icmp eq ptr %arg, null
  br i1 %tobool133.not.i, label %if.then131.i.cond.end138.i_crit_edge, label %cond.true134.i

if.then131.i.cond.end138.i_crit_edge:             ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end138.i

cond.true134.i:                                   ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev136.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %165 = ptrtoint ptr %dev136.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev136.i, align 8
  br label %cond.end138.i

cond.end138.i:                                    ; preds = %cond.true134.i, %if.then131.i.cond.end138.i_crit_edge
  %cond139.i = phi ptr [ %166, %cond.true134.i ], [ null, %if.then131.i.cond.end138.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond139.i, i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %and58.i) #5
  br label %if.end140.i

if.end140.i:                                      ; preds = %cond.end138.i, %if.end128.i.if.end140.i_crit_edge
  %and141.i = and i32 %and58.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %if.end140.i.if.end152.i_crit_edge, label %if.then143.i

if.end140.i.if.end152.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.i

if.then143.i:                                     ; preds = %if.end140.i
  %tobool145.not.i = icmp eq ptr %arg, null
  br i1 %tobool145.not.i, label %if.then143.i.cond.end150.i_crit_edge, label %cond.true146.i

if.then143.i.cond.end150.i_crit_edge:             ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end150.i

cond.true146.i:                                   ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev148.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %167 = ptrtoint ptr %dev148.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev148.i, align 8
  br label %cond.end150.i

cond.end150.i:                                    ; preds = %cond.true146.i, %if.then143.i.cond.end150.i_crit_edge
  %cond151.i = phi ptr [ %168, %cond.true146.i ], [ null, %if.then143.i.cond.end150.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond151.i, i32 noundef 2, ptr noundef nonnull @.str.66, i32 noundef %and58.i) #5
  br label %if.end152.i

if.end152.i:                                      ; preds = %cond.end150.i, %if.end140.i.if.end152.i_crit_edge
  %and153.i = and i32 %and58.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %if.end152.i.if.end164.i_crit_edge, label %if.then155.i

if.end152.i.if.end164.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164.i

if.then155.i:                                     ; preds = %if.end152.i
  %tobool157.not.i = icmp eq ptr %arg, null
  br i1 %tobool157.not.i, label %if.then155.i.cond.end162.i_crit_edge, label %cond.true158.i

if.then155.i.cond.end162.i_crit_edge:             ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end162.i

cond.true158.i:                                   ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev160.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %169 = ptrtoint ptr %dev160.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev160.i, align 8
  br label %cond.end162.i

cond.end162.i:                                    ; preds = %cond.true158.i, %if.then155.i.cond.end162.i_crit_edge
  %cond163.i = phi ptr [ %170, %cond.true158.i ], [ null, %if.then155.i.cond.end162.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond163.i, i32 noundef 2, ptr noundef nonnull @.str.67, i32 noundef %and58.i) #5
  br label %if.end164.i

if.end164.i:                                      ; preds = %cond.end162.i, %if.end152.i.if.end164.i_crit_edge
  %and165.i = and i32 %and58.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165.i)
  %tobool166.not.i = icmp eq i32 %and165.i, 0
  br i1 %tobool166.not.i, label %if.end164.i.if.end176.i_crit_edge, label %if.then167.i

if.end164.i.if.end176.i_crit_edge:                ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176.i

if.then167.i:                                     ; preds = %if.end164.i
  %tobool169.not.i = icmp eq ptr %arg, null
  br i1 %tobool169.not.i, label %if.then167.i.cond.end174.i_crit_edge, label %cond.true170.i

if.then167.i.cond.end174.i_crit_edge:             ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end174.i

cond.true170.i:                                   ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev172.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %171 = ptrtoint ptr %dev172.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev172.i, align 8
  br label %cond.end174.i

cond.end174.i:                                    ; preds = %cond.true170.i, %if.then167.i.cond.end174.i_crit_edge
  %cond175.i = phi ptr [ %172, %cond.true170.i ], [ null, %if.then167.i.cond.end174.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond175.i, i32 noundef 2, ptr noundef nonnull @.str.68, i32 noundef %and58.i) #5
  br label %if.end176.i

if.end176.i:                                      ; preds = %cond.end174.i, %if.end164.i.if.end176.i_crit_edge
  %and177.i = and i32 %and58.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %if.end176.i.if.end188.i_crit_edge, label %if.then179.i

if.end176.i.if.end188.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188.i

if.then179.i:                                     ; preds = %if.end176.i
  %tobool181.not.i = icmp eq ptr %arg, null
  br i1 %tobool181.not.i, label %if.then179.i.cond.end186.i_crit_edge, label %cond.true182.i

if.then179.i.cond.end186.i_crit_edge:             ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end186.i

cond.true182.i:                                   ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev184.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %173 = ptrtoint ptr %dev184.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev184.i, align 8
  br label %cond.end186.i

cond.end186.i:                                    ; preds = %cond.true182.i, %if.then179.i.cond.end186.i_crit_edge
  %cond187.i = phi ptr [ %174, %cond.true182.i ], [ null, %if.then179.i.cond.end186.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond187.i, i32 noundef 2, ptr noundef nonnull @.str.69, i32 noundef %and58.i) #5
  br label %if.end188.i

if.end188.i:                                      ; preds = %cond.end186.i, %if.end176.i.if.end188.i_crit_edge
  %and189.i = and i32 %and58.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i)
  %tobool190.not.i = icmp eq i32 %and189.i, 0
  br i1 %tobool190.not.i, label %if.end188.i.if.end201.i_crit_edge, label %if.then191.i

if.end188.i.if.end201.i_crit_edge:                ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201.i

if.then191.i:                                     ; preds = %if.end188.i
  %tobool193.not.i = icmp eq ptr %arg, null
  br i1 %tobool193.not.i, label %if.then191.i.cond.end198.i_crit_edge, label %cond.true194.i

if.then191.i.cond.end198.i_crit_edge:             ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end198.i

cond.true194.i:                                   ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev196.i = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %175 = ptrtoint ptr %dev196.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev196.i, align 8
  br label %cond.end198.i

cond.end198.i:                                    ; preds = %cond.true194.i, %if.then191.i.cond.end198.i_crit_edge
  %cond199.i = phi ptr [ %176, %cond.true194.i ], [ null, %if.then191.i.cond.end198.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond199.i, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %and58.i) #5
  br label %if.end201.i

if.end201.i:                                      ; preds = %cond.end198.i, %if.end188.i.if.end201.i_crit_edge, %if.end52.i.if.end201.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock.i) #5
  %and203.i = and i32 %3, 134217720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %if.end201.i.handle_lcd_irq.exit_crit_edge, label %if.then205.i

if.end201.i.handle_lcd_irq.exit_crit_edge:        ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_lcd_irq.exit

if.then205.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %178, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 -117440761) #5, !srcloc !158
  br label %handle_lcd_irq.exit

handle_lcd_irq.exit:                              ; preds = %if.then205.i, %if.end201.i.handle_lcd_irq.exit_crit_edge
  %179 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i.i61.i = getelementptr i8, ptr %180, i32 12
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61.i) #5, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %182 = or i32 %181, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lcd_mmio.i.i, align 8
  %add.ptr.i4.i63.i = getelementptr i8, ptr %184, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i63.i, i32 %182) #5, !srcloc !158
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_kms_helper_poll_disable(ptr noundef %1) #5
  %call2 = tail call ptr @drm_atomic_helper_suspend(ptr noundef %1) #5
  %state = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %state, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_kms_helper_poll_enable(ptr noundef %1) #5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.kmb_drm_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %call3 = tail call i32 @drm_atomic_helper_resume(ptr noundef nonnull %1, ptr noundef %3) #5
  tail call void @drm_kms_helper_poll_enable(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !120, !122, !124, !126, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_kmb_drm__319_631_kmb_platform_driver_init6, !1, !"__initcall__kmod_kmb_drm__319_631_kmb_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 631, i32 1}
!2 = !{ptr @__exitcall_kmb_platform_driver_exit, !1, !"__exitcall_kmb_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author320, !4, !"__UNIQUE_ID_author320", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 633, i32 1}
!5 = !{ptr @__UNIQUE_ID_description321, !6, !"__UNIQUE_ID_description321", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 634, i32 1}
!7 = !{ptr @__UNIQUE_ID_file322, !8, !"__UNIQUE_ID_file322", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 635, i32 1}
!9 = !{ptr @__UNIQUE_ID_license323, !8, !"__UNIQUE_ID_license323", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 625, i32 11}
!12 = !{ptr @kmb_platform_driver, !13, !"kmb_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 621, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 496, i32 3}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 502, i32 3}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 510, i32 3}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 521, i32 3}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 536, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @kmb_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @kmb_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 553, i32 3}
!32 = !{ptr @kmb_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @kmb_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 444, i32 10}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 445, i32 10}
!38 = !{ptr @kmb_driver, !39, !"kmb_driver", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 437, i32 32}
!40 = !{ptr @fops, !41, !"fops", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 435, i32 1}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 118, i32 42}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 120, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @kmb_hw_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @kmb_hw_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 141, i32 3}
!51 = !{ptr @kmb_hw_init._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @kmb_hw_init._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @kmb_hw_init.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 150, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 101, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @kmb_map_mmio._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @kmb_map_mmio._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 106, i32 3}
!63 = !{ptr @kmb_map_mmio._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @kmb_map_mmio._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 46, i32 43}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 48, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @kmb_initialize_clocks._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @kmb_initialize_clocks._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 52, i32 44}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 54, i32 3}
!76 = !{ptr @kmb_initialize_clocks._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @kmb_initialize_clocks._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 58, i32 2}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @kmb_initialize_clocks._entry.34, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @kmb_initialize_clocks._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 65, i32 3}
!85 = !{ptr @kmb_initialize_clocks._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @kmb_initialize_clocks._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 69, i32 2}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 75, i32 46}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 77, i32 3}
!93 = !{ptr @kmb_initialize_clocks._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @kmb_initialize_clocks._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 34, i32 3}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @kmb_display_clk_enable._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @kmb_display_clk_enable._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 37, i32 2}
!102 = !{ptr @kmb_display_clk_enable._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @kmb_display_clk_enable._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 185, i32 3}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @kmb_setup_mode_config._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @kmb_setup_mode_config._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 193, i32 3}
!111 = !{ptr @kmb_setup_mode_config._entry.53, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @kmb_setup_mode_config._entry_ptr.55, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @kmb_mode_config_funcs, !114, !"kmb_mode_config_funcs", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 162, i32 43}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 310, i32 4}
!117 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @handle_lcd_irq._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @handle_lcd_irq._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 330, i32 4}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 333, i32 4}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 336, i32 4}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 344, i32 4}
!128 = !{ptr @handle_lcd_irq._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @handle_lcd_irq._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 364, i32 4}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 367, i32 4}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 370, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 375, i32 4}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 378, i32 4}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 383, i32 4}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 386, i32 4}
!144 = !{ptr @kmb_of_match, !145, !"kmb_of_match", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 582, i32 34}
!146 = !{ptr @kmb_pm_ops, !147, !"kmb_pm_ops", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/kmb/kmb_drv.c", i32 619, i32 8}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 2157049134}
!158 = !{i64 5108373}
!159 = !{i64 5108791}
!160 = !{i64 2157049992}
!161 = !{i8 0, i8 2}
