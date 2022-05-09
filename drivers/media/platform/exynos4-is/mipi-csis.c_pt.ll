; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/mipi-csis.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/mipi-csis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.csis_pix_format = type { i32, i32, i32, i8 }
%struct.s5pcsis_event = type { i32, ptr, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.csis_drvdata = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.95, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.95 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.csis_state = type { %struct.mutex, [2 x %struct.media_pad], %struct.v4l2_subdev, i8, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.v4l2_mbus_framefmt, %struct.spinlock, %struct.csis_pktbuf, [13 x %struct.s5pcsis_event] }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.csis_pktbuf = type { ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__param_str_debug = internal constant [15 x i8] c"s5p_csis.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype293 = internal constant [28 x i8] c"s5p_csis.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug294 = internal constant [38 x i8] c"s5p_csis.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_s5p_csis__297_1033_s5pcsis_driver_init6 = internal global ptr @s5pcsis_driver_init, section ".initcall6.init", align 4
@s5pcsis_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5pcsis_probe, ptr @s5pcsis_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5pcsis_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5pcsis_driver_exit = internal global ptr @s5pcsis_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [60 x i8] c"s5p_csis.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [70 x i8] c"s5p_csis.description=Samsung S5P/EXYNOS SoC MIPI-CSI2 receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [57 x i8] c"s5p_csis.file=drivers/media/platform/exynos4-is/s5p-csis\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [21 x i8] c"s5p_csis.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p-mipi-csis\00", [18 x i8] zeroinitializer }, align 32
@s5pcsis_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-csis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_csis_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-csis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_csis_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-csis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5_csis_drvdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@s5pcsis_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s5pcsis_suspend, ptr @s5pcsis_resume, ptr @s5pcsis_suspend, ptr @s5pcsis_resume, ptr @s5pcsis_suspend, ptr @s5pcsis_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_runtime_suspend, ptr @s5pcsis_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@s5pcsis_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@s5pcsis_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->slock\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/exynos4-is/mipi-csis.c\00", [50 x i8] zeroinitializer }, align 32
@s5pcsis_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unsupported number of data lanes: %d (max. %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5pcsis_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5pcsis_probe._entry_ptr = internal global ptr @s5pcsis_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csis\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s %s: No clock frequency specified!\0A\00", [58 x i8] zeroinitializer }, align 32
@s5pcsis_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.4, i32 837, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Interrupt request failed\0A\00", [38 x i8] zeroinitializer }, align 32
@s5pcsis_probe._entry_ptr.13 = internal global ptr @s5pcsis_probe._entry.11, section ".printk_index", align 4
@s5pcsis_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s5pcsis_core_ops, ptr null, ptr null, ptr @s5pcsis_video_ops, ptr null, ptr null, ptr null, ptr @s5pcsis_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@s5pcsis_formats = internal constant { [6 x %struct.csis_pix_format], [32 x i8] } { [6 x %struct.csis_pix_format] [%struct.csis_pix_format { i32 0, i32 8199, i32 120, i8 32 }, %struct.csis_pix_format { i32 0, i32 16385, i32 192, i8 32 }, %struct.csis_pix_format { i32 0, i32 20481, i32 192, i8 32 }, %struct.csis_pix_format { i32 0, i32 12290, i32 168, i8 24 }, %struct.csis_pix_format { i32 0, i32 12298, i32 172, i8 24 }, %struct.csis_pix_format { i32 0, i32 12305, i32 176, i8 24 }], [32 x i8] zeroinitializer }, align 32
@s5pcsis_events = internal constant { [13 x %struct.s5pcsis_event], [36 x i8] } { [13 x %struct.s5pcsis_event] [%struct.s5pcsis_event { i32 61440, ptr @.str.54, i32 0 }, %struct.s5pcsis_event { i32 32, ptr @.str.55, i32 0 }, %struct.s5pcsis_event { i32 16, ptr @.str.56, i32 0 }, %struct.s5pcsis_event { i32 8, ptr @.str.57, i32 0 }, %struct.s5pcsis_event { i32 4, ptr @.str.58, i32 0 }, %struct.s5pcsis_event { i32 2, ptr @.str.59, i32 0 }, %struct.s5pcsis_event { i32 1, ptr @.str.60, i32 0 }, %struct.s5pcsis_event { i32 -2147483648, ptr @.str.61, i32 0 }, %struct.s5pcsis_event { i32 1073741824, ptr @.str.62, i32 0 }, %struct.s5pcsis_event { i32 536870912, ptr @.str.63, i32 0 }, %struct.s5pcsis_event { i32 268435456, ptr @.str.64, i32 0 }, %struct.s5pcsis_event { i32 134217728, ptr @.str.65, i32 0 }, %struct.s5pcsis_event { i32 67108864, ptr @.str.66, i32 0 }], [36 x i8] zeroinitializer }, align 32
@s5pcsis_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.4, i32 876, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lanes: %d, hs_settle: %d, wclk: %d, freq: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s5pcsis_probe._entry_ptr.18 = internal global ptr @s5pcsis_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@s5pcsis_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 734, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No port node at %pOF\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5pcsis_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@s5pcsis_parse_dt._entry_ptr = internal global ptr @s5pcsis_parse_dt._entry, section ".printk_index", align 4
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,csis-hs-settle\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung,csis-wclk\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddcore\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@s5pcsis_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 419, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5pcsis_clk_get\00", [16 x i8] zeroinitializer }, align 32
@s5pcsis_clk_get._entry_ptr = internal global ptr @s5pcsis_clk_get._entry, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_csis\00", [22 x i8] zeroinitializer }, align 32
@s5pcsis_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5pcsis_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@s5pcsis_irq_handler._entry_ptr = internal global ptr @s5pcsis_irq_handler._entry, section ".printk_index", align 4
@s5pcsis_irq_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: status: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@s5pcsis_irq_handler._entry_ptr.34 = internal global ptr @s5pcsis_irq_handler._entry.32, section ".printk_index", align 4
@s5pcsis_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @s5pcsis_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5pcsis_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_s_rx_buffer, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5pcsis_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5pcsis_enum_mbus_code, ptr null, ptr null, ptr @s5pcsis_get_fmt, ptr @s5pcsis_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__func__.s5pcsis_log_status = private unnamed_addr constant [19 x i8] c"s5pcsis_log_status\00", align 1
@s5pcsis_log_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: %s events: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5pcsis_log_counters\00", [43 x i8] zeroinitializer }, align 32
@s5pcsis_log_counters._entry_ptr = internal global ptr @s5pcsis_log_counters._entry, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CTRL\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DPHYCTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONFIG\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DPHYSTS\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INTMSK\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESOL\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDW_CONFIG\00", [21 x i8] zeroinitializer }, align 32
@dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: --- %s ---\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_regs\00", [22 x i8] zeroinitializer }, align 32
@dump_regs._entry_ptr = internal global ptr @dump_regs._entry, section ".printk_index", align 4
@dump_regs._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: %10s: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@dump_regs._entry_ptr.48 = internal global ptr @dump_regs._entry.46, section ".printk_index", align 4
@s5pcsis_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: %d, state: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5pcsis_s_stream\00", [47 x i8] zeroinitializer }, align 32
@s5pcsis_s_stream._entry_ptr = internal global ptr @s5pcsis_s_stream._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__s5pcsis_set_format._entry = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 335, ptr null, ptr null }, align 1
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: fmt: %#x, %d x %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__s5pcsis_set_format\00", [43 x i8] zeroinitializer }, align 32
@__s5pcsis_set_format._entry_ptr = internal global ptr @__s5pcsis_set_format._entry, section ".printk_index", align 4
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOT Error\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Lost Frame Start Error\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Lost Frame End Error\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FIFO Overflow Error\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ECC Error\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRC Error\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown Error\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Non-image data before even frame\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Non-image data after even frame\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Non-image data before odd frame\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Non-image data after odd frame\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Frame Start\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Frame End\00", [22 x i8] zeroinitializer }, align 32
@s5pcsis_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: flags: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5pcsis_pm_resume\00", [46 x i8] zeroinitializer }, align 32
@s5pcsis_pm_resume._entry_ptr = internal global ptr @s5pcsis_pm_resume._entry, section ".printk_index", align 4
@s5pcsis_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.69, ptr @.str.4, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5pcsis_pm_suspend\00", [45 x i8] zeroinitializer }, align 32
@s5pcsis_pm_suspend._entry_ptr = internal global ptr @s5pcsis_pm_suspend._entry, section ".printk_index", align 4
@exynos4_csis_drvdata = internal constant { %struct.csis_drvdata, [28 x i8] } { %struct.csis_drvdata { i32 -268431297 }, [28 x i8] zeroinitializer }, align 32
@exynos5_csis_drvdata = internal constant { %struct.csis_drvdata, [28 x i8] } { %struct.csis_drvdata { i32 -67104705 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 8199, i64 12290, i64 12298, i64 12305, i64 16385, i64 20481]
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 35, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"s5pcsis_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1023, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1028, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"s5pcsis_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1008, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"s5pcsis_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 994, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 777, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 778, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 782, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 793, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 798, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 826, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 837, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"s5pcsis_subdev_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 668, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 843, i32 51 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"s5pcsis_formats\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 243, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"s5pcsis_events\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 144, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 874, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 724, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 727, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 733, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 749, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 752, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 127, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 128, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 419, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 120, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 705, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 709, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"s5pcsis_core_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 652, i32 42 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"s5pcsis_video_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 663, i32 43 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"s5pcsis_pad_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 657, i32 41 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 481, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 429, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 430, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 431, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 432, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 433, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 434, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 435, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 439, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 443, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 507, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 334, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 998, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 146, i32 31 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 147, i32 32 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 148, i32 32 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 149, i32 29 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 150, i32 28 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 151, i32 28 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 152, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 154, i32 32 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 155, i32 31 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 156, i32 31 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 157, i32 30 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 159, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 160, i32 30 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 923, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 894, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"exynos4_csis_drvdata\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1000, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant [21 x i8] c"exynos5_csis_drvdata\00", align 1
@___asan_gen_.332 = private constant [49 x i8] c"../drivers/media/platform/exynos4-is/mipi-csis.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1004, i32 34 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debug294, ptr @__UNIQUE_ID_debugtype293, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_s5pcsis_driver_exit, ptr @__initcall__kmod_s5p_csis__297_1033_s5pcsis_driver_init6, ptr @__param_debug, ptr @__s5pcsis_set_format._entry, ptr @__s5pcsis_set_format._entry_ptr, ptr @dump_regs._entry, ptr @dump_regs._entry.46, ptr @dump_regs._entry_ptr, ptr @dump_regs._entry_ptr.48, ptr @s5pcsis_clk_get._entry, ptr @s5pcsis_clk_get._entry_ptr, ptr @s5pcsis_driver_exit, ptr @s5pcsis_irq_handler._entry, ptr @s5pcsis_irq_handler._entry.32, ptr @s5pcsis_irq_handler._entry_ptr, ptr @s5pcsis_irq_handler._entry_ptr.34, ptr @s5pcsis_log_counters._entry, ptr @s5pcsis_log_counters._entry_ptr, ptr @s5pcsis_parse_dt._entry, ptr @s5pcsis_parse_dt._entry_ptr, ptr @s5pcsis_pm_resume._entry, ptr @s5pcsis_pm_resume._entry_ptr, ptr @s5pcsis_pm_suspend._entry, ptr @s5pcsis_pm_suspend._entry_ptr, ptr @s5pcsis_probe._entry, ptr @s5pcsis_probe._entry.11, ptr @s5pcsis_probe._entry.15, ptr @s5pcsis_probe._entry_ptr, ptr @s5pcsis_probe._entry_ptr.13, ptr @s5pcsis_probe._entry_ptr.18, ptr @s5pcsis_s_stream._entry, ptr @s5pcsis_s_stream._entry_ptr, ptr @debug, ptr @s5pcsis_driver, ptr @.str, ptr @s5pcsis_of_match, ptr @s5pcsis_pm_ops, ptr @s5pcsis_probe.__key, ptr @.str.1, ptr @s5pcsis_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @s5pcsis_subdev_ops, ptr @.str.14, ptr @s5pcsis_formats, ptr @s5pcsis_events, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @s5pcsis_core_ops, ptr @s5pcsis_video_ops, ptr @s5pcsis_pad_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @exynos4_csis_drvdata, ptr @exynos5_csis_drvdata], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_formats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_events to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_irq_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_log_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_regs._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pcsis_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_csis_drvdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_csis_drvdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5pcsis_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5pcsis_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5pcsis_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 692, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @s5pcsis_probe.__key) #9
  %slock = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.3, ptr noundef nonnull @s5pcsis_probe.__key.2, i16 noundef signext 3) #9
  %pdev6 = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev6, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @of_match_node(ptr noundef nonnull @s5pcsis_of_match, ptr noundef %2) #9
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %do.end19, label %if.end34, !prof !195

do.end19:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 782, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end34:                                         ; preds = %do.body
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %interrupt_mask35 = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %interrupt_mask35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %interrupt_mask35, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %endpoint.i) #9
  %10 = call ptr @memset(ptr %endpoint.i, i32 0, i32 64)
  %clk_frequency.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 12
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.19, ptr noundef %clk_frequency.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end34.if.end.i_crit_edge, label %if.then.i

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 166000000, ptr %clk_frequency.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end34.if.end.i_crit_edge
  %max_num_lanes.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 15
  %call.i.i47.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef %max_num_lanes.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i47.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i47.i, -1
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.s5pcsis_parse_dt.exit.thread_crit_edge

if.end.i.s5pcsis_parse_dt.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5pcsis_parse_dt.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %9, ptr noundef null) #9
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %do.end.i, label %cond.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %13) #12
  br label %s5pcsis_parse_dt.exit.thread

cond.end.i:                                       ; preds = %if.end5.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call6.i, i32 0, i32 3
  %call14.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %endpoint.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %s5pcsis_parse_dt.exit

if.end17.i:                                       ; preds = %cond.end.i
  %14 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %endpoint.i, align 4
  %16 = trunc i32 %15 to i8
  %conv.i = add i8 %16, -3
  %index.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i)
  %cmp.i = icmp ugt i8 %conv.i, 1
  br i1 %cmp.i, label %s5pcsis_parse_dt.exit.thread291, label %s5pcsis_parse_dt.exit.thread294

s5pcsis_parse_dt.exit.thread291:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %call6.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #9
  br label %cleanup

s5pcsis_parse_dt.exit.thread294:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %hs_settle.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 13
  %call.i.i48.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.23, ptr noundef %hs_settle.i, i32 noundef 1, i32 noundef 0) #9
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %call6.i, ptr noundef nonnull @.str.24, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %conv25.i = zext i1 %tobool.i.i to i8
  %wclk_ext.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %wclk_ext.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv25.i, ptr %wclk_ext.i, align 4
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %endpoint.i, i32 0, i32 2, i32 2, i32 3
  %19 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_data_lanes.i, align 1
  %conv26.i = zext i8 %20 to i32
  %num_lanes.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 14
  %21 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv26.i, ptr %num_lanes.i, align 4
  call void @of_node_put(ptr noundef nonnull %call6.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #9
  br label %if.end39

s5pcsis_parse_dt.exit.thread:                     ; preds = %do.end.i, %if.end.i.s5pcsis_parse_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #9
  br label %cleanup

s5pcsis_parse_dt.exit:                            ; preds = %cond.end.i
  call void @of_node_put(ptr noundef nonnull %call6.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %endpoint.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp37 = icmp slt i32 %call14.i, 0
  br i1 %cmp37, label %s5pcsis_parse_dt.exit.cleanup_crit_edge, label %s5pcsis_parse_dt.exit.if.end39_crit_edge

s5pcsis_parse_dt.exit.if.end39_crit_edge:         ; preds = %s5pcsis_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

s5pcsis_parse_dt.exit.cleanup_crit_edge:          ; preds = %s5pcsis_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %s5pcsis_parse_dt.exit.if.end39_crit_edge, %s5pcsis_parse_dt.exit.thread294
  %num_lanes = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp40 = icmp eq i32 %23, 0
  br i1 %cmp40, label %if.end39.do.end46_crit_edge, label %lor.lhs.false

if.end39.do.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

lor.lhs.false:                                    ; preds = %if.end39
  %24 = ptrtoint ptr %max_num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_num_lanes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp42 = icmp ugt i32 %23, %25
  br i1 %cmp42, label %lor.lhs.false.do.end46_crit_edge, label %if.end49

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false.do.end46_crit_edge, %if.end39.do.end46_crit_edge
  %26 = ptrtoint ptr %max_num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_num_lanes.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %23, i32 noundef %27) #12
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  %call50 = call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %phy = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call50, ptr %phy, align 4
  %cmp.i271 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %call57 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call57, ptr %regs, align 4
  %cmp.i272 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  %call64 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call64, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp66 = icmp slt i32 %call64, 0
  br i1 %cmp66, label %if.end63.cleanup_crit_edge, label %for.body.preheader

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end63
  %arrayidx71 = getelementptr %struct.csis_state, ptr %call.i, i32 0, i32 7, i32 0
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.25, ptr %arrayidx71, align 4
  %arrayidx71.1 = getelementptr %struct.csis_state, ptr %call.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.26, ptr %arrayidx71.1, align 4
  %call73 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %for.body.preheader
  %35 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev6, align 4
  %arrayidx.i = getelementptr %struct.csis_state, ptr %call.i, i32 0, i32 8, i32 0
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.csis_state, ptr %call.i, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %call6.i273 = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.29) #9
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call6.i273, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i273, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end76.if.then.i274_crit_edge, label %if.end.i275

if.end76.if.then.i274_crit_edge:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i274

for.cond2.i:                                      ; preds = %if.end.i275
  %call6.1.i = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.9) #9
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call6.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call6.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond2.i.if.then.i274_crit_edge, label %if.end.1.i

for.cond2.i.if.then.i274_crit_edge:               ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i274

if.end.1.i:                                       ; preds = %for.cond2.i
  %call17.1.i = call i32 @clk_prepare(ptr noundef %call6.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1.i)
  %cmp18.1.i = icmp slt i32 %call17.1.i, 0
  br i1 %cmp18.1.i, label %if.end.1.i.if.then19.i_crit_edge, label %if.end.1.i.if.end80_crit_edge

if.end.1.i.if.end80_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end.1.i.if.then19.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

if.then.i274:                                     ; preds = %for.cond2.i.if.then.i274_crit_edge, %if.end76.if.then.i274_crit_edge
  %.lcssa.i = phi ptr [ @.str.29, %if.end76.if.then.i274_crit_edge ], [ @.str.9, %for.cond2.i.if.then.i274_crit_edge ]
  %call6.lcssa.i = phi ptr [ %call6.i273, %if.end76.if.then.i274_crit_edge ], [ %call6.1.i, %for.cond2.i.if.then.i274_crit_edge ]
  %41 = ptrtoint ptr %call6.lcssa.i to i32
  br label %err.i277

if.end.i275:                                      ; preds = %if.end76
  %call17.i = call i32 @clk_prepare(ptr noundef %call6.i273) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end.i275.if.then19.i_crit_edge, label %for.cond2.i

if.end.i275.if.then19.i_crit_edge:                ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i275.if.then19.i_crit_edge, %if.end.1.i.if.then19.i_crit_edge
  %call17.lcssa.i = phi i32 [ %call17.i, %if.end.i275.if.then19.i_crit_edge ], [ %call17.1.i, %if.end.1.i.if.then19.i_crit_edge ]
  %.lcssa63.i = phi ptr [ @.str.29, %if.end.i275.if.then19.i_crit_edge ], [ @.str.9, %if.end.1.i.if.then19.i_crit_edge ]
  %arrayidx8.lcssa59.i = phi ptr [ %arrayidx.i, %if.end.i275.if.then19.i_crit_edge ], [ %arrayidx.1.i, %if.end.1.i.if.then19.i_crit_edge ]
  %42 = ptrtoint ptr %arrayidx8.lcssa59.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx8.lcssa59.i, align 4
  call void @clk_put(ptr noundef %43) #9
  %44 = ptrtoint ptr %arrayidx8.lcssa59.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx8.lcssa59.i, align 4
  br label %err.i277

err.i277:                                         ; preds = %if.then19.i, %if.then.i274
  %45 = phi ptr [ %.lcssa.i, %if.then.i274 ], [ %.lcssa63.i, %if.then19.i ]
  %ret.0.i276 = phi i32 [ %41, %if.then.i274 ], [ %call17.lcssa.i, %if.then19.i ]
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i.i = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %err.i277.for.inc.i.i_crit_edge, label %if.end.i.i

err.i277.for.inc.i.i_crit_edge:                   ; preds = %err.i277
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %err.i277
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %47) #9
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  call void @clk_put(ptr noundef %49) #9
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %err.i277.for.inc.i.i_crit_edge
  %51 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i.i = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %for.inc.i.i.s5pcsis_clk_get.exit_crit_edge, label %if.end.1.i.i

for.inc.i.i.s5pcsis_clk_get.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5pcsis_clk_get.exit

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %52) #9
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1.i, align 4
  call void @clk_put(ptr noundef %54) #9
  %55 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %s5pcsis_clk_get.exit

s5pcsis_clk_get.exit:                             ; preds = %if.end.1.i.i, %for.inc.i.i.s5pcsis_clk_get.exit_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i276)
  %cmp78 = icmp slt i32 %ret.0.i276, 0
  br i1 %cmp78, label %s5pcsis_clk_get.exit.cleanup_crit_edge, label %s5pcsis_clk_get.exit.if.end80_crit_edge

s5pcsis_clk_get.exit.if.end80_crit_edge:          ; preds = %s5pcsis_clk_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

s5pcsis_clk_get.exit.cleanup_crit_edge:           ; preds = %s5pcsis_clk_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %s5pcsis_clk_get.exit.if.end80_crit_edge, %if.end.1.i.if.end80_crit_edge
  %56 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %clk_frequency.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool81.not = icmp eq i32 %57, 0
  br i1 %tobool81.not, label %do.end98, label %if.end114

do.end98:                                         ; preds = %if.end80
  %call99 = call ptr @dev_driver_string(ptr noundef %dev1) #9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i279 = icmp eq ptr %59, null
  br i1 %tobool.not.i279, label %if.end.i280, label %do.end98.if.end114.thread_crit_edge

do.end98.if.end114.thread_crit_edge:              ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.thread

if.end.i280:                                      ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 4
  br label %if.end114.thread

if.end114.thread:                                 ; preds = %if.end.i280, %do.end98.if.end114.thread_crit_edge
  %retval.0.i281 = phi ptr [ %61, %if.end.i280 ], [ %59, %do.end98.if.end114.thread_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 826, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call99, ptr noundef %retval.0.i281) #9
  br label %if.end117

if.end114:                                        ; preds = %if.end80
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %call85 = call i32 @clk_set_rate(ptr noundef %63, i32 noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp115 = icmp slt i32 %call85, 0
  br i1 %cmp115, label %if.end114.e_clkput_crit_edge, label %if.end114.if.end117_crit_edge

if.end114.if.end117_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.end114.e_clkput_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %e_clkput

if.end117:                                        ; preds = %if.end114.if.end117_crit_edge, %if.end114.thread
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %call120 = call i32 @clk_enable(ptr noundef %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.end117.e_clkput_crit_edge, label %if.end123

if.end117.e_clkput_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %e_clkput

if.end123:                                        ; preds = %if.end117
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq, align 4
  %init_name.i282 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %68 = ptrtoint ptr %init_name.i282 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i282, align 8
  %tobool.not.i283 = icmp eq ptr %69, null
  br i1 %tobool.not.i283, label %if.end.i284, label %if.end123.dev_name.exit286_crit_edge

if.end123.dev_name.exit286_crit_edge:             ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit286

if.end.i284:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit286

dev_name.exit286:                                 ; preds = %if.end.i284, %if.end123.dev_name.exit286_crit_edge
  %retval.0.i285 = phi ptr [ %71, %if.end.i284 ], [ %69, %if.end123.dev_name.exit286_crit_edge ]
  %call.i287 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %67, ptr noundef nonnull @s5pcsis_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i285, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool127.not = icmp eq i32 %call.i287, 0
  br i1 %tobool127.not, label %if.end132, label %do.end131

do.end131:                                        ; preds = %dev_name.exit286
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %e_clkdis

if.end132:                                        ; preds = %dev_name.exit286
  %sd = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 2
  call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef nonnull @s5pcsis_subdev_ops) #9
  %owner = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %owner, align 4
  %name = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 2, i32 9
  %index = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 3
  %73 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %index, align 4
  %conv = zext i8 %74 to i32
  %call136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, i32 noundef %conv)
  %flags = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %or = or i32 %76, 4
  store i32 %or, ptr %flags, align 4
  %csis_fmt = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 17
  %77 = ptrtoint ptr %csis_fmt to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @s5pcsis_formats, ptr %csis_fmt, align 4
  %format = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 18
  %code = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 18, i32 2
  %78 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8199, ptr %code, align 4
  %79 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 640, ptr %format, align 4
  %height = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 18, i32 1
  %80 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 480, ptr %height, align 4
  %function = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %81 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 65537, ptr %function, align 4
  %pads = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 1
  %flags142 = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 1, i32 0, i32 4
  %82 = ptrtoint ptr %flags142 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %flags142, align 4
  %flags145 = getelementptr %struct.csis_state, ptr %call.i, i32 0, i32 1, i32 1, i32 4
  %83 = ptrtoint ptr %flags145 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %flags145, align 4
  %call150 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %pads) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.end132.e_clkdis_crit_edge, label %if.end154

if.end132.e_clkdis_crit_edge:                     ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %e_clkdis

if.end154:                                        ; preds = %if.end132
  %dev_priv.i = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 2, i32 11
  %84 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %pdev, ptr %dev_priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %sd, ptr %driver_data.i.i, align 4
  %events = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 21
  %86 = call ptr @memcpy(ptr %events, ptr @s5pcsis_events, i32 156)
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %87 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i288 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i288, label %if.end154.do.end168_crit_edge, label %if.then159

if.end154.do.end168_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

if.then159:                                       ; preds = %if.end154
  %call160 = call fastcc i32 @s5pcsis_pm_resume(ptr noundef %dev1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then159.e_clkdis_crit_edge, label %if.then159.do.end168_crit_edge

if.then159.do.end168_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

if.then159.e_clkdis_crit_edge:                    ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %e_clkdis

do.end168:                                        ; preds = %if.then159.do.end168_crit_edge, %if.end154.do.end168_crit_edge
  %88 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_lanes, align 4
  %hs_settle = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 13
  %90 = ptrtoint ptr %hs_settle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hs_settle, align 4
  %wclk_ext = getelementptr inbounds %struct.csis_state, ptr %call.i, i32 0, i32 16
  %92 = ptrtoint ptr %wclk_ext to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %wclk_ext, align 4
  %conv171 = zext i8 %93 to i32
  %94 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clk_frequency.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %89, i32 noundef %91, i32 noundef %conv171, i32 noundef %95) #12
  br label %cleanup

e_clkdis:                                         ; preds = %if.then159.e_clkdis_crit_edge, %if.end132.e_clkdis_crit_edge, %do.end131
  %ret.1 = phi i32 [ %call.i287, %do.end131 ], [ %call150, %if.end132.e_clkdis_crit_edge ], [ %call160, %if.then159.e_clkdis_crit_edge ]
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  call void @clk_disable(ptr noundef %97) #9
  br label %e_clkput

e_clkput:                                         ; preds = %e_clkdis, %if.end117.e_clkput_crit_edge, %if.end114.e_clkput_crit_edge
  %ret.2 = phi i32 [ %call85, %if.end114.e_clkput_crit_edge ], [ %call120, %if.end117.e_clkput_crit_edge ], [ %ret.1, %e_clkdis ]
  call fastcc void @s5pcsis_clk_put(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %e_clkput, %do.end168, %s5pcsis_clk_get.exit.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then60, %if.then53, %do.end46, %s5pcsis_parse_dt.exit.cleanup_crit_edge, %s5pcsis_parse_dt.exit.thread, %s5pcsis_parse_dt.exit.thread291, %do.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -22, %do.end46 ], [ %29, %if.then53 ], [ %31, %if.then60 ], [ %ret.2, %e_clkput ], [ 0, %do.end168 ], [ -12, %entry.cleanup_crit_edge ], [ %call14.i, %s5pcsis_parse_dt.exit.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call73, %for.body.preheader.cleanup_crit_edge ], [ %ret.0.i276, %s5pcsis_clk_get.exit.cleanup_crit_edge ], [ -22, %s5pcsis_parse_dt.exit.thread ], [ -6, %s5pcsis_parse_dt.exit.thread291 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call3 = tail call fastcc i32 @s5pcsis_pm_suspend(ptr noundef %dev, i1 noundef zeroext true)
  %clock = getelementptr i8, ptr %1, i32 236
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock, align 4
  tail call void @clk_put(ptr noundef %7) #9
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -22 to ptr), ptr %clock, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 240
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.s5pcsis_clk_put.exit_crit_edge, label %if.end.1.i

for.inc.i.s5pcsis_clk_put.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5pcsis_clk_put.exit

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %10) #9
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_put(ptr noundef %12) #9
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %s5pcsis_clk_put.exit

s5pcsis_clk_put.exit:                             ; preds = %if.end.1.i, %for.inc.i.s5pcsis_clk_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_buf = getelementptr inbounds %struct.csis_state, ptr %dev_id, i32 0, i32 20
  %regs = getelementptr inbounds %struct.csis_state, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !196
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %slock = getelementptr inbounds %struct.csis_state, ptr %dev_id, i32 0, i32 19
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %3)
  %tobool.not = icmp ult i32 %3, 268435456
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %pkt_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt_buf, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %tobool10.not = icmp ult i32 %3, 1073741824
  %. = select i1 %tobool10.not, i32 8192, i32 12288
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 %.
  %len = getelementptr inbounds %struct.csis_state, ptr %dev_id, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = call ptr @memcpy(ptr %5, ptr %add.ptr14, i32 %9)
  %11 = ptrtoint ptr %pkt_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pkt_buf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  br label %if.end16

if.end16:                                         ; preds = %if.then, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %and17 = and i32 %3, 61503
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end16
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %lor.lhs.false.if.end63_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %name = getelementptr inbounds %struct.csis_state, ptr %dev_id, i32 0, i32 2, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then20
  %i.094 = phi i32 [ 0, %if.then20 ], [ %inc47, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.csis_state, ptr %dev_id, i32 0, i32 21, i32 %i.094
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %and23 = and i32 %14, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %counter = getelementptr %struct.csis_state, ptr %dev_id, i32 0, i32 21, i32 %i.094, i32 2
  %15 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %counter, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %counter, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp30 = icmp sgt i32 %17, 1
  br i1 %cmp30, label %do.end35, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %name39 = getelementptr %struct.csis_state, ptr %dev_id, i32 0, i32 21, i32 %i.094, i32 1
  %18 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name39, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef %19, i32 noundef %inc) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end35, %if.end26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc47 = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc47, 13
  br i1 %exitcond.not, label %do.body48, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body48:                                        ; preds = %for.inc
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp49 = icmp sgt i32 %20, 1
  br i1 %cmp49, label %do.end54, label %do.body48.if.end63_crit_edge

do.body48.if.end63_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %3) #12
  br label %if.end63

if.end63:                                         ; preds = %do.end54, %do.body48.if.end63_crit_edge, %lor.lhs.false.if.end63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr69 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %2) #9, !srcloc !200
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5pcsis_pm_resume(ptr nocapture noundef readonly %dev, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -156
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %flags = getelementptr i8, ptr %1, i32 252
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, ptr noundef nonnull @.str.68, i32 noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  br i1 %runtime, label %do.end5.if.end9_crit_edge, label %land.lhs.true

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end5
  %flags6 = getelementptr i8, ptr %1, i32 252
  %5 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags6, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %do.end5.if.end9_crit_edge
  %flags10 = getelementptr i8, ptr %1, i32 252
  %7 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags10, align 4
  %and11 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end28_crit_edge

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then13:                                        ; preds = %if.end9
  %supplies = getelementptr i8, ptr %1, i32 212
  %call15 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.unlock_crit_edge

if.then13.unlock_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end18:                                         ; preds = %if.then13
  %phy = getelementptr i8, ptr %1, i32 204
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %call19 = tail call i32 @phy_power_on(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags10, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %flags10, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 240
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call27 = tail call i32 @clk_enable(ptr noundef %14) #9
  br label %if.end28

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  br label %unlock

if.end28:                                         ; preds = %if.then21, %if.end9.if.end28_crit_edge
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags10, align 4
  %and30 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s5pcsis_start_stream(ptr noundef %add.ptr.i)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28.if.end33_crit_edge
  %17 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags10, align 4
  %and35 = and i32 %18, -5
  store i32 %and35, ptr %flags10, align 4
  br label %unlock

unlock:                                           ; preds = %if.end33, %if.else, %if.then13.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  %19 = phi i32 [ -11, %if.then13.unlock_crit_edge ], [ -11, %if.else ], [ 0, %if.end33 ], [ 0, %land.lhs.true.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  ret i32 %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5pcsis_clk_put(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.csis_state, ptr %state, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.csis_state, ptr %state, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %6) #9
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_put(ptr noundef %8) #9
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -156
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %slock.i = getelementptr i8, ptr %sd, i32 328
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #9
  %name.i = getelementptr i8, ptr %sd, i32 116
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 12, %entry ], [ %dec21.i, %for.inc.i.for.body.i_crit_edge ]
  %counter.i = getelementptr %struct.csis_state, ptr %add.ptr.i, i32 0, i32 21, i32 %i.01.i, i32 2
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not.i = icmp eq i32 %1, 0
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %for.body.i.do.end12.i_crit_edge

for.body.i.do.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not.i = icmp eq i32 %2, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end12.i:                                       ; preds = %lor.lhs.false.i.do.end12.i_crit_edge, %for.body.i.do.end12.i_crit_edge
  %name16.i = getelementptr %struct.csis_state, ptr %add.ptr.i, i32 0, i32 21, i32 %i.01.i, i32 1
  %3 = ptrtoint ptr %name16.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name16.i, align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i, ptr noundef %4, i32 noundef %1) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end12.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %dec21.i = add nsw i32 %i.01.i, -1
  %cmp5.not.i = icmp eq i32 %i.01.i, 0
  br i1 %cmp5.not.i, label %s5pcsis_log_counters.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

s5pcsis_log_counters.exit:                        ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #9
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %s5pcsis_log_counters.exit.if.end_crit_edge, label %land.lhs.true

s5pcsis_log_counters.exit.if.end_crit_edge:       ; preds = %s5pcsis_log_counters.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %s5pcsis_log_counters.exit
  %flags = getelementptr i8, ptr %sd, i32 252
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i, ptr noundef nonnull @__func__.s5pcsis_log_status) #12
  %regs.i = getelementptr i8, ptr %sd, i32 208
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !196
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.37, i32 noundef %11) #12
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #9, !srcloc !196
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.38, i32 noundef %15) #12
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #9, !srcloc !196
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.39, i32 noundef %19) #12
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #9, !srcloc !196
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.40, i32 noundef %23) #12
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #9, !srcloc !196
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.41, i32 noundef %27) #12
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %29, i32 44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #9, !srcloc !196
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.42, i32 noundef %31) #12
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %33, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #9, !srcloc !196
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %call13.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef nonnull @.str.43, i32 noundef %35) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %s5pcsis_log_counters.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %sd, i32 200
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !203
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !204
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -156
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %flags = getelementptr i8, ptr %sd, i32 252
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, ptr noundef nonnull @.str.50, i32 noundef %enable, i32 noundef %2) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else.critedge, label %if.then5

if.then5:                                         ; preds = %do.end4
  %slock.i = getelementptr i8, ptr %sd, i32 328
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #9
  %counter.i = getelementptr i8, ptr %sd, i32 388
  %3 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %counter.i, align 4
  %counter.1.i = getelementptr i8, ptr %sd, i32 400
  %4 = ptrtoint ptr %counter.1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %counter.1.i, align 4
  %counter.2.i = getelementptr i8, ptr %sd, i32 412
  %5 = ptrtoint ptr %counter.2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %counter.2.i, align 4
  %counter.3.i = getelementptr i8, ptr %sd, i32 424
  %6 = ptrtoint ptr %counter.3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %counter.3.i, align 4
  %counter.4.i = getelementptr i8, ptr %sd, i32 436
  %7 = ptrtoint ptr %counter.4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %counter.4.i, align 4
  %counter.5.i = getelementptr i8, ptr %sd, i32 448
  %8 = ptrtoint ptr %counter.5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %counter.5.i, align 4
  %counter.6.i = getelementptr i8, ptr %sd, i32 460
  %9 = ptrtoint ptr %counter.6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %counter.6.i, align 4
  %counter.7.i = getelementptr i8, ptr %sd, i32 472
  %10 = ptrtoint ptr %counter.7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %counter.7.i, align 4
  %counter.8.i = getelementptr i8, ptr %sd, i32 484
  %11 = ptrtoint ptr %counter.8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %counter.8.i, align 4
  %counter.9.i = getelementptr i8, ptr %sd, i32 496
  %12 = ptrtoint ptr %counter.9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %counter.9.i, align 4
  %counter.10.i = getelementptr i8, ptr %sd, i32 508
  %13 = ptrtoint ptr %counter.10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %counter.10.i, align 4
  %counter.11.i = getelementptr i8, ptr %sd, i32 520
  %14 = ptrtoint ptr %counter.11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %counter.11.i, align 4
  %counter.12.i = getelementptr i8, ptr %sd, i32 532
  %15 = ptrtoint ptr %counter.12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %counter.12.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #9
  %pdev = getelementptr i8, ptr %sd, i32 200
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then12.critedge

if.then.i:                                        ; preds = %if.then5
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !203
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !204
  br label %cleanup

if.then12.critedge:                               ; preds = %if.then5
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %flags13 = getelementptr i8, ptr %sd, i32 252
  %19 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags13, align 4
  %and = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %if.then12.critedge.unlock.thread_crit_edge

if.then12.critedge.unlock.thread_crit_edge:       ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end16:                                         ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s5pcsis_start_stream(ptr noundef %add.ptr.i)
  %21 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags13, align 4
  %or = or i32 %22, 2
  store i32 %or, ptr %flags13, align 4
  br label %unlock.thread

if.else.critedge:                                 ; preds = %do.end4
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %regs.i.i = getelementptr i8, ptr %sd, i32 208
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !196
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  %interrupt_mask.i.i = getelementptr i8, ptr %sd, i32 248
  %27 = ptrtoint ptr %interrupt_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %interrupt_mask.i.i, align 4
  %neg.i.i = xor i32 %28, -1
  %and.i.i = and i32 %26, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %29) #9, !srcloc !200
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %35 = and i32 %34, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !200
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %41 = and i32 %40, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %41) #9, !srcloc !200
  %flags18 = getelementptr i8, ptr %sd, i32 252
  %44 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags18, align 4
  %and19 = and i32 %45, -3
  store i32 %and19, ptr %flags18, align 4
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp20 = icmp sgt i32 %46, 0
  br i1 %cmp20, label %if.then21, label %if.else.critedge.if.then26_crit_edge

if.else.critedge.if.then26_crit_edge:             ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then21:                                        ; preds = %if.else.critedge
  %slock.i49 = getelementptr i8, ptr %sd, i32 328
  %call2.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i49) #9
  %name.i = getelementptr i8, ptr %sd, i32 116
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then21
  %i.01.i = phi i32 [ 12, %if.then21 ], [ %dec21.i, %for.inc.i.for.body.i_crit_edge ]
  %counter.i51 = getelementptr %struct.csis_state, ptr %add.ptr.i, i32 0, i32 21, i32 %i.01.i, i32 2
  %47 = ptrtoint ptr %counter.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp7.not.i = icmp eq i32 %48, 0
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %for.body.i.do.end12.i_crit_edge

for.body.i.do.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool9.not.i = icmp eq i32 %49, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end12.i:                                       ; preds = %lor.lhs.false.i.do.end12.i_crit_edge, %for.body.i.do.end12.i_crit_edge
  %name16.i = getelementptr %struct.csis_state, ptr %add.ptr.i, i32 0, i32 21, i32 %i.01.i, i32 1
  %50 = ptrtoint ptr %name16.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name16.i, align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i, ptr noundef %51, i32 noundef %48) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end12.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %dec21.i = add nsw i32 %i.01.i, -1
  %cmp5.not.i = icmp eq i32 %i.01.i, 0
  br i1 %cmp5.not.i, label %unlock, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

unlock.thread:                                    ; preds = %if.end16, %if.then12.critedge.unlock.thread_crit_edge
  %ret.1.ph = phi i32 [ -16, %if.then12.critedge.unlock.thread_crit_edge ], [ 0, %if.end16 ]
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  br label %cleanup

unlock:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i49, i32 noundef %call2.i50) #9
  br label %if.then26

if.then26:                                        ; preds = %unlock, %if.else.critedge.if.then26_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  %pdev27 = getelementptr i8, ptr %sd, i32 200
  %52 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev27, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %call.i52 = tail call i32 @__pm_runtime_idle(ptr noundef %dev28, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %unlock.thread, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then26 ], [ %ret.1.ph, %unlock.thread ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_s_rx_buffer(ptr noundef %sd, ptr noundef %buf, ptr nocapture noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 4096)
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %size, align 4
  %slock = getelementptr i8, ptr %sd, i32 328
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %pkt_buf = getelementptr i8, ptr %sd, i32 372
  %4 = ptrtoint ptr %pkt_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %pkt_buf, align 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %len = getelementptr i8, ptr %sd, i32 376
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5pcsis_start_stream(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %3 = or i32 %2, 268435456
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #9
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  %10 = and i32 %9, -50331649
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %num_lanes.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 14
  %12 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_lanes.i, align 4
  %sub.i = add i32 %13, -1
  %or.i = or i32 %sub.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #9, !srcloc !200
  %format.i.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 18
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp sgt i32 %17, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.s5pcsis_set_params.exit_crit_edge

entry.s5pcsis_set_params.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5pcsis_set_params.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 2, i32 9
  %code.i.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code.i.i, align 4
  %20 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name.i.i, i32 noundef %19, i32 noundef %21, i32 noundef %23) #12
  br label %s5pcsis_set_params.exit

s5pcsis_set_params.exit:                          ; preds = %do.end.i.i, %entry.s5pcsis_set_params.exit_crit_edge
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %27 = and i32 %26, 67108863
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %csis_fmt.i.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 17
  %29 = ptrtoint ptr %csis_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csis_fmt.i.i, align 4
  %fmt_reg.i.i = getelementptr inbounds %struct.csis_pix_format, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %fmt_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt_reg.i.i, align 4
  %or.i.i = or i32 %32, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %33) #9, !srcloc !200
  %36 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %format.i.i, align 4
  %shl.i.i = shl i32 %37, 16
  %height13.i.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %height13.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height13.i.i, align 4
  %or14.i.i = or i32 %shl.i.i, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #9
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %42, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 %40) #9, !srcloc !200
  %hs_settle.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 13
  %43 = ptrtoint ptr %hs_settle.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hs_settle.i, align 4
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %48 = and i32 %47, -249
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %shl.i56.i = shl i32 %44, 27
  %or.i57.i = or i32 %49, %shl.i56.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i57.i) #9
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %50) #9, !srcloc !200
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %56 = ptrtoint ptr %csis_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csis_fmt.i.i, align 4
  %data_alignment.i = getelementptr inbounds %struct.csis_pix_format, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %data_alignment.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data_alignment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %59)
  %cmp.i = icmp eq i8 %59, 32
  %masksel.i = select i1 %cmp.i, i32 1048576, i32 0
  %60 = and i32 %55, -69633
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  %and14.i = or i32 %masksel.i, %61
  %wclk_ext.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 16
  %62 = ptrtoint ptr %wclk_ext.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %wclk_ext.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  %masksel58.i = select i1 %tobool.not.i, i32 0, i32 256
  %val.1.i = or i32 %and14.i, %masksel58.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %64 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #9
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #9, !srcloc !200
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %70 = or i32 %69, 256
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #9, !srcloc !200
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %76 = or i32 %75, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #9, !srcloc !200
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %80, i32 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %82 = and i32 %81, -520093697
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  %84 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_lanes.i, align 4
  %add.i = add i32 %85, 1
  %notmask.i = shl nsw i32 -1, %add.i
  %sub.i7 = and i32 %notmask.i, 31
  %86 = or i32 %sub.i7, %83
  %or15.i = xor i32 %86, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  tail call void @arm_heavy_mb() #9
  %87 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %89, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %87) #9, !srcloc !200
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %91, i32 16
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !196
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  %interrupt_mask.i = getelementptr inbounds %struct.csis_state, ptr %state, i32 0, i32 10
  %94 = ptrtoint ptr %interrupt_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %interrupt_mask.i, align 4
  %or.i11 = or i32 %95, %93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i11) #9
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %98, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %96) #9, !srcloc !200
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5pcsis_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %code2 = getelementptr [6 x %struct.csis_pix_format], ptr @s5pcsis_formats, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %code2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code2, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_get_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -156
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %sd_state, null
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %cond.true.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true.i:                                      ; preds = %if.then.i
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %2 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i = icmp eq i16 %3, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !195

cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  br label %__s5pcsis_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %format.i = getelementptr i8, ptr %sd, i32 280
  br label %__s5pcsis_get_format.exit

__s5pcsis_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %format.i, %if.end.i ], [ %5, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__s5pcsis_get_format.exit.cleanup_crit_edge, label %if.end

__s5pcsis_get_format.exit.cleanup_crit_edge:      ; preds = %__s5pcsis_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__s5pcsis_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__s5pcsis_get_format.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__s5pcsis_get_format.exit.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_set_fmt(ptr noundef %sd, ptr noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -156
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %sd_state, null
  br i1 %tobool.not.i, label %__s5pcsis_get_format.exit.thread, label %cond.true.i

cond.true.i:                                      ; preds = %if.then.i
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %2 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i = icmp eq i16 %3, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !195

cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %cond.true.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  br label %__s5pcsis_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %format.i = getelementptr i8, ptr %sd, i32 280
  br label %__s5pcsis_get_format.exit

__s5pcsis_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %format.i, %if.end.i ], [ %5, %v4l2_subdev_get_try_format.exit.i ]
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %__s5pcsis_get_format.exit.if.end4_crit_edge

__s5pcsis_get_format.exit.if.end4_crit_edge:      ; preds = %__s5pcsis_get_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

__s5pcsis_get_format.exit.thread:                 ; preds = %if.then.i
  %pad35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %8 = ptrtoint ptr %pad35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp36 = icmp eq i32 %9, 1
  br i1 %cmp36, label %__s5pcsis_get_format.exit.thread.cleanup_crit_edge, label %__s5pcsis_get_format.exit.thread.if.end4_crit_edge

__s5pcsis_get_format.exit.thread.if.end4_crit_edge: ; preds = %__s5pcsis_get_format.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

__s5pcsis_get_format.exit.thread.cleanup_crit_edge: ; preds = %__s5pcsis_get_format.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %__s5pcsis_get_format.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %cleanup.sink.split

if.end4:                                          ; preds = %__s5pcsis_get_format.exit.thread.if.end4_crit_edge, %__s5pcsis_get_format.exit.if.end4_crit_edge
  %retval.0.i37 = phi ptr [ null, %__s5pcsis_get_format.exit.thread.if.end4_crit_edge ], [ %retval.0.i, %__s5pcsis_get_format.exit.if.end4_crit_edge ]
  %format5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end4.s5pcsis_try_format.exit_crit_edge [
    i32 8199, label %if.end4.if.then.i.i_crit_edge
    i32 16385, label %if.then.fold.split.i.i
    i32 20481, label %if.then.fold.split10.i.i
    i32 12290, label %if.then.fold.split11.i.i
    i32 12298, label %if.then.fold.split12.i.i
    i32 12305, label %if.then.fold.split13.i.i
  ]

if.end4.if.then.i.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end4.s5pcsis_try_format.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5pcsis_try_format.exit

if.then.fold.split.i.i:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.fold.split10.i.i:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.fold.split11.i.i:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.fold.split12.i.i:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.fold.split13.i.i:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.fold.split13.i.i, %if.then.fold.split12.i.i, %if.then.fold.split11.i.i, %if.then.fold.split10.i.i, %if.then.fold.split.i.i, %if.end4.if.then.i.i_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 0, %if.end4.if.then.i.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split10.i.i ], [ 3, %if.then.fold.split11.i.i ], [ 4, %if.then.fold.split12.i.i ], [ 5, %if.then.fold.split13.i.i ]
  %arrayidx.i.i = getelementptr [6 x %struct.csis_pix_format], ptr @s5pcsis_formats, i32 0, i32 %i.08.lcssa.i.i
  br label %s5pcsis_try_format.exit

s5pcsis_try_format.exit:                          ; preds = %if.then.i.i, %if.end4.s5pcsis_try_format.exit_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ null, %if.end4.s5pcsis_try_format.exit_crit_edge ]
  %cmp.i33 = icmp eq ptr %retval.0.i.i, null
  %spec.store.select.i = select i1 %cmp.i33, ptr @s5pcsis_formats, ptr %retval.0.i.i
  %code.i = getelementptr inbounds %struct.csis_pix_format, ptr %spec.store.select.i, i32 0, i32 1
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code.i, align 4
  %16 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %code.i.i, align 4
  %17 = ptrtoint ptr %spec.store.select.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %spec.store.select.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format5, i32 noundef 1, i32 noundef 65535, i32 noundef %18, ptr noundef %height.i, i32 noundef 1, i32 noundef 65535, i32 noundef 1, i32 noundef 0) #9
  %tobool7.not = icmp eq ptr %retval.0.i37, null
  br i1 %tobool7.not, label %s5pcsis_try_format.exit.cleanup_crit_edge, label %if.then8

s5pcsis_try_format.exit.cleanup_crit_edge:        ; preds = %s5pcsis_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %s5pcsis_try_format.exit
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %19 = call ptr @memcpy(ptr %retval.0.i37, ptr %format5, i32 48)
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp12 = icmp eq i32 %21, 1
  br i1 %cmp12, label %if.then13, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %csis_fmt14 = getelementptr i8, ptr %sd, i32 276
  %22 = ptrtoint ptr %csis_fmt14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.store.select.i, ptr %csis_fmt14, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %if.then8.cleanup.sink.split_crit_edge, %if.then2
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %s5pcsis_try_format.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %__s5pcsis_get_format.exit.thread.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5pcsis_pm_suspend(ptr nocapture noundef readonly %dev, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -156
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %flags = getelementptr i8, ptr %1, i32 252
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %flags6 = getelementptr i8, ptr %1, i32 252
  %5 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags6, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end5.unlock_crit_edge, label %if.then7

do.end5.unlock_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then7:                                         ; preds = %do.end5
  %regs.i.i = getelementptr i8, ptr %1, i32 208
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !196
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  %interrupt_mask.i.i = getelementptr i8, ptr %1, i32 248
  %11 = ptrtoint ptr %interrupt_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interrupt_mask.i.i, align 4
  %neg.i.i = xor i32 %12, -1
  %and.i.i = and i32 %10, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %13) #9, !srcloc !200
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !200
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %25 = and i32 %24, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %25) #9, !srcloc !200
  %phy = getelementptr i8, ptr %1, i32 204
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy, align 4
  %call8 = tail call i32 @phy_power_off(ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.unlock_crit_edge

if.then7.unlock_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end11:                                         ; preds = %if.then7
  %supplies = getelementptr i8, ptr %1, i32 212
  %call13 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.unlock_crit_edge

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end16:                                         ; preds = %if.end11
  %arrayidx = getelementptr i8, ptr %1, i32 240
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %31) #9
  %32 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags6, align 4
  %and18 = and i32 %33, -2
  store i32 %and18, ptr %flags6, align 4
  br i1 %runtime, label %if.end16.unlock_crit_edge, label %if.then20

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %and18, 4
  %34 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %flags6, align 4
  br label %unlock

unlock:                                           ; preds = %if.then20, %if.end16.unlock_crit_edge, %if.end11.unlock_crit_edge, %if.then7.unlock_crit_edge, %do.end5.unlock_crit_edge
  %35 = phi i32 [ -11, %if.end11.unlock_crit_edge ], [ -11, %if.then7.unlock_crit_edge ], [ 0, %if.end16.unlock_crit_edge ], [ 0, %if.then20 ], [ 0, %do.end5.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %add.ptr.i) #9
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5pcsis_pm_suspend(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5pcsis_pm_resume(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5pcsis_pm_suspend(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pcsis_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5pcsis_pm_resume(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !182, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype293, !1, !"__UNIQUE_ID_debugtype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug294, !4, !"__UNIQUE_ID_debug294", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 37, i32 1}
!5 = !{ptr @__initcall__kmod_s5p_csis__297_1033_s5pcsis_driver_init6, !6, !"__initcall__kmod_s5p_csis__297_1033_s5pcsis_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1033, i32 1}
!7 = !{ptr @__exitcall_s5pcsis_driver_exit, !6, !"__exitcall_s5pcsis_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author298, !9, !"__UNIQUE_ID_author298", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1035, i32 1}
!10 = !{ptr @__UNIQUE_ID_description299, !11, !"__UNIQUE_ID_description299", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1036, i32 1}
!12 = !{ptr @__UNIQUE_ID_file300, !13, !"__UNIQUE_ID_file300", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1037, i32 1}
!14 = !{ptr @__UNIQUE_ID_license301, !13, !"__UNIQUE_ID_license301", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 35, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1028, i32 12}
!20 = !{ptr @s5pcsis_driver, !21, !"s5pcsis_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1023, i32 31}
!22 = !{ptr @s5pcsis_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 777, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s5pcsis_probe.__key.2, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 778, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 782, i32 6}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 793, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @s5pcsis_probe._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @s5pcsis_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 798, i32 33}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 826, i32 3}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 837, i32 3}
!43 = !{ptr @s5pcsis_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @s5pcsis_probe._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 843, i32 51}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 874, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @s5pcsis_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5pcsis_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 724, i32 33}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 727, i32 33}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 733, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @s5pcsis_parse_dt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @s5pcsis_parse_dt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 749, i32 29}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 752, i32 6}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 127, i32 2}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 128, i32 2}
!69 = distinct !{null, !70, !"csis_supply_name", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 126, i32 27}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 419, i32 2}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @s5pcsis_clk_get._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5pcsis_clk_get._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 120, i32 20}
!78 = distinct !{null, !79, !"csi_clock_name", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 119, i32 14}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 705, i32 4}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s5pcsis_irq_handler._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @s5pcsis_irq_handler._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 709, i32 3}
!87 = !{ptr @s5pcsis_irq_handler._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @s5pcsis_irq_handler._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @s5pcsis_subdev_ops, !90, !"s5pcsis_subdev_ops", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 668, i32 37}
!91 = !{ptr @s5pcsis_core_ops, !92, !"s5pcsis_core_ops", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 652, i32 42}
!93 = !{ptr @__func__.s5pcsis_log_status, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 647, i32 20}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 481, i32 4}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @s5pcsis_log_counters._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @s5pcsis_log_counters._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 429, i32 11}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 430, i32 11}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 431, i32 11}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 432, i32 11}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 433, i32 11}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 434, i32 11}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 435, i32 11}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 439, i32 2}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @dump_regs._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @dump_regs._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 443, i32 3}
!121 = !{ptr @dump_regs._entry.46, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @dump_regs._entry_ptr.48, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @s5pcsis_video_ops, !124, !"s5pcsis_video_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 663, i32 43}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 507, i32 2}
!127 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @s5pcsis_s_stream._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @s5pcsis_s_stream._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 334, i32 2}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @__s5pcsis_set_format._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @__s5pcsis_set_format._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @s5pcsis_pad_ops, !136, !"s5pcsis_pad_ops", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 657, i32 41}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!139 = !{ptr @s5pcsis_formats, !140, !"s5pcsis_formats", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 243, i32 37}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 146, i32 31}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 147, i32 32}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 148, i32 32}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 149, i32 29}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 150, i32 28}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 151, i32 28}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 152, i32 32}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 154, i32 32}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 155, i32 31}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 156, i32 31}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 157, i32 30}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 159, i32 32}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 160, i32 30}
!167 = !{ptr @s5pcsis_events, !168, !"s5pcsis_events", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 144, i32 35}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 923, i32 2}
!171 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @s5pcsis_pm_resume._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @s5pcsis_pm_resume._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 894, i32 2}
!176 = !{ptr @s5pcsis_pm_suspend._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @s5pcsis_pm_suspend._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @s5pcsis_of_match, !179, !"s5pcsis_of_match", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1008, i32 34}
!180 = !{ptr @exynos4_csis_drvdata, !181, !"exynos4_csis_drvdata", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1000, i32 34}
!182 = !{ptr @exynos5_csis_drvdata, !183, !"exynos5_csis_drvdata", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 1004, i32 34}
!184 = !{ptr @s5pcsis_pm_ops, !185, !"s5pcsis_pm_ops", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/exynos4-is/mipi-csis.c", i32 994, i32 32}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 4923784}
!197 = !{i64 2156253893}
!198 = !{i64 2156254392}
!199 = !{i64 2156258668}
!200 = !{i64 4923366}
!201 = !{i64 2156243040}
!202 = !{i64 2148264841}
!203 = !{i64 749664, i64 749689, i64 749711, i64 749727, i64 749739, i64 749759, i64 749783, i64 749799, i64 749811}
!204 = !{i64 2148265029}
!205 = !{i64 2156226132}
!206 = !{i64 2156226400}
!207 = !{i64 2156228700}
!208 = !{i64 2156228986}
!209 = !{i64 2156229699}
!210 = !{i64 2156229991}
!211 = !{i64 2156227113}
!212 = !{i64 2156227412}
!213 = !{i64 2156234990}
!214 = !{i64 2156235260}
!215 = !{i64 2156232558}
!216 = !{i64 2156232838}
!217 = !{i64 2156233283}
!218 = !{i64 2156233996}
!219 = !{i64 2156234277}
!220 = !{i64 2156235973}
!221 = !{i64 2156236279}
!222 = !{i64 2156236992}
!223 = !{i64 2156237294}
