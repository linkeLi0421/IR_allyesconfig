; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx7-mipi-csis.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx7-mipi-csis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mipi_csis_event = type { i8, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.csis_pix_format = type { i32, i32, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_csis_info = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.csi_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_async_notifier, ptr, %struct.v4l2_fwnode_bus_mipi_csi2, i32, i32, i32, %struct.mutex, ptr, %struct.v4l2_mbus_framefmt, i32, %struct.spinlock, [22 x %struct.mipi_csis_event], ptr, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.97, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.97 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_imx7_mipi_csis__298_1490_mipi_csis_driver_init6 = internal global ptr @mipi_csis_driver_init, section ".initcall6.init", align 4
@mipi_csis_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mipi_csis_probe, ptr @mipi_csis_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mipi_csis_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_csis_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mipi_csis_driver_exit = internal global ptr @mipi_csis_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [68 x i8] c"imx7_mipi_csis.description=i.MX7 & i.MX8 MIPI CSI-2 receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [61 x i8] c"imx7_mipi_csis.file=drivers/staging/media/imx/imx7-mipi-csis\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [30 x i8] c"imx7_mipi_csis.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [45 x i8] c"imx7_mipi_csis.alias=platform:imx7-mipi-csi2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx7-mipi-csis\00", [17 x i8] zeroinitializer }, align 32
@mipi_csis_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7-mipi-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-mipi-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.85 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mipi_csis_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mipi_csis_suspend, ptr @mipi_csis_resume, ptr @mipi_csis_suspend, ptr @mipi_csis_resume, ptr @mipi_csis_suspend, ptr @mipi_csis_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_csis_runtime_suspend, ptr @mipi_csis_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mipi_csis_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@mipi_csis_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->slock\00", [18 x i8] zeroinitializer }, align 32
@mipi_csis_events = internal constant { [22 x %struct.mipi_csis_event], [64 x i8] } { [22 x %struct.mipi_csis_event] [%struct.mipi_csis_event { i8 0, i32 65536, ptr @.str.22, i32 0 }, %struct.mipi_csis_event { i8 0, i32 4096, ptr @.str.23, i32 0 }, %struct.mipi_csis_event { i8 0, i32 256, ptr @.str.24, i32 0 }, %struct.mipi_csis_event { i8 0, i32 16, ptr @.str.25, i32 0 }, %struct.mipi_csis_event { i8 0, i32 8, ptr @.str.26, i32 0 }, %struct.mipi_csis_event { i8 0, i32 4, ptr @.str.27, i32 0 }, %struct.mipi_csis_event { i8 0, i32 2, ptr @.str.28, i32 0 }, %struct.mipi_csis_event { i8 0, i32 1, ptr @.str.29, i32 0 }, %struct.mipi_csis_event { i8 1, i32 33554432, ptr @.str.30, i32 0 }, %struct.mipi_csis_event { i8 1, i32 16777216, ptr @.str.31, i32 0 }, %struct.mipi_csis_event { i8 1, i32 1048576, ptr @.str.32, i32 0 }, %struct.mipi_csis_event { i8 1, i32 65536, ptr @.str.33, i32 0 }, %struct.mipi_csis_event { i8 1, i32 4096, ptr @.str.34, i32 0 }, %struct.mipi_csis_event { i8 1, i32 256, ptr @.str.35, i32 0 }, %struct.mipi_csis_event { i8 0, i32 -2147483648, ptr @.str.36, i32 0 }, %struct.mipi_csis_event { i8 0, i32 1073741824, ptr @.str.37, i32 0 }, %struct.mipi_csis_event { i8 0, i32 536870912, ptr @.str.38, i32 0 }, %struct.mipi_csis_event { i8 0, i32 268435456, ptr @.str.39, i32 0 }, %struct.mipi_csis_event { i8 0, i32 16777216, ptr @.str.40, i32 0 }, %struct.mipi_csis_event { i8 0, i32 1048576, ptr @.str.41, i32 0 }, %struct.mipi_csis_event { i8 1, i32 16, ptr @.str.42, i32 0 }, %struct.mipi_csis_event { i8 1, i32 1, ptr @.str.43, i32 0 }], [64 x i8] zeroinitializer }, align 32
@mipi_csis_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1361, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to parse device tree: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mipi_csis_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/imx/imx7-mipi-csis.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mipi_csis_probe._entry_ptr = internal global ptr @mipi_csis_probe._entry, section ".printk_index", align 4
@mipi_csis_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clocks: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mipi_csis_probe._entry_ptr.11 = internal global ptr @mipi_csis_probe._entry.9, section ".printk_index", align 4
@mipi_csis_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1395, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Interrupt request failed\0A\00", [38 x i8] zeroinitializer }, align 32
@mipi_csis_probe._entry_ptr.14 = internal global ptr @mipi_csis_probe._entry.12, section ".printk_index", align 4
@mipi_csis_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1408, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"async register failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mipi_csis_probe._entry_ptr.17 = internal global ptr @mipi_csis_probe._entry.15, section ".printk_index", align 4
@mipi_csis_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1424, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lanes: %d, freq: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mipi_csis_probe._entry_ptr.21 = internal global ptr @mipi_csis_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOT Error\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Lost Frame Start Error\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Lost Frame End Error\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FIFO Overflow Error\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Wrong Configuration Error\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ECC Error\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRC Error\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown Error\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Data Type Not Supported\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Data Type Ignored\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Frame Size Error\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Truncated Frame\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Early Frame End\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Early Frame Start\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Non-image data before even frame\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Non-image data after even frame\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Non-image data before odd frame\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Non-image data after odd frame\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Frame Start\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Frame End\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VSYNC Falling Edge\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VSYNC Rising Edge\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@mipi_csis_clk_id = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.45, ptr @.str.50], [16 x i8] zeroinitializer }, align 32
@mipi_csis_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 627, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set rate=%d failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mipi_csis_clk_get\00", [46 x i8] zeroinitializer }, align 32
@mipi_csis_clk_get._entry_ptr = internal global ptr @mipi_csis_clk_get._entry, section ".printk_index", align 4
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrap\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@mipi_csis_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mipi_csis_core_ops, ptr null, ptr null, ptr @mipi_csis_video_ops, ptr null, ptr null, ptr null, ptr @mipi_csis_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@mipi_csis_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr @v4l2_subdev_get_fwnode_pad_1_to_1, ptr @mipi_csis_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@mipi_csis_formats = internal constant { [20 x %struct.csis_pix_format], [48 x i8] } { [20 x %struct.csis_pix_format] [%struct.csis_pix_format { i32 8207, i32 30, i8 16 }, %struct.csis_pix_format { i32 12289, i32 42, i8 8 }, %struct.csis_pix_format { i32 12307, i32 42, i8 8 }, %struct.csis_pix_format { i32 12290, i32 42, i8 8 }, %struct.csis_pix_format { i32 12308, i32 42, i8 8 }, %struct.csis_pix_format { i32 8193, i32 42, i8 8 }, %struct.csis_pix_format { i32 12295, i32 43, i8 10 }, %struct.csis_pix_format { i32 12302, i32 43, i8 10 }, %struct.csis_pix_format { i32 12298, i32 43, i8 10 }, %struct.csis_pix_format { i32 12303, i32 43, i8 10 }, %struct.csis_pix_format { i32 8202, i32 43, i8 10 }, %struct.csis_pix_format { i32 12296, i32 44, i8 12 }, %struct.csis_pix_format { i32 12304, i32 44, i8 12 }, %struct.csis_pix_format { i32 12305, i32 44, i8 12 }, %struct.csis_pix_format { i32 12306, i32 44, i8 12 }, %struct.csis_pix_format { i32 8211, i32 44, i8 12 }, %struct.csis_pix_format { i32 12313, i32 45, i8 14 }, %struct.csis_pix_format { i32 12314, i32 45, i8 14 }, %struct.csis_pix_format { i32 12315, i32 45, i8 14 }, %struct.csis_pix_format { i32 12316, i32 45, i8 14 }], [48 x i8] zeroinitializer }, align 32
@mipi_csis_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @mipi_csis_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mipi_csis_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_csis_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mipi_csis_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @mipi_csis_init_cfg, ptr @mipi_csis_enum_mbus_code, ptr null, ptr null, ptr @mipi_csis_get_fmt, ptr @mipi_csis_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mipi_csis_log_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 753, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s events: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mipi_csis_log_counters\00", [41 x i8] zeroinitializer }, align 32
@mipi_csis_log_counters._entry_ptr = internal global ptr @mipi_csis_log_counters._entry, section ".printk_index", align 4
@mipi_csis_dump_regs.registers = internal constant { [12 x %struct.anon.95], [32 x i8] } { [12 x %struct.anon.95] [%struct.anon.95 { i32 4, ptr @.str.54 }, %struct.anon.95 { i32 8, ptr @.str.55 }, %struct.anon.95 { i32 16, ptr @.str.56 }, %struct.anon.95 { i32 32, ptr @.str.57 }, %struct.anon.95 { i32 36, ptr @.str.58 }, %struct.anon.95 { i32 56, ptr @.str.59 }, %struct.anon.95 { i32 60, ptr @.str.60 }, %struct.anon.95 { i32 64, ptr @.str.61 }, %struct.anon.95 { i32 68, ptr @.str.62 }, %struct.anon.95 { i32 128, ptr @.str.63 }, %struct.anon.95 { i32 132, ptr @.str.64 }, %struct.anon.95 { i32 192, ptr @.str.65 }], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMN_CTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLK_CTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INT_MSK\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DPHY_STATUS\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DPHY_CMN_CTRL\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DPHY_SCTRL_L\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DPHY_SCTRL_H\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ISP_CONFIG_CH0\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ISP_RESOL_CH0\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDW_CONFIG_CH0\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDW_RESOL_CH0\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DBG_CTRL\00", [23 x i8] zeroinitializer }, align 32
@mipi_csis_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 781, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"--- REGISTERS ---\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mipi_csis_dump_regs\00", [44 x i8] zeroinitializer }, align 32
@mipi_csis_dump_regs._entry_ptr = internal global ptr @mipi_csis_dump_regs._entry, section ".printk_index", align 4
@mipi_csis_dump_regs._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.6, i32 785, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%14s: 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@mipi_csis_dump_regs._entry_ptr.70 = internal global ptr @mipi_csis_dump_regs._entry.68, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@mipi_csis_calculate_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 521, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to obtain link frequency: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mipi_csis_calculate_params\00", [37 x i8] zeroinitializer }, align 32
@mipi_csis_calculate_params._entry_ptr = internal global ptr @mipi_csis_calculate_params._entry, section ".printk_index", align 4
@mipi_csis_calculate_params.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.73, ptr @.str.72, ptr @.str.6, ptr @.str.74, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx7_mipi_csis\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Out-of-bound lane rate %u\0A\00", [37 x i8] zeroinitializer }, align 32
@mipi_csis_calculate_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.73, ptr @.str.72, ptr @.str.6, ptr @.str.75, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lane rate %u, Tclk_settle %u, Ths_settle %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mipi_csis_link_setup.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.73, ptr @.str.77, ptr @.str.6, ptr @.str.78, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mipi_csis_link_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link setup %s -> %s\00", [44 x i8] zeroinitializer }, align 32
@mipi_csis_async_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 1179, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"data lanes reordering is not supported\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mipi_csis_async_register\00", [39 x i8] zeroinitializer }, align 32
@mipi_csis_async_register._entry_ptr = internal global ptr @mipi_csis_async_register._entry, section ".printk_index", align 4
@mipi_csis_async_register.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.73, ptr @.str.80, ptr @.str.6, ptr @.str.81, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data lanes: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mipi_csis_async_register.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.73, ptr @.str.80, ptr @.str.6, ptr @.str.82, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flags: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@mipi_csis_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @mipi_csis_notify_bound, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"debug_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_regs\00", [22 x i8] zeroinitializer }, align 32
@mipi_csis_dump_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mipi_csis_dump_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.mipi_csis_info, [24 x i8] } { %struct.mipi_csis_info { i32 0, i32 3 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal constant { %struct.mipi_csis_info, [24 x i8] } { %struct.mipi_csis_info { i32 1, i32 4 }, [24 x i8] zeroinitializer }, align 32
@switch.table.mipi_csis_set_fmt = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 3, i32 2, i32 3, i32 1, i32 3, i32 2], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [21 x i64] [i64 19, i64 32, i64 8193, i64 8202, i64 8211, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12313, i64 12314, i64 12315, i64 12316]
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"mipi_csis_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1480, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1485, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"mipi_csis_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1462, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"mipi_csis_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1290, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1350, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1351, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"mipi_csis_events\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 253, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1361, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1387, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1395, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1408, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1423, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 255, i32 42 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 256, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 257, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 258, i32 40 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 259, i32 44 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 260, i32 39 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 261, i32 39 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 262, i32 43 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 263, i32 49 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 264, i32 44 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 265, i32 49 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 266, i32 50 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 267, i32 43 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 268, i32 43 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 270, i32 43 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 271, i32 42 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 272, i32 42 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 273, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 275, i32 43 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 276, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 277, i32 49 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 278, i32 49 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1332, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 717, i32 61 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"mipi_csis_clk_id\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 290, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 626, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 291, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 292, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 294, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [21 x i8] c"mipi_csis_subdev_ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1086, i32 37 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1306, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant [21 x i8] c"mipi_csis_entity_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1125, i32 45 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"mipi_csis_formats\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 347, i32 37 }
@___asan_gen_.265 = private unnamed_addr constant [19 x i8] c"mipi_csis_core_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1071, i32 42 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"mipi_csis_video_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1075, i32 43 }
@___asan_gen_.271 = private unnamed_addr constant [18 x i8] c"mipi_csis_pad_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1079, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 751, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 763, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 764, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 765, i32 25 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 766, i32 24 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 767, i32 28 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 768, i32 30 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 769, i32 29 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 770, i32 29 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 771, i32 33 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 772, i32 32 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 773, i32 33 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 774, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 775, i32 25 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 781, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 785, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 520, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 528, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 541, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 998, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1104, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1178, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1187, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1188, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [21 x i8] c"mipi_csis_notify_ops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1151, i32 52 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 803, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 805, i32 22 }
@___asan_gen_.388 = private unnamed_addr constant [25 x i8] c"mipi_csis_dump_regs_fops\00", align 1
@___asan_gen_.389 = private constant [46 x i8] c"../drivers/staging/media/imx/imx7-mipi-csis.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 797, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [31 x i8] c"switch.table.mipi_csis_set_fmt\00", align 1
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_mipi_csis_driver_exit, ptr @__initcall__kmod_imx7_mipi_csis__298_1490_mipi_csis_driver_init6, ptr @mipi_csis_async_register._entry, ptr @mipi_csis_async_register._entry_ptr, ptr @mipi_csis_calculate_params._entry, ptr @mipi_csis_calculate_params._entry_ptr, ptr @mipi_csis_clk_get._entry, ptr @mipi_csis_clk_get._entry_ptr, ptr @mipi_csis_driver_exit, ptr @mipi_csis_dump_regs._entry, ptr @mipi_csis_dump_regs._entry.68, ptr @mipi_csis_dump_regs._entry_ptr, ptr @mipi_csis_dump_regs._entry_ptr.70, ptr @mipi_csis_log_counters._entry, ptr @mipi_csis_log_counters._entry_ptr, ptr @mipi_csis_probe._entry, ptr @mipi_csis_probe._entry.12, ptr @mipi_csis_probe._entry.15, ptr @mipi_csis_probe._entry.18, ptr @mipi_csis_probe._entry.9, ptr @mipi_csis_probe._entry_ptr, ptr @mipi_csis_probe._entry_ptr.11, ptr @mipi_csis_probe._entry_ptr.14, ptr @mipi_csis_probe._entry_ptr.17, ptr @mipi_csis_probe._entry_ptr.21, ptr @mipi_csis_driver, ptr @.str, ptr @mipi_csis_of_match, ptr @mipi_csis_pm_ops, ptr @mipi_csis_probe.__key, ptr @.str.1, ptr @mipi_csis_probe.__key.2, ptr @.str.3, ptr @mipi_csis_events, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @mipi_csis_clk_id, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @mipi_csis_subdev_ops, ptr @.str.51, ptr @mipi_csis_entity_ops, ptr @mipi_csis_formats, ptr @mipi_csis_core_ops, ptr @mipi_csis_video_ops, ptr @mipi_csis_pad_ops, ptr @.str.52, ptr @.str.53, ptr @mipi_csis_dump_regs.registers, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @mipi_csis_notify_ops, ptr @.str.83, ptr @.str.84, ptr @mipi_csis_dump_regs_fops, ptr @.compoundliteral, ptr @.compoundliteral.85, ptr @switch.table.mipi_csis_set_fmt], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_events to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_clk_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_formats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_log_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_dump_regs.registers to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_dump_regs._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_calculate_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_async_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_csis_dump_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mipi_csis_set_fmt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mipi_csis_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mipi_csis_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mipi_csis_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 928, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %do.body

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mipi_csis_probe.__key) #8
  %slock = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mipi_csis_probe.__key.2, i16 noundef signext 3) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %info = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %info, align 4
  %events = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 20
  %2 = call ptr @memcpy(ptr %events, ptr @mipi_csis_events, i32 352)
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %clk_frequency.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 12
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.44, ptr noundef %clk_frequency.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %do.body.mipi_csis_parse_dt.exit_crit_edge, label %if.then.i

do.body.mipi_csis_parse_dt.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_csis_parse_dt.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 166000000, ptr %clk_frequency.i, align 4
  br label %mipi_csis_parse_dt.exit

mipi_csis_parse_dt.exit:                          ; preds = %if.then.i, %do.body.mipi_csis_parse_dt.exit_crit_edge
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %mipi_csis_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call14 to i32
  br label %cleanup74

if.end20:                                         ; preds = %mipi_csis_parse_dt.exit
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup74_crit_edge, label %if.end24

if.end20.cleanup74_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end24:                                         ; preds = %if.end20
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end.i:                                         ; preds = %if.end24
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %15, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %mrst.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %mrst.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %mrst.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i.i to i32
  br label %mipi_csis_phy_init.exit

if.end6.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call8.i = tail call ptr @devm_regulator_get(ptr noundef %19, ptr noundef nonnull @.str.45) #8
  %mipi_phy_regulator.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %mipi_phy_regulator.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i, ptr %mipi_phy_regulator.i, align 4
  %cmp.i26.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call8.i to i32
  br label %mipi_csis_phy_init.exit

if.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 @regulator_set_voltage(ptr noundef %call8.i, i32 noundef 1000000, i32 noundef 1000000) #8
  br label %mipi_csis_phy_init.exit

mipi_csis_phy_init.exit:                          ; preds = %if.end14.i, %if.then11.i, %if.then3.i
  %retval.0.i = phi i32 [ %17, %if.then3.i ], [ %21, %if.then11.i ], [ %call16.i, %if.end14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp26 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp26, label %mipi_csis_phy_init.exit.cleanup74_crit_edge, label %mipi_csis_phy_init.exit.if.end28_crit_edge

mipi_csis_phy_init.exit.if.end28_crit_edge:       ; preds = %mipi_csis_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

mipi_csis_phy_init.exit.cleanup74_crit_edge:      ; preds = %mipi_csis_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end28:                                         ; preds = %mipi_csis_phy_init.exit.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 4
  %num_clocks.i = getelementptr inbounds %struct.mipi_csis_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_clocks.i, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 8) #8
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !212

devm_kcalloc.exit.thread.i:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %clks43.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %clks43.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %clks43.i, align 4
  br label %cleanup74

devm_kcalloc.exit.i:                              ; preds = %if.end28
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %31 = extractvalue { i32, i1 } %26, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %31, i32 noundef 3520) #8
  %clks.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i.i, ptr %clks.i, align 4
  %tobool.not.i138 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i138, label %devm_kcalloc.exit.i.cleanup74_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.cleanup74_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %num_clocks345.i = getelementptr inbounds %struct.mipi_csis_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %num_clocks345.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_clocks345.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp46.not.i = icmp eq i32 %36, 0
  br i1 %cmp46.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x ptr], ptr @mipi_csis_clk_id, i32 0, i32 %i.047.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %39 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clks.i, align 4
  %arrayidx5.i = getelementptr %struct.clk_bulk_data, ptr %40, i32 %i.047.i
  %41 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx5.i, align 4
  %inc.i = add nuw i32 %i.047.i, 1
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 4
  %num_clocks3.i = getelementptr inbounds %struct.mipi_csis_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %num_clocks3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_clocks3.i, align 4
  %cmp.i139 = icmp ult i32 %inc.i, %45
  br i1 %cmp.i139, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %45, %for.body.i.for.end.i_crit_edge ]
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clks.i, align 4
  %call10.i = tail call i32 @devm_clk_bulk_get(ptr noundef %47, i32 noundef %.lcssa.i, ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %for.end.i.cleanup74_crit_edge, label %if.end13.i

for.end.i.cleanup74_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end13.i:                                       ; preds = %for.end.i
  %50 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clks.i, align 4
  %clk.i = getelementptr %struct.clk_bulk_data, ptr %51, i32 1, i32 1
  %52 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i, align 4
  %54 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clk_frequency.i, align 4
  %call16.i141 = tail call i32 @clk_set_rate(ptr noundef %53, i32 noundef %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i141)
  %cmp17.i = icmp slt i32 %call16.i141, 0
  br i1 %cmp17.i, label %do.end.i, label %if.end32

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %58 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clk_frequency.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.46, i32 noundef %59, i32 noundef %call16.i141) #11
  br label %cleanup74

if.end32:                                         ; preds = %if.end13.i
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i144 = icmp eq i32 %63, 0
  br i1 %cmp.not.i144, label %if.end.i147, label %if.end32.mipi_csis_phy_reset.exit_crit_edge

if.end32.mipi_csis_phy_reset.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_csis_phy_reset.exit

if.end.i147:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %mrst.i145 = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 3
  %64 = ptrtoint ptr %mrst.i145 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mrst.i145, align 4
  %call.i146 = tail call i32 @reset_control_assert(ptr noundef %65) #8
  tail call void @msleep(i32 noundef 20) #8
  %66 = ptrtoint ptr %mrst.i145 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mrst.i145, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %67) #8
  br label %mipi_csis_phy_reset.exit

mipi_csis_phy_reset.exit:                         ; preds = %if.end.i147, %if.end32.mipi_csis_phy_reset.exit_crit_edge
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info, align 4
  %num_clocks.i149 = getelementptr inbounds %struct.mipi_csis_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %num_clocks.i149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_clocks.i149, align 4
  %72 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clks.i, align 4
  %call.i.i151 = tail call i32 @clk_bulk_prepare(i32 noundef %71, ptr noundef %73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %tobool.not.i.i = icmp eq i32 %call.i.i151, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %mipi_csis_phy_reset.exit.mipi_csis_clk_enable.exit_crit_edge

mipi_csis_phy_reset.exit.mipi_csis_clk_enable.exit_crit_edge: ; preds = %mipi_csis_phy_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_csis_clk_enable.exit

if.end.i.i:                                       ; preds = %mipi_csis_phy_reset.exit
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %71, ptr noundef %73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end40_crit_edge, label %if.then3.i.i

if.end.i.i.if.end40_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %71, ptr noundef %73) #8
  br label %mipi_csis_clk_enable.exit

mipi_csis_clk_enable.exit:                        ; preds = %if.then3.i.i, %mipi_csis_phy_reset.exit.mipi_csis_clk_enable.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i151, %mipi_csis_phy_reset.exit.mipi_csis_clk_enable.exit_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp34 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp34, label %do.end38, label %mipi_csis_clk_enable.exit.if.end40_crit_edge

mipi_csis_clk_enable.exit.if.end40_crit_edge:     ; preds = %mipi_csis_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end38:                                         ; preds = %mipi_csis_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.i) #11
  br label %cleanup74

if.end40:                                         ; preds = %mipi_csis_clk_enable.exit.if.end40_crit_edge, %if.end.i.i.if.end40_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i152 = icmp eq ptr %77, null
  br i1 %tobool.not.i152, label %if.end.i153, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i153:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i153, %if.end40.dev_name.exit_crit_edge
  %retval.0.i154 = phi ptr [ %79, %if.end.i153 ], [ %77, %if.end40.dev_name.exit_crit_edge ]
  %call.i155 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call21, ptr noundef nonnull @mipi_csis_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i154, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool43.not = icmp eq i32 %call.i155, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %disable_clock

if.end48:                                         ; preds = %dev_name.exit
  %sd1.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7
  tail call void @v4l2_subdev_init(ptr noundef %sd1.i, ptr noundef nonnull @mipi_csis_subdev_ops) #8
  %owner.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %owner.i, align 4
  %name.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 9
  %index.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 6
  %81 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %index.i, align 4
  %conv.i = zext i8 %82 to i32
  %call.i156 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str, i32 noundef %conv.i) #8
  %flags.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 4
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %84, 4
  store i32 %or.i, ptr %flags.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 8
  %85 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %ctrl_handler.i, align 4
  %function.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  %86 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 20482, ptr %function.i, align 4
  %ops.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 0, i32 11
  %87 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mipi_csis_entity_ops, ptr %ops.i, align 4
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %dev3.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7, i32 14
  %90 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %dev3.i, align 4
  %csis_fmt.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 16
  %91 = ptrtoint ptr %csis_fmt.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @mipi_csis_formats, ptr %csis_fmt.i, align 4
  %format_mbus.i.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17
  %code.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 2
  %92 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 8207, ptr %code.i.i, align 4
  %93 = ptrtoint ptr %format_mbus.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 640, ptr %format_mbus.i.i.i, align 4
  %height.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 1
  %94 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 480, ptr %height.i.i, align 4
  %field.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 3
  %95 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %field.i.i, align 4
  %colorspace.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 4
  %96 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %colorspace.i.i, align 4
  %xfer_func.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 7
  %97 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1, ptr %xfer_func.i.i, align 4
  %98 = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 5
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %98, align 4
  %quantization.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 17, i32 6
  %100 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2, ptr %quantization.i.i, align 2
  %pads.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 8
  %flags5.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 8, i32 0, i32 4
  %101 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 5, ptr %flags5.i, align 4
  %flags8.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 8, i32 1, i32 4
  %102 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 6, ptr %flags8.i, align 4
  %call12.i = tail call i32 @media_entity_pads_init(ptr noundef %sd1.i, i16 noundef zeroext 2, ptr noundef %pads.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp50 = icmp slt i32 %call12.i, 0
  br i1 %cmp50, label %if.end48.disable_clock_crit_edge, label %if.end52

if.end48.disable_clock_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clock

if.end52:                                         ; preds = %if.end48
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %sd1.i, ptr %driver_data.i.i, align 4
  %call53 = tail call fastcc i32 @mipi_csis_async_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end59

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call53) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i157 = icmp eq ptr %107, null
  br i1 %tobool.not.i.i157, label %if.end.i.i158, label %if.end59.mipi_csis_debugfs_init.exit_crit_edge

if.end59.mipi_csis_debugfs_init.exit_crit_edge:   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_csis_debugfs_init.exit

if.end.i.i158:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %105, align 4
  br label %mipi_csis_debugfs_init.exit

mipi_csis_debugfs_init.exit:                      ; preds = %if.end.i.i158, %if.end59.mipi_csis_debugfs_init.exit_crit_edge
  %retval.0.i.i159 = phi ptr [ %109, %if.end.i.i158 ], [ %107, %if.end59.mipi_csis_debugfs_init.exit_crit_edge ]
  %call1.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i159, ptr noundef null) #8
  %debugfs_root.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 21
  %110 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call1.i, ptr %debugfs_root.i, align 4
  %debug.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 22
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.83, i16 noundef zeroext 384, ptr noundef %call1.i, ptr noundef %debug.i) #8
  %111 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %debugfs_root.i, align 4
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 384, ptr noundef %112, ptr noundef %call.i, ptr noundef nonnull @mipi_csis_dump_regs_fops) #8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %113 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i160 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i160, label %mipi_csis_debugfs_init.exit.do.end69_crit_edge, label %if.then61

mipi_csis_debugfs_init.exit.do.end69_crit_edge:   ; preds = %mipi_csis_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

if.then61:                                        ; preds = %mipi_csis_debugfs_init.exit
  %call62 = tail call fastcc i32 @mipi_csis_pm_resume(ptr noundef %dev1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %unregister_all, label %if.then61.do.end69_crit_edge

if.then61.do.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

do.end69:                                         ; preds = %if.then61.do.end69_crit_edge, %mipi_csis_debugfs_init.exit.do.end69_crit_edge
  %num_data_lanes = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 11, i32 3
  %114 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %115 to i32
  %116 = ptrtoint ptr %clk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %clk_frequency.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %117) #11
  br label %cleanup74

unregister_all:                                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %119) #8
  br label %cleanup

cleanup:                                          ; preds = %unregister_all, %do.end58
  %ret.0 = phi i32 [ %call53, %do.end58 ], [ %call62, %unregister_all ]
  %notifier = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 9
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd1.i) #8
  br label %disable_clock

disable_clock:                                    ; preds = %cleanup, %if.end48.disable_clock_crit_edge, %do.end47
  %ret.1 = phi i32 [ %call.i155, %do.end47 ], [ %call12.i, %if.end48.disable_clock_crit_edge ], [ %ret.0, %cleanup ]
  %120 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %info, align 4
  %num_clocks.i163 = getelementptr inbounds %struct.mipi_csis_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %num_clocks.i163 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_clocks.i163, align 4
  %124 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %123, ptr noundef %125) #8
  tail call void @clk_bulk_unprepare(i32 noundef %123, ptr noundef %125) #8
  tail call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup74

cleanup74:                                        ; preds = %disable_clock, %do.end69, %do.end38, %do.end.i, %for.end.i.cleanup74_crit_edge, %devm_kcalloc.exit.i.cleanup74_crit_edge, %devm_kcalloc.exit.thread.i, %mipi_csis_phy_init.exit.cleanup74_crit_edge, %if.end20.cleanup74_crit_edge, %if.then17, %entry.cleanup74_crit_edge
  %retval.0 = phi i32 [ %9, %if.then17 ], [ %retval.0.i.i, %do.end38 ], [ %ret.1, %disable_clock ], [ 0, %do.end69 ], [ -12, %entry.cleanup74_crit_edge ], [ %call21, %if.end20.cleanup74_crit_edge ], [ %retval.0.i, %mipi_csis_phy_init.exit.cleanup74_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ %call16.i141, %do.end.i ], [ %call10.i, %for.end.i.cleanup74_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup74_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_root.i = getelementptr i8, ptr %1, i32 892
  %2 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %notifier = getelementptr i8, ptr %1, i32 260
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call5 = tail call fastcc i32 @mipi_csis_pm_suspend(ptr noundef %dev, i1 noundef zeroext true)
  %info.i = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %num_clocks.i = getelementptr inbounds %struct.mipi_csis_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clocks.i, align 4
  %clks.i = getelementptr i8, ptr %1, i32 -20
  %8 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %9) #8
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #8
  %lock = getelementptr i8, ptr %1, i32 348
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.csi_state, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !213
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %5, i32 200
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #8, !srcloc !213
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %slock = getelementptr inbounds %struct.csi_state, ptr %dev_id, i32 0, i32 19
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %and = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %debug = getelementptr inbounds %struct.csi_state, ptr %dev_id, i32 0, i32 22
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %debug, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.for.body.preheader_crit_edge

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.049 = phi i32 [ %inc24, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.csi_state, ptr %dev_id, i32 0, i32 20, i32 %i.049
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  %mask = getelementptr %struct.csi_state, ptr %dev_id, i32 0, i32 20, i32 %i.049, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  br i1 %tobool12.not, label %land.lhs.true, label %land.lhs.true19

land.lhs.true:                                    ; preds = %for.body
  %and13 = and i32 %13, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then23_crit_edge

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true19:                                  ; preds = %for.body
  %and21 = and i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true19.if.end_crit_edge, label %land.lhs.true19.if.then23_crit_edge

land.lhs.true19.if.then23_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then23:                                        ; preds = %land.lhs.true19.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %counter = getelementptr %struct.csi_state, ptr %dev_id, i32 0, i32 20, i32 %i.049, i32 3
  %14 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %counter, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %land.lhs.true19.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %inc24 = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc24, 22
  br i1 %exitcond.not, label %if.end.if.end25_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %2) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %19, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %6) #8, !srcloc !217
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipi_csis_async_register(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #8
  %0 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %notifier = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 9
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #8
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 4
  %call = tail call ptr @dev_fwnode(ptr noundef %4) #8
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %vep) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.end.err_parse_crit_edge

if.end.err_parse_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_parse

for.cond.preheader:                               ; preds = %if.end
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %5 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %6 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %i.0 = phi i32 [ %conv9, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv)
  %exitcond.not = icmp eq i32 %i.0, %conv
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 1, i32 %i.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %8 to i32
  %add = add nuw nsw i32 %i.0, 1
  %cmp10.not = icmp eq i32 %add, %conv9
  br i1 %cmp10.not, label %for.body.for.cond_crit_edge, label %do.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.79) #11
  br label %err_parse

for.end:                                          ; preds = %for.cond
  %mipi_csi2 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2
  %bus15 = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 11
  %11 = call ptr @memcpy(ptr %bus15, ptr %mipi_csi2, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_csis_async_register.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_csis_async_register, %if.then23)) #8
          to label %do.body31 [label %if.then23], !srcloc !218

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %num_data_lanes26 = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %num_data_lanes26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_data_lanes26, align 1
  %conv27 = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_csis_async_register.__UNIQUE_ID_ddebug296, ptr noundef %13, ptr noundef nonnull @.str.81, i32 noundef %conv27) #8
  br label %do.body31

do.body31:                                        ; preds = %if.then23, %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_csis_async_register.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_csis_async_register, %if.then43)) #8
          to label %do.end48 [label %if.then43], !srcloc !218

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %18 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus15, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_csis_async_register.__UNIQUE_ID_ddebug297, ptr noundef %17, ptr noundef nonnull @.str.82, i32 noundef %19) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  %call50 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call1, i32 noundef 28) #8
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then52, label %if.end54

if.then52:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call50 to i32
  br label %err_parse

if.end54:                                         ; preds = %do.end48
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  %21 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mipi_csis_notify_ops, ptr %notifier, align 4
  %sd = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 7
  %call57 = call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd, ptr noundef %notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #8
  br label %cleanup

err_parse:                                        ; preds = %if.then52, %do.end, %if.end.err_parse_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_parse_crit_edge ], [ -22, %do.end ], [ %20, %if.then52 ]
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %err_parse, %if.end60, %if.end54.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_parse ], [ %call62, %if.end60 ], [ -107, %entry.cleanup_crit_edge ], [ %call57, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipi_csis_pm_resume(ptr nocapture noundef readonly %dev, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -28
  %lock = getelementptr i8, ptr %1, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br i1 %runtime, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state2 = getelementptr i8, ptr %1, i32 492
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state4 = getelementptr i8, ptr %1, i32 492
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 4
  %and5 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %info.i = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %mipi_csis_phy_enable.exit, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

mipi_csis_phy_enable.exit:                        ; preds = %if.then7
  %mipi_phy_regulator.i = getelementptr i8, ptr %1, i32 -12
  %10 = ptrtoint ptr %mipi_phy_regulator.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mipi_phy_regulator.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %mipi_csis_phy_enable.exit.if.end11_crit_edge, label %mipi_csis_phy_enable.exit.unlock_crit_edge

mipi_csis_phy_enable.exit.unlock_crit_edge:       ; preds = %mipi_csis_phy_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

mipi_csis_phy_enable.exit.if.end11_crit_edge:     ; preds = %mipi_csis_phy_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %mipi_csis_phy_enable.exit.if.end11_crit_edge, %if.then7.if.end11_crit_edge
  %12 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state4, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %state4, align 4
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info.i, align 4
  %num_clocks.i = getelementptr inbounds %struct.mipi_csis_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks.i, align 4
  %clks.i = getelementptr i8, ptr %1, i32 -20
  %18 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks.i, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %17, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i:                                       ; preds = %if.end11
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %17, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end14_crit_edge, label %if.then3.i.i

if.end.i.i.if.end14_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %17, ptr noundef %19) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i.i, %if.end.i.i.if.end14_crit_edge, %if.end11.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %20 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state4, align 4
  %and16 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mipi_csis_start_stream(ptr noundef %add.ptr.i)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %22 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state4, align 4
  %and21 = and i32 %23, -5
  store i32 %and21, ptr %state4, align 4
  br label %unlock

unlock:                                           ; preds = %if.end19, %mipi_csis_phy_enable.exit.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  %24 = phi i32 [ -11, %mipi_csis_phy_enable.exit.unlock_crit_edge ], [ 0, %if.end19 ], [ 0, %land.lhs.true.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %24
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_init_cfg(ptr nocapture noundef %sd, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sd_state, null
  br i1 %tobool.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.i.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !212

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  br label %cond.end46

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format_mbus.i = getelementptr i8, ptr %sd, i32 444
  br label %cond.end46

cond.end46:                                       ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %3, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.end.i ]
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8207, ptr %code, align 4
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 640, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 480, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %colorspace, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 7
  %9 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %xfer_func, align 4
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %10, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 6
  %12 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %quantization, align 2
  br i1 %tobool.not, label %cond.end46.cleanup_crit_edge, label %if.then.i87

cond.end46.cleanup_crit_edge:                     ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i87:                                      ; preds = %cond.end46
  %num_pads.i.i84 = getelementptr i8, ptr %sd, i32 32
  %13 = ptrtoint ptr %num_pads.i.i84 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp.not.i.i86 = icmp ugt i16 %14, 1
  br i1 %cmp.not.i.i86, label %if.then.i87.mipi_csis_get_format.exit93_crit_edge, label %do.end.i.i88, !prof !219

if.then.i87.mipi_csis_get_format.exit93_crit_edge: ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_csis_get_format.exit93

do.end.i.i88:                                     ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %mipi_csis_get_format.exit93

mipi_csis_get_format.exit93:                      ; preds = %do.end.i.i88, %if.then.i87.mipi_csis_get_format.exit93_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i88 ], [ 1, %if.then.i87.mipi_csis_get_format.exit93_crit_edge ]
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 %spec.select.i.i
  %17 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %mipi_csis_get_format.exit93, %cond.end46.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -28
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %slock.i = getelementptr i8, ptr %sd, i32 496
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  %debug.i = getelementptr i8, ptr %sd, i32 896
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %counter.i = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 20, i32 %i.01.i, i32 3
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not.i = icmp eq i32 %1, 0
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %for.body.i.do.end13.i_crit_edge

for.body.i.do.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %2 = ptrtoint ptr %debug.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debug.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not.i = icmp eq i8 %3, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.do.end13.i_crit_edge

lor.lhs.false.i.do.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end13.i:                                       ; preds = %lor.lhs.false.i.do.end13.i_crit_edge, %for.body.i.do.end13.i_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %name.i = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 20, i32 %i.01.i, i32 2
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef %7, i32 noundef %1) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end13.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %mipi_csis_log_counters.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mipi_csis_log_counters.exit:                      ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #8
  %8 = ptrtoint ptr %debug.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %debug.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %mipi_csis_log_counters.exit.if.end_crit_edge, label %land.lhs.true

mipi_csis_log_counters.exit.if.end_crit_edge:     ; preds = %mipi_csis_log_counters.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %mipi_csis_log_counters.exit
  %state1 = getelementptr i8, ptr %sd, i32 492
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state1, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.66) #11
  %regs.i.i = getelementptr i8, ptr %sd, i32 -24
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %if.then
  %i.01.i10 = phi i32 [ 0, %if.then ], [ %inc.i12, %for.body.i14.for.body.i14_crit_edge ]
  %arrayidx.i = getelementptr [12 x %struct.anon.95], ptr @mipi_csis_dump_regs.registers, i32 0, i32 %i.01.i10
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !213
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %name.i11 = getelementptr [12 x %struct.anon.95], ptr @mipi_csis_dump_regs.registers, i32 0, i32 %i.01.i10, i32 1
  %22 = ptrtoint ptr %name.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.69, ptr noundef %23, i32 noundef %19) #11
  %inc.i12 = add nuw nsw i32 %i.01.i10, 1
  %exitcond.not.i13 = icmp eq i32 %inc.i12, 12
  br i1 %exitcond.not.i13, label %for.body.i14.if.end_crit_edge, label %for.body.i14.for.body.i14_crit_edge

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i14

for.body.i14.if.end_crit_edge:                    ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i14.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %mipi_csis_log_counters.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else76, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @mipi_csis_calculate_params(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %slock.i = getelementptr i8, ptr %sd, i32 496
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  %counter.i = getelementptr i8, ptr %sd, i32 552
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %counter.i, align 4
  %counter.1.i = getelementptr i8, ptr %sd, i32 568
  %1 = ptrtoint ptr %counter.1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %counter.1.i, align 4
  %counter.2.i = getelementptr i8, ptr %sd, i32 584
  %2 = ptrtoint ptr %counter.2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %counter.2.i, align 4
  %counter.3.i = getelementptr i8, ptr %sd, i32 600
  %3 = ptrtoint ptr %counter.3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %counter.3.i, align 4
  %counter.4.i = getelementptr i8, ptr %sd, i32 616
  %4 = ptrtoint ptr %counter.4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %counter.4.i, align 4
  %counter.5.i = getelementptr i8, ptr %sd, i32 632
  %5 = ptrtoint ptr %counter.5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %counter.5.i, align 4
  %counter.6.i = getelementptr i8, ptr %sd, i32 648
  %6 = ptrtoint ptr %counter.6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %counter.6.i, align 4
  %counter.7.i = getelementptr i8, ptr %sd, i32 664
  %7 = ptrtoint ptr %counter.7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %counter.7.i, align 4
  %counter.8.i = getelementptr i8, ptr %sd, i32 680
  %8 = ptrtoint ptr %counter.8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %counter.8.i, align 4
  %counter.9.i = getelementptr i8, ptr %sd, i32 696
  %9 = ptrtoint ptr %counter.9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %counter.9.i, align 4
  %counter.10.i = getelementptr i8, ptr %sd, i32 712
  %10 = ptrtoint ptr %counter.10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %counter.10.i, align 4
  %counter.11.i = getelementptr i8, ptr %sd, i32 728
  %11 = ptrtoint ptr %counter.11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %counter.11.i, align 4
  %counter.12.i = getelementptr i8, ptr %sd, i32 744
  %12 = ptrtoint ptr %counter.12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %counter.12.i, align 4
  %counter.13.i = getelementptr i8, ptr %sd, i32 760
  %13 = ptrtoint ptr %counter.13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %counter.13.i, align 4
  %counter.14.i = getelementptr i8, ptr %sd, i32 776
  %14 = ptrtoint ptr %counter.14.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %counter.14.i, align 4
  %counter.15.i = getelementptr i8, ptr %sd, i32 792
  %15 = ptrtoint ptr %counter.15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %counter.15.i, align 4
  %counter.16.i = getelementptr i8, ptr %sd, i32 808
  %16 = ptrtoint ptr %counter.16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %counter.16.i, align 4
  %counter.17.i = getelementptr i8, ptr %sd, i32 824
  %17 = ptrtoint ptr %counter.17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %counter.17.i, align 4
  %counter.18.i = getelementptr i8, ptr %sd, i32 840
  %18 = ptrtoint ptr %counter.18.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %counter.18.i, align 4
  %counter.19.i = getelementptr i8, ptr %sd, i32 856
  %19 = ptrtoint ptr %counter.19.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %counter.19.i, align 4
  %counter.20.i = getelementptr i8, ptr %sd, i32 872
  %20 = ptrtoint ptr %counter.20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %counter.20.i, align 4
  %counter.21.i = getelementptr i8, ptr %sd, i32 888
  %21 = ptrtoint ptr %counter.21.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %counter.21.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !221
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !222
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %src_sd = getelementptr i8, ptr %sd, i32 308
  %25 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src_sd, align 4
  %tobool7.not = icmp eq ptr %26, null
  br i1 %tobool7.not, label %if.end6.if.end29_crit_edge, label %if.else

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else:                                          ; preds = %if.end6
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool9.not = icmp eq ptr %30, null
  br i1 %tobool9.not, label %if.else.if.then37_crit_edge, label %land.lhs.true

if.else.if.then37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_power, align 4
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %land.lhs.true.if.then37_crit_edge, label %if.else14

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %33 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool15.not = icmp eq ptr %33, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %s_power17 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %s_power17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_power17, align 4
  %tobool18.not = icmp eq ptr %35, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29.sink.split_crit_edge

land.lhs.true16.if.end29.sink.split_crit_edge:    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else22, %land.lhs.true16.if.end29.sink.split_crit_edge
  %.sink = phi ptr [ %32, %if.else22 ], [ %35, %land.lhs.true16.if.end29.sink.split_crit_edge ]
  %call26 = tail call i32 %.sink(ptr noundef nonnull %26, i32 noundef 1) #8
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.end6.if.end29_crit_edge
  %__result.0 = phi i32 [ -19, %if.end6.if.end29_crit_edge ], [ %call26, %if.end29.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp30 = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp32.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp30, %cmp32.not
  br i1 %or.cond, label %if.end29.if.then37_crit_edge, label %if.end29.if.then153_crit_edge

if.end29.if.then153_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then153

if.end29.if.then37_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %if.end29.if.then37_crit_edge, %land.lhs.true.if.then37_crit_edge, %if.else.if.then37_crit_edge
  %lock247 = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock247, i32 noundef 0) #8
  %state38 = getelementptr i8, ptr %sd, i32 492
  %36 = ptrtoint ptr %state38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state38, align 4
  %and = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.done.thread263_crit_edge

if.then37.done.thread263_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread263

if.end41:                                         ; preds = %if.then37
  tail call fastcc void @mipi_csis_start_stream(ptr noundef %add.ptr.i)
  %38 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src_sd, align 4
  %tobool45.not = icmp eq ptr %39, null
  br i1 %tobool45.not, label %if.end41.done.thread263_crit_edge, label %if.else47

if.end41.done.thread263_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread263

if.else47:                                        ; preds = %if.end41
  %ops48 = getelementptr inbounds %struct.v4l2_subdev, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %ops48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops48, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %video, align 4
  %tobool49.not = icmp eq ptr %43, null
  br i1 %tobool49.not, label %if.else47.done.thread263_crit_edge, label %land.lhs.true50

if.else47.done.thread263_crit_edge:               ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread263

land.lhs.true50:                                  ; preds = %if.else47
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_stream, align 4
  %tobool53.not = icmp eq ptr %45, null
  br i1 %tobool53.not, label %land.lhs.true50.done.thread263_crit_edge, label %if.else55

land.lhs.true50.done.thread263_crit_edge:         ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread263

if.else55:                                        ; preds = %land.lhs.true50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool56.not = icmp eq ptr %46, null
  br i1 %tobool56.not, label %if.else55.if.else63_crit_edge, label %land.lhs.true57

if.else55.if.else63_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else63

land.lhs.true57:                                  ; preds = %if.else55
  %s_stream58 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %s_stream58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_stream58, align 4
  %tobool59.not = icmp eq ptr %48, null
  br i1 %tobool59.not, label %land.lhs.true57.if.else63_crit_edge, label %land.lhs.true57.if.end70_crit_edge

land.lhs.true57.if.end70_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true57.if.else63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else63

if.else63:                                        ; preds = %land.lhs.true57.if.else63_crit_edge, %if.else55.if.else63_crit_edge
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %land.lhs.true57.if.end70_crit_edge
  %.sink268 = phi ptr [ %45, %if.else63 ], [ %48, %land.lhs.true57.if.end70_crit_edge ]
  %call67 = tail call i32 %.sink268(ptr noundef nonnull %39, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp72 = icmp slt i32 %call67, 0
  br i1 %cmp72, label %if.end70.done.thread263_crit_edge, label %if.end74

if.end70.done.thread263_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread263

if.end74:                                         ; preds = %if.end70
  %call2.i223 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  %debug.i = getelementptr i8, ptr %sd, i32 896
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end74
  %i.01.i = phi i32 [ 0, %if.end74 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %counter.i224 = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 20, i32 %i.01.i, i32 3
  %49 = ptrtoint ptr %counter.i224 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %counter.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp7.not.i = icmp eq i32 %50, 0
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %for.body.i.do.end13.i_crit_edge

for.body.i.do.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %51 = ptrtoint ptr %debug.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %debug.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool9.not.i = icmp eq i8 %52, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.do.end13.i_crit_edge

lor.lhs.false.i.do.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end13.i:                                       ; preds = %lor.lhs.false.i.do.end13.i_crit_edge, %for.body.i.do.end13.i_crit_edge
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %name.i = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 20, i32 %i.01.i, i32 2
  %55 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.52, ptr noundef %56, i32 noundef %50) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end13.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %mipi_csis_log_counters.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mipi_csis_log_counters.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i223) #8
  %57 = ptrtoint ptr %state38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state38, align 4
  %or = or i32 %58, 2
  store i32 %or, ptr %state38, align 4
  br label %done

if.else76:                                        ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %src_sd78 = getelementptr i8, ptr %sd, i32 308
  %59 = ptrtoint ptr %src_sd78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %src_sd78, align 4
  %tobool80.not = icmp eq ptr %60, null
  br i1 %tobool80.not, label %if.else76.if.end139.thread256_crit_edge, label %if.else82

if.else76.if.end139.thread256_crit_edge:          ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.thread256

if.else82:                                        ; preds = %if.else76
  %ops83 = getelementptr inbounds %struct.v4l2_subdev, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %ops83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops83, align 4
  %video84 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %video84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %video84, align 4
  %tobool85.not = icmp eq ptr %64, null
  br i1 %tobool85.not, label %if.else82.if.end107_crit_edge, label %land.lhs.true86

if.else82.if.end107_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.lhs.true86:                                  ; preds = %if.else82
  %s_stream89 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %s_stream89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_stream89, align 4
  %tobool90.not = icmp eq ptr %66, null
  br i1 %tobool90.not, label %land.lhs.true86.if.end107_crit_edge, label %if.else92

land.lhs.true86.if.end107_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.else92:                                        ; preds = %land.lhs.true86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool93.not = icmp eq ptr %67, null
  br i1 %tobool93.not, label %if.else92.if.else100_crit_edge, label %land.lhs.true94

if.else92.if.else100_crit_edge:                   ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else100

land.lhs.true94:                                  ; preds = %if.else92
  %s_stream95 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %s_stream95 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_stream95, align 4
  %tobool96.not = icmp eq ptr %69, null
  br i1 %tobool96.not, label %land.lhs.true94.if.else100_crit_edge, label %land.lhs.true94.if.end107.sink.split_crit_edge

land.lhs.true94.if.end107.sink.split_crit_edge:   ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107.sink.split

land.lhs.true94.if.else100_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else100

if.else100:                                       ; preds = %land.lhs.true94.if.else100_crit_edge, %if.else92.if.else100_crit_edge
  br label %if.end107.sink.split

if.end107.sink.split:                             ; preds = %if.else100, %land.lhs.true94.if.end107.sink.split_crit_edge
  %.sink269 = phi ptr [ %66, %if.else100 ], [ %69, %land.lhs.true94.if.end107.sink.split_crit_edge ]
  %call104 = tail call i32 %.sink269(ptr noundef nonnull %60, i32 noundef 0) #8
  br label %if.end107

if.end107:                                        ; preds = %if.end107.sink.split, %land.lhs.true86.if.end107_crit_edge, %if.else82.if.end107_crit_edge
  %70 = ptrtoint ptr %src_sd78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load ptr, ptr %src_sd78, align 4
  %tobool112.not = icmp eq ptr %.pr, null
  br i1 %tobool112.not, label %if.end107.if.end139.thread256_crit_edge, label %if.else114

if.end107.if.end139.thread256_crit_edge:          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.thread256

if.else114:                                       ; preds = %if.end107
  %ops115 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %71 = ptrtoint ptr %ops115 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops115, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tobool117.not = icmp eq ptr %74, null
  br i1 %tobool117.not, label %if.else114.if.end139.thread_crit_edge, label %land.lhs.true118

if.else114.if.end139.thread_crit_edge:            ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.thread

land.lhs.true118:                                 ; preds = %if.else114
  %s_power121 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %s_power121 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_power121, align 4
  %tobool122.not = icmp eq ptr %76, null
  br i1 %tobool122.not, label %land.lhs.true118.if.end139.thread_crit_edge, label %if.else124

land.lhs.true118.if.end139.thread_crit_edge:      ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.thread

if.else124:                                       ; preds = %land.lhs.true118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %77 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool125.not = icmp eq ptr %77, null
  br i1 %tobool125.not, label %if.else124.if.else132_crit_edge, label %land.lhs.true126

if.else124.if.else132_crit_edge:                  ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else132

land.lhs.true126:                                 ; preds = %if.else124
  %s_power127 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %s_power127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_power127, align 4
  %tobool128.not = icmp eq ptr %79, null
  br i1 %tobool128.not, label %land.lhs.true126.if.else132_crit_edge, label %land.lhs.true126.if.end139_crit_edge

land.lhs.true126.if.end139_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

land.lhs.true126.if.else132_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else132

if.else132:                                       ; preds = %land.lhs.true126.if.else132_crit_edge, %if.else124.if.else132_crit_edge
  br label %if.end139

if.end139:                                        ; preds = %if.else132, %land.lhs.true126.if.end139_crit_edge
  %.sink270 = phi ptr [ %76, %if.else132 ], [ %79, %land.lhs.true126.if.end139_crit_edge ]
  %call136 = tail call i32 %.sink270(ptr noundef nonnull %.pr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call136)
  %cmp141 = icmp eq i32 %call136, -515
  br i1 %cmp141, label %if.end139.if.end139.thread_crit_edge, label %if.end139.if.end139.thread256_crit_edge

if.end139.if.end139.thread256_crit_edge:          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.thread256

if.end139.if.end139.thread_crit_edge:             ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.thread

if.end139.thread:                                 ; preds = %if.end139.if.end139.thread_crit_edge, %land.lhs.true118.if.end139.thread_crit_edge, %if.else114.if.end139.thread_crit_edge
  br label %if.end139.thread256

if.end139.thread256:                              ; preds = %if.end139.thread, %if.end139.if.end139.thread256_crit_edge, %if.end107.if.end139.thread256_crit_edge, %if.else76.if.end139.thread256_crit_edge
  %80 = phi i32 [ 0, %if.end139.thread ], [ %call136, %if.end139.if.end139.thread256_crit_edge ], [ -19, %if.end107.if.end139.thread256_crit_edge ], [ -19, %if.else76.if.end139.thread256_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %regs.i.i.i = getelementptr i8, ptr %sd, i32 -24
  %81 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %84, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #8, !srcloc !217
  %85 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %86, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %88 = and i32 %87, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %90, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %88) #8, !srcloc !217
  %91 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %92, i32 36
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %94 = and i32 %93, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %95 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %96, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %94) #8, !srcloc !217
  %state144 = getelementptr i8, ptr %sd, i32 492
  %97 = ptrtoint ptr %state144 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %state144, align 4
  %and145 = and i32 %98, -3
  store i32 %and145, ptr %state144, align 4
  %debug = getelementptr i8, ptr %sd, i32 896
  %99 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %debug, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool146.not = icmp eq i8 %100, 0
  br i1 %tobool146.not, label %if.end139.thread256.done.thread263_crit_edge, label %if.then147

if.end139.thread256.done.thread263_crit_edge:     ; preds = %if.end139.thread256
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread263

if.then147:                                       ; preds = %if.end139.thread256
  %slock.i225 = getelementptr i8, ptr %sd, i32 496
  %call2.i226 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i225) #8
  br label %for.body.i231

for.body.i231:                                    ; preds = %for.inc.i238.for.body.i231_crit_edge, %if.then147
  %i.01.i228 = phi i32 [ 0, %if.then147 ], [ %inc.i236, %for.inc.i238.for.body.i231_crit_edge ]
  %counter.i229 = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 20, i32 %i.01.i228, i32 3
  %101 = ptrtoint ptr %counter.i229 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %counter.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp7.not.i230 = icmp eq i32 %102, 0
  br i1 %cmp7.not.i230, label %lor.lhs.false.i233, label %for.body.i231.do.end13.i235_crit_edge

for.body.i231.do.end13.i235_crit_edge:            ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i235

lor.lhs.false.i233:                               ; preds = %for.body.i231
  %103 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %debug, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool9.not.i232 = icmp eq i8 %104, 0
  br i1 %tobool9.not.i232, label %lor.lhs.false.i233.for.inc.i238_crit_edge, label %lor.lhs.false.i233.do.end13.i235_crit_edge

lor.lhs.false.i233.do.end13.i235_crit_edge:       ; preds = %lor.lhs.false.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i235

lor.lhs.false.i233.for.inc.i238_crit_edge:        ; preds = %lor.lhs.false.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i238

do.end13.i235:                                    ; preds = %lor.lhs.false.i233.do.end13.i235_crit_edge, %for.body.i231.do.end13.i235_crit_edge
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 4
  %name.i234 = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 20, i32 %i.01.i228, i32 2
  %107 = ptrtoint ptr %name.i234 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name.i234, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.52, ptr noundef %108, i32 noundef %102) #11
  br label %for.inc.i238

for.inc.i238:                                     ; preds = %do.end13.i235, %lor.lhs.false.i233.for.inc.i238_crit_edge
  %inc.i236 = add nuw nsw i32 %i.01.i228, 1
  %exitcond.not.i237 = icmp eq i32 %inc.i236, 22
  br i1 %exitcond.not.i237, label %mipi_csis_log_counters.exit239, label %for.inc.i238.for.body.i231_crit_edge

for.inc.i238.for.body.i231_crit_edge:             ; preds = %for.inc.i238
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i231

mipi_csis_log_counters.exit239:                   ; preds = %for.inc.i238
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i225, i32 noundef %call2.i226) #8
  br label %done

done.thread263:                                   ; preds = %if.end139.thread256.done.thread263_crit_edge, %if.end70.done.thread263_crit_edge, %land.lhs.true50.done.thread263_crit_edge, %if.else47.done.thread263_crit_edge, %if.end41.done.thread263_crit_edge, %if.then37.done.thread263_crit_edge
  %lock248.ph = phi ptr [ %lock247, %if.then37.done.thread263_crit_edge ], [ %lock, %if.end139.thread256.done.thread263_crit_edge ], [ %lock247, %if.end70.done.thread263_crit_edge ], [ %lock247, %if.end41.done.thread263_crit_edge ], [ %lock247, %land.lhs.true50.done.thread263_crit_edge ], [ %lock247, %if.else47.done.thread263_crit_edge ]
  %ret.0.ph = phi i32 [ -16, %if.then37.done.thread263_crit_edge ], [ %80, %if.end139.thread256.done.thread263_crit_edge ], [ %call67, %if.end70.done.thread263_crit_edge ], [ -19, %if.end41.done.thread263_crit_edge ], [ -515, %land.lhs.true50.done.thread263_crit_edge ], [ -515, %if.else47.done.thread263_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock248.ph) #8
  br label %if.then153

done:                                             ; preds = %mipi_csis_log_counters.exit239, %mipi_csis_log_counters.exit
  %lock248 = phi ptr [ %lock247, %mipi_csis_log_counters.exit ], [ %lock, %mipi_csis_log_counters.exit239 ]
  %ret.0 = phi i32 [ %call67, %mipi_csis_log_counters.exit ], [ %80, %mipi_csis_log_counters.exit239 ]
  tail call void @mutex_unlock(ptr noundef %lock248) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp152 = icmp slt i32 %ret.0, 0
  %or.cond221 = select i1 %tobool.not, i1 true, i1 %cmp152
  br i1 %or.cond221, label %done.if.then153_crit_edge, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

done.if.then153_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then153

if.then153:                                       ; preds = %done.if.then153_crit_edge, %done.thread263, %if.end29.if.then153_crit_edge
  %ret.1262 = phi i32 [ %ret.0, %done.if.then153_crit_edge ], [ %ret.0.ph, %done.thread263 ], [ %__result.0, %if.end29.if.then153_crit_edge ]
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 4
  %call.i240 = tail call i32 @__pm_runtime_idle(ptr noundef %110, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then153, %done.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ %ret.0, %done.cleanup_crit_edge ], [ %ret.1262, %if.then153 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipi_csis_calculate_params(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_sd = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 10
  %0 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_sd, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  %csis_fmt = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 16
  %4 = ptrtoint ptr %csis_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csis_fmt, align 4
  %width = getelementptr inbounds %struct.csis_pix_format, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 4
  %conv = zext i8 %7 to i32
  %num_data_lanes = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_data_lanes, align 1
  %conv1 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv1, 1
  %call = tail call i64 @v4l2_get_link_freq(ptr noundef %3, i32 noundef %conv, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %conv3 = trunc i64 %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.71, i32 noundef %conv3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.tr = trunc i64 %call to i32
  %conv6 = shl i32 %call.tr, 1
  %12 = add i32 %conv6, -1500000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1420000001, i32 %12)
  %13 = icmp ult i32 %12, -1420000001
  br i1 %13, label %do.body12, label %if.end21

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_csis_calculate_params.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_csis_calculate_params, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !218

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_csis_calculate_params.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.74, i32 noundef %conv6) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %conv6, -5000000
  %div = udiv i32 %sub, 45000000
  %hs_settle = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 13
  %16 = ptrtoint ptr %hs_settle to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %hs_settle, align 4
  %clk_settle = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 14
  %17 = ptrtoint ptr %clk_settle to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %clk_settle, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_csis_calculate_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_csis_calculate_params, %if.then34)) #8
          to label %cleanup [label %if.then34], !srcloc !218

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %20 = ptrtoint ptr %clk_settle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_settle, align 4
  %22 = ptrtoint ptr %hs_settle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hs_settle, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_csis_calculate_params.__UNIQUE_ID_ddebug294, ptr noundef %19, ptr noundef nonnull @.str.75, i32 noundef %conv6, i32 noundef %21, i32 noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end21, %if.then16, %do.body12, %do.end
  %retval.0 = phi i32 [ %conv3, %do.end ], [ -22, %if.then16 ], [ 0, %if.then34 ], [ -22, %do.body12 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mipi_csis_start_stream(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %3) #8, !srcloc !217
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %num_data_lanes.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_data_lanes.i, align 1
  %conv.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %11 = and i32 %10, -196609
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %sub.i = shl nuw nsw i32 %conv.i, 8
  %shl.i = add nsw i32 %sub.i, -256
  %or.i = or i32 %12, %shl.i
  %info.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 5
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %or2.i = or i32 %or.i, 1024
  %spec.select.i = select i1 %cmp.i, i32 %or2.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %17) #8, !srcloc !217
  %format_mbus.i.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 17
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %23 = and i32 %22, 66584575
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %csis_fmt.i.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 16
  %25 = ptrtoint ptr %csis_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csis_fmt.i.i, align 4
  %data_type.i.i = getelementptr inbounds %struct.csis_pix_format, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %data_type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_type.i.i, align 4
  %shl.i.i = shl i32 %28, 2
  %or.i.i = or i32 %shl.i.i, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %31, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %29) #8, !srcloc !217
  %32 = ptrtoint ptr %format_mbus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format_mbus.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height.i.i, align 4
  %shl1.i.i = shl i32 %35, 16
  %or2.i.i = or i32 %shl1.i.i, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #8
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %36) #8, !srcloc !217
  %hs_settle.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 13
  %39 = ptrtoint ptr %hs_settle.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hs_settle.i, align 4
  %shl3.i = shl i32 %40, 24
  %clk_settle.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 14
  %41 = ptrtoint ptr %clk_settle.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk_settle.i, align 4
  %shl4.i = shl i32 %42, 22
  %or5.i = or i32 %shl4.i, %shl3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #8
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %45, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %43) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %47, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 0) #8, !srcloc !217
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %49, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %51 = and i32 %50, 251654399
  %52 = or i32 %51, 16781056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %52) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %56, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 -201261056) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %58, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 0) #8, !srcloc !217
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %62 = or i32 %61, 67109120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %62) #8, !srcloc !217
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %68 = or i32 %67, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %68) #8, !srcloc !217
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %72, i32 36
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %74 = and i32 %73, -520093697
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  %76 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_data_lanes.i, align 1
  %conv.i9 = zext i8 %77 to i32
  %shl.i10 = shl i32 2, %conv.i9
  %sub.i11 = add i32 %shl.i10, 31
  %and5.i = and i32 %sub.i11, 31
  %or6.i = or i32 %and5.i, %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #8
  %79 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %80, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %78) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 -1) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %84, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -1) #8, !srcloc !217
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_get_link_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup19_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.end11
  ]

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup19_crit_edge

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end:                                           ; preds = %if.then
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %5 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.not.i.i = icmp ugt i16 %8, 1
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !219

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ 1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i
  br label %mipi_csis_get_format.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %format_mbus.i = getelementptr i8, ptr %sd, i32 444
  br label %mipi_csis_get_format.exit

mipi_csis_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.end.i ]
  %code5 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup19.sink.split

if.end11:                                         ; preds = %entry
  %index12 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %11 = ptrtoint ptr %index12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %12)
  %cmp13 = icmp ugt i32 %12, 19
  br i1 %cmp13, label %if.end11.cleanup19_crit_edge, label %if.end15

if.end11.cleanup19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 %12
  br label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %if.end15, %mipi_csis_get_format.exit
  %code5.sink = phi ptr [ %code5, %mipi_csis_get_format.exit ], [ %arrayidx, %if.end15 ]
  %13 = ptrtoint ptr %code5.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code5.sink, align 4
  %code6 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %15 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %code6, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %if.end11.cleanup19_crit_edge, %if.then.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup19_crit_edge ], [ -22, %entry.cleanup19_crit_edge ], [ -22, %if.end11.cleanup19_crit_edge ], [ 0, %cleanup19.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !219

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %mipi_csis_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format_mbus.i = getelementptr i8, ptr %sd, i32 444
  br label %mipi_csis_get_format.exit

mipi_csis_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.end.i ]
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.end5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  %num_pads.i.i.i = getelementptr i8, ptr %sd, i32 32
  %5 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.not.i.i.i = icmp ugt i16 %6, 1
  br i1 %cmp.not.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !219

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ 1, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i.i
  br label %mipi_csis_get_fmt.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %format_mbus.i.i = getelementptr i8, ptr %sd, i32 444
  br label %mipi_csis_get_fmt.exit

mipi_csis_get_fmt.exit:                           ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %v4l2_subdev_get_try_format.exit.i.i ], [ %format_mbus.i.i, %if.end.i.i ]
  %lock.i = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format.i, ptr %retval.0.i.i, i32 48)
  br label %cleanup.sink.split

if.end5:                                          ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %11, label %if.end5.find_csis_format.exit_crit_edge [
    i32 12316, label %cleanup.fold.split25.i
    i32 12289, label %cleanup.fold.split.i
    i32 12307, label %cleanup.fold.split8.i
    i32 12290, label %cleanup.fold.split9.i
    i32 12308, label %cleanup.fold.split10.i
    i32 8193, label %cleanup.fold.split11.i
    i32 12295, label %cleanup.fold.split12.i
    i32 12302, label %cleanup.fold.split13.i
    i32 12298, label %cleanup.fold.split14.i
    i32 12303, label %cleanup.fold.split15.i
    i32 8202, label %cleanup.fold.split16.i
    i32 12296, label %cleanup.fold.split17.i
    i32 12304, label %cleanup.fold.split18.i
    i32 12305, label %cleanup.fold.split19.i
    i32 12306, label %cleanup.fold.split20.i
    i32 8211, label %cleanup.fold.split21.i
    i32 12313, label %cleanup.fold.split22.i
    i32 12314, label %cleanup.fold.split23.i
    i32 12315, label %cleanup.fold.split24.i
  ]

if.end5.find_csis_format.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split.i:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split8.i:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split9.i:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split10.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split11.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split12.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split13.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split14.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split15.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split16.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split17.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split18.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split19.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split20.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split21.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split22.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split23.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split24.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

cleanup.fold.split25.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csis_format.exit

find_csis_format.exit:                            ; preds = %cleanup.fold.split25.i, %cleanup.fold.split24.i, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %if.end5.find_csis_format.exit_crit_edge
  %tobool.not = phi ptr [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 9), %cleanup.fold.split15.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 10), %cleanup.fold.split16.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 11), %cleanup.fold.split17.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 12), %cleanup.fold.split18.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 13), %cleanup.fold.split19.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 14), %cleanup.fold.split20.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 15), %cleanup.fold.split21.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 16), %cleanup.fold.split22.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 17), %cleanup.fold.split23.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 18), %cleanup.fold.split24.i ], [ getelementptr inbounds ([20 x %struct.csis_pix_format], ptr @mipi_csis_formats, i32 0, i32 19), %cleanup.fold.split25.i ], [ @mipi_csis_formats, %if.end5.find_csis_format.exit_crit_edge ]
  %width = getelementptr inbounds %struct.csis_pix_format, ptr %tobool.not, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %width, align 4
  %15 = and i8 %14, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %.not = icmp eq i8 %15, 7
  br i1 %.not, label %find_csis_format.exit.sw.epilog_crit_edge, label %switch.lookup

find_csis_format.exit.sw.epilog_crit_edge:        ; preds = %find_csis_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %find_csis_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rem = zext i8 %15 to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mipi_csis_set_fmt, i32 0, i32 %rem
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %find_csis_format.exit.sw.epilog_crit_edge
  %align.0 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %find_csis_format.exit.sw.epilog_crit_edge ]
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 1, i32 noundef 65535, i32 noundef %align.0, ptr noundef %height, i32 noundef 1, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #8
  %17 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  %19 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %21 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %20, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !219

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %20, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %23 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %24, i32 %spec.select.i.i
  br label %mipi_csis_get_format.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %format_mbus.i = getelementptr i8, ptr %sd, i32 444
  br label %mipi_csis_get_format.exit

mipi_csis_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i65 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.end.i ]
  %lock = getelementptr i8, ptr %sd, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %25 = ptrtoint ptr %tobool.not to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tobool.not, align 4
  %code17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i65, i32 0, i32 2
  %27 = ptrtoint ptr %code17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %code17, align 4
  %28 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format, align 4
  %30 = ptrtoint ptr %retval.0.i65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %retval.0.i65, align 4
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %height23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i65, i32 0, i32 1
  %33 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height23, align 4
  %34 = call ptr @memcpy(ptr %format, ptr %retval.0.i65, i32 48)
  %35 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i66 = icmp eq i32 %36, 0
  br i1 %cmp.i66, label %if.then.i70, label %if.end.i76

if.then.i70:                                      ; preds = %mipi_csis_get_format.exit
  %num_pads.i.i67 = getelementptr i8, ptr %sd, i32 32
  %37 = ptrtoint ptr %num_pads.i.i67 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_pads.i.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp.not.i.i69 = icmp ugt i16 %38, 1
  br i1 %cmp.not.i.i69, label %if.then.i70.v4l2_subdev_get_try_format.exit.i74_crit_edge, label %do.end.i.i71, !prof !219

if.then.i70.v4l2_subdev_get_try_format.exit.i74_crit_edge: ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i74

do.end.i.i71:                                     ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i74

v4l2_subdev_get_try_format.exit.i74:              ; preds = %do.end.i.i71, %if.then.i70.v4l2_subdev_get_try_format.exit.i74_crit_edge
  %spec.select.i.i72 = phi i32 [ 0, %do.end.i.i71 ], [ 1, %if.then.i70.v4l2_subdev_get_try_format.exit.i74_crit_edge ]
  %39 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i73 = getelementptr %struct.v4l2_subdev_pad_config, ptr %40, i32 %spec.select.i.i72
  br label %mipi_csis_get_format.exit78

if.end.i76:                                       ; preds = %mipi_csis_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format_mbus.i75 = getelementptr i8, ptr %sd, i32 444
  br label %mipi_csis_get_format.exit78

mipi_csis_get_format.exit78:                      ; preds = %if.end.i76, %v4l2_subdev_get_try_format.exit.i74
  %retval.0.i77 = phi ptr [ %arrayidx.i.i73, %v4l2_subdev_get_try_format.exit.i74 ], [ %format_mbus.i75, %if.end.i76 ]
  %41 = call ptr @memcpy(ptr %retval.0.i77, ptr %format, i32 48)
  %42 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp29 = icmp eq i32 %43, 1
  br i1 %cmp29, label %if.then31, label %mipi_csis_get_format.exit78.cleanup.sink.split_crit_edge

mipi_csis_get_format.exit78.cleanup.sink.split_crit_edge: ; preds = %mipi_csis_get_format.exit78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then31:                                        ; preds = %mipi_csis_get_format.exit78
  call void @__sanitizer_cov_trace_pc() #10
  %csis_fmt32 = getelementptr i8, ptr %sd, i32 440
  %44 = ptrtoint ptr %csis_fmt32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tobool.not, ptr %csis_fmt32, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then31, %mipi_csis_get_format.exit78.cleanup.sink.split_crit_edge, %mipi_csis_get_fmt.exit
  %lock.sink = phi ptr [ %lock.i, %mipi_csis_get_fmt.exit ], [ %lock, %if.then31 ], [ %lock, %mipi_csis_get_format.exit78.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_get_fwnode_pad_1_to_1(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_link_setup(ptr noundef %entity, ptr nocapture noundef readonly %local_pad, ptr nocapture noundef readonly %remote_pad, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_csis_link_setup.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_csis_link_setup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %entity, i32 -28
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %entity7 = getelementptr inbounds %struct.media_pad, ptr %remote_pad, i32 0, i32 1
  %2 = ptrtoint ptr %entity7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity7, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %local_pad, i32 0, i32 1
  %6 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity8, align 4
  %name9 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_csis_link_setup.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %5, ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags10 = getelementptr inbounds %struct.media_pad, ptr %local_pad, i32 0, i32 4
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags10, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %and25 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %src_sd32 = getelementptr i8, ptr %entity, i32 308
  br i1 %tobool26.not, label %if.end13.cleanup.sink.split_crit_edge, label %if.then27

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then27:                                        ; preds = %if.end13
  %entity15 = getelementptr inbounds %struct.media_pad, ptr %remote_pad, i32 0, i32 1
  %12 = ptrtoint ptr %entity15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity15, align 4
  %14 = ptrtoint ptr %src_sd32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src_sd32, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %if.then27.cleanup.sink.split_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.cleanup.sink.split_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then27.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.then27.cleanup.sink.split_crit_edge ], [ null, %if.end13.cleanup.sink.split_crit_edge ]
  %16 = ptrtoint ptr %src_sd32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %src_sd32, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then27.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -16, %if.then27.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr i8, ptr %notifier, i32 -216
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %call2 = tail call i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %sd, ptr noundef %1, i32 noundef 0) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links_to_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_dump_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mipi_csis_dump_regs_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_dump_regs_show(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private1 = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.66) #11
  %regs.i.i = getelementptr inbounds %struct.csi_state, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [12 x %struct.anon.95], ptr @mipi_csis_dump_regs.registers, i32 0, i32 %i.01.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !213
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %name.i = getelementptr [12 x %struct.anon.95], ptr @mipi_csis_dump_regs.registers, i32 0, i32 %i.01.i, i32 1
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef %13, i32 noundef %9) #11
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %mipi_csis_dump_regs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mipi_csis_dump_regs.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipi_csis_pm_suspend(ptr nocapture noundef readonly %dev, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %state2 = getelementptr i8, ptr %1, i32 492
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.then

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %regs.i.i.i = getelementptr i8, ptr %1, i32 -24
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #8, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %7, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #8, !srcloc !217
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %11) #8, !srcloc !217
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %17 = and i32 %16, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %17) #8, !srcloc !217
  %info.i = getelementptr i8, ptr %1, i32 -8
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %mipi_csis_phy_disable.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mipi_csis_phy_disable.exit:                       ; preds = %if.then
  %mipi_phy_regulator.i = getelementptr i8, ptr %1, i32 -12
  %24 = ptrtoint ptr %mipi_phy_regulator.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mipi_phy_regulator.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %mipi_csis_phy_disable.exit.if.end_crit_edge, label %mipi_csis_phy_disable.exit.unlock_crit_edge

mipi_csis_phy_disable.exit.unlock_crit_edge:      ; preds = %mipi_csis_phy_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

mipi_csis_phy_disable.exit.if.end_crit_edge:      ; preds = %mipi_csis_phy_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %mipi_csis_phy_disable.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %26 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info.i, align 4
  %num_clocks.i = getelementptr inbounds %struct.mipi_csis_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_clocks.i, align 4
  %clks.i = getelementptr i8, ptr %1, i32 -20
  %30 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %29, ptr noundef %31) #8
  tail call void @clk_bulk_unprepare(i32 noundef %29, ptr noundef %31) #8
  %32 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state2, align 4
  %and7 = and i32 %33, -2
  store i32 %and7, ptr %state2, align 4
  br i1 %runtime, label %if.end.unlock_crit_edge, label %if.then9

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %and7, 4
  %34 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %state2, align 4
  br label %unlock

unlock:                                           ; preds = %if.then9, %if.end.unlock_crit_edge, %mipi_csis_phy_disable.exit.unlock_crit_edge, %entry.unlock_crit_edge
  %35 = phi i32 [ -11, %mipi_csis_phy_disable.exit.unlock_crit_edge ], [ 0, %if.end.unlock_crit_edge ], [ 0, %if.then9 ], [ 0, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mipi_csis_pm_suspend(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mipi_csis_pm_resume(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mipi_csis_pm_suspend(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipi_csis_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mipi_csis_pm_resume(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !172, !174, !176, !177, !178, !180, !182, !183, !184, !185, !187, !188, !190, !191, !193, !195, !197, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__initcall__kmod_imx7_mipi_csis__298_1490_mipi_csis_driver_init6, !1, !"__initcall__kmod_imx7_mipi_csis__298_1490_mipi_csis_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1490, i32 1}
!2 = !{ptr @__exitcall_mipi_csis_driver_exit, !1, !"__exitcall_mipi_csis_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description299, !4, !"__UNIQUE_ID_description299", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1492, i32 1}
!5 = !{ptr @__UNIQUE_ID_file300, !6, !"__UNIQUE_ID_file300", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1493, i32 1}
!7 = !{ptr @__UNIQUE_ID_license301, !6, !"__UNIQUE_ID_license301", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias302, !9, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1494, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1485, i32 12}
!12 = !{ptr @mipi_csis_driver, !13, !"mipi_csis_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1480, i32 31}
!14 = !{ptr @mipi_csis_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1350, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mipi_csis_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1351, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1361, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mipi_csis_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mipi_csis_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1387, i32 3}
!30 = !{ptr @mipi_csis_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mipi_csis_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1395, i32 3}
!34 = !{ptr @mipi_csis_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mipi_csis_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1408, i32 3}
!38 = !{ptr @mipi_csis_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mipi_csis_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1423, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mipi_csis_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mipi_csis_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 255, i32 42}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 256, i32 43}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 257, i32 43}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 258, i32 40}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 259, i32 44}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 260, i32 39}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 261, i32 39}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 262, i32 43}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 263, i32 49}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 264, i32 44}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 265, i32 49}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 266, i32 50}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 267, i32 43}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 268, i32 43}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 270, i32 43}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 271, i32 42}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 272, i32 42}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 273, i32 41}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 275, i32 43}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 276, i32 41}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 277, i32 49}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 278, i32 49}
!89 = !{ptr @mipi_csis_events, !90, !"mipi_csis_events", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 253, i32 37}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1332, i32 33}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 717, i32 61}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 626, i32 3}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mipi_csis_clk_get._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mipi_csis_clk_get._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 291, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 292, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 294, i32 2}
!106 = !{ptr @mipi_csis_clk_id, !107, !"mipi_csis_clk_id", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 290, i32 27}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1306, i32 39}
!110 = !{ptr @mipi_csis_subdev_ops, !111, !"mipi_csis_subdev_ops", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1086, i32 37}
!112 = !{ptr @mipi_csis_core_ops, !113, !"mipi_csis_core_ops", i1 false, i1 false}
!113 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1071, i32 42}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 751, i32 4}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mipi_csis_log_counters._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mipi_csis_log_counters._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 764, i32 25}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 765, i32 25}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 766, i32 24}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 767, i32 28}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 768, i32 30}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 769, i32 29}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 770, i32 29}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 771, i32 33}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 772, i32 32}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 773, i32 33}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 774, i32 32}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 775, i32 25}
!143 = !{ptr @mipi_csis_dump_regs.registers, !144, !"registers", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 763, i32 4}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 781, i32 2}
!147 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mipi_csis_dump_regs._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @mipi_csis_dump_regs._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 785, i32 3}
!152 = !{ptr @mipi_csis_dump_regs._entry.68, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mipi_csis_dump_regs._entry_ptr.70, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @mipi_csis_video_ops, !155, !"mipi_csis_video_ops", i1 false, i1 false}
!155 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1075, i32 43}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 520, i32 3}
!158 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mipi_csis_calculate_params._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mipi_csis_calculate_params._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 528, i32 3}
!163 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @mipi_csis_calculate_params.__UNIQUE_ID_ddebug293, !162, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 541, i32 2}
!167 = !{ptr @mipi_csis_calculate_params.__UNIQUE_ID_ddebug294, !166, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!168 = !{ptr @mipi_csis_pad_ops, !169, !"mipi_csis_pad_ops", i1 false, i1 false}
!169 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1079, i32 41}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!172 = !{ptr @mipi_csis_entity_ops, !173, !"mipi_csis_entity_ops", i1 false, i1 false}
!173 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1125, i32 45}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1104, i32 2}
!176 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @mipi_csis_link_setup.__UNIQUE_ID_ddebug295, !175, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!178 = !{ptr @mipi_csis_formats, !179, !"mipi_csis_formats", i1 false, i1 false}
!179 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 347, i32 37}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1178, i32 4}
!182 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mipi_csis_async_register._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @mipi_csis_async_register._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1187, i32 2}
!187 = !{ptr @mipi_csis_async_register.__UNIQUE_ID_ddebug296, !186, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1188, i32 2}
!190 = !{ptr @mipi_csis_async_register.__UNIQUE_ID_ddebug297, !189, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!191 = !{ptr @mipi_csis_notify_ops, !192, !"mipi_csis_notify_ops", i1 false, i1 false}
!192 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1151, i32 52}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 803, i32 22}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 805, i32 22}
!197 = !{ptr @mipi_csis_dump_regs_fops, !198, !"mipi_csis_dump_regs_fops", i1 false, i1 false}
!198 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 797, i32 1}
!199 = !{ptr @mipi_csis_of_match, !200, !"mipi_csis_of_match", i1 false, i1 false}
!200 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1462, i32 34}
!201 = !{ptr @mipi_csis_pm_ops, !202, !"mipi_csis_pm_ops", i1 false, i1 false}
!202 = !{!"../drivers/staging/media/imx/imx7-mipi-csis.c", i32 1290, i32 32}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{i64 5265528}
!214 = !{i64 2156339720}
!215 = !{i8 0, i8 2}
!216 = !{i64 2156340103}
!217 = !{i64 5265110}
!218 = !{i64 2148762106, i64 2148762111, i64 2148762124, i64 2148762168, i64 2148762202, i64 2148762223}
!219 = !{!"branch_weights", i32 2000, i32 1}
!220 = !{i64 2148279710}
!221 = !{i64 764533, i64 764558, i64 764580, i64 764596, i64 764608, i64 764628, i64 764652, i64 764668, i64 764680}
!222 = !{i64 2148279898}
