; ModuleID = '/llk/IR_all_yes/drivers/media/platform/cadence/cdns-csi2tx.c_pt.bc'
source_filename = "../drivers/media/platform/cadence/cdns-csi2tx.c"
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
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.csi2tx_fmt = type { i32, i32, i32 }
%struct.csi2tx_vops = type { ptr }
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
%struct.csi2tx_priv = type { ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, [4 x ptr], %struct.v4l2_subdev, [5 x %struct.media_pad], [5 x %struct.v4l2_mbus_framefmt], i8, [4 x i8], i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_cdns_csi2tx__292_656_csi2tx_driver_init6 = internal global ptr @csi2tx_driver_init, section ".initcall6.init", align 4
@csi2tx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @csi2tx_probe, ptr @csi2tx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @csi2tx_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_csi2tx_driver_exit = internal global ptr @csi2tx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [61 x i8] c"cdns_csi2tx.author=Maxime Ripard <maxime.ripard@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [51 x i8] c"cdns_csi2tx.description=Cadence CSI2-TX controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [60 x i8] c"cdns_csi2tx.file=drivers/media/platform/cadence/cdns-csi2tx\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [24 x i8] c"cdns_csi2tx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns-csi2tx\00", [20 x i8] zeroinitializer }, align 32
@csi2tx_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,csi2tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @csi2tx_vops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,csi2tx-1.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @csi2tx_vops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,csi2tx-2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @csi2tx_v2_vops }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@csi2tx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&csi2tx->lock\00", [18 x i8] zeroinitializer }, align 32
@csi2tx_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @csi2tx_video_ops, ptr null, ptr null, ptr null, ptr @csi2tx_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns_csi2tx\00", [20 x i8] zeroinitializer }, align 32
@fmt_default = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 1280, i32 720, i32 4106, i32 1, i32 0, %union.anon.94 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@csi2tx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 628, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Probed CSI2TX with %u/%u lanes, %u streams, %s D-PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi2tx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/cadence/cdns-csi2tx.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csi2tx_probe._entry_ptr = internal global ptr @csi2tx_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p_clk\00", [26 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 446, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Couldn't get p_clk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csi2tx_get_resources\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry_ptr = internal global ptr @csi2tx_get_resources._entry, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"esc_clk\00", [24 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.6, i32 452, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't get the esc_clk\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry_ptr.18 = internal global ptr @csi2tx_get_resources._entry.16, section ".printk_index", align 4
@csi2tx_get_resources._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.6, i32 458, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't prepare and enable p_clk\0A\00", [61 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry_ptr.21 = internal global ptr @csi2tx_get_resources._entry.19, section ".printk_index", align 4
@csi2tx_get_resources._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.6, i32 468, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid number of lanes: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry_ptr.24 = internal global ptr @csi2tx_get_resources._entry.22, section ".printk_index", align 4
@csi2tx_get_resources._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.6, i32 475, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of streams: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry_ptr.27 = internal global ptr @csi2tx_get_resources._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pixel_if%u_clk\00", [17 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.6, i32 488, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't get clock %s\0A\00", [41 x i8] zeroinitializer }, align 32
@csi2tx_get_resources._entry_ptr.31 = internal global ptr @csi2tx_get_resources._entry.29, section ".printk_index", align 4
@csi2tx_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi2tx_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csi2tx_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @csi2tx_enum_mbus_code, ptr null, ptr null, ptr @csi2tx_get_pad_format, ptr @csi2tx_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@csi2tx_formats = internal constant { [2 x %struct.csi2tx_fmt], [40 x i8] } { [2 x %struct.csi2tx_fmt] [%struct.csi2tx_fmt { i32 8207, i32 30, i32 2 }, %struct.csi2tx_fmt { i32 4106, i32 36, i32 3 }], [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@csi2tx_check_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 508, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not parse v4l2 endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csi2tx_check_lanes\00", [45 x i8] zeroinitializer }, align 32
@csi2tx_check_lanes._entry_ptr = internal global ptr @csi2tx_check_lanes._entry, section ".printk_index", align 4
@csi2tx_check_lanes._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.6, i32 514, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported media bus type: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@csi2tx_check_lanes._entry_ptr.37 = internal global ptr @csi2tx_check_lanes._entry.35, section ".printk_index", align 4
@csi2tx_check_lanes._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.6, i32 522, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Current configuration uses more lanes than supported\0A\00", [42 x i8] zeroinitializer }, align 32
@csi2tx_check_lanes._entry_ptr.40 = internal global ptr @csi2tx_check_lanes._entry.38, section ".printk_index", align 4
@csi2tx_check_lanes._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.6, i32 530, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid lane[%d] number: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2tx_check_lanes._entry_ptr.43 = internal global ptr @csi2tx_check_lanes._entry.41, section ".printk_index", align 4
@csi2tx_vops = internal constant { %struct.csi2tx_vops, [28 x i8] } { %struct.csi2tx_vops { ptr @csi2tx_dphy_setup }, [28 x i8] zeroinitializer }, align 32
@csi2tx_v2_vops = internal constant { %struct.csi2tx_vops, [28 x i8] } { %struct.csi2tx_vops { ptr @csi2tx_v2_dphy_setup }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"csi2tx_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 647, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 652, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"csi2tx_of_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 552, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 580, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"csi2tx_subdev_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 428, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 594, i32 55 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 595, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"fmt_default\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 133, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 625, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 444, i32 43 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 446, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 450, i32 45 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 452, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 458, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 467, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 474, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 484, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 487, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"csi2tx_video_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 424, i32 43 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"csi2tx_pad_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 226, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"csi2tx_formats\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 120, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 998, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 508, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 513, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 521, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 529, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"csi2tx_vops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 544, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"csi2tx_v2_vops\00", align 1
@___asan_gen_.189 = private constant [48 x i8] c"../drivers/media/platform/cadence/cdns-csi2tx.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 548, i32 33 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_csi2tx_driver_exit, ptr @__initcall__kmod_cdns_csi2tx__292_656_csi2tx_driver_init6, ptr @csi2tx_check_lanes._entry, ptr @csi2tx_check_lanes._entry.35, ptr @csi2tx_check_lanes._entry.38, ptr @csi2tx_check_lanes._entry.41, ptr @csi2tx_check_lanes._entry_ptr, ptr @csi2tx_check_lanes._entry_ptr.37, ptr @csi2tx_check_lanes._entry_ptr.40, ptr @csi2tx_check_lanes._entry_ptr.43, ptr @csi2tx_driver_exit, ptr @csi2tx_get_resources._entry, ptr @csi2tx_get_resources._entry.16, ptr @csi2tx_get_resources._entry.19, ptr @csi2tx_get_resources._entry.22, ptr @csi2tx_get_resources._entry.25, ptr @csi2tx_get_resources._entry.29, ptr @csi2tx_get_resources._entry_ptr, ptr @csi2tx_get_resources._entry_ptr.18, ptr @csi2tx_get_resources._entry_ptr.21, ptr @csi2tx_get_resources._entry_ptr.24, ptr @csi2tx_get_resources._entry_ptr.27, ptr @csi2tx_get_resources._entry_ptr.31, ptr @csi2tx_probe._entry, ptr @csi2tx_probe._entry_ptr, ptr @csi2tx_driver, ptr @.str, ptr @csi2tx_of_table, ptr @csi2tx_probe.__key, ptr @.str.1, ptr @csi2tx_subdev_ops, ptr @.str.2, ptr @.str.3, ptr @fmt_default, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @csi2tx_video_ops, ptr @csi2tx_pad_ops, ptr @csi2tx_formats, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @csi2tx_vops, ptr @csi2tx_v2_vops], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_get_resources._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_get_resources._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_get_resources._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_get_resources._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_get_resources._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_check_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_check_lanes._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_check_lanes._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_check_lanes._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_vops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2tx_v2_vops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2tx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @csi2tx_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @csi2tx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @csi2tx_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2tx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %v4l2_ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %clk_name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 748) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @csi2tx_probe.__key) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call7.i.i, align 8
  %call.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.csi2tx_get_resources.exit_crit_edge, label %if.end.i

if.end.csi2tx_get_resources.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_get_resources.exit

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %p_clk.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i, ptr %p_clk.i, align 8
  %cmp.i119.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  %5 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_clk.i, align 8
  br label %csi2tx_get_resources.exit

if.end12.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %esc_clk.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %esc_clk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14.i, ptr %esc_clk.i, align 4
  %cmp.i120.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %do.end20.i, label %if.end24.i

do.end20.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  %8 = ptrtoint ptr %esc_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esc_clk.i, align 4
  br label %csi2tx_get_resources.exit

if.end24.i:                                       ; preds = %if.end12.i
  %10 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_clk.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end24.i.do.end30.i_crit_edge

if.end24.i.do.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.end.i.i:                                       ; preds = %if.end24.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end32.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then3.i.i, %if.end24.i.do.end30.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end24.i.do.end30.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %err_free_priv

if.end32.i:                                       ; preds = %if.end.i.i
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !107
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %16 = ptrtoint ptr %p_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_clk.i, align 8
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  %and.i = and i32 %15, 7
  %max_lanes.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %max_lanes.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %max_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 4
  br i1 %cmp.i, label %do.end41.i, label %if.end44.i

do.end41.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %and.i) #13
  br label %err_free_priv

if.end44.i:                                       ; preds = %if.end32.i
  %and45.i = lshr i32 %15, 4
  %shr.i = and i32 %and45.i, 7
  %max_streams.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %max_streams.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %cmp47.i = icmp ugt i32 %shr.i, 4
  br i1 %cmp47.i, label %do.end51.i, label %if.end54.i

do.end51.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %shr.i) #13
  br label %err_free_priv

if.end54.i:                                       ; preds = %if.end44.i
  %has_internal_dphy.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 11
  %20 = trunc i32 %15 to i8
  %21 = lshr i8 %20, 3
  %22 = and i8 %21, 1
  %23 = ptrtoint ptr %has_internal_dphy.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %has_internal_dphy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp59126.not.i = icmp eq i32 %shr.i, 0
  br i1 %cmp59126.not.i, label %if.end54.i.if.end5_crit_edge, label %if.end54.i.for.body.i_crit_edge

if.end54.i.for.body.i_crit_edge:                  ; preds = %if.end54.i
  br label %for.body.i

if.end54.i.if.end5_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end54.i.for.body.i_crit_edge
  %i.0127.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end54.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_name.i) #9
  %24 = call ptr @memset(ptr %clk_name.i, i32 255, i32 16)
  %call60.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.0127.i) #9
  %call63.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %clk_name.i) #9
  %arrayidx.i = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 7, i32 %i.0127.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call63.i, ptr %arrayidx.i, align 4
  %cmp.i121.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %clk_name.i) #13
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name.i) #9
  br label %csi2tx_get_resources.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name.i) #9
  %inc.i = add nuw i32 %i.0127.i, 1
  %28 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_streams.i, align 8
  %cmp59.i = icmp ult i32 %inc.i, %29
  br i1 %cmp59.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

csi2tx_get_resources.exit:                        ; preds = %cleanup.thread.i, %do.end20.i, %do.end.i, %if.end.csi2tx_get_resources.exit_crit_edge
  %retval.2.i.in = phi ptr [ %6, %do.end.i ], [ %9, %do.end20.i ], [ %27, %cleanup.thread.i ], [ %call.i, %if.end.csi2tx_get_resources.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  %tobool3.not = icmp eq ptr %retval.2.i.in, null
  br i1 %tobool3.not, label %csi2tx_get_resources.exit.if.end5_crit_edge, label %csi2tx_get_resources.exit.err_free_priv_crit_edge

csi2tx_get_resources.exit.err_free_priv_crit_edge: ; preds = %csi2tx_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_priv

csi2tx_get_resources.exit.if.end5_crit_edge:      ; preds = %csi2tx_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %csi2tx_get_resources.exit.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %if.end54.i.if.end5_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call7 = call ptr @of_match_node(ptr noundef nonnull @csi2tx_of_table, ptr noundef %31) #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %vops = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %vops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %vops, align 8
  %subdev = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 8
  call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @csi2tx_subdev_ops) #9
  %owner = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %owner, align 4
  %dev11 = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 8, i32 14
  %36 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev11, align 8
  %flags = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 8, i32 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or = or i32 %38, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 8, i32 9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i92, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i92:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i92, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %42, %if.end.i92 ], [ %40, %if.end5.dev_name.exit_crit_edge ]
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v4l2_ep.i) #9
  %43 = call ptr @memset(ptr %v4l2_ep.i, i32 0, i32 64)
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i, align 8
  %call.i93 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %47, i32 noundef 0, i32 noundef 0) #9
  %tobool.not.i94 = icmp eq ptr %call.i93, null
  br i1 %tobool.not.i94, label %csi2tx_check_lanes.exit.thread, label %cond.end.i

csi2tx_check_lanes.exit.thread:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #9
  br label %err_free_priv

cond.end.i:                                       ; preds = %dev_name.exit
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i93, i32 0, i32 3
  %call2.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %v4l2_ep.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %do.end.i95

do.end.i95:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.33) #13
  br label %csi2tx_check_lanes.exit.thread111

if.end6.i:                                        ; preds = %cond.end.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 1
  %50 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cmp.not.i = icmp eq i32 %51, 5
  br i1 %cmp.not.i, label %if.end13.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.36, i32 noundef %51) #13
  br label %csi2tx_check_lanes.exit.thread111

if.end13.i:                                       ; preds = %if.end6.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2, i32 3
  %54 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_data_lanes.i, align 1
  %conv.i = zext i8 %55 to i32
  %num_lanes.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 13
  %56 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv.i, ptr %num_lanes.i, align 8
  %max_lanes.i96 = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 14
  %57 = ptrtoint ptr %max_lanes.i96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_lanes.i96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv.i)
  %cmp15.i = icmp ult i32 %58, %conv.i
  br i1 %cmp15.i, label %do.end20.i97, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp2467.not.i = icmp eq i8 %55, 0
  br i1 %cmp2467.not.i, label %for.cond.preheader.i.if.end20_crit_edge, label %for.cond.preheader.i.for.body.i99_crit_edge

for.cond.preheader.i.for.body.i99_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i99

for.cond.preheader.i.if.end20_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end20.i97:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.39) #13
  br label %csi2tx_check_lanes.exit.thread111

for.body.i99:                                     ; preds = %for.inc.i101.for.body.i99_crit_edge, %for.cond.preheader.i.for.body.i99_crit_edge
  %i.068.i = phi i32 [ %inc.i100, %for.inc.i101.for.body.i99_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i99_crit_edge ]
  %arrayidx.i98 = getelementptr %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2, i32 1, i32 %i.068.i
  %61 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp29.i = icmp eq i8 %62, 0
  br i1 %cmp29.i, label %do.end34.i, label %for.inc.i101

do.end34.i:                                       ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.42, i32 noundef %i.068.i, i32 noundef 0) #13
  br label %csi2tx_check_lanes.exit.thread111

for.inc.i101:                                     ; preds = %for.body.i99
  %inc.i100 = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i100, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i101.if.end20_crit_edge, label %for.inc.i101.for.body.i99_crit_edge

for.inc.i101.for.body.i99_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i99

for.inc.i101.if.end20_crit_edge:                  ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

csi2tx_check_lanes.exit.thread111:                ; preds = %do.end34.i, %do.end20.i97, %do.end10.i, %do.end.i95
  %ret.0.i.ph = phi i32 [ -22, %do.end34.i ], [ -22, %do.end20.i97 ], [ -22, %do.end10.i ], [ %call2.i, %do.end.i95 ]
  call void @of_node_put(ptr noundef nonnull %call.i93) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #9
  br label %err_free_priv

if.end20:                                         ; preds = %for.inc.i101.if.end20_crit_edge, %for.cond.preheader.i.if.end20_crit_edge
  %lanes.i = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 12
  %data_lanes44.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_ep.i, i32 0, i32 2, i32 2, i32 1
  %65 = ptrtoint ptr %data_lanes44.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_lanes44.i, align 4
  %67 = ptrtoint ptr %lanes.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %lanes.i, align 1
  call void @of_node_put(ptr noundef nonnull %call.i93) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_ep.i) #9
  %function = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  %68 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 20482, ptr %function, align 4
  %flags22 = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 4
  %69 = ptrtoint ptr %flags22 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %flags22, align 4
  %flags25 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 4
  %70 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %flags25, align 4
  %flags25.1 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 4
  %71 = ptrtoint ptr %flags25.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %flags25.1, align 4
  %flags25.2 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 4
  %72 = ptrtoint ptr %flags25.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %flags25.2, align 4
  %flags25.3 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 9, i32 4, i32 4
  %73 = ptrtoint ptr %flags25.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %flags25.3, align 4
  %arrayidx29 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 10, i32 1
  %74 = call ptr @memcpy(ptr %arrayidx29, ptr @fmt_default, i32 48)
  %arrayidx29.1 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 10, i32 2
  %75 = call ptr @memcpy(ptr %arrayidx29.1, ptr @fmt_default, i32 48)
  %arrayidx29.2 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 10, i32 3
  %76 = call ptr @memcpy(ptr %arrayidx29.2, ptr @fmt_default, i32 48)
  %arrayidx29.3 = getelementptr %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 10, i32 4
  %77 = call ptr @memcpy(ptr %arrayidx29.3, ptr @fmt_default, i32 48)
  %pads = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 9
  %call37 = call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 5, ptr noundef %pads) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end20.err_free_priv_crit_edge

if.end20.err_free_priv_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_priv

if.end40:                                         ; preds = %if.end20
  %call42 = call i32 @v4l2_async_register_subdev(ptr noundef %subdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end40.err_free_priv_crit_edge, label %do.end48

if.end40.err_free_priv_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_priv

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_lanes.i, align 8
  %80 = ptrtoint ptr %max_lanes.i96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_lanes.i96, align 4
  %max_streams = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 15
  %82 = ptrtoint ptr %max_streams to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_streams, align 8
  %has_internal_dphy = getelementptr inbounds %struct.csi2tx_priv, ptr %call7.i.i, i32 0, i32 11
  %84 = ptrtoint ptr %has_internal_dphy to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %has_internal_dphy, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool50.not = icmp eq i8 %85, 0
  %cond = select i1 %tobool50.not, ptr @.str.10, ptr @.str.9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %79, i32 noundef %81, i32 noundef %83, ptr noundef nonnull %cond) #13
  br label %cleanup

err_free_priv:                                    ; preds = %if.end40.err_free_priv_crit_edge, %if.end20.err_free_priv_crit_edge, %csi2tx_check_lanes.exit.thread111, %csi2tx_check_lanes.exit.thread, %csi2tx_get_resources.exit.err_free_priv_crit_edge, %do.end51.i, %do.end41.i, %do.end30.i
  %ret.0 = phi i32 [ %retval.2.i, %csi2tx_get_resources.exit.err_free_priv_crit_edge ], [ %call37, %if.end20.err_free_priv_crit_edge ], [ %call42, %if.end40.err_free_priv_crit_edge ], [ -22, %csi2tx_check_lanes.exit.thread ], [ %ret.0.i.ph, %csi2tx_check_lanes.exit.thread111 ], [ -22, %do.end51.i ], [ -22, %do.end41.i ], [ %retval.0.i.ph.i, %do.end30.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_priv, %do.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_priv ], [ 0, %do.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2tx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %subdev = getelementptr inbounds %struct.csi2tx_priv, ptr %1, i32 0, i32 8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %subdev) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2tx_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -132
  %lock = getelementptr i8, ptr %subdev, i32 -124
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %count8 = getelementptr i8, ptr %subdev, i32 -128
  %0 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count8, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr i8, ptr %subdev, i32 -32
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #9, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 67108864) #9, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #9
  %vops.i = getelementptr i8, ptr %subdev, i32 -28
  %8 = ptrtoint ptr %vops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vops.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %land.lhs.true.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %add.ptr.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %links.i = getelementptr i8, ptr %subdev, i32 48
  %13 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn10.i = load ptr, ptr %links.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %links.i
  br i1 %cmp.not11.i, label %if.end.i.csi2tx_start.exit_crit_edge, label %for.cond8.preheader.preheader.i

if.end.i.csi2tx_start.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_start.exit

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %subdev, i32 228
  %arrayidx.1.i = getelementptr i8, ptr %subdev, i32 260
  %arrayidx.2.i = getelementptr i8, ptr %subdev, i32 292
  %arrayidx.3.i = getelementptr i8, ptr %subdev, i32 324
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %cleanup48.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %.pn12.i = phi ptr [ %.pn.i, %cleanup48.i.for.cond8.preheader.i_crit_edge ], [ %.pn10.i, %for.cond8.preheader.preheader.i ]
  %14 = getelementptr i8, ptr %.pn12.i, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %flags.i = getelementptr i8, ptr %.pn12.i, i32 20
  %cmp11.i = icmp eq ptr %arrayidx.i, %16
  br i1 %cmp11.i, label %land.lhs.true12.i, label %for.cond8.preheader.i.for.inc.i_crit_edge

for.cond8.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true12.i:                                ; preds = %for.cond8.preheader.i
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true12.i.for.inc.i_crit_edge, label %land.lhs.true12.i.if.end18.i_crit_edge

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true12.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true12.i.for.inc.i_crit_edge, %for.cond8.preheader.i.for.inc.i_crit_edge
  %cmp11.1.i = icmp eq ptr %arrayidx.1.i, %16
  br i1 %cmp11.1.i, label %land.lhs.true12.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

land.lhs.true12.1.i:                              ; preds = %for.inc.i
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool13.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool13.not.1.i, label %land.lhs.true12.1.i.for.inc.1.i_crit_edge, label %land.lhs.true12.1.i.if.end18.i_crit_edge

land.lhs.true12.1.i.if.end18.i_crit_edge:         ; preds = %land.lhs.true12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true12.1.i.for.inc.1.i_crit_edge:        ; preds = %land.lhs.true12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true12.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %cmp11.2.i = icmp eq ptr %arrayidx.2.i, %16
  br i1 %cmp11.2.i, label %land.lhs.true12.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

land.lhs.true12.2.i:                              ; preds = %for.inc.1.i
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.2.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool13.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool13.not.2.i, label %land.lhs.true12.2.i.for.inc.2.i_crit_edge, label %land.lhs.true12.2.i.if.end18.i_crit_edge

land.lhs.true12.2.i.if.end18.i_crit_edge:         ; preds = %land.lhs.true12.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true12.2.i.for.inc.2.i_crit_edge:        ; preds = %land.lhs.true12.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true12.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %cmp11.3.i = icmp eq ptr %arrayidx.3.i, %16
  br i1 %cmp11.3.i, label %land.lhs.true12.3.i, label %for.inc.2.i.cleanup48.i_crit_edge

for.inc.2.i.cleanup48.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48.i

land.lhs.true12.3.i:                              ; preds = %for.inc.2.i
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.3.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool13.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool13.not.3.i, label %land.lhs.true12.3.i.cleanup48.i_crit_edge, label %land.lhs.true12.3.i.if.end18.i_crit_edge

land.lhs.true12.3.i.if.end18.i_crit_edge:         ; preds = %land.lhs.true12.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true12.3.i.cleanup48.i_crit_edge:        ; preds = %land.lhs.true12.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48.i

if.end18.i:                                       ; preds = %land.lhs.true12.3.i.if.end18.i_crit_edge, %land.lhs.true12.2.i.if.end18.i_crit_edge, %land.lhs.true12.1.i.if.end18.i_crit_edge, %land.lhs.true12.i.if.end18.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 1, %land.lhs.true12.i.if.end18.i_crit_edge ], [ 2, %land.lhs.true12.1.i.if.end18.i_crit_edge ], [ 3, %land.lhs.true12.2.i.if.end18.i_crit_edge ], [ 4, %land.lhs.true12.3.i.if.end18.i_crit_edge ]
  %code.i = getelementptr %struct.csi2tx_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.08.lcssa.i, i32 2
  %25 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %26)
  %switch.selectcmp.i.i = icmp eq i32 %26, 4106
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr getelementptr inbounds ([2 x %struct.csi2tx_fmt], ptr @csi2tx_formats, i32 0, i32 1), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %26)
  %switch.selectcmp8.i.i = icmp eq i32 %26, 8207
  %switch.select9.i.i = select i1 %switch.selectcmp8.i.i, ptr @csi2tx_formats, ptr %switch.select.i.i
  %tobool20.not.i = icmp eq ptr %switch.select9.i.i, null
  br i1 %tobool20.not.i, label %if.end18.i.cleanup48.i_crit_edge, label %if.end22.i

if.end18.i.cleanup48.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48.i

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19.i = getelementptr %struct.csi2tx_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.08.lcssa.i
  %sub.i = add nsw i32 %i.08.lcssa.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %dt.i = getelementptr inbounds %struct.csi2tx_fmt, ptr %switch.select9.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dt.i, align 4
  %and26.i = shl i32 %28, 26
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %mul.i = shl nuw nsw i32 %sub.i, 3
  %add.i = add nuw nsw i32 %mul.i, 128
  %add.ptr28.i = getelementptr i8, ptr %30, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %and26.i) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19.i, align 4
  %bpp.i = getelementptr inbounds %struct.csi2tx_fmt, ptr %switch.select9.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bpp.i, align 4
  %mul32.i = shl i32 %32, 16
  %shl34.i = mul i32 %mul32.i, %34
  %height.i = getelementptr %struct.csi2tx_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.08.lcssa.i, i32 1
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i, align 4
  %add35.i = add i32 %36, 1
  %and36.i = and i32 %add35.i, 65535
  %or.i = or i32 %and36.i, %shl34.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add39.i = add nuw nsw i32 %mul.i, 132
  %add.ptr40.i = getelementptr i8, ptr %39, i32 %add39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %37) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %mul45.i = shl nuw nsw i32 %sub.i, 2
  %add46.i = add nuw nsw i32 %mul45.i, 256
  %add.ptr47.i = getelementptr i8, ptr %41, i32 %add46.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 67108864) #9, !srcloc !111
  br label %cleanup48.i

cleanup48.i:                                      ; preds = %if.end22.i, %if.end18.i.cleanup48.i_crit_edge, %land.lhs.true12.3.i.cleanup48.i_crit_edge, %for.inc.2.i.cleanup48.i_crit_edge
  %42 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %links.i
  br i1 %cmp.not.i, label %cleanup48.i.csi2tx_start.exit_crit_edge, label %cleanup48.i.for.cond8.preheader.i_crit_edge

cleanup48.i.for.cond8.preheader.i_crit_edge:      ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader.i

cleanup48.i.csi2tx_start.exit_crit_edge:          ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_start.exit

csi2tx_start.exit:                                ; preds = %cleanup48.i.csi2tx_start.exit_crit_edge, %if.end.i.csi2tx_start.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 0) #9, !srcloc !111
  br label %if.end6

if.end6:                                          ; preds = %csi2tx_start.exit, %if.then.if.end6_crit_edge
  %45 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count8, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %count8, align 4
  br label %out

if.else:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %47 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dec, ptr %count8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr i8, ptr %subdev, i32 -32
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %49, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 100663296) #9, !srcloc !111
  br label %out

out:                                              ; preds = %if.then11, %if.else.out_crit_edge, %if.end6
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csi2tx_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [2 x %struct.csi2tx_fmt], ptr @csi2tx_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2tx_get_pad_format(ptr noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !118

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %__csi2tx_get_pad_format.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %subdev, i32 -132
  %arrayidx.i = getelementptr %struct.csi2tx_priv, ptr %add.ptr.i.i, i32 0, i32 10, i32 %1
  br label %__csi2tx_get_pad_format.exit

__csi2tx_get_pad_format.exit:                     ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__csi2tx_get_pad_format.exit.cleanup_crit_edge, label %if.end2

__csi2tx_get_pad_format.exit.cleanup_crit_edge:   ; preds = %__csi2tx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %__csi2tx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format3, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %__csi2tx_get_pad_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %__csi2tx_get_pad_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2tx_set_pad_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef readonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %3)
  %switch.selectcmp.i = icmp ne i32 %3, 4106
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %3)
  %switch.selectcmp8.i = icmp ne i32 %3, 8207
  %tobool.not = and i1 %switch.selectcmp8.i, %switch.selectcmp.i
  %spec.select = select i1 %tobool.not, ptr @fmt_default, ptr %format
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !118

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csi2tx_get_pad_format.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %subdev, i32 -132
  %arrayidx.i = getelementptr %struct.csi2tx_priv, ptr %add.ptr.i.i, i32 0, i32 10, i32 %1
  br label %__csi2tx_get_pad_format.exit

__csi2tx_get_pad_format.exit:                     ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %__csi2tx_get_pad_format.exit.cleanup_crit_edge, label %if.end7

__csi2tx_get_pad_format.exit.cleanup_crit_edge:   ; preds = %__csi2tx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %__csi2tx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memcpy(ptr %retval.0.i, ptr %spec.select, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %__csi2tx_get_pad_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %__csi2tx_get_pad_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csi2tx_dphy_setup(ptr nocapture noundef readonly %csi2tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #9, !srcloc !111
  %num_lanes = getelementptr inbounds %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 13
  %2 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %reg.012 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 66048, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 12, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 2048, %conv
  %or = or i32 %shl, %reg.012
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %reg.0.lcssa = phi i32 [ 66048, %entry.do.body_crit_edge ], [ %or, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.0.lcssa)
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #9, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #9
  %or.i = or i32 %reg.0.lcssa, 16
  %10 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17.not.i = icmp eq i32 %11, 0
  br i1 %cmp17.not.i, label %do.body.csi2tx_dphy_init_finish.exit_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.csi2tx_dphy_init_finish.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_dphy_init_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %reg.addr.018.i = phi i32 [ %or1.i, %for.body.i.for.body.i_crit_edge ], [ %or.i, %do.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 12, i32 %i.019.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %or1.i = or i32 %shl.i, %reg.addr.018.i
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.body.i.csi2tx_dphy_init_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.csi2tx_dphy_init_finish.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_dphy_init_finish.exit

csi2tx_dphy_init_finish.exit:                     ; preds = %for.body.i.csi2tx_dphy_init_finish.exit_crit_edge, %do.body.csi2tx_dphy_init_finish.exit_crit_edge
  %reg.addr.0.lcssa.i = phi i32 [ %or.i, %do.body.csi2tx_dphy_init_finish.exit_crit_edge ], [ %or1.i, %for.body.i.csi2tx_dphy_init_finish.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %reg.addr.0.lcssa.i) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %14) #9, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #9
  %and.i = and i32 %reg.addr.0.lcssa.i, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %or5.i = or i32 %and.i, 256
  %18 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #9
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %18) #9, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csi2tx_v2_dphy_setup(ptr nocapture noundef readonly %csi2tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131328) #9, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #9
  %num_lanes.i = getelementptr inbounds %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 13
  %5 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp17.not.i = icmp eq i32 %6, 0
  br i1 %cmp17.not.i, label %entry.csi2tx_dphy_init_finish.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.csi2tx_dphy_init_finish.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_dphy_init_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %reg.addr.018.i = phi i32 [ %or1.i, %for.body.i.for.body.i_crit_edge ], [ 66064, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.csi2tx_priv, ptr %csi2tx, i32 0, i32 12, i32 %i.019.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %or1.i = or i32 %shl.i, %reg.addr.018.i
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.csi2tx_dphy_init_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.csi2tx_dphy_init_finish.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csi2tx_dphy_init_finish.exit

csi2tx_dphy_init_finish.exit:                     ; preds = %for.body.i.csi2tx_dphy_init_finish.exit_crit_edge, %entry.csi2tx_dphy_init_finish.exit_crit_edge
  %reg.addr.0.lcssa.i = phi i32 [ 66064, %entry.csi2tx_dphy_init_finish.exit_crit_edge ], [ %or1.i, %for.body.i.csi2tx_dphy_init_finish.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %reg.addr.0.lcssa.i) #9
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %9) #9, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #9
  %and.i = and i32 %reg.addr.0.lcssa.i, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %or5.i = or i32 %and.i, 256
  %13 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #9
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %13) #9, !srcloc !111
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_cdns_csi2tx__292_656_csi2tx_driver_init6, !1, !"__initcall__kmod_cdns_csi2tx__292_656_csi2tx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 656, i32 1}
!2 = !{ptr @__exitcall_csi2tx_driver_exit, !1, !"__exitcall_csi2tx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 657, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 658, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 659, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 652, i32 12}
!12 = !{ptr @csi2tx_driver, !13, !"csi2tx_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 647, i32 31}
!14 = !{ptr @csi2tx_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 580, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 594, i32 55}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 595, i32 4}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 625, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @csi2tx_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @csi2tx_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 444, i32 43}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 446, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @csi2tx_get_resources._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @csi2tx_get_resources._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 450, i32 45}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 452, i32 3}
!43 = !{ptr @csi2tx_get_resources._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @csi2tx_get_resources._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 458, i32 3}
!47 = !{ptr @csi2tx_get_resources._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @csi2tx_get_resources._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 467, i32 3}
!51 = !{ptr @csi2tx_get_resources._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @csi2tx_get_resources._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 474, i32 3}
!55 = !{ptr @csi2tx_get_resources._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @csi2tx_get_resources._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 484, i32 40}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 487, i32 4}
!61 = !{ptr @csi2tx_get_resources._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @csi2tx_get_resources._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @csi2tx_subdev_ops, !64, !"csi2tx_subdev_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 428, i32 37}
!65 = !{ptr @csi2tx_video_ops, !66, !"csi2tx_video_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 424, i32 43}
!67 = !{ptr @csi2tx_formats, !68, !"csi2tx_formats", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 120, i32 32}
!69 = !{ptr @csi2tx_pad_ops, !70, !"csi2tx_pad_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 226, i32 41}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 508, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @csi2tx_check_lanes._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @csi2tx_check_lanes._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 513, i32 3}
!80 = !{ptr @csi2tx_check_lanes._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @csi2tx_check_lanes._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 521, i32 3}
!84 = !{ptr @csi2tx_check_lanes._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @csi2tx_check_lanes._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 529, i32 4}
!88 = !{ptr @csi2tx_check_lanes._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @csi2tx_check_lanes._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @fmt_default, !91, !"fmt_default", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 133, i32 40}
!92 = !{ptr @csi2tx_of_table, !93, !"csi2tx_of_table", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 552, i32 34}
!94 = !{ptr @csi2tx_vops, !95, !"csi2tx_vops", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 544, i32 33}
!96 = !{ptr @csi2tx_v2_vops, !97, !"csi2tx_v2_vops", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/cadence/cdns-csi2tx.c", i32 548, i32 33}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 3084191}
!108 = !{i64 2156286041}
!109 = !{i8 0, i8 2}
!110 = !{i64 2156271761}
!111 = !{i64 3083773}
!112 = !{i64 2156272879}
!113 = !{i64 2156277794}
!114 = !{i64 2156278475}
!115 = !{i64 2156279186}
!116 = !{i64 2156279635}
!117 = !{i64 2156280245}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2156267284}
!120 = !{i64 2156270766}
!121 = !{i64 2156268470}
!122 = !{i64 2156270104}
!123 = !{i64 2156271257}
