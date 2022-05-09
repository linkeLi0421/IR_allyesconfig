; ModuleID = '/llk/IR_all_yes/drivers/media/platform/cadence/cdns-csi2rx.c_pt.bc'
source_filename = "../drivers/media/platform/cadence/cdns-csi2rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.98, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.98 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.csi2rx_priv = type { ptr, i32, %struct.mutex, ptr, ptr, ptr, [4 x ptr], ptr, [4 x i8], i8, i8, i8, i8, %struct.v4l2_subdev, %struct.v4l2_async_notifier, [5 x %struct.media_pad], ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_cdns_csi2rx__294_501_csi2rx_driver_init6 = internal global ptr @csi2rx_driver_init, section ".initcall6.init", align 4
@csi2rx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @csi2rx_probe, ptr @csi2rx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @csi2rx_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_csi2rx_driver_exit = internal global ptr @csi2rx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [61 x i8] c"cdns_csi2rx.author=Maxime Ripard <maxime.ripard@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"cdns_csi2rx.description=Cadence CSI2-RX controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [60 x i8] c"cdns_csi2rx.file=drivers/media/platform/cadence/cdns-csi2rx\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"cdns_csi2rx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns-csi2rx\00", [20 x i8] zeroinitializer }, align 32
@csi2rx_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,csi2rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@csi2rx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&csi2rx->lock\00", [18 x i8] zeroinitializer }, align 32
@csi2rx_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @csi2rx_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns_csi2rx\00", [20 x i8] zeroinitializer }, align 32
@csi2rx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 465, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Probed CSI2RX with %u/%u lanes, %u streams, %s D-PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi2rx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/cadence/cdns-csi2rx.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csi2rx_probe._entry_ptr = internal global ptr @csi2rx_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_clk\00", [24 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 292, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't get sys clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csi2rx_get_resources\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr = internal global ptr @csi2rx_get_resources._entry, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p_clk\00", [26 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.6, i32 298, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Couldn't get P clock\0A\00", [42 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.18 = internal global ptr @csi2rx_get_resources._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.6, i32 304, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get external D-PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.22 = internal global ptr @csi2rx_get_resources._entry.20, section ".printk_index", align 4
@csi2rx_get_resources._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.6, i32 313, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"External D-PHY not supported yet\0A\00", [62 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.25 = internal global ptr @csi2rx_get_resources._entry.23, section ".printk_index", align 4
@csi2rx_get_resources._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.6, i32 319, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't prepare and enable P clock\0A\00", [59 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.28 = internal global ptr @csi2rx_get_resources._entry.26, section ".printk_index", align 4
@csi2rx_get_resources._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.6, i32 329, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid number of lanes: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.31 = internal global ptr @csi2rx_get_resources._entry.29, section ".printk_index", align 4
@csi2rx_get_resources._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.6, i32 336, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of streams: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.34 = internal global ptr @csi2rx_get_resources._entry.32, section ".printk_index", align 4
@csi2rx_get_resources._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.6, i32 347, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Internal D-PHY not supported yet\0A\00", [62 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.37 = internal global ptr @csi2rx_get_resources._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pixel_if%u_clk\00", [17 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.13, ptr @.str.6, i32 357, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't get clock %s\0A\00", [41 x i8] zeroinitializer }, align 32
@csi2rx_get_resources._entry_ptr.41 = internal global ptr @csi2rx_get_resources._entry.39, section ".printk_index", align 4
@csi2rx_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 380, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not parse v4l2 endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi2rx_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@csi2rx_parse_dt._entry_ptr = internal global ptr @csi2rx_parse_dt._entry, section ".printk_index", align 4
@csi2rx_parse_dt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 387, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported media bus type: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@csi2rx_parse_dt._entry_ptr.46 = internal global ptr @csi2rx_parse_dt._entry.44, section ".printk_index", align 4
@csi2rx_parse_dt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.6, i32 397, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported number of data-lanes: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@csi2rx_parse_dt._entry_ptr.49 = internal global ptr @csi2rx_parse_dt._entry.47, section ".printk_index", align 4
@csi2rx_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @csi2rx_async_bound, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@csi2rx_async_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 259, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't find output pad for subdev %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csi2rx_async_bound\00", [45 x i8] zeroinitializer }, align 32
@csi2rx_async_bound._entry_ptr = internal global ptr @csi2rx_async_bound._entry, section ".printk_index", align 4
@csi2rx_async_bound.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bound %s pad: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@csi2rx_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi2rx_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@csi2rx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 202, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't disable our subdev\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi2rx_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@csi2rx_stop._entry_ptr = internal global ptr @csi2rx_stop._entry, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"csi2rx_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 492, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 497, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"csi2rx_of_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 486, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 430, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"csi2rx_subdev_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 243, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 444, i32 55 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 445, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 462, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 290, i32 45 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 292, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 296, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 298, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 302, i32 51 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 304, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 313, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 319, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 328, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 335, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 347, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 354, i32 40 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 357, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 380, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 386, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 396, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"csi2rx_notifier_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 275, i32 52 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 258, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 265, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"csi2rx_video_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 239, i32 43 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [48 x i8] c"../drivers/media/platform/cadence/cdns-csi2rx.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 202, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_csi2rx_driver_exit, ptr @__initcall__kmod_cdns_csi2rx__294_501_csi2rx_driver_init6, ptr @csi2rx_async_bound._entry, ptr @csi2rx_async_bound._entry_ptr, ptr @csi2rx_driver_exit, ptr @csi2rx_get_resources._entry, ptr @csi2rx_get_resources._entry.16, ptr @csi2rx_get_resources._entry.20, ptr @csi2rx_get_resources._entry.23, ptr @csi2rx_get_resources._entry.26, ptr @csi2rx_get_resources._entry.29, ptr @csi2rx_get_resources._entry.32, ptr @csi2rx_get_resources._entry.35, ptr @csi2rx_get_resources._entry.39, ptr @csi2rx_get_resources._entry_ptr, ptr @csi2rx_get_resources._entry_ptr.18, ptr @csi2rx_get_resources._entry_ptr.22, ptr @csi2rx_get_resources._entry_ptr.25, ptr @csi2rx_get_resources._entry_ptr.28, ptr @csi2rx_get_resources._entry_ptr.31, ptr @csi2rx_get_resources._entry_ptr.34, ptr @csi2rx_get_resources._entry_ptr.37, ptr @csi2rx_get_resources._entry_ptr.41, ptr @csi2rx_parse_dt._entry, ptr @csi2rx_parse_dt._entry.44, ptr @csi2rx_parse_dt._entry.47, ptr @csi2rx_parse_dt._entry_ptr, ptr @csi2rx_parse_dt._entry_ptr.46, ptr @csi2rx_parse_dt._entry_ptr.49, ptr @csi2rx_probe._entry, ptr @csi2rx_probe._entry_ptr, ptr @csi2rx_stop._entry, ptr @csi2rx_stop._entry_ptr, ptr @csi2rx_driver, ptr @.str, ptr @csi2rx_of_table, ptr @csi2rx_probe.__key, ptr @.str.1, ptr @csi2rx_subdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @csi2rx_notifier_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @csi2rx_video_ops, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_get_resources._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_parse_dt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_parse_dt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_async_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2rx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2rx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @csi2rx_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @csi2rx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @csi2rx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2rx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %v4l2_ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %clk_name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 552) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @csi2rx_probe.__key) #8
  %call.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.csi2rx_get_resources.exit_crit_edge, label %if.end.i

if.end.csi2rx_get_resources.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_get_resources.exit

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %sys_clk.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i, ptr %sys_clk.i, align 8
  %cmp.i170.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  %5 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sys_clk.i, align 8
  br label %csi2rx_get_resources.exit

if.end12.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  %p_clk.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14.i, ptr %p_clk.i, align 4
  %cmp.i171.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171.i, label %do.end20.i, label %if.end24.i

do.end20.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  %8 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_clk.i, align 4
  br label %csi2rx_get_resources.exit

if.end24.i:                                       ; preds = %if.end12.i
  %call26.i = tail call ptr @devm_phy_optional_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  %dphy.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %dphy.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26.i, ptr %dphy.i, align 8
  %cmp.i172.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172.i, label %do.end32.i, label %if.end36.i

do.end32.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  %11 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dphy.i, align 8
  br label %csi2rx_get_resources.exit

if.end36.i:                                       ; preds = %if.end24.i
  %tobool.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %err_free_priv

if.end43.i:                                       ; preds = %if.end36.i
  %13 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end43.i.do.end50.i_crit_edge

if.end43.i.do.end50.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50.i

if.end.i.i:                                       ; preds = %if.end43.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end52.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then3.i.i, %if.end43.i.do.end50.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end43.i.do.end50.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %err_free_priv

if.end52.i:                                       ; preds = %if.end.i.i
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !121
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %19 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  tail call void @clk_unprepare(ptr noundef %20) #8
  %21 = trunc i32 %18 to i8
  %conv.i = and i8 %21, 7
  %max_lanes.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %max_lanes.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %max_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp.i = icmp ugt i8 %conv.i, 4
  br i1 %cmp.i, label %do.end63.i, label %if.end67.i

do.end63.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv58.i = zext i8 %conv.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv58.i) #12
  br label %err_free_priv

if.end67.i:                                       ; preds = %if.end52.i
  %23 = lshr i8 %21, 4
  %conv69.i = and i8 %23, 7
  %max_streams.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv69.i, ptr %max_streams.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv69.i)
  %cmp72.i = icmp ugt i8 %conv69.i, 4
  br i1 %cmp72.i, label %do.end77.i, label %if.end81.i

do.end77.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv71.i = zext i8 %conv69.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv71.i) #12
  br label %err_free_priv

if.end81.i:                                       ; preds = %if.end67.i
  %and82.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  %has_internal_dphy.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 12
  %and82.lobit.i = lshr exact i32 %and82.i, 3
  %25 = trunc i32 %and82.lobit.i to i8
  %26 = ptrtoint ptr %has_internal_dphy.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %has_internal_dphy.i, align 1
  br i1 %tobool83.not.i, label %for.cond.preheader.i, label %do.end90.i

for.cond.preheader.i:                             ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv69.i)
  %cmp96178.not.i = icmp eq i8 %conv69.i, 0
  br i1 %cmp96178.not.i, label %for.cond.preheader.i.if.end5_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end5_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end90.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %err_free_priv

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_name.i) #8
  %27 = call ptr @memset(ptr %clk_name.i, i32 255, i32 16)
  %call99.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %indvars.iv.i) #8
  %call102.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %clk_name.i) #8
  %arrayidx.i = getelementptr %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 6, i32 %indvars.iv.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call102.i, ptr %arrayidx.i, align 4
  %cmp.i173.i = icmp ugt ptr %call102.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull %clk_name.i) #12
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name.i) #8
  br label %csi2rx_get_resources.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name.i) #8
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %31 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_streams.i, align 2
  %33 = zext i8 %32 to i32
  %cmp96.i = icmp ult i32 %indvars.iv.next.i, %33
  br i1 %cmp96.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

csi2rx_get_resources.exit:                        ; preds = %cleanup.thread.i, %do.end32.i, %do.end20.i, %do.end.i, %if.end.csi2rx_get_resources.exit_crit_edge
  %retval.2.i.in = phi ptr [ %6, %do.end.i ], [ %9, %do.end20.i ], [ %12, %do.end32.i ], [ %30, %cleanup.thread.i ], [ %call.i, %if.end.csi2rx_get_resources.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  %tobool3.not = icmp eq ptr %retval.2.i.in, null
  br i1 %tobool3.not, label %csi2rx_get_resources.exit.if.end5_crit_edge, label %csi2rx_get_resources.exit.err_free_priv_crit_edge

csi2rx_get_resources.exit.err_free_priv_crit_edge: ; preds = %csi2rx_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_priv

csi2rx_get_resources.exit.if.end5_crit_edge:      ; preds = %csi2rx_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %csi2rx_get_resources.exit.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %for.cond.preheader.i.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v4l2_ep.i) #8
  %34 = call ptr @memset(ptr %v4l2_ep.i, i32 0, i32 64)
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i, align 8
  %call.i81 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %38, i32 noundef 0, i32 noundef 0) #8
  %tobool.not.i82 = icmp eq ptr %call.i81, null
  br i1 %tobool.not.i82, label %if.end5.csi2rx_parse_dt.exit.thread_crit_edge, label %cond.true.i

if.end5.csi2rx_parse_dt.exit.thread_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_parse_dt.exit.thread

cond.true.i:                                      ; preds = %if.end5
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i81, i32 0, i32 3
  %call2.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %v4l2_ep.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %do.end.i83

do.end.i83:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.42) #12
  call void @of_node_put(ptr noundef nonnull %call.i81) #8
  br label %csi2rx_parse_dt.exit.thread

if.end6.i:                                        ; preds = %cond.true.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 1
  %41 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp.not.i = icmp eq i32 %42, 5
  br i1 %cmp.not.i, label %if.end13.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.45, i32 noundef %42) #12
  call void @of_node_put(ptr noundef nonnull %call.i81) #8
  br label %csi2rx_parse_dt.exit.thread

if.end13.i:                                       ; preds = %if.end6.i
  %lanes.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 8
  %data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2, i32 1
  %45 = ptrtoint ptr %data_lanes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_lanes.i, align 4
  %47 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %lanes.i, align 4
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2, i32 3
  %48 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_data_lanes.i, align 1
  %num_lanes.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %num_lanes.i, align 8
  %max_lanes.i84 = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 10
  %51 = ptrtoint ptr %max_lanes.i84 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %max_lanes.i84, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %52)
  %cmp19.i = icmp ugt i8 %49, %52
  br i1 %cmp19.i, label %do.end24.i, label %if.end28.i

do.end24.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i85 = zext i8 %49 to i32
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.48, i32 noundef %conv.i85) #12
  call void @of_node_put(ptr noundef nonnull %call.i81) #8
  br label %csi2rx_parse_dt.exit.thread

if.end28.i:                                       ; preds = %if.end13.i
  %notifier.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 14
  call void @v4l2_async_nf_init(ptr noundef %notifier.i) #8
  %call30.i = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier.i, ptr noundef %fwnode.i, i32 noundef 28) #8
  call void @of_node_put(ptr noundef nonnull %call.i81) #8
  %cmp.i.i86 = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i86, label %csi2rx_parse_dt.exit, label %if.end34.i

if.end34.i:                                       ; preds = %if.end28.i
  %55 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @csi2rx_notifier_ops, ptr %notifier.i, align 8
  %subdev.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 13
  %call37.i = call i32 @v4l2_async_subdev_nf_register(ptr noundef %subdev.i, ptr noundef %notifier.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %csi2rx_parse_dt.exit.thread98, label %if.then39.i

csi2rx_parse_dt.exit.thread98:                    ; preds = %if.end34.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #8
  %owner = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 13, i32 2
  %56 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %owner, align 4
  %dev12 = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 13, i32 14
  %57 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %dev12, align 8
  call void @v4l2_subdev_init(ptr noundef %subdev.i, ptr noundef nonnull @csi2rx_subdev_ops) #8
  %dev_priv.i = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 13, i32 11
  %58 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 13, i32 9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i87 = icmp eq ptr %60, null
  br i1 %tobool.not.i87, label %if.end.i88, label %csi2rx_parse_dt.exit.thread98.dev_name.exit_crit_edge

csi2rx_parse_dt.exit.thread98.dev_name.exit_crit_edge: ; preds = %csi2rx_parse_dt.exit.thread98
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #8
  br label %csi2rx_parse_dt.exit.thread

csi2rx_parse_dt.exit.thread:                      ; preds = %if.then39.i, %do.end24.i, %do.end10.i, %do.end.i83, %if.end5.csi2rx_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call37.i, %if.then39.i ], [ -22, %if.end5.csi2rx_parse_dt.exit.thread_crit_edge ], [ -22, %do.end24.i ], [ -22, %do.end10.i ], [ %call2.i, %do.end.i83 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #8
  br label %err_free_priv

csi2rx_parse_dt.exit:                             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %call30.i to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #8
  br label %err_free_priv

if.end.i88:                                       ; preds = %csi2rx_parse_dt.exit.thread98
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i88, %csi2rx_parse_dt.exit.thread98.dev_name.exit_crit_edge
  %retval.0.i89 = phi ptr [ %63, %if.end.i88 ], [ %60, %csi2rx_parse_dt.exit.thread98.dev_name.exit_crit_edge ]
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i89)
  %function = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 3
  %64 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 20482, ptr %function, align 4
  %flags = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 4
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %flags, align 4
  %flags23 = getelementptr %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 4
  %66 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %flags23, align 4
  %flags23.1 = getelementptr %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 15, i32 2, i32 4
  %67 = ptrtoint ptr %flags23.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %flags23.1, align 4
  %flags23.2 = getelementptr %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 15, i32 3, i32 4
  %68 = ptrtoint ptr %flags23.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %flags23.2, align 4
  %flags23.3 = getelementptr %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 15, i32 4, i32 4
  %69 = ptrtoint ptr %flags23.3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %flags23.3, align 4
  %pads = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 15
  %call28 = call i32 @media_entity_pads_init(ptr noundef %subdev.i, i16 noundef zeroext 5, ptr noundef %pads) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %dev_name.exit.err_cleanup_crit_edge

dev_name.exit.err_cleanup_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

if.end31:                                         ; preds = %dev_name.exit
  %call33 = call i32 @v4l2_async_register_subdev(ptr noundef %subdev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.err_cleanup_crit_edge, label %do.end39

if.end31.err_cleanup_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_lanes.i, align 8
  %conv = zext i8 %71 to i32
  %72 = ptrtoint ptr %max_lanes.i84 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %max_lanes.i84, align 1
  %conv41 = zext i8 %73 to i32
  %max_streams = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 11
  %74 = ptrtoint ptr %max_streams to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %max_streams, align 2
  %conv42 = zext i8 %75 to i32
  %has_internal_dphy = getelementptr inbounds %struct.csi2rx_priv, ptr %call7.i.i, i32 0, i32 12
  %76 = ptrtoint ptr %has_internal_dphy to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %has_internal_dphy, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool43.not = icmp eq i8 %77, 0
  %cond = select i1 %tobool43.not, ptr @.str.10, ptr @.str.9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv41, i32 noundef %conv42, ptr noundef nonnull %cond) #12
  br label %cleanup

err_cleanup:                                      ; preds = %if.end31.err_cleanup_crit_edge, %dev_name.exit.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call28, %dev_name.exit.err_cleanup_crit_edge ], [ %call33, %if.end31.err_cleanup_crit_edge ]
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #8
  br label %err_free_priv

err_free_priv:                                    ; preds = %err_cleanup, %csi2rx_parse_dt.exit, %csi2rx_parse_dt.exit.thread, %csi2rx_get_resources.exit.err_free_priv_crit_edge, %do.end90.i, %do.end77.i, %do.end63.i, %do.end50.i, %do.end41.i
  %ret.1 = phi i32 [ %retval.2.i, %csi2rx_get_resources.exit.err_free_priv_crit_edge ], [ %61, %csi2rx_parse_dt.exit ], [ %ret.0, %err_cleanup ], [ %retval.0.i.ph, %csi2rx_parse_dt.exit.thread ], [ -22, %do.end90.i ], [ -22, %do.end77.i ], [ -22, %do.end63.i ], [ %retval.0.i.ph.i, %do.end50.i ], [ -22, %do.end41.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_priv, %do.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_priv ], [ 0, %do.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2rx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %subdev = getelementptr inbounds %struct.csi2rx_priv, ptr %1, i32 0, i32 13
  tail call void @v4l2_async_unregister_subdev(ptr noundef %subdev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2rx_async_bound(ptr nocapture noundef readonly %notifier, ptr noundef %s_subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 2
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -140
  %fwnode = getelementptr inbounds %struct.v4l2_subdev, ptr %s_subdev, i32 0, i32 15
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  %call1 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %s_subdev, ptr noundef %3, i32 noundef 2) #8
  %source_pad = getelementptr i8, ptr %1, i32 408
  %4 = ptrtoint ptr %source_pad to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %source_pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %s_subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.50, ptr noundef %name) #12
  %7 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %source_pad, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %source_subdev = getelementptr i8, ptr %1, i32 404
  %9 = ptrtoint ptr %source_subdev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %s_subdev, ptr %source_subdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2rx_async_bound.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2rx_async_bound, %if.then8)) #8
          to label %do.end15 [label %if.then8], !srcloc !124

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %name10 = getelementptr inbounds %struct.v4l2_subdev, ptr %s_subdev, i32 0, i32 9
  %12 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %source_pad, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2rx_async_bound.__UNIQUE_ID_ddebug293, ptr noundef %11, ptr noundef nonnull @.str.52, ptr noundef %name10, i32 noundef %13) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then8, %if.end
  %14 = ptrtoint ptr %source_subdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %source_subdev, align 4
  %16 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %source_pad, align 4
  %conv = trunc i32 %17 to i16
  %call21 = tail call i32 @media_create_pad_link(ptr noundef %15, i16 noundef zeroext %conv, ptr noundef %1, i16 noundef zeroext 0, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %call21, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2rx_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  %lanes_used.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -140
  %lock = getelementptr i8, ptr %subdev, i32 -132
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %count8 = getelementptr i8, ptr %subdev, i32 -136
  %0 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count8, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lanes_used.i) #8
  %2 = ptrtoint ptr %lanes_used.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lanes_used.i, align 4
  %p_clk.i = getelementptr i8, ptr %subdev, i32 -32
  %3 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then2.csi2rx_start.exit.thread_crit_edge

if.then2.csi2rx_start.exit.thread_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit.thread

if.end.i.i:                                       ; preds = %if.then2
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %4) #8
  br label %csi2rx_start.exit.thread

if.end.i:                                         ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %base.i.i = getelementptr i8, ptr %subdev, i32 -40
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #8, !srcloc !126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !126
  %num_lanes.i = getelementptr i8, ptr %subdev, i32 -4
  %10 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_lanes.i, align 4
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp192.not.i = icmp eq i8 %11, 0
  br i1 %cmp192.not.i, label %if.end.i.for.cond11.preheader.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.cond11.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond11.preheader.i

for.cond11.preheader.i:                           ; preds = %for.body.i.for.cond11.preheader.i_crit_edge, %if.end.i.for.cond11.preheader.i_crit_edge
  %.lcssa.i = phi i8 [ 0, %if.end.i.for.cond11.preheader.i_crit_edge ], [ %17, %for.body.i.for.cond11.preheader.i_crit_edge ]
  %reg.0.lcssa.i = phi i32 [ %shl.i, %if.end.i.for.cond11.preheader.i_crit_edge ], [ %or.i, %for.body.i.for.cond11.preheader.i_crit_edge ]
  %max_lanes.i = getelementptr i8, ptr %subdev, i32 -3
  %12 = ptrtoint ptr %max_lanes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_lanes.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa.i, i8 %13)
  %cmp13197.i = icmp ult i8 %.lcssa.i, %13
  br i1 %cmp13197.i, label %for.body15.preheader.i, label %for.cond11.preheader.i.do.body.i_crit_edge

for.cond11.preheader.i.do.body.i_crit_edge:       ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.body15.preheader.i:                           ; preds = %for.cond11.preheader.i
  %conv12196.i = zext i8 %13 to i32
  %conv2.le.i = zext i8 %.lcssa.i to i32
  br label %for.body15.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.0194.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %reg.0193.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %shl.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.csi2rx_priv, ptr %add.ptr.i, i32 0, i32 8, i32 %i.0194.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %15 to i32
  %mul.i = shl i32 %i.0194.i, 2
  %add.i = add nuw nsw i32 %mul.i, 16
  %shl5.i = shl i32 %conv4.i, %add.i
  %or.i = or i32 %shl5.i, %reg.0193.i
  call void @_set_bit(i32 noundef %conv4.i, ptr noundef nonnull %lanes_used.i) #8
  %inc.i = add nuw nsw i32 %i.0194.i, 1
  %16 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_lanes.i, align 4
  %conv2.i = zext i8 %17 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond11.preheader.i_crit_edge

for.body.i.for.cond11.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond11.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.preheader.i
  %conv12200.i = phi i32 [ %conv12.i, %for.body15.i.for.body15.i_crit_edge ], [ %conv12196.i, %for.body15.preheader.i ]
  %i.1199.i = phi i32 [ %add19.i, %for.body15.i.for.body15.i_crit_edge ], [ %conv2.le.i, %for.body15.preheader.i ]
  %reg.1198.i = phi i32 [ %or23.i, %for.body15.i.for.body15.i_crit_edge ], [ %reg.0.lcssa.i, %for.body15.preheader.i ]
  %call18.i = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %lanes_used.i, i32 noundef %conv12200.i) #8
  call void @_set_bit(i32 noundef %call18.i, ptr noundef nonnull %lanes_used.i) #8
  %add19.i = add nuw nsw i32 %i.1199.i, 1
  %mul20.i = shl i32 %i.1199.i, 2
  %add21.i = add nuw nsw i32 %mul20.i, 16
  %shl22.i = shl i32 %add19.i, %add21.i
  %or23.i = or i32 %shl22.i, %reg.1198.i
  %18 = ptrtoint ptr %max_lanes.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_lanes.i, align 1
  %conv12.i = zext i8 %19 to i32
  %cmp13.i = icmp ult i32 %add19.i, %conv12.i
  br i1 %cmp13.i, label %for.body15.i.for.body15.i_crit_edge, label %for.body15.i.do.body.i_crit_edge

for.body15.i.do.body.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i

do.body.i:                                        ; preds = %for.body15.i.do.body.i_crit_edge, %for.cond11.preheader.i.do.body.i_crit_edge
  %reg.1.lcssa.i = phi i32 [ %reg.0.lcssa.i, %for.cond11.preheader.i.do.body.i_crit_edge ], [ %or23.i, %for.body15.i.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %20 = call i32 @llvm.bswap.i32(i32 %reg.1.lcssa.i) #8
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %22, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %20) #8, !srcloc !126
  %source_subdev.i = getelementptr i8, ptr %subdev, i32 404
  %23 = ptrtoint ptr %source_subdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %source_subdev.i, align 4
  %tobool27.not.i = icmp eq ptr %24, null
  br i1 %tobool27.not.i, label %do.body.i.csi2rx_start.exit_crit_edge, label %if.else.i

do.body.i.csi2rx_start.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit

if.else.i:                                        ; preds = %do.body.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video.i, align 4
  %tobool29.not.i = icmp eq ptr %28, null
  br i1 %tobool29.not.i, label %if.else.i.csi2rx_start.exit_crit_edge, label %land.lhs.true.i

if.else.i.csi2rx_start.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_stream.i, align 4
  %tobool32.not.i = icmp eq ptr %30, null
  br i1 %tobool32.not.i, label %land.lhs.true.i.csi2rx_start.exit_crit_edge, label %if.else34.i

land.lhs.true.i.csi2rx_start.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit

if.else34.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool35.not.i = icmp eq ptr %31, null
  br i1 %tobool35.not.i, label %if.else34.i.if.else42.i_crit_edge, label %land.lhs.true36.i

if.else34.i.if.else42.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else42.i

land.lhs.true36.i:                                ; preds = %if.else34.i
  %s_stream37.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %s_stream37.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_stream37.i, align 4
  %tobool38.not.i = icmp eq ptr %33, null
  br i1 %tobool38.not.i, label %land.lhs.true36.i.if.else42.i_crit_edge, label %land.lhs.true36.i.if.end49.i_crit_edge

land.lhs.true36.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.lhs.true36.i.if.else42.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else42.i

if.else42.i:                                      ; preds = %land.lhs.true36.i.if.else42.i_crit_edge, %if.else34.i.if.else42.i_crit_edge
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else42.i, %land.lhs.true36.i.if.end49.i_crit_edge
  %.sink.i = phi ptr [ %30, %if.else42.i ], [ %33, %land.lhs.true36.i.if.end49.i_crit_edge ]
  %call46.i = call i32 %.sink.i(ptr noundef nonnull %24, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool50.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool50.not.i, label %for.cond53.preheader.i, label %if.end49.i.csi2rx_start.exit_crit_edge

if.end49.i.csi2rx_start.exit_crit_edge:           ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit

for.cond53.preheader.i:                           ; preds = %if.end49.i
  %max_streams.i = getelementptr i8, ptr %subdev, i32 -2
  %34 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %max_streams.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp55203.not.i = icmp eq i8 %35, 0
  br i1 %cmp55203.not.i, label %for.cond53.preheader.i.for.end92.i_crit_edge, label %for.cond53.preheader.i.for.body57.i_crit_edge

for.cond53.preheader.i.for.body57.i_crit_edge:    ; preds = %for.cond53.preheader.i
  br label %for.body57.i

for.cond53.preheader.i.for.end92.i_crit_edge:     ; preds = %for.cond53.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92.i

for.body57.i:                                     ; preds = %do.body63.i.for.body57.i_crit_edge, %for.cond53.preheader.i.for.body57.i_crit_edge
  %i.2204.i = phi i32 [ %add67.i, %do.body63.i.for.body57.i_crit_edge ], [ 0, %for.cond53.preheader.i.for.body57.i_crit_edge ]
  %arrayidx58.i = getelementptr %struct.csi2rx_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.2204.i
  %36 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx58.i, align 4
  %call.i162.i = call i32 @clk_prepare(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %tobool.not.i163.i = icmp eq i32 %call.i162.i, 0
  br i1 %tobool.not.i163.i, label %if.end.i166.i, label %for.body57.i.err_disable_pixclk.i_crit_edge

for.body57.i.err_disable_pixclk.i_crit_edge:      ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_pixclk.i

if.end.i166.i:                                    ; preds = %for.body57.i
  %call1.i164.i = call i32 @clk_enable(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i164.i)
  %tobool2.not.i165.i = icmp eq i32 %call1.i164.i, 0
  br i1 %tobool2.not.i165.i, label %do.body63.i, label %if.end.i166.i.err_disable_pixclk.sink.split.i_crit_edge

if.end.i166.i.err_disable_pixclk.sink.split.i_crit_edge: ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_pixclk.sink.split.i

do.body63.i:                                      ; preds = %if.end.i166.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add67.i = add nuw nsw i32 %i.2204.i, 1
  %mul68.i = shl i32 %add67.i, 8
  %add69.i = or i32 %mul68.i, 12
  %add.ptr70.i = getelementptr i8, ptr %39, i32 %add69.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 65536) #8, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %shl75.i = shl i32 65536, %i.2204.i
  %or76.i = or i32 %shl75.i, -2147483648
  %40 = call i32 @llvm.bswap.i32(i32 %or76.i) #8
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add80.i = or i32 %mul68.i, 8
  %add.ptr81.i = getelementptr i8, ptr %42, i32 %add80.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %40) #8, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %44, i32 %mul68.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 16777216) #8, !srcloc !126
  %45 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %max_streams.i, align 2
  %conv54.i = zext i8 %46 to i32
  %cmp55.i = icmp ult i32 %add67.i, %conv54.i
  br i1 %cmp55.i, label %do.body63.i.for.body57.i_crit_edge, label %do.body63.i.for.end92.i_crit_edge

do.body63.i.for.end92.i_crit_edge:                ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92.i

do.body63.i.for.body57.i_crit_edge:               ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57.i

for.end92.i:                                      ; preds = %do.body63.i.for.end92.i_crit_edge, %for.cond53.preheader.i.for.end92.i_crit_edge
  %i.2.lcssa.i = phi i32 [ 0, %for.cond53.preheader.i.for.end92.i_crit_edge ], [ %add67.i, %do.body63.i.for.end92.i_crit_edge ]
  %sys_clk.i = getelementptr i8, ptr %subdev, i32 -36
  %47 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sys_clk.i, align 4
  %call.i170.i = call i32 @clk_prepare(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call.i170.i, 0
  br i1 %tobool.not.i171.i, label %if.end.i174.i, label %for.end92.i.err_disable_pixclk.i_crit_edge

for.end92.i.err_disable_pixclk.i_crit_edge:       ; preds = %for.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_pixclk.i

if.end.i174.i:                                    ; preds = %for.end92.i
  %call1.i172.i = call i32 @clk_enable(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i172.i)
  %tobool2.not.i173.i = icmp eq i32 %call1.i172.i, 0
  br i1 %tobool2.not.i173.i, label %csi2rx_start.exit.thread49, label %if.end.i174.i.err_disable_pixclk.sink.split.i_crit_edge

if.end.i174.i.err_disable_pixclk.sink.split.i_crit_edge: ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_pixclk.sink.split.i

csi2rx_start.exit.thread49:                       ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_clk.i, align 4
  call void @clk_disable(ptr noundef %50) #8
  call void @clk_unprepare(ptr noundef %50) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes_used.i) #8
  br label %if.end6

err_disable_pixclk.sink.split.i:                  ; preds = %if.end.i174.i.err_disable_pixclk.sink.split.i_crit_edge, %if.end.i166.i.err_disable_pixclk.sink.split.i_crit_edge
  %.sink226.i = phi ptr [ %48, %if.end.i174.i.err_disable_pixclk.sink.split.i_crit_edge ], [ %37, %if.end.i166.i.err_disable_pixclk.sink.split.i_crit_edge ]
  %i.2188.ph.i = phi i32 [ %i.2.lcssa.i, %if.end.i174.i.err_disable_pixclk.sink.split.i_crit_edge ], [ %i.2204.i, %if.end.i166.i.err_disable_pixclk.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call1.i172.i, %if.end.i174.i.err_disable_pixclk.sink.split.i_crit_edge ], [ %call1.i164.i, %if.end.i166.i.err_disable_pixclk.sink.split.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink226.i) #8
  br label %err_disable_pixclk.i

err_disable_pixclk.i:                             ; preds = %err_disable_pixclk.sink.split.i, %for.end92.i.err_disable_pixclk.i_crit_edge, %for.body57.i.err_disable_pixclk.i_crit_edge
  %i.2188.i = phi i32 [ %i.2.lcssa.i, %for.end92.i.err_disable_pixclk.i_crit_edge ], [ %i.2188.ph.i, %err_disable_pixclk.sink.split.i ], [ %i.2204.i, %for.body57.i.err_disable_pixclk.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i170.i, %for.end92.i.err_disable_pixclk.i_crit_edge ], [ %ret.0.ph.i, %err_disable_pixclk.sink.split.i ], [ %call.i162.i, %for.body57.i.err_disable_pixclk.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2188.i)
  %cmp99.not206.i = icmp eq i32 %i.2188.i, 0
  br i1 %cmp99.not206.i, label %err_disable_pixclk.i.csi2rx_start.exit_crit_edge, label %err_disable_pixclk.i.for.body101.i_crit_edge

err_disable_pixclk.i.for.body101.i_crit_edge:     ; preds = %err_disable_pixclk.i
  br label %for.body101.i

err_disable_pixclk.i.csi2rx_start.exit_crit_edge: ; preds = %err_disable_pixclk.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit

for.body101.i:                                    ; preds = %for.body101.i.for.body101.i_crit_edge, %err_disable_pixclk.i.for.body101.i_crit_edge
  %i.3207.i = phi i32 [ %sub.i, %for.body101.i.for.body101.i_crit_edge ], [ %i.2188.i, %err_disable_pixclk.i.for.body101.i_crit_edge ]
  %sub.i = add nsw i32 %i.3207.i, -1
  %arrayidx103.i = getelementptr %struct.csi2rx_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %sub.i
  %51 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx103.i, align 4
  call void @clk_disable(ptr noundef %52) #8
  call void @clk_unprepare(ptr noundef %52) #8
  %cmp99.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp99.not.i, label %for.body101.i.csi2rx_start.exit_crit_edge, label %for.body101.i.for.body101.i_crit_edge

for.body101.i.for.body101.i_crit_edge:            ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body101.i

for.body101.i.csi2rx_start.exit_crit_edge:        ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2rx_start.exit

csi2rx_start.exit.thread:                         ; preds = %if.then3.i.i, %if.then2.csi2rx_start.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.then2.csi2rx_start.exit.thread_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes_used.i) #8
  br label %out

csi2rx_start.exit:                                ; preds = %for.body101.i.csi2rx_start.exit_crit_edge, %err_disable_pixclk.i.csi2rx_start.exit_crit_edge, %if.end49.i.csi2rx_start.exit_crit_edge, %land.lhs.true.i.csi2rx_start.exit_crit_edge, %if.else.i.csi2rx_start.exit_crit_edge, %do.body.i.csi2rx_start.exit_crit_edge
  %ret.1.i = phi i32 [ %call46.i, %if.end49.i.csi2rx_start.exit_crit_edge ], [ -515, %if.else.i.csi2rx_start.exit_crit_edge ], [ -515, %land.lhs.true.i.csi2rx_start.exit_crit_edge ], [ -19, %do.body.i.csi2rx_start.exit_crit_edge ], [ %ret.0.i, %err_disable_pixclk.i.csi2rx_start.exit_crit_edge ], [ %ret.0.i, %for.body101.i.csi2rx_start.exit_crit_edge ]
  %53 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p_clk.i, align 4
  call void @clk_disable(ptr noundef %54) #8
  call void @clk_unprepare(ptr noundef %54) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes_used.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool4.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool4.not, label %csi2rx_start.exit.if.end6_crit_edge, label %csi2rx_start.exit.out_crit_edge

csi2rx_start.exit.out_crit_edge:                  ; preds = %csi2rx_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

csi2rx_start.exit.if.end6_crit_edge:              ; preds = %csi2rx_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %csi2rx_start.exit.if.end6_crit_edge, %csi2rx_start.exit.thread49, %if.then.if.end6_crit_edge
  %55 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count8, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %count8, align 4
  br label %out

if.else:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %57 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dec, ptr %count8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11:                                        ; preds = %if.else
  %p_clk.i24 = getelementptr i8, ptr %subdev, i32 -32
  %58 = ptrtoint ptr %p_clk.i24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p_clk.i24, align 4
  %call.i.i25 = tail call i32 @clk_prepare(ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %if.then11.clk_prepare_enable.exit.i_crit_edge

if.then11.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.end.i.i29:                                     ; preds = %if.then11
  %call1.i.i27 = tail call i32 @clk_enable(ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i27)
  %tobool2.not.i.i28 = icmp eq i32 %call1.i.i27, 0
  br i1 %tobool2.not.i.i28, label %if.end.i.i29.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i30

if.end.i.i29.clk_prepare_enable.exit.i_crit_edge: ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.then3.i.i30:                                   ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %59) #8
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i30, %if.end.i.i29.clk_prepare_enable.exit.i_crit_edge, %if.then11.clk_prepare_enable.exit.i_crit_edge
  %sys_clk.i31 = getelementptr i8, ptr %subdev, i32 -36
  %60 = ptrtoint ptr %sys_clk.i31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sys_clk.i31, align 4
  tail call void @clk_disable(ptr noundef %61) #8
  tail call void @clk_unprepare(ptr noundef %61) #8
  %max_streams.i32 = getelementptr i8, ptr %subdev, i32 -2
  %62 = ptrtoint ptr %max_streams.i32 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_streams.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp51.not.i = icmp eq i8 %63, 0
  br i1 %cmp51.not.i, label %clk_prepare_enable.exit.i.for.end.i_crit_edge, label %do.body.lr.ph.i

clk_prepare_enable.exit.i.for.end.i_crit_edge:    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.body.lr.ph.i:                                  ; preds = %clk_prepare_enable.exit.i
  %base.i = getelementptr i8, ptr %subdev, i32 -40
  br label %do.body.i39

do.body.i39:                                      ; preds = %do.body.i39.do.body.i39_crit_edge, %do.body.lr.ph.i
  %i.052.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add.i33, %do.body.i39.do.body.i39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.i33 = add nuw nsw i32 %i.052.i, 1
  %mul.i34 = shl i32 %add.i33, 8
  %add.ptr.i35 = getelementptr i8, ptr %65, i32 %mul.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #8, !srcloc !126
  %arrayidx.i36 = getelementptr %struct.csi2rx_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.052.i
  %66 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i36, align 4
  tail call void @clk_disable(ptr noundef %67) #8
  tail call void @clk_unprepare(ptr noundef %67) #8
  %68 = ptrtoint ptr %max_streams.i32 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_streams.i32, align 2
  %conv.i37 = zext i8 %69 to i32
  %cmp.i38 = icmp ult i32 %add.i33, %conv.i37
  br i1 %cmp.i38, label %do.body.i39.do.body.i39_crit_edge, label %do.body.i39.for.end.i_crit_edge

do.body.i39.for.end.i_crit_edge:                  ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.body.i39.do.body.i39_crit_edge:                ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i39

for.end.i:                                        ; preds = %do.body.i39.for.end.i_crit_edge, %clk_prepare_enable.exit.i.for.end.i_crit_edge
  %70 = ptrtoint ptr %p_clk.i24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p_clk.i24, align 4
  tail call void @clk_disable(ptr noundef %71) #8
  tail call void @clk_unprepare(ptr noundef %71) #8
  %source_subdev.i40 = getelementptr i8, ptr %subdev, i32 404
  %72 = ptrtoint ptr %source_subdev.i40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %source_subdev.i40, align 4
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %for.end.i.do.end28.i_crit_edge, label %if.else.i43

for.end.i.do.end28.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

if.else.i43:                                      ; preds = %for.end.i
  %ops.i41 = getelementptr inbounds %struct.v4l2_subdev, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %ops.i41 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i41, align 4
  %video.i42 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %video.i42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %video.i42, align 4
  %tobool4.not.i = icmp eq ptr %77, null
  br i1 %tobool4.not.i, label %if.else.i43.do.end28.i_crit_edge, label %land.lhs.true.i45

if.else.i43.do.end28.i_crit_edge:                 ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

land.lhs.true.i45:                                ; preds = %if.else.i43
  %s_stream.i44 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %s_stream.i44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_stream.i44, align 4
  %tobool7.not.i = icmp eq ptr %79, null
  br i1 %tobool7.not.i, label %land.lhs.true.i45.do.end28.i_crit_edge, label %if.else9.i

land.lhs.true.i45.do.end28.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

if.else9.i:                                       ; preds = %land.lhs.true.i45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool10.not.i = icmp eq ptr %80, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else17.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else17.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %s_stream12.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %s_stream12.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_stream12.i, align 4
  %tobool13.not.i = icmp eq ptr %82, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.else17.i_crit_edge, label %land.lhs.true11.i.if.end23.i_crit_edge

land.lhs.true11.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true11.i.if.else17.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true11.i.if.else17.i_crit_edge, %if.else9.i.if.else17.i_crit_edge
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else17.i, %land.lhs.true11.i.if.end23.i_crit_edge
  %.sink.i46 = phi ptr [ %79, %if.else17.i ], [ %82, %land.lhs.true11.i.if.end23.i_crit_edge ]
  %call21.i = tail call i32 %.sink.i46(ptr noundef nonnull %73, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool24.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool24.not.i, label %if.end23.i.out_crit_edge, label %if.end23.i.do.end28.i_crit_edge

if.end23.i.do.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

if.end23.i.out_crit_edge:                         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end28.i:                                       ; preds = %if.end23.i.do.end28.i_crit_edge, %land.lhs.true.i45.do.end28.i_crit_edge, %if.else.i43.do.end28.i_crit_edge, %for.end.i.do.end28.i_crit_edge
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.53) #12
  br label %out

out:                                              ; preds = %do.end28.i, %if.end23.i.out_crit_edge, %if.else.out_crit_edge, %if.end6, %csi2rx_start.exit.out_crit_edge, %csi2rx_start.exit.thread
  %ret.1 = phi i32 [ 0, %if.end6 ], [ %ret.1.i, %csi2rx_start.exit.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ %retval.0.i.ph, %csi2rx_start.exit.thread ], [ 0, %if.end23.i.out_crit_edge ], [ 0, %do.end28.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !102, !104, !106, !107, !108, !109, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_cdns_csi2rx__294_501_csi2rx_driver_init6, !1, !"__initcall__kmod_cdns_csi2rx__294_501_csi2rx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 501, i32 1}
!2 = !{ptr @__exitcall_csi2rx_driver_exit, !1, !"__exitcall_csi2rx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 502, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 503, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 504, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 497, i32 12}
!12 = !{ptr @csi2rx_driver, !13, !"csi2rx_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 492, i32 31}
!14 = !{ptr @csi2rx_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 430, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 444, i32 55}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 445, i32 4}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 462, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @csi2rx_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @csi2rx_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 290, i32 45}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 292, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @csi2rx_get_resources._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @csi2rx_get_resources._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 296, i32 43}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 298, i32 3}
!43 = !{ptr @csi2rx_get_resources._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @csi2rx_get_resources._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 302, i32 51}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 304, i32 3}
!49 = !{ptr @csi2rx_get_resources._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @csi2rx_get_resources._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 313, i32 3}
!53 = !{ptr @csi2rx_get_resources._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @csi2rx_get_resources._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 319, i32 3}
!57 = !{ptr @csi2rx_get_resources._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @csi2rx_get_resources._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 328, i32 3}
!61 = !{ptr @csi2rx_get_resources._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @csi2rx_get_resources._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 335, i32 3}
!65 = !{ptr @csi2rx_get_resources._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @csi2rx_get_resources._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 347, i32 3}
!69 = !{ptr @csi2rx_get_resources._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @csi2rx_get_resources._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 354, i32 40}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 357, i32 4}
!75 = !{ptr @csi2rx_get_resources._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @csi2rx_get_resources._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 380, i32 3}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @csi2rx_parse_dt._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @csi2rx_parse_dt._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 386, i32 3}
!84 = !{ptr @csi2rx_parse_dt._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @csi2rx_parse_dt._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 396, i32 3}
!88 = !{ptr @csi2rx_parse_dt._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @csi2rx_parse_dt._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @csi2rx_notifier_ops, !91, !"csi2rx_notifier_ops", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 275, i32 52}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 258, i32 3}
!94 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @csi2rx_async_bound._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @csi2rx_async_bound._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 265, i32 2}
!99 = !{ptr @csi2rx_async_bound.__UNIQUE_ID_ddebug293, !98, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!100 = !{ptr @csi2rx_subdev_ops, !101, !"csi2rx_subdev_ops", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 243, i32 37}
!102 = !{ptr @csi2rx_video_ops, !103, !"csi2rx_video_ops", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 239, i32 43}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 202, i32 3}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @csi2rx_stop._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @csi2rx_stop._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @csi2rx_of_table, !111, !"csi2rx_of_table", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/cadence/cdns-csi2rx.c", i32 486, i32 34}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 3080561}
!122 = !{i64 2156334597}
!123 = !{i8 0, i8 2}
!124 = !{i64 2148732553, i64 2148732558, i64 2148732571, i64 2148732615, i64 2148732649, i64 2148732670}
!125 = !{i64 2156310029}
!126 = !{i64 3080143}
!127 = !{i64 2156311132}
!128 = !{i64 2156311884}
!129 = !{i64 2156312933}
!130 = !{i64 2156313701}
!131 = !{i64 2156314504}
!132 = !{i64 2156315079}
