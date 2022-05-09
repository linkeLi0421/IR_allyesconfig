; ModuleID = '/llk/IR_all_yes/drivers/media/platform/ti-vpe/cal-camerarx.c_pt.bc'
source_filename = "../drivers/media/platform/ti-vpe/cal-camerarx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cal_format_info = type { i32, i32, i8, i8 }
%struct.cal_camerarx = type { ptr, ptr, [4 x ptr], ptr, i32, %struct.v4l2_fwnode_endpoint, ptr, ptr, ptr, %struct.media_pipeline, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.mutex, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.99, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.99 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.82], %struct.media_entity_enum, i32 }
%struct.anon.82 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.85 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.89, i16, i16, i16, [10 x i16] }
%union.anon.89 = type { i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cal_dev = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [2 x ptr], i32, [8 x ptr], %struct.media_device, %struct.v4l2_device, %struct.v4l2_async_notifier, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cal_camerarx_data = type { [4 x %struct.anon.78], i32 }
%struct.anon.78 = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@cal_debug = external dso_local local_unnamed_addr global i32, align 4
@cal_camerarx_i913_errata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy%u: CSI2_%d_REG10 = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal_camerarx_i913_errata\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/ti-vpe/cal-camerarx.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cal_camerarx_i913_errata._entry_ptr = internal global ptr @cal_camerarx_i913_errata._entry, section ".printk_index", align 4
@cal_camerarx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&phy->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cal_rx_core0\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cal_rx_core1\00", [19 x i8] zeroinitializer }, align 32
@cal_camerarx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 855, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to ioremap\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cal_camerarx_create\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cal_camerarx_create._entry_ptr = internal global ptr @cal_camerarx_create._entry, section ".printk_index", align 4
@cal_camerarx_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ioresource %s at %pa - %pa\0A\00", [36 x i8] zeroinitializer }, align 32
@cal_camerarx_create._entry_ptr.13 = internal global ptr @cal_camerarx_create._entry.11, section ".printk_index", align 4
@cal_camerarx_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @cal_camerarx_video_ops, ptr null, ptr null, ptr null, ptr @cal_camerarx_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CAMERARX%u\00", [21 x i8] zeroinitializer }, align 32
@cal_camerarx_media_ops = internal global { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cal_camerarx_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 510, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate regmap fields\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal_camerarx_regmap_init\00", [39 x i8] zeroinitializer }, align 32
@cal_camerarx_regmap_init._entry_ptr = internal global ptr @cal_camerarx_regmap_init._entry, section ".printk_index", align 4
@cal_camerarx_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 537, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy%u: Port has no endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cal_camerarx_parse_dt\00", [42 x i8] zeroinitializer }, align 32
@cal_camerarx_parse_dt._entry_ptr = internal global ptr @cal_camerarx_parse_dt._entry, section ".printk_index", align 4
@cal_camerarx_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 544, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy%u: Failed to parse endpoint\0A\00", [63 x i8] zeroinitializer }, align 32
@cal_camerarx_parse_dt._entry_ptr.21 = internal global ptr @cal_camerarx_parse_dt._entry.19, section ".printk_index", align 4
@cal_camerarx_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 553, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"phy%u: Invalid position %u for data lane %u\0A\00", [51 x i8] zeroinitializer }, align 32
@cal_camerarx_parse_dt._entry_ptr.24 = internal global ptr @cal_camerarx_parse_dt._entry.22, section ".printk_index", align 4
@cal_camerarx_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"phy%u: CSI-2 bus: clock lane <%u>, data lanes <%s>, flags 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@cal_camerarx_parse_dt._entry_ptr.27 = internal global ptr @cal_camerarx_parse_dt._entry.25, section ".printk_index", align 4
@cal_camerarx_parse_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 573, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy%u: Can't get remote parent\0A\00", [32 x i8] zeroinitializer }, align 32
@cal_camerarx_parse_dt._entry_ptr.30 = internal global ptr @cal_camerarx_parse_dt._entry.28, section ".printk_index", align 4
@cal_camerarx_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phy%u: Found connected device %pOFn\0A\00", [59 x i8] zeroinitializer }, align 32
@cal_camerarx_parse_dt._entry_ptr.33 = internal global ptr @cal_camerarx_parse_dt._entry.31, section ".printk_index", align 4
@cal_camerarx_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_camerarx_sd_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@cal_camerarx_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @cal_camerarx_sd_init_cfg, ptr @cal_camerarx_sd_enum_mbus_code, ptr @cal_camerarx_sd_enum_frame_size, ptr null, ptr @cal_camerarx_sd_get_fmt, ptr @cal_camerarx_sd_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cal_camerarx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 299, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy%u: power on failed in subdev\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cal_camerarx_start\00", [45 x i8] zeroinitializer }, align 32
@cal_camerarx_start._entry_ptr = internal global ptr @cal_camerarx_start._entry, section ".printk_index", align 4
@cal_camerarx_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"phy%u: CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x De-assert Complex IO Reset\0A\00", [57 x i8] zeroinitializer }, align 32
@cal_camerarx_start._entry_ptr.38 = internal global ptr @cal_camerarx_start._entry.36, section ".printk_index", align 4
@cal_camerarx_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"phy%u: CAL_CSI2_TIMING(%d) = 0x%08x Stop States\0A\00", [47 x i8] zeroinitializer }, align 32
@cal_camerarx_start._entry_ptr.41 = internal global ptr @cal_camerarx_start._entry.39, section ".printk_index", align 4
@cal_camerarx_start._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"phy%u: CAL_CSI2_TIMING(%d) = 0x%08x Force RXMODE\0A\00", [46 x i8] zeroinitializer }, align 32
@cal_camerarx_start._entry_ptr.44 = internal global ptr @cal_camerarx_start._entry.42, section ".printk_index", align 4
@cal_camerarx_start._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 395, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"phy%u: stream on failed in subdev\0A\00", [61 x i8] zeroinitializer }, align 32
@cal_camerarx_start._entry_ptr.47 = internal global ptr @cal_camerarx_start._entry.45, section ".printk_index", align 4
@cal_camerarx_start._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.2, i32 405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"phy%u: CSI2_%u_REG1 = 0x%08x (bits 31-28 should be set)\0A\00", [39 x i8] zeroinitializer }, align 32
@cal_camerarx_start._entry_ptr.50 = internal global ptr @cal_camerarx_start._entry.48, section ".printk_index", align 4
@cal_camerarx_get_ext_link_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 65, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"phy%u: failed to get link freq for subdev '%s'\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cal_camerarx_get_ext_link_freq\00", [33 x i8] zeroinitializer }, align 32
@cal_camerarx_get_ext_link_freq._entry_ptr = internal global ptr @cal_camerarx_get_ext_link_freq._entry, section ".printk_index", align 4
@cal_camerarx_get_ext_link_freq._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy%u: Source Link Freq: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@cal_camerarx_get_ext_link_freq._entry_ptr.55 = internal global ptr @cal_camerarx_get_ext_link_freq._entry.53, section ".printk_index", align 4
@cal_camerarx_lane_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"phy%u: CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal_camerarx_lane_config\00", [39 x i8] zeroinitializer }, align 32
@cal_camerarx_lane_config._entry_ptr = internal global ptr @cal_camerarx_lane_config._entry, section ".printk_index", align 4
@cal_camerarx_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy%u: ths_term: %d (0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cal_camerarx_config\00", [44 x i8] zeroinitializer }, align 32
@cal_camerarx_config._entry_ptr = internal global ptr @cal_camerarx_config._entry, section ".printk_index", align 4
@cal_camerarx_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy%u: ths_settle: %d (0x%02x)\0A\00", [32 x i8] zeroinitializer }, align 32
@cal_camerarx_config._entry_ptr.62 = internal global ptr @cal_camerarx_config._entry.60, section ".printk_index", align 4
@cal_camerarx_config._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy%u: CSI2_%d_REG0 = 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@cal_camerarx_config._entry_ptr.65 = internal global ptr @cal_camerarx_config._entry.63, section ".printk_index", align 4
@cal_camerarx_config._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy%u: CSI2_%d_REG1 = 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@cal_camerarx_config._entry_ptr.68 = internal global ptr @cal_camerarx_config._entry.66, section ".printk_index", align 4
@cal_camerarx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 188, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phy%u: Failed to power %s complexio\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cal_camerarx_power\00", [45 x i8] zeroinitializer }, align 32
@cal_camerarx_power._entry_ptr = internal global ptr @cal_camerarx_power._entry, section ".printk_index", align 4
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cal_camerarx_wait_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 208, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"phy%u: Timeout waiting for Complex IO reset done\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cal_camerarx_wait_reset\00", [40 x i8] zeroinitializer }, align 32
@cal_camerarx_wait_reset._entry_ptr = internal global ptr @cal_camerarx_wait_reset._entry, section ".printk_index", align 4
@cal_camerarx_wait_stop_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 226, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"phy%u: Timeout waiting for stop state\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cal_camerarx_wait_stop_state\00", [35 x i8] zeroinitializer }, align 32
@cal_camerarx_wait_stop_state._entry_ptr = internal global ptr @cal_camerarx_wait_stop_state._entry, section ".printk_index", align 4
@cal_camerarx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 442, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"phy%u: CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x Complex IO in Reset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cal_camerarx_stop\00", [46 x i8] zeroinitializer }, align 32
@cal_camerarx_stop._entry_ptr = internal global ptr @cal_camerarx_stop._entry, section ".printk_index", align 4
@cal_camerarx_stop._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 448, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"phy%u: stream off failed in subdev\0A\00", [60 x i8] zeroinitializer }, align 32
@cal_camerarx_stop._entry_ptr.81 = internal global ptr @cal_camerarx_stop._entry.79, section ".printk_index", align 4
@cal_camerarx_stop._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 452, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"phy%u: power off failed in subdev\0A\00", [61 x i8] zeroinitializer }, align 32
@cal_camerarx_stop._entry_ptr.84 = internal global ptr @cal_camerarx_stop._entry.82, section ".printk_index", align 4
@cal_num_formats = external dso_local local_unnamed_addr constant i32, align 4
@cal_formats = external dso_local local_unnamed_addr constant [0 x %struct.cal_format_info], align 4
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 480, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 847, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 851, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 852, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 855, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 860, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"cal_camerarx_subdev_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 817, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 876, i32 39 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"cal_camerarx_media_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 822, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 510, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 537, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 544, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 552, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 564, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 573, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 579, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [23 x i8] c"cal_camerarx_video_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 805, i32 43 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"cal_camerarx_pad_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 809, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 299, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 335, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 363, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 370, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 395, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 404, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 64, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 69, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 98, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 136, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 140, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 148, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 158, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 187, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 208, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 226, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 440, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 448, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.346 = private constant [48 x i8] c"../drivers/media/platform/ti-vpe/cal-camerarx.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 452, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 998, i32 6 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @cal_camerarx_config._entry, ptr @cal_camerarx_config._entry.60, ptr @cal_camerarx_config._entry.63, ptr @cal_camerarx_config._entry.66, ptr @cal_camerarx_config._entry_ptr, ptr @cal_camerarx_config._entry_ptr.62, ptr @cal_camerarx_config._entry_ptr.65, ptr @cal_camerarx_config._entry_ptr.68, ptr @cal_camerarx_create._entry, ptr @cal_camerarx_create._entry.11, ptr @cal_camerarx_create._entry_ptr, ptr @cal_camerarx_create._entry_ptr.13, ptr @cal_camerarx_get_ext_link_freq._entry, ptr @cal_camerarx_get_ext_link_freq._entry.53, ptr @cal_camerarx_get_ext_link_freq._entry_ptr, ptr @cal_camerarx_get_ext_link_freq._entry_ptr.55, ptr @cal_camerarx_i913_errata._entry, ptr @cal_camerarx_i913_errata._entry_ptr, ptr @cal_camerarx_lane_config._entry, ptr @cal_camerarx_lane_config._entry_ptr, ptr @cal_camerarx_parse_dt._entry, ptr @cal_camerarx_parse_dt._entry.19, ptr @cal_camerarx_parse_dt._entry.22, ptr @cal_camerarx_parse_dt._entry.25, ptr @cal_camerarx_parse_dt._entry.28, ptr @cal_camerarx_parse_dt._entry.31, ptr @cal_camerarx_parse_dt._entry_ptr, ptr @cal_camerarx_parse_dt._entry_ptr.21, ptr @cal_camerarx_parse_dt._entry_ptr.24, ptr @cal_camerarx_parse_dt._entry_ptr.27, ptr @cal_camerarx_parse_dt._entry_ptr.30, ptr @cal_camerarx_parse_dt._entry_ptr.33, ptr @cal_camerarx_power._entry, ptr @cal_camerarx_power._entry_ptr, ptr @cal_camerarx_regmap_init._entry, ptr @cal_camerarx_regmap_init._entry_ptr, ptr @cal_camerarx_start._entry, ptr @cal_camerarx_start._entry.36, ptr @cal_camerarx_start._entry.39, ptr @cal_camerarx_start._entry.42, ptr @cal_camerarx_start._entry.45, ptr @cal_camerarx_start._entry.48, ptr @cal_camerarx_start._entry_ptr, ptr @cal_camerarx_start._entry_ptr.38, ptr @cal_camerarx_start._entry_ptr.41, ptr @cal_camerarx_start._entry_ptr.44, ptr @cal_camerarx_start._entry_ptr.47, ptr @cal_camerarx_start._entry_ptr.50, ptr @cal_camerarx_stop._entry, ptr @cal_camerarx_stop._entry.79, ptr @cal_camerarx_stop._entry.82, ptr @cal_camerarx_stop._entry_ptr, ptr @cal_camerarx_stop._entry_ptr.81, ptr @cal_camerarx_stop._entry_ptr.84, ptr @cal_camerarx_wait_reset._entry, ptr @cal_camerarx_wait_reset._entry_ptr, ptr @cal_camerarx_wait_stop_state._entry, ptr @cal_camerarx_wait_stop_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cal_camerarx_create.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @cal_camerarx_subdev_ops, ptr @.str.14, ptr @cal_camerarx_media_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @cal_camerarx_video_ops, ptr @cal_camerarx_pad_ops, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_i913_errata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_parse_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_start._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_start._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_start._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_get_ext_link_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_get_ext_link_freq._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_lane_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_config._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_config._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_wait_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_wait_stop_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_stop._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_camerarx_stop._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_camerarx_disable(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fields = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fields, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_camerarx_i913_errata(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %3 = or i32 %2, 1073741824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %4 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cal = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 3
  %6 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cal, align 4
  %dev = getelementptr inbounds %struct.cal_dev, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %instance = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 4
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %11, i32 noundef %5) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %3) #7, !srcloc !165
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cal_camerarx_create(ptr noundef %cal, i32 noundef %instance) local_unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  %data_lanes.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 704) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %cal2 = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %cal2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cal, ptr %cal2, align 8
  %instance3 = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %instance3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %instance, ptr %instance3, align 4
  %mutex = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @cal_camerarx_create.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instance)
  %cmp = icmp eq i32 %instance, 0
  %cond = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %call4 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull %cond) #7
  %res = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %res, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %call4) #7
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %do.body18

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8) #10
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %error

do.body18:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %14 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19.not = icmp eq i32 %14, 0
  br i1 %cmp19.not, label %do.body18.do.end30_crit_edge, label %do.end23

do.body18.do.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %res, align 4
  %name = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %end = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %18, ptr noundef %end) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end23, %do.body18.do.end30_crit_edge
  %data.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 5
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.end30.error_crit_edge, label %if.end.i

do.end30.error_crit_edge:                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end.i:                                         ; preds = %do.end30
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %instance3, align 4
  %arrayidx.i = getelementptr %struct.cal_camerarx_data, ptr %24, i32 %26
  %syscon_camerrx_offset.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 8
  %syscon_camerrx.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 7
  %27 = ptrtoint ptr %syscon_camerrx_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %syscon_camerrx_offset.i, align 8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %msb6.i = getelementptr inbounds %struct.anon.78, ptr %arrayidx.i, i32 0, i32 1
  %31 = ptrtoint ptr %msb6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msb6.i, align 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %35 = ptrtoint ptr %syscon_camerrx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %syscon_camerrx.i, align 4
  %.fca.0.insert.i = insertvalue [5 x i32] poison, i32 %28, 0
  %.fca.1.insert.i = insertvalue [5 x i32] %.fca.0.insert.i, i32 %30, 1
  %.fca.2.insert.i = insertvalue [5 x i32] %.fca.1.insert.i, i32 %32, 2
  %.fca.3.insert.i = insertvalue [5 x i32] %.fca.2.insert.i, i32 0, 3
  %.fca.4.insert.i = insertvalue [5 x i32] %.fca.3.insert.i, i32 0, 4
  %call.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %34, ptr noundef %36, [5 x i32] %.fca.4.insert.i) #7
  %arrayidx8.i = getelementptr %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 2, i32 0
  %37 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %arrayidx8.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cal_camerarx_regmap_init.exit_crit_edge, label %for.cond.i

if.end.i.cal_camerarx_regmap_init.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_regmap_init.exit

for.cond.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %syscon_camerrx_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %syscon_camerrx_offset.i, align 8
  %arrayidx2.1.i = getelementptr [4 x %struct.anon.78], ptr %arrayidx.i, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.1.i, align 4
  %msb6.1.i = getelementptr inbounds %struct.anon.78, ptr %arrayidx2.1.i, i32 0, i32 1
  %42 = ptrtoint ptr %msb6.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msb6.1.i, align 4
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %46 = ptrtoint ptr %syscon_camerrx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %syscon_camerrx.i, align 4
  %.fca.0.insert.1.i = insertvalue [5 x i32] poison, i32 %39, 0
  %.fca.1.insert.1.i = insertvalue [5 x i32] %.fca.0.insert.1.i, i32 %41, 1
  %.fca.2.insert.1.i = insertvalue [5 x i32] %.fca.1.insert.1.i, i32 %43, 2
  %.fca.3.insert.1.i = insertvalue [5 x i32] %.fca.2.insert.1.i, i32 0, 3
  %.fca.4.insert.1.i = insertvalue [5 x i32] %.fca.3.insert.1.i, i32 0, 4
  %call.1.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %45, ptr noundef %47, [5 x i32] %.fca.4.insert.1.i) #7
  %arrayidx8.1.i = getelementptr %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.1.i, ptr %arrayidx8.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.cal_camerarx_regmap_init.exit_crit_edge, label %for.cond.1.i

for.cond.i.cal_camerarx_regmap_init.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_regmap_init.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %49 = ptrtoint ptr %syscon_camerrx_offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syscon_camerrx_offset.i, align 8
  %arrayidx2.2.i = getelementptr [4 x %struct.anon.78], ptr %arrayidx.i, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx2.2.i, align 4
  %msb6.2.i = getelementptr inbounds %struct.anon.78, ptr %arrayidx2.2.i, i32 0, i32 1
  %53 = ptrtoint ptr %msb6.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msb6.2.i, align 4
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %57 = ptrtoint ptr %syscon_camerrx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %syscon_camerrx.i, align 4
  %.fca.0.insert.2.i = insertvalue [5 x i32] poison, i32 %50, 0
  %.fca.1.insert.2.i = insertvalue [5 x i32] %.fca.0.insert.2.i, i32 %52, 1
  %.fca.2.insert.2.i = insertvalue [5 x i32] %.fca.1.insert.2.i, i32 %54, 2
  %.fca.3.insert.2.i = insertvalue [5 x i32] %.fca.2.insert.2.i, i32 0, 3
  %.fca.4.insert.2.i = insertvalue [5 x i32] %.fca.3.insert.2.i, i32 0, 4
  %call.2.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %56, ptr noundef %58, [5 x i32] %.fca.4.insert.2.i) #7
  %arrayidx8.2.i = getelementptr %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.2.i, ptr %arrayidx8.2.i, align 8
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i.cal_camerarx_regmap_init.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.cal_camerarx_regmap_init.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_regmap_init.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %60 = ptrtoint ptr %syscon_camerrx_offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syscon_camerrx_offset.i, align 8
  %arrayidx2.3.i = getelementptr [4 x %struct.anon.78], ptr %arrayidx.i, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx2.3.i, align 4
  %msb6.3.i = getelementptr inbounds %struct.anon.78, ptr %arrayidx2.3.i, i32 0, i32 1
  %64 = ptrtoint ptr %msb6.3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msb6.3.i, align 4
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %68 = ptrtoint ptr %syscon_camerrx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %syscon_camerrx.i, align 4
  %.fca.0.insert.3.i = insertvalue [5 x i32] poison, i32 %61, 0
  %.fca.1.insert.3.i = insertvalue [5 x i32] %.fca.0.insert.3.i, i32 %63, 1
  %.fca.2.insert.3.i = insertvalue [5 x i32] %.fca.1.insert.3.i, i32 %65, 2
  %.fca.3.insert.3.i = insertvalue [5 x i32] %.fca.2.insert.3.i, i32 0, 3
  %.fca.4.insert.3.i = insertvalue [5 x i32] %.fca.3.insert.3.i, i32 0, 4
  %call.3.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %67, ptr noundef %69, [5 x i32] %.fca.4.insert.3.i) #7
  %arrayidx8.3.i = getelementptr %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 2, i32 3
  %70 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.3.i, ptr %arrayidx8.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.cond.2.i.cal_camerarx_regmap_init.exit_crit_edge, label %for.cond.2.i.if.end34_crit_edge

for.cond.2.i.if.end34_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.cond.2.i.cal_camerarx_regmap_init.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_regmap_init.exit

cal_camerarx_regmap_init.exit:                    ; preds = %for.cond.2.i.cal_camerarx_regmap_init.exit_crit_edge, %for.cond.1.i.cal_camerarx_regmap_init.exit_crit_edge, %for.cond.i.cal_camerarx_regmap_init.exit_crit_edge, %if.end.i.cal_camerarx_regmap_init.exit_crit_edge
  %arrayidx8.lcssa.i = phi ptr [ %arrayidx8.i, %if.end.i.cal_camerarx_regmap_init.exit_crit_edge ], [ %arrayidx8.1.i, %for.cond.i.cal_camerarx_regmap_init.exit_crit_edge ], [ %arrayidx8.2.i, %for.cond.1.i.cal_camerarx_regmap_init.exit_crit_edge ], [ %arrayidx8.3.i, %for.cond.2.i.cal_camerarx_regmap_init.exit_crit_edge ]
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.15) #10
  %73 = ptrtoint ptr %arrayidx8.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx8.lcssa.i, align 4
  %75 = ptrtoint ptr %74 to i32
  %tobool32.not = icmp eq ptr %74, null
  br i1 %tobool32.not, label %cal_camerarx_regmap_init.exit.if.end34_crit_edge, label %cal_camerarx_regmap_init.exit.error_crit_edge

cal_camerarx_regmap_init.exit.error_crit_edge:    ; preds = %cal_camerarx_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cal_camerarx_regmap_init.exit.if.end34_crit_edge: ; preds = %cal_camerarx_regmap_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %cal_camerarx_regmap_init.exit.if.end34_crit_edge, %for.cond.2.i.if.end34_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data_lanes.i) #7
  %76 = call ptr @memset(ptr %data_lanes.i, i32 255, i32 16)
  %77 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cal2, align 8
  %dev.i115 = getelementptr inbounds %struct.cal_dev, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i115, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node.i, align 8
  %83 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %instance3, align 4
  %call.i117 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %82, i32 noundef %84, i32 noundef 0) #7
  %tobool.not.i118 = icmp eq ptr %call.i117, null
  br i1 %tobool.not.i118, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %85 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp.i119 = icmp ugt i32 %85, 2
  br i1 %cmp.i119, label %do.end.i, label %do.body.i.cal_camerarx_parse_dt.exit.thread_crit_edge

do.body.i.cal_camerarx_parse_dt.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_parse_dt.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cal2, align 8
  %dev5.i = getelementptr inbounds %struct.cal_dev, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev5.i, align 8
  %90 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %instance3, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %89, ptr noundef nonnull @.str.17, i32 noundef %91) #10
  br label %cal_camerarx_parse_dt.exit.thread

if.end9.i:                                        ; preds = %if.end34
  %endpoint1.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 5
  %bus_type.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 5, i32 1
  %92 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 5, ptr %bus_type.i, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i117, i32 0, i32 3
  %call11.i = tail call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef %endpoint1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9.i
  %num_data_lanes.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2, i32 3
  %93 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_data_lanes.i, align 1
  %conv.i = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp21147.not.i = icmp eq i8 %94, 0
  br i1 %cmp21147.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cal2, align 8
  %dev18.i = getelementptr inbounds %struct.cal_dev, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev18.i, align 8
  %99 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %instance3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.20, i32 noundef %100) #10
  br label %cal_camerarx_parse_dt.exit.thread130

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0148.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i120 = getelementptr %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2, i32 1, i32 %i.0148.i
  %101 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %102)
  %cmp27.i = icmp ugt i8 %102, 4
  br i1 %cmp27.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv26.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cal2, align 8
  %dev34.i = getelementptr inbounds %struct.cal_dev, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev34.i, align 8
  %107 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %instance3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.23, i32 noundef %108, i32 noundef %conv26.i, i32 noundef %i.0148.i) #10
  br label %cal_camerarx_parse_dt.exit.thread130

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nuw nsw i8 %102, 48
  %mul.i = shl nuw i32 %i.0148.i, 1
  %arrayidx38.i = getelementptr [16 x i8], ptr %data_lanes.i, i32 0, i32 %mul.i
  %109 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %add.i, ptr %arrayidx38.i, align 1
  %add40.i = or i32 %mul.i, 1
  %arrayidx41.i = getelementptr [16 x i8], ptr %data_lanes.i, i32 0, i32 %add40.i
  %110 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 32, ptr %arrayidx41.i, align 1
  %inc.i = add nuw nsw i32 %i.0148.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i = shl nuw nsw i32 %conv.i, 1
  %phi.bo151.i = add nsw i32 %phi.bo.i, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phi.bo151.i, %for.end.loopexit.i ]
  %arrayidx43.i = getelementptr [16 x i8], ptr %data_lanes.i, i32 0, i32 %i.0.lcssa.i
  %111 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx43.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %112 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp45.i = icmp ugt i32 %112, 2
  br i1 %cmp45.i, label %do.end50.i, label %for.end.i.do.end61.i_crit_edge

for.end.i.do.end61.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61.i

do.end50.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mipi_csi2.le.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2
  %113 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cal2, align 8
  %dev52.i = getelementptr inbounds %struct.cal_dev, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev52.i, align 8
  %117 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %instance3, align 4
  %clock_lane.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2, i32 2
  %119 = ptrtoint ptr %clock_lane.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %clock_lane.i, align 4
  %conv56.i = zext i8 %120 to i32
  %121 = ptrtoint ptr %mipi_csi2.le.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mipi_csi2.le.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %116, ptr noundef nonnull @.str.26, i32 noundef %118, i32 noundef %conv56.i, ptr noundef nonnull %data_lanes.i, i32 noundef %122) #10
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.end50.i, %for.end.i.do.end61.i_crit_edge
  %call62.i = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %call.i117) #7
  %source_ep_node.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 6
  %123 = ptrtoint ptr %source_ep_node.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call62.i, ptr %source_ep_node.i, align 8
  %call64.i = call ptr @of_graph_get_port_parent(ptr noundef %call62.i) #7
  %source_node.i = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 7
  %124 = ptrtoint ptr %source_node.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call64.i, ptr %source_node.i, align 4
  %tobool66.not.i = icmp eq ptr %call64.i, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %125 = load i32, ptr @cal_debug, align 4
  br i1 %tobool66.not.i, label %do.body68.i, label %do.body83.i

do.body68.i:                                      ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp69.i = icmp ugt i32 %125, 2
  br i1 %cmp69.i, label %do.end74.i, label %do.body68.i.do.end80.i_crit_edge

do.body68.i.do.end80.i_crit_edge:                 ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

do.end74.i:                                       ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cal2, align 8
  %dev76.i = getelementptr inbounds %struct.cal_dev, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev76.i, align 8
  %130 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %instance3, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %129, ptr noundef nonnull @.str.29, i32 noundef %131) #10
  br label %do.end80.i

do.end80.i:                                       ; preds = %do.end74.i, %do.body68.i.do.end80.i_crit_edge
  %132 = ptrtoint ptr %source_ep_node.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %source_ep_node.i, align 8
  call void @of_node_put(ptr noundef %133) #7
  br label %cal_camerarx_parse_dt.exit.thread130

do.body83.i:                                      ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp84.not.i = icmp eq i32 %125, 0
  br i1 %cmp84.not.i, label %do.body83.i.cal_camerarx_parse_dt.exit_crit_edge, label %do.end89.i

do.body83.i.cal_camerarx_parse_dt.exit_crit_edge: ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_parse_dt.exit

do.end89.i:                                       ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %cal2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cal2, align 8
  %dev91.i = getelementptr inbounds %struct.cal_dev, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %dev91.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev91.i, align 8
  %138 = ptrtoint ptr %instance3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %instance3, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %137, ptr noundef nonnull @.str.32, i32 noundef %139, ptr noundef nonnull %call64.i) #10
  br label %cal_camerarx_parse_dt.exit

cal_camerarx_parse_dt.exit.thread:                ; preds = %do.end.i, %do.body.i.cal_camerarx_parse_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_lanes.i) #7
  br label %if.end38

cal_camerarx_parse_dt.exit.thread130:             ; preds = %do.end80.i, %cleanup.i, %do.end16.i
  %ret.2.i.ph = phi i32 [ -22, %do.end80.i ], [ -22, %cleanup.i ], [ %call11.i, %do.end16.i ]
  call void @of_node_put(ptr noundef nonnull %call.i117) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_lanes.i) #7
  br label %error

cal_camerarx_parse_dt.exit:                       ; preds = %do.end89.i, %do.body83.i.cal_camerarx_parse_dt.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i117) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data_lanes.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool36.not = icmp eq i32 %call11.i, 0
  br i1 %tobool36.not, label %cal_camerarx_parse_dt.exit.if.end38_crit_edge, label %cal_camerarx_parse_dt.exit.error_crit_edge

cal_camerarx_parse_dt.exit.error_crit_edge:       ; preds = %cal_camerarx_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cal_camerarx_parse_dt.exit.if.end38_crit_edge:    ; preds = %cal_camerarx_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %cal_camerarx_parse_dt.exit.if.end38_crit_edge, %cal_camerarx_parse_dt.exit.thread
  %subdev = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 10
  call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @cal_camerarx_subdev_ops) #7
  %function = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 3
  %140 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 20482, ptr %function, align 4
  %flags = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 10, i32 4
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 4, ptr %flags, align 4
  %name39 = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 10, i32 9
  %call40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name39, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %instance)
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 8
  %dev42 = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 10, i32 14
  %144 = ptrtoint ptr %dev42 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %dev42, align 8
  %pads = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 11
  %flags43 = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4
  %145 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %flags43, align 4
  %flags47 = getelementptr %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 4
  %146 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %flags47, align 4
  %ops = getelementptr inbounds %struct.cal_camerarx, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 11
  %147 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @cal_camerarx_media_ops, ptr %ops, align 4
  %call52 = call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 2, ptr noundef %pads) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end38.error_crit_edge

if.end38.error_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end55:                                         ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #7
  %148 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %format.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 1
  %149 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %pad.i, align 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %150 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 640, ptr %format1.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %151 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 480, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %152 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 8198, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 3
  %153 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 4
  %154 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 8, ptr %colorspace.i, align 4
  %155 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 5
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %155, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 6
  %157 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 2, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 7
  %158 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 2, ptr %xfer_func.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 8
  %159 = call ptr @memset(ptr %flags.i, i32 0, i32 54)
  %call.i121 = call i32 @cal_camerarx_sd_set_fmt(ptr noundef %subdev, ptr noundef null, ptr noundef nonnull %format.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #7
  %v4l2_dev = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 13
  %call60 = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end55.cleanup_crit_edge, label %if.end55.error_crit_edge

if.end55.error_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %if.end55.error_crit_edge, %if.end38.error_crit_edge, %cal_camerarx_parse_dt.exit.error_crit_edge, %cal_camerarx_parse_dt.exit.thread130, %cal_camerarx_regmap_init.exit.error_crit_edge, %do.end30.error_crit_edge, %do.end13
  %ret.0 = phi i32 [ %13, %do.end13 ], [ %75, %cal_camerarx_regmap_init.exit.error_crit_edge ], [ %call11.i, %cal_camerarx_parse_dt.exit.error_crit_edge ], [ %call52, %if.end38.error_crit_edge ], [ %call60, %if.end55.error_crit_edge ], [ %ret.2.i.ph, %cal_camerarx_parse_dt.exit.thread130 ], [ -22, %do.end30.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %160 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %160, %error ], [ %call7.i.i, %if.end55.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_camerarx_sd_init_cfg(ptr noundef %sd, ptr noundef readonly %sd_state) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #7
  %tobool.not = icmp eq ptr %sd_state, null
  %cond = zext i1 %tobool.not to i32
  %0 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %format, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %1 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pad, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 640, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 480, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8198, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %colorspace, align 4
  %7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %7, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %xfer_func, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 8
  %11 = call ptr @memset(ptr %flags, i32 0, i32 54)
  %call = call i32 @cal_camerarx_sd_set_fmt(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_camerarx_destroy(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %subdev = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 10
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #7
  %source_ep_node = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 6
  %0 = ptrtoint ptr %source_ep_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %source_ep_node, align 4
  tail call void @of_node_put(ptr noundef %1) #7
  %source_node = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %source_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source_node, align 4
  tail call void @of_node_put(ptr noundef %3) #7
  %mutex = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  tail call void @kfree(ptr noundef nonnull %phy) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_camerarx_sd_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  %remainder.i69.i.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -252
  %mutex = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %enable_count.i6 = getelementptr i8, ptr %sd, i32 448
  %0 = ptrtoint ptr %enable_count.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_count.i6, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %1, 1
  %2 = ptrtoint ptr %enable_count.i6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc.i, ptr %enable_count.i6, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %num_data_lanes.i.i = getelementptr i8, ptr %sd, i32 -175
  %3 = ptrtoint ptr %num_data_lanes.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_data_lanes.i.i, align 1
  %code.i.i = getelementptr i8, ptr %sd, i32 268
  %5 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code.i.i, align 4
  %call.i.i = tail call ptr @cal_format_by_code(i32 noundef %6) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %conv.i.i = zext i8 %4 to i32
  %bpp2.i.i = getelementptr inbounds %struct.cal_format_info, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %bpp2.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bpp2.i.i, align 4
  %conv3.i.i = zext i8 %8 to i32
  %source.i.i = getelementptr i8, ptr %sd, i32 -148
  %9 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %source.i.i, align 4
  %ctrl_handler.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %ctrl_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_handler.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %call4.i.i = tail call i64 @v4l2_get_link_freq(ptr noundef %12, i32 noundef %conv3.i.i, i32 noundef %mul.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4.i.i)
  %cmp.i.i = icmp slt i64 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body9.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cal.i.i = getelementptr i8, ptr %sd, i32 -228
  %13 = ptrtoint ptr %cal.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cal.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cal_dev, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  %instance.i.i = getelementptr i8, ptr %sd, i32 -224
  %17 = ptrtoint ptr %instance.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %instance.i.i, align 4
  %19 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %source.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %20, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.51, i32 noundef %18, ptr noundef %name.i.i) #10
  %extract.t.i = trunc i64 %call4.i.i to i32
  br label %if.end

do.body9.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %21 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp10.i.i = icmp ugt i32 %21, 2
  br i1 %cmp10.i.i, label %do.end15.i.i, label %do.body9.i.i.if.end4.i_crit_edge

do.body9.i.i.if.end4.i_crit_edge:                 ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end15.i.i:                                     ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cal16.i.i = getelementptr i8, ptr %sd, i32 -228
  %22 = ptrtoint ptr %cal16.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cal16.i.i, align 4
  %dev17.i.i = getelementptr inbounds %struct.cal_dev, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev17.i.i, align 8
  %instance18.i.i = getelementptr i8, ptr %sd, i32 -224
  %26 = ptrtoint ptr %instance18.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %instance18.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef nonnull @.str.54, i32 noundef %27, i64 noundef %call4.i.i) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end15.i.i, %do.body9.i.i.if.end4.i_crit_edge
  %28 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %source.i.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end4.i.if.end36.i_crit_edge, label %if.else.i

if.end4.i.if.end36.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end4.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool6.not.i = icmp eq ptr %33, null
  br i1 %tobool6.not.i, label %if.else.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_power.i, align 4
  %tobool9.not.i = icmp eq ptr %35, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.else11.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %36 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not.i = icmp eq ptr %36, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else19.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else19.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_power14.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %s_power14.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_power14.i, align 4
  %tobool15.not.i = icmp eq ptr %38, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else19.i_crit_edge, label %land.lhs.true13.i.if.end26.i_crit_edge

land.lhs.true13.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

land.lhs.true13.i.if.else19.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19.i

if.else19.i:                                      ; preds = %land.lhs.true13.i.if.else19.i_crit_edge, %if.else11.i.if.else19.i_crit_edge
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else19.i, %land.lhs.true13.i.if.end26.i_crit_edge
  %.sink.i = phi ptr [ %35, %if.else19.i ], [ %38, %land.lhs.true13.i.if.end26.i_crit_edge ]
  %call23.i = tail call i32 %.sink.i(ptr noundef nonnull %29, i32 noundef 1) #7
  %__result.0.fr.i = freeze i32 %call23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr.i)
  %cmp27.i = icmp sgt i32 %__result.0.fr.i, -1
  br i1 %cmp27.i, label %if.end26.i.if.end36.i_crit_edge, label %switch.early.test.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

switch.early.test.i:                              ; preds = %if.end26.i
  %39 = zext i32 %__result.0.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__result.0.fr.i, label %do.end.i [
    i32 -19, label %switch.early.test.i.if.end36.i_crit_edge
    i32 -515, label %switch.early.test.i.if.end36.i_crit_edge55
  ]

switch.early.test.i.if.end36.i_crit_edge55:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

switch.early.test.i.if.end36.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

do.end.i:                                         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  %cal.i = getelementptr i8, ptr %sd, i32 -228
  %40 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cal.i, align 4
  %dev.i = getelementptr inbounds %struct.cal_dev, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %instance.i = getelementptr i8, ptr %sd, i32 -224
  %44 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %instance.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.34, i32 noundef %45) #10
  br label %if.end

if.end36.i:                                       ; preds = %switch.early.test.i.if.end36.i_crit_edge, %switch.early.test.i.if.end36.i_crit_edge55, %if.end26.i.if.end36.i_crit_edge, %land.lhs.true.i.if.end36.i_crit_edge, %if.else.i.if.end36.i_crit_edge, %if.end4.i.if.end36.i_crit_edge
  %cal.i287.i = getelementptr i8, ptr %sd, i32 -228
  %46 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cal.i287.i, align 4
  %instance.i288.i = getelementptr i8, ptr %sd, i32 -224
  %48 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %instance.i288.i, align 4
  %mul.i289.i = shl i32 %49, 3
  %add.i.i = add i32 %mul.i289.i, 16
  %shl.i.i = shl nuw i32 1, %add.i.i
  %add3.i.i = add i32 %mul.i289.i, 17
  %shl4.i.i = shl nuw i32 1, %add3.i.i
  %or.i.i = or i32 %shl.i.i, %shl4.i.i
  %base.i.i.i = getelementptr inbounds %struct.cal_dev, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %52) #7, !srcloc !165
  %53 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cal.i287.i, align 4
  %55 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %instance.i288.i, align 4
  %mul7.i.i = shl i32 %56, 7
  %add8.i.i = add i32 %mul7.i.i, 784
  %base.i19.i.i = getelementptr inbounds %struct.cal_dev, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %base.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i19.i.i, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %58, i32 %add8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 -61608) #7, !srcloc !165
  %59 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cal.i287.i, align 4
  %61 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %instance.i288.i, align 4
  %mul11.i.i = shl i32 %62, 7
  %add12.i.i = add i32 %mul11.i.i, 792
  %base.i21.i.i = getelementptr inbounds %struct.cal_dev, ptr %60, i32 0, i32 2
  %63 = ptrtoint ptr %base.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i21.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %64, i32 %add12.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 808464432) #7, !srcloc !165
  %65 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cal.i287.i, align 4
  %67 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %instance.i288.i, align 4
  %mul.i292.i = shl i32 %68, 7
  %add.i293.i = add i32 %mul.i292.i, 772
  %base.i.i294.i = getelementptr inbounds %struct.cal_dev, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %base.i.i294.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i294.i, align 8
  %add.ptr.i.i295.i = getelementptr i8, ptr %70, i32 %add.i293.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i295.i) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %clock_lane.i.i = getelementptr i8, ptr %sd, i32 -176
  %72 = ptrtoint ptr %clock_lane.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %clock_lane.i.i, align 4
  %74 = add i8 %73, 1
  %75 = and i8 %74, 7
  %and1.i.i.i = zext i8 %75 to i32
  %lane_polarities.i.i = getelementptr i8, ptr %sd, i32 -174
  %76 = ptrtoint ptr %lane_polarities.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %lane_polarities.i.i, align 2, !range !166
  %78 = and i32 %71, -251658241
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  %and.i45.i.i = or i32 %79, %and1.i.i.i
  %80 = shl nuw nsw i8 %77, 3
  %shl.i.i.i = zext i8 %80 to i32
  %or.i47.i.i = or i32 %and.i45.i.i, %shl.i.i.i
  %81 = ptrtoint ptr %num_data_lanes.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_data_lanes.i.i, align 1
  %conv4.i.i = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp64.not.i.i = icmp eq i8 %82, 0
  br i1 %cmp64.not.i.i, label %if.end36.i.for.end.i.i_crit_edge, label %if.end36.i.for.body.i.i_crit_edge

if.end36.i.for.body.i.i_crit_edge:                ; preds = %if.end36.i
  br label %for.body.i.i

if.end36.i.for.end.i.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end36.i.for.body.i.i_crit_edge
  %lane.068.i.i = phi i32 [ %add11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end36.i.for.body.i.i_crit_edge ]
  %polarity_mask.067.i.i = phi i32 [ %shl6.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 8, %if.end36.i.for.body.i.i_crit_edge ]
  %lane_mask.066.i.i = phi i32 [ %shl.i297.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 7, %if.end36.i.for.body.i.i_crit_edge ]
  %val.065.i.i = phi i32 [ %or.i56.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %or.i47.i.i, %if.end36.i.for.body.i.i_crit_edge ]
  %shl.i297.i = shl i32 %lane_mask.066.i.i, 4
  %shl6.i.i = shl i32 %polarity_mask.067.i.i, 4
  %arrayidx7.i.i = getelementptr %struct.cal_camerarx, ptr %add.ptr.i, i32 0, i32 5, i32 2, i32 2, i32 1, i32 %lane.068.i.i
  %83 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %84 to i32
  %add9.i.i = add nuw nsw i32 %conv8.i.i, 1
  %neg.i.i.i = xor i32 %shl.i297.i, -1
  %and.i48.i.i = and i32 %val.065.i.i, %neg.i.i.i
  %85 = tail call i32 @llvm.cttz.i32(i32 %shl.i297.i, i1 false) #7, !range !167
  %shl.i49.i.i = shl i32 %add9.i.i, %85
  %and1.i50.i.i = and i32 %shl.i49.i.i, %shl.i297.i
  %or.i51.i.i = or i32 %and1.i50.i.i, %and.i48.i.i
  %add11.i.i = add nuw nsw i32 %lane.068.i.i, 1
  %arrayidx12.i.i = getelementptr %struct.cal_camerarx, ptr %add.ptr.i, i32 0, i32 5, i32 2, i32 2, i32 4, i32 %add11.i.i
  %86 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx12.i.i, align 1, !range !166
  %88 = zext i8 %87 to i32
  %neg.i52.i.i = xor i32 %shl6.i.i, -1
  %and.i53.i.i = and i32 %or.i51.i.i, %neg.i52.i.i
  %89 = tail call i32 @llvm.cttz.i32(i32 %shl6.i.i, i1 false) #7, !range !167
  %shl.i54.i.i = shl nuw i32 %88, %89
  %and1.i55.i.i = and i32 %shl.i54.i.i, %shl6.i.i
  %or.i56.i.i = or i32 %and.i53.i.i, %and1.i55.i.i
  %exitcond.not.i.i = icmp eq i32 %add11.i.i, %conv4.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end36.i.for.end.i.i_crit_edge
  %val.0.lcssa.i.i = phi i32 [ %or.i47.i.i, %if.end36.i.for.end.i.i_crit_edge ], [ %or.i56.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %90 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cal.i287.i, align 4
  %92 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %instance.i288.i, align 4
  %mul17.i.i = shl i32 %93, 7
  %add18.i.i = add i32 %mul17.i.i, 772
  %base.i57.i.i = getelementptr inbounds %struct.cal_dev, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %base.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i57.i.i, align 8
  %add.ptr.i58.i.i = getelementptr i8, ptr %95, i32 %add18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %val.0.lcssa.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i.i, i32 %96) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %97 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp19.i.i = icmp ugt i32 %97, 2
  br i1 %cmp19.i.i, label %do.end.i299.i, label %for.end.i.i.cal_camerarx_lane_config.exit.i_crit_edge

for.end.i.i.cal_camerarx_lane_config.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_lane_config.exit.i

do.end.i299.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cal.i287.i, align 4
  %dev.i298.i = getelementptr inbounds %struct.cal_dev, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %dev.i298.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i298.i, align 8
  %102 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %instance.i288.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %101, ptr noundef nonnull @.str.56, i32 noundef %103, i32 noundef %103, i32 noundef %val.0.lcssa.i.i) #10
  br label %cal_camerarx_lane_config.exit.i

cal_camerarx_lane_config.exit.i:                  ; preds = %do.end.i299.i, %for.end.i.i.cal_camerarx_lane_config.exit.i_crit_edge
  %104 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cal.i287.i, align 4
  %data.i.i = getelementptr inbounds %struct.cal_dev, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %instance.i288.i, align 4
  %num_lanes1.i.i = getelementptr %struct.cal_camerarx_data, ptr %109, i32 %111, i32 1
  %112 = ptrtoint ptr %num_lanes1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_lanes1.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %sd, i32 -240
  %114 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx2.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %115, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx4.i.i = getelementptr i8, ptr %sd, i32 -236
  %116 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx4.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %113
  %sub.i.i = xor i32 %notmask.i.i, -1
  %call.i20.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %117, i32 noundef -1, i32 noundef %sub.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx7.i302.i = getelementptr i8, ptr %sd, i32 -232
  %118 = ptrtoint ptr %arrayidx7.i302.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx7.i302.i, align 4
  %tobool.not.i303.i = icmp eq ptr %119, null
  br i1 %tobool.not.i303.i, label %cal_camerarx_lane_config.exit.i.cal_camerarx_enable.exit.i_crit_edge, label %if.then.i.i

cal_camerarx_lane_config.exit.i.cal_camerarx_enable.exit.i_crit_edge: ; preds = %cal_camerarx_lane_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_enable.exit.i

if.then.i.i:                                      ; preds = %cal_camerarx_lane_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i21.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %119, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cal_camerarx_enable.exit.i

cal_camerarx_enable.exit.i:                       ; preds = %if.then.i.i, %cal_camerarx_lane_config.exit.i.cal_camerarx_enable.exit.i_crit_edge
  %fields.i.i = getelementptr i8, ptr %sd, i32 -244
  %120 = ptrtoint ptr %fields.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fields.i.i, align 4
  %call.i22.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %121, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %122 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cal.i287.i, align 4
  %124 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %instance.i288.i, align 4
  %mul.i = shl i32 %125, 7
  %add.i = add i32 %mul.i, 772
  %base.i.i305.i = getelementptr inbounds %struct.cal_dev, ptr %123, i32 0, i32 2
  %126 = ptrtoint ptr %base.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i.i305.i, align 8
  %add.ptr.i.i306.i = getelementptr i8, ptr %127, i32 %add.i
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i306.i) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %129 = or i32 %128, 64
  %130 = ptrtoint ptr %base.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i305.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %131, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %129) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %132 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp40.i = icmp ugt i32 %132, 2
  br i1 %cmp40.i, label %do.end45.i, label %cal_camerarx_enable.exit.i.do.end57.i_crit_edge

cal_camerarx_enable.exit.i.do.end57.i_crit_edge:  ; preds = %cal_camerarx_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57.i

do.end45.i:                                       ; preds = %cal_camerarx_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cal.i287.i, align 4
  %dev47.i = getelementptr inbounds %struct.cal_dev, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev47.i, align 8
  %137 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %instance.i288.i, align 4
  %mul52.i = shl i32 %138, 7
  %add53.i = add i32 %mul52.i, 772
  %base.i.i = getelementptr inbounds %struct.cal_dev, ptr %134, i32 0, i32 2
  %139 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %140, i32 %add53.i
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !162
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %136, ptr noundef nonnull @.str.37, i32 noundef %138, i32 noundef %138, i32 noundef %142) #10
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end45.i, %cal_camerarx_enable.exit.i.do.end57.i_crit_edge
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 4
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %mul.i308.i = mul i64 %call4.i.i, 20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %146 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !168
  %call.i.i309.i = call i64 @div_s64_rem(i64 noundef %mul.i308.i, i32 noundef 1000000000, ptr noundef nonnull %remainder.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %conv.i310.i = trunc i64 %call.i.i309.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %147 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.not.i.i = icmp eq i32 %147, 0
  br i1 %cmp.not.i.i, label %do.end57.i.do.end4.i.i_crit_edge, label %do.end.i314.i

do.end57.i.do.end4.i.i_crit_edge:                 ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i.i

do.end.i314.i:                                    ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cal.i287.i, align 4
  %dev.i312.i = getelementptr inbounds %struct.cal_dev, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %dev.i312.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i312.i, align 8
  %152 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %151, ptr noundef nonnull @.str.58, i32 noundef %153, i32 noundef %conv.i310.i, i32 noundef %conv.i310.i) #10
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i314.i, %do.end57.i.do.end4.i.i_crit_edge
  %mul5.i.i = mul i64 %call4.i.i, 105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i69.i.i) #7
  %154 = ptrtoint ptr %remainder.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %remainder.i69.i.i, align 4, !annotation !168
  %call.i70.i.i = call i64 @div_s64_rem(i64 noundef %mul5.i.i, i32 noundef 1000000000, ptr noundef nonnull %remainder.i69.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i69.i.i) #7
  %155 = trunc i64 %call.i70.i.i to i32
  %conv7.i.i = add i32 %155, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %156 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp9.not.i.i = icmp eq i32 %156, 0
  br i1 %cmp9.not.i.i, label %do.end4.i.i.do.end20.i.i_crit_edge, label %do.end14.i.i

do.end4.i.i.do.end20.i.i_crit_edge:               ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i.i

do.end14.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cal.i287.i, align 4
  %dev16.i.i = getelementptr inbounds %struct.cal_dev, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %dev16.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev16.i.i, align 8
  %161 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %160, ptr noundef nonnull @.str.61, i32 noundef %162, i32 noundef %conv7.i.i, i32 noundef %conv7.i.i) #10
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %do.end14.i.i, %do.end4.i.i.do.end20.i.i_crit_edge
  %163 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr.i, align 4
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %shl.i.i315.i = shl i32 %conv.i310.i, 8
  %and1.i.i316.i = and i32 %shl.i.i315.i, 65280
  %166 = and i32 %165, 65534
  %167 = or i32 %166, 1
  %168 = call i32 @llvm.bswap.i32(i32 %167) #7
  %and1.i74.i.i = and i32 %conv7.i.i, 255
  %and.i73.i.i = or i32 %and1.i74.i.i, %and1.i.i316.i
  %or.i75.i.i = or i32 %and.i73.i.i, %168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %169 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp23.not.i.i = icmp eq i32 %169, 0
  br i1 %cmp23.not.i.i, label %do.end20.i.i.do.end35.i.i_crit_edge, label %do.end28.i.i

do.end20.i.i.do.end35.i.i_crit_edge:              ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i.i

do.end28.i.i:                                     ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cal.i287.i, align 4
  %dev30.i.i = getelementptr inbounds %struct.cal_dev, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %dev30.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev30.i.i, align 8
  %174 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %173, ptr noundef nonnull @.str.64, i32 noundef %175, i32 noundef %175, i32 noundef %or.i75.i.i) #10
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %do.end28.i.i, %do.end20.i.i.do.end35.i.i_crit_edge
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  %178 = call i32 @llvm.bswap.i32(i32 %or.i75.i.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %178) #7, !srcloc !165
  %179 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i317.i = getelementptr i8, ptr %180, i32 4
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i317.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %182 = and i32 %181, 254
  %183 = or i32 %182, 249627136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %184 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp38.not.i.i = icmp eq i32 %184, 0
  br i1 %cmp38.not.i.i, label %do.end35.i.i.cal_camerarx_config.exit.i_crit_edge, label %do.end43.i.i

do.end35.i.i.cal_camerarx_config.exit.i_crit_edge: ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_config.exit.i

do.end43.i.i:                                     ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %185 = call i32 @llvm.bswap.i32(i32 %183) #7
  %186 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cal.i287.i, align 4
  %dev45.i.i = getelementptr inbounds %struct.cal_dev, ptr %187, i32 0, i32 4
  %188 = ptrtoint ptr %dev45.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev45.i.i, align 8
  %190 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %189, ptr noundef nonnull @.str.67, i32 noundef %191, i32 noundef %191, i32 noundef %185) #10
  br label %cal_camerarx_config.exit.i

cal_camerarx_config.exit.i:                       ; preds = %do.end43.i.i, %do.end35.i.i.cal_camerarx_config.exit.i_crit_edge
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i83.i.i = getelementptr i8, ptr %193, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i, i32 %183) #7, !srcloc !165
  %194 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cal.i287.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 8
  %call60.i = call i32 @clk_get_rate(ptr noundef %197) #7
  %sub.i = add i32 %call60.i, 639999
  %div.i = udiv i32 %sub.i, 640000
  %198 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cal.i287.i, align 4
  %200 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %instance.i288.i, align 4
  %mul64.i = shl i32 %201, 7
  %add65.i = add i32 %mul64.i, 788
  %base.i318.i = getelementptr inbounds %struct.cal_dev, ptr %199, i32 0, i32 2
  %202 = ptrtoint ptr %base.i318.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base.i318.i, align 8
  %add.ptr.i319.i = getelementptr i8, ptr %203, i32 %add65.i
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i319.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %205 = and i32 %204, 8454143
  %206 = or i32 %205, 6291456
  %207 = call i32 @llvm.bswap.i32(i32 %206) #7
  %or.i325.i = or i32 %207, %div.i
  %208 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cal.i287.i, align 4
  %210 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %instance.i288.i, align 4
  %mul69.i = shl i32 %211, 7
  %add70.i = add i32 %mul69.i, 788
  %base.i326.i = getelementptr inbounds %struct.cal_dev, ptr %209, i32 0, i32 2
  %212 = ptrtoint ptr %base.i326.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base.i326.i, align 8
  %add.ptr.i327.i = getelementptr i8, ptr %213, i32 %add70.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  %214 = call i32 @llvm.bswap.i32(i32 %or.i325.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327.i, i32 %214) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %215 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %215)
  %cmp72.i = icmp ugt i32 %215, 2
  br i1 %cmp72.i, label %do.end77.i, label %cal_camerarx_config.exit.i.do.end89.i_crit_edge

cal_camerarx_config.exit.i.do.end89.i_crit_edge:  ; preds = %cal_camerarx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89.i

do.end77.i:                                       ; preds = %cal_camerarx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cal.i287.i, align 4
  %dev79.i = getelementptr inbounds %struct.cal_dev, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev79.i, align 8
  %220 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %instance.i288.i, align 4
  %mul84.i = shl i32 %221, 7
  %add85.i = add i32 %mul84.i, 788
  %base.i328.i = getelementptr inbounds %struct.cal_dev, ptr %217, i32 0, i32 2
  %222 = ptrtoint ptr %base.i328.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base.i328.i, align 8
  %add.ptr.i329.i = getelementptr i8, ptr %223, i32 %add85.i
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329.i) #7, !srcloc !162
  %225 = call i32 @llvm.bswap.i32(i32 %224) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %219, ptr noundef nonnull @.str.40, i32 noundef %221, i32 noundef %221, i32 noundef %225) #10
  br label %do.end89.i

do.end89.i:                                       ; preds = %do.end77.i, %cal_camerarx_config.exit.i.do.end89.i_crit_edge
  %226 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cal.i287.i, align 4
  %228 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %instance.i288.i, align 4
  %mul92.i = shl i32 %229, 7
  %add93.i = add i32 %mul92.i, 788
  %base.i.i330.i = getelementptr inbounds %struct.cal_dev, ptr %227, i32 0, i32 2
  %230 = ptrtoint ptr %base.i.i330.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base.i.i330.i, align 8
  %add.ptr.i.i331.i = getelementptr i8, ptr %231, i32 %add93.i
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i331.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %233 = or i32 %232, 8388608
  %234 = ptrtoint ptr %base.i.i330.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %base.i.i330.i, align 8
  %add.ptr.i10.i334.i = getelementptr i8, ptr %235, i32 %add93.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i334.i, i32 %233) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %236 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %236)
  %cmp95.i = icmp ugt i32 %236, 2
  br i1 %cmp95.i, label %do.end100.i, label %do.end89.i.do.end112.i_crit_edge

do.end89.i.do.end112.i_crit_edge:                 ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end112.i

do.end100.i:                                      ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cal.i287.i, align 4
  %dev102.i = getelementptr inbounds %struct.cal_dev, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %dev102.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev102.i, align 8
  %241 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %instance.i288.i, align 4
  %mul107.i = shl i32 %242, 7
  %add108.i = add i32 %mul107.i, 788
  %base.i335.i = getelementptr inbounds %struct.cal_dev, ptr %238, i32 0, i32 2
  %243 = ptrtoint ptr %base.i335.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i335.i, align 8
  %add.ptr.i336.i = getelementptr i8, ptr %244, i32 %add108.i
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i336.i) #7, !srcloc !162
  %246 = call i32 @llvm.bswap.i32(i32 %245) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %240, ptr noundef nonnull @.str.43, i32 noundef %242, i32 noundef %242, i32 noundef %246) #10
  br label %do.end112.i

do.end112.i:                                      ; preds = %do.end100.i, %do.end89.i.do.end112.i_crit_edge
  call fastcc void @cal_camerarx_power(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  %247 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %source.i.i, align 4
  %tobool116.not.i = icmp eq ptr %248, null
  br i1 %tobool116.not.i, label %do.end112.i.if.end175.i_crit_edge, label %if.else118.i

do.end112.i.if.end175.i_crit_edge:                ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

if.else118.i:                                     ; preds = %do.end112.i
  %ops119.i = getelementptr inbounds %struct.v4l2_subdev, ptr %248, i32 0, i32 6
  %249 = ptrtoint ptr %ops119.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ops119.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %250, i32 0, i32 3
  %251 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %video.i, align 4
  %tobool120.not.i = icmp eq ptr %252, null
  br i1 %tobool120.not.i, label %if.else118.i.if.then144.i_crit_edge, label %land.lhs.true121.i

if.else118.i.if.then144.i_crit_edge:              ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then144.i

land.lhs.true121.i:                               ; preds = %if.else118.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %252, i32 0, i32 10
  %253 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %s_stream.i, align 4
  %tobool124.not.i = icmp eq ptr %254, null
  br i1 %tobool124.not.i, label %land.lhs.true121.i.if.then144.i_crit_edge, label %if.else126.i

land.lhs.true121.i.if.then144.i_crit_edge:        ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then144.i

if.else126.i:                                     ; preds = %land.lhs.true121.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool127.not.i = icmp eq ptr %255, null
  br i1 %tobool127.not.i, label %if.else126.i.if.else134.i_crit_edge, label %land.lhs.true128.i

if.else126.i.if.else134.i_crit_edge:              ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else134.i

land.lhs.true128.i:                               ; preds = %if.else126.i
  %s_stream129.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %255, i32 0, i32 10
  %256 = ptrtoint ptr %s_stream129.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %s_stream129.i, align 4
  %tobool130.not.i = icmp eq ptr %257, null
  br i1 %tobool130.not.i, label %land.lhs.true128.i.if.else134.i_crit_edge, label %land.lhs.true128.i.if.end141.i_crit_edge

land.lhs.true128.i.if.end141.i_crit_edge:         ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

land.lhs.true128.i.if.else134.i_crit_edge:        ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else134.i

if.else134.i:                                     ; preds = %land.lhs.true128.i.if.else134.i_crit_edge, %if.else126.i.if.else134.i_crit_edge
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else134.i, %land.lhs.true128.i.if.end141.i_crit_edge
  %.sink391.i = phi ptr [ %254, %if.else134.i ], [ %257, %land.lhs.true128.i.if.end141.i_crit_edge ]
  %call138.i = call i32 %.sink391.i(ptr noundef nonnull %248, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool143.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool143.not.i, label %if.end183.i, label %if.end141.i.if.then144.i_crit_edge

if.end141.i.if.then144.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then144.i

if.then144.i:                                     ; preds = %if.end141.i.if.then144.i_crit_edge, %land.lhs.true121.i.if.then144.i_crit_edge, %if.else118.i.if.then144.i_crit_edge
  %__result115.0386.ph.i = phi i32 [ -515, %land.lhs.true121.i.if.then144.i_crit_edge ], [ -515, %if.else118.i.if.then144.i_crit_edge ], [ %call138.i, %if.end141.i.if.then144.i_crit_edge ]
  %258 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %.pr.i = load ptr, ptr %source.i.i, align 4
  %tobool148.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool148.not.i, label %if.then144.i.if.end175.i_crit_edge, label %if.else150.i

if.then144.i.if.end175.i_crit_edge:               ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

if.else150.i:                                     ; preds = %if.then144.i
  %ops151.i = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr.i, i32 0, i32 6
  %259 = ptrtoint ptr %ops151.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ops151.i, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %tobool153.not.i = icmp eq ptr %262, null
  br i1 %tobool153.not.i, label %if.else150.i.if.end175.i_crit_edge, label %land.lhs.true154.i

if.else150.i.if.end175.i_crit_edge:               ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

land.lhs.true154.i:                               ; preds = %if.else150.i
  %s_power157.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %262, i32 0, i32 10
  %263 = ptrtoint ptr %s_power157.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %s_power157.i, align 4
  %tobool158.not.i = icmp eq ptr %264, null
  br i1 %tobool158.not.i, label %land.lhs.true154.i.if.end175.i_crit_edge, label %if.else160.i

land.lhs.true154.i.if.end175.i_crit_edge:         ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

if.else160.i:                                     ; preds = %land.lhs.true154.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %265 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool161.not.i = icmp eq ptr %265, null
  br i1 %tobool161.not.i, label %if.else160.i.if.else168.i_crit_edge, label %land.lhs.true162.i

if.else160.i.if.else168.i_crit_edge:              ; preds = %if.else160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else168.i

land.lhs.true162.i:                               ; preds = %if.else160.i
  %s_power163.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %265, i32 0, i32 10
  %266 = ptrtoint ptr %s_power163.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %s_power163.i, align 4
  %tobool164.not.i = icmp eq ptr %267, null
  br i1 %tobool164.not.i, label %land.lhs.true162.i.if.else168.i_crit_edge, label %land.lhs.true162.i.if.end175.sink.split.i_crit_edge

land.lhs.true162.i.if.end175.sink.split.i_crit_edge: ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.sink.split.i

land.lhs.true162.i.if.else168.i_crit_edge:        ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else168.i

if.else168.i:                                     ; preds = %land.lhs.true162.i.if.else168.i_crit_edge, %if.else160.i.if.else168.i_crit_edge
  br label %if.end175.sink.split.i

if.end175.sink.split.i:                           ; preds = %if.else168.i, %land.lhs.true162.i.if.end175.sink.split.i_crit_edge
  %.sink392.i = phi ptr [ %264, %if.else168.i ], [ %267, %land.lhs.true162.i.if.end175.sink.split.i_crit_edge ]
  %call172.i = call i32 %.sink392.i(ptr noundef nonnull %.pr.i, i32 noundef 0) #7
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.end175.sink.split.i, %land.lhs.true154.i.if.end175.i_crit_edge, %if.else150.i.if.end175.i_crit_edge, %if.then144.i.if.end175.i_crit_edge, %do.end112.i.if.end175.i_crit_edge
  %__result115.0386390.i = phi i32 [ %__result115.0386.ph.i, %if.else150.i.if.end175.i_crit_edge ], [ %__result115.0386.ph.i, %land.lhs.true154.i.if.end175.i_crit_edge ], [ %__result115.0386.ph.i, %if.then144.i.if.end175.i_crit_edge ], [ -19, %do.end112.i.if.end175.i_crit_edge ], [ %__result115.0386.ph.i, %if.end175.sink.split.i ]
  %268 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cal.i287.i, align 4
  %270 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %instance.i288.i, align 4
  %mul.i51 = shl i32 %271, 3
  %add.i52 = add i32 %mul.i51, 16
  %shl.i = shl nuw i32 1, %add.i52
  %add3.i = add i32 %mul.i51, 17
  %shl4.i = shl nuw i32 1, %add3.i
  %or.i = or i32 %shl.i, %shl4.i
  %base.i.i53 = getelementptr inbounds %struct.cal_dev, ptr %269, i32 0, i32 2
  %272 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base.i.i53, align 8
  %add.ptr.i.i54 = getelementptr i8, ptr %273, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  %274 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %274) #7, !srcloc !165
  %275 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cal.i287.i, align 4
  %277 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %instance.i288.i, align 4
  %mul7.i = shl i32 %278, 7
  %add8.i = add i32 %mul7.i, 784
  %base.i19.i = getelementptr inbounds %struct.cal_dev, ptr %276, i32 0, i32 2
  %279 = ptrtoint ptr %base.i19.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %base.i19.i, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %280, i32 %add8.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #7, !srcloc !165
  %281 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cal.i287.i, align 4
  %283 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %instance.i288.i, align 4
  %mul11.i = shl i32 %284, 7
  %add12.i = add i32 %mul11.i, 792
  %base.i21.i = getelementptr inbounds %struct.cal_dev, ptr %282, i32 0, i32 2
  %285 = ptrtoint ptr %base.i21.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %base.i21.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %286, i32 %add12.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #7, !srcloc !165
  %287 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cal.i287.i, align 4
  %dev181.i = getelementptr inbounds %struct.cal_dev, ptr %288, i32 0, i32 4
  %289 = ptrtoint ptr %dev181.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev181.i, align 8
  %291 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.46, i32 noundef %292) #10
  br label %if.end

if.end183.i:                                      ; preds = %if.end141.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %293 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -75, %293
  %294 = load volatile i32, ptr @jiffies, align 128
  %sub23.i.i = add i32 %add.neg.i.i, %294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23.i.i)
  %cmp24.i.i = icmp slt i32 %sub23.i.i, 0
  br i1 %cmp24.i.i, label %if.end183.i.while.body.i.i_crit_edge, label %if.end183.i.while.end.i.i_crit_edge

if.end183.i.while.end.i.i_crit_edge:              ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

if.end183.i.while.body.i.i_crit_edge:             ; preds = %if.end183.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i342.i.while.body.i.i_crit_edge, %if.end183.i.while.body.i.i_crit_edge
  %295 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cal.i287.i, align 4
  %297 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %instance.i288.i, align 4
  %mul.i339.i = shl i32 %298, 7
  %add1.i.i = add i32 %mul.i339.i, 772
  %base.i.i.i.i = getelementptr inbounds %struct.cal_dev, ptr %296, i32 0, i32 2
  %299 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %300, i32 %add1.i.i
  %301 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %302 = and i32 %301, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp3.not.i.i = icmp eq i32 %302, 0
  br i1 %cmp3.not.i.i, label %if.end.i342.i, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

if.end.i342.i:                                    ; preds = %while.body.i.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 5000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %303 = load volatile i32, ptr @jiffies, align 128
  %sub.i340.i = add i32 %303, %add.neg.i.i
  %cmp.i341.i = icmp slt i32 %sub.i340.i, 0
  br i1 %cmp.i341.i, label %if.end.i342.i.while.body.i.i_crit_edge, label %if.end.i342.i.while.end.i.i_crit_edge

if.end.i342.i.while.end.i.i_crit_edge:            ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

if.end.i342.i.while.body.i.i_crit_edge:           ; preds = %if.end.i342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i342.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge, %if.end183.i.while.end.i.i_crit_edge
  %304 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cal.i287.i, align 4
  %306 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %instance.i288.i, align 4
  %mul6.i.i = shl i32 %307, 7
  %add7.i.i = add i32 %mul6.i.i, 772
  %base.i.i19.i.i = getelementptr inbounds %struct.cal_dev, ptr %305, i32 0, i32 2
  %308 = ptrtoint ptr %base.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %base.i.i19.i.i, align 8
  %add.ptr.i.i20.i.i = getelementptr i8, ptr %309, i32 %add7.i.i
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %311 = and i32 %310, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp9.not.not.i.i = icmp eq i32 %311, 0
  br i1 %cmp9.not.not.i.i, label %do.end.i344.i, label %while.end.i.i.cal_camerarx_wait_reset.exit.i_crit_edge

while.end.i.i.cal_camerarx_wait_reset.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_wait_reset.exit.i

do.end.i344.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cal.i287.i, align 4
  %dev.i343.i = getelementptr inbounds %struct.cal_dev, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %dev.i343.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev.i343.i, align 8
  %316 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %315, ptr noundef nonnull @.str.73, i32 noundef %317) #10
  br label %cal_camerarx_wait_reset.exit.i

cal_camerarx_wait_reset.exit.i:                   ; preds = %do.end.i344.i, %while.end.i.i.cal_camerarx_wait_reset.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %318 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i346.i = sub i32 -75, %318
  %319 = load volatile i32, ptr @jiffies, align 128
  %sub23.i347.i = add i32 %add.neg.i346.i, %319
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23.i347.i)
  %cmp24.i348.i = icmp slt i32 %sub23.i347.i, 0
  br i1 %cmp24.i348.i, label %cal_camerarx_wait_reset.exit.i.while.body.i355.i_crit_edge, label %cal_camerarx_wait_reset.exit.i.while.end.i365.i_crit_edge

cal_camerarx_wait_reset.exit.i.while.end.i365.i_crit_edge: ; preds = %cal_camerarx_wait_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i365.i

cal_camerarx_wait_reset.exit.i.while.body.i355.i_crit_edge: ; preds = %cal_camerarx_wait_reset.exit.i
  br label %while.body.i355.i

while.body.i355.i:                                ; preds = %if.end.i358.i.while.body.i355.i_crit_edge, %cal_camerarx_wait_reset.exit.i.while.body.i355.i_crit_edge
  %320 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %cal.i287.i, align 4
  %322 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %instance.i288.i, align 4
  %mul.i351.i = shl i32 %323, 7
  %add1.i352.i = add i32 %mul.i351.i, 788
  %base.i.i.i353.i = getelementptr inbounds %struct.cal_dev, ptr %321, i32 0, i32 2
  %324 = ptrtoint ptr %base.i.i.i353.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %base.i.i.i353.i, align 8
  %add.ptr.i.i.i354.i = getelementptr i8, ptr %325, i32 %add1.i352.i
  %326 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i354.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %327 = and i32 %326, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %cmp3.i.i = icmp eq i32 %327, 0
  br i1 %cmp3.i.i, label %while.body.i355.i.while.end.i365.i_crit_edge, label %if.end.i358.i

while.body.i355.i.while.end.i365.i_crit_edge:     ; preds = %while.body.i355.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i365.i

if.end.i358.i:                                    ; preds = %while.body.i355.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 5000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %328 = load volatile i32, ptr @jiffies, align 128
  %sub.i356.i = add i32 %328, %add.neg.i346.i
  %cmp.i357.i = icmp slt i32 %sub.i356.i, 0
  br i1 %cmp.i357.i, label %if.end.i358.i.while.body.i355.i_crit_edge, label %if.end.i358.i.while.end.i365.i_crit_edge

if.end.i358.i.while.end.i365.i_crit_edge:         ; preds = %if.end.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i365.i

if.end.i358.i.while.body.i355.i_crit_edge:        ; preds = %if.end.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i355.i

while.end.i365.i:                                 ; preds = %if.end.i358.i.while.end.i365.i_crit_edge, %while.body.i355.i.while.end.i365.i_crit_edge, %cal_camerarx_wait_reset.exit.i.while.end.i365.i_crit_edge
  %329 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %cal.i287.i, align 4
  %331 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %instance.i288.i, align 4
  %mul6.i360.i = shl i32 %332, 7
  %add7.i361.i = add i32 %mul6.i360.i, 788
  %base.i.i19.i362.i = getelementptr inbounds %struct.cal_dev, ptr %330, i32 0, i32 2
  %333 = ptrtoint ptr %base.i.i19.i362.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %base.i.i19.i362.i, align 8
  %add.ptr.i.i20.i363.i = getelementptr i8, ptr %334, i32 %add7.i361.i
  %335 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i363.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %336 = and i32 %335, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %cmp9.not.i364.i = icmp eq i32 %336, 0
  br i1 %cmp9.not.i364.i, label %while.end.i365.i.cal_camerarx_wait_stop_state.exit.i_crit_edge, label %do.end.i367.i

while.end.i365.i.cal_camerarx_wait_stop_state.exit.i_crit_edge: ; preds = %while.end.i365.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_wait_stop_state.exit.i

do.end.i367.i:                                    ; preds = %while.end.i365.i
  call void @__sanitizer_cov_trace_pc() #9
  %337 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cal.i287.i, align 4
  %dev.i366.i = getelementptr inbounds %struct.cal_dev, ptr %338, i32 0, i32 4
  %339 = ptrtoint ptr %dev.i366.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev.i366.i, align 8
  %341 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %instance.i288.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %340, ptr noundef nonnull @.str.75, i32 noundef %342) #10
  br label %cal_camerarx_wait_stop_state.exit.i

cal_camerarx_wait_stop_state.exit.i:              ; preds = %do.end.i367.i, %while.end.i365.i.cal_camerarx_wait_stop_state.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %343 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %cmp185.not.i = icmp eq i32 %343, 0
  br i1 %cmp185.not.i, label %cal_camerarx_wait_stop_state.exit.i.do.end198.i_crit_edge, label %do.end190.i

cal_camerarx_wait_stop_state.exit.i.do.end198.i_crit_edge: ; preds = %cal_camerarx_wait_stop_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end198.i

do.end190.i:                                      ; preds = %cal_camerarx_wait_stop_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %344 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cal.i287.i, align 4
  %dev192.i = getelementptr inbounds %struct.cal_dev, ptr %345, i32 0, i32 4
  %346 = ptrtoint ptr %dev192.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev192.i, align 8
  %348 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %instance.i288.i, align 4
  %350 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i368.i = getelementptr i8, ptr %351, i32 4
  %352 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i368.i) #7, !srcloc !162
  %353 = call i32 @llvm.bswap.i32(i32 %352) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %347, ptr noundef nonnull @.str.49, i32 noundef %349, i32 noundef %349, i32 noundef %353) #10
  br label %do.end198.i

do.end198.i:                                      ; preds = %do.end190.i, %cal_camerarx_wait_stop_state.exit.i.do.end198.i_crit_edge
  %354 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %cal.i287.i, align 4
  %356 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %instance.i288.i, align 4
  %mul.i371.i = shl i32 %357, 7
  %add.i372.i = add i32 %mul.i371.i, 768
  %base.i.i.i373.i = getelementptr inbounds %struct.cal_dev, ptr %355, i32 0, i32 2
  %358 = ptrtoint ptr %base.i.i.i373.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %base.i.i.i373.i, align 8
  %add.ptr.i.i.i374.i = getelementptr i8, ptr %359, i32 %add.i372.i
  %360 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i374.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %361 = or i32 %360, 67108864
  %362 = ptrtoint ptr %base.i.i.i373.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %base.i.i.i373.i, align 8
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %363, i32 %add.i372.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i.i, i32 %361) #7, !srcloc !165
  %364 = ptrtoint ptr %cal.i287.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %cal.i287.i, align 4
  %366 = ptrtoint ptr %instance.i288.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %instance.i288.i, align 4
  %mul3.i.i = shl i32 %367, 7
  %add4.i.i = add i32 %mul3.i.i, 768
  %base.i.i8.i.i = getelementptr inbounds %struct.cal_dev, ptr %365, i32 0, i32 2
  %368 = ptrtoint ptr %base.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %base.i.i8.i.i, align 8
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %369, i32 %add4.i.i
  %370 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %371 = or i32 %370, 16777216
  %372 = ptrtoint ptr %base.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %base.i.i8.i.i, align 8
  %add.ptr.i10.i12.i.i = getelementptr i8, ptr %373, i32 %add4.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i12.i.i, i32 %371) #7, !srcloc !165
  %374 = ptrtoint ptr %enable_count.i6 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %enable_count.i6, align 4
  %inc200.i = add i32 %375, 1
  store i32 %inc200.i, ptr %enable_count.i6, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %dec.i = add i32 %1, -1
  %376 = ptrtoint ptr %enable_count.i6 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %dec.i, ptr %enable_count.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i7 = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i7, label %if.end.i32, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i32:                                       ; preds = %if.else
  %cal.i.i8 = getelementptr i8, ptr %sd, i32 -228
  %377 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cal.i.i8, align 4
  %instance.i.i9 = getelementptr i8, ptr %sd, i32 -224
  %379 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %instance.i.i9, align 4
  %mul.i.i10 = shl i32 %380, 7
  %add.i.i11 = add i32 %mul.i.i10, 768
  %base.i.i.i.i12 = getelementptr inbounds %struct.cal_dev, ptr %378, i32 0, i32 2
  %381 = ptrtoint ptr %base.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %base.i.i.i.i12, align 8
  %add.ptr.i.i.i.i13 = getelementptr i8, ptr %382, i32 %add.i.i11
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i13) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %384 = and i32 %383, -16777217
  %385 = ptrtoint ptr %base.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %base.i.i.i.i12, align 8
  %add.ptr.i10.i.i.i14 = getelementptr i8, ptr %386, i32 %add.i.i11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i.i14, i32 %384) #7, !srcloc !165
  %387 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %cal.i.i8, align 4
  %389 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %instance.i.i9, align 4
  %mul.i127.i = shl i32 %390, 3
  %add.i128.i = add i32 %mul.i127.i, 16
  %shl.i.i15 = shl nuw i32 1, %add.i128.i
  %add3.i.i16 = add i32 %mul.i127.i, 17
  %shl4.i.i17 = shl nuw i32 1, %add3.i.i16
  %or.i.i18 = or i32 %shl.i.i15, %shl4.i.i17
  %base.i.i.i19 = getelementptr inbounds %struct.cal_dev, ptr %388, i32 0, i32 2
  %391 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %base.i.i.i19, align 8
  %add.ptr.i.i.i20 = getelementptr i8, ptr %392, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %393 = tail call i32 @llvm.bswap.i32(i32 %or.i.i18) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i20, i32 %393) #7, !srcloc !165
  %394 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %cal.i.i8, align 4
  %396 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %instance.i.i9, align 4
  %mul7.i.i21 = shl i32 %397, 7
  %add8.i.i22 = add i32 %mul7.i.i21, 784
  %base.i19.i.i23 = getelementptr inbounds %struct.cal_dev, ptr %395, i32 0, i32 2
  %398 = ptrtoint ptr %base.i19.i.i23 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %base.i19.i.i23, align 8
  %add.ptr.i20.i.i24 = getelementptr i8, ptr %399, i32 %add8.i.i22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i24, i32 0) #7, !srcloc !165
  %400 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %cal.i.i8, align 4
  %402 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %instance.i.i9, align 4
  %mul11.i.i25 = shl i32 %403, 7
  %add12.i.i26 = add i32 %mul11.i.i25, 792
  %base.i21.i.i27 = getelementptr inbounds %struct.cal_dev, ptr %401, i32 0, i32 2
  %404 = ptrtoint ptr %base.i21.i.i27 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %base.i21.i.i27, align 8
  %add.ptr.i22.i.i28 = getelementptr i8, ptr %405, i32 %add12.i.i26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i28, i32 0) #7, !srcloc !165
  tail call fastcc void @cal_camerarx_power(ptr noundef %add.ptr.i, i1 noundef zeroext false) #7
  %406 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cal.i.i8, align 4
  %408 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %instance.i.i9, align 4
  %mul.i29 = shl i32 %409, 7
  %add.i30 = add i32 %mul.i29, 772
  %base.i.i129.i = getelementptr inbounds %struct.cal_dev, ptr %407, i32 0, i32 2
  %410 = ptrtoint ptr %base.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %base.i.i129.i, align 8
  %add.ptr.i.i130.i = getelementptr i8, ptr %411, i32 %add.i30
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130.i) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %413 = and i32 %412, -65
  %414 = ptrtoint ptr %base.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %base.i.i129.i, align 8
  %add.ptr.i10.i.i31 = getelementptr i8, ptr %415, i32 %add.i30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i31, i32 %413) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %416 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %416)
  %cmp1.i = icmp ugt i32 %416, 2
  br i1 %cmp1.i, label %do.end.i36, label %if.end.i32.do.end13.i_crit_edge

if.end.i32.do.end13.i_crit_edge:                  ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i36:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  %417 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %cal.i.i8, align 4
  %dev.i33 = getelementptr inbounds %struct.cal_dev, ptr %418, i32 0, i32 4
  %419 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dev.i33, align 8
  %421 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %instance.i.i9, align 4
  %mul9.i = shl i32 %422, 7
  %add10.i = add i32 %mul9.i, 772
  %base.i.i34 = getelementptr inbounds %struct.cal_dev, ptr %418, i32 0, i32 2
  %423 = ptrtoint ptr %base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %base.i.i34, align 8
  %add.ptr.i.i35 = getelementptr i8, ptr %424, i32 %add10.i
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #7, !srcloc !162
  %426 = tail call i32 @llvm.bswap.i32(i32 %425) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %420, ptr noundef nonnull @.str.77, i32 noundef %422, i32 noundef %422, i32 noundef %426) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i36, %if.end.i32.do.end13.i_crit_edge
  %fields.i.i37 = getelementptr i8, ptr %sd, i32 -244
  %427 = ptrtoint ptr %fields.i.i37 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %fields.i.i37, align 4
  %call.i.i.i38 = tail call i32 @regmap_field_update_bits_base(ptr noundef %428, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %source.i = getelementptr i8, ptr %sd, i32 -148
  %429 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %source.i, align 4
  %tobool.not.i39 = icmp eq ptr %430, null
  br i1 %tobool.not.i39, label %do.end13.i.do.end40.i_crit_edge, label %if.else.i43

do.end13.i.do.end40.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.else.i43:                                      ; preds = %do.end13.i
  %ops.i40 = getelementptr inbounds %struct.v4l2_subdev, ptr %430, i32 0, i32 6
  %431 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %ops.i40, align 4
  %video.i41 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %432, i32 0, i32 3
  %433 = ptrtoint ptr %video.i41 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %video.i41, align 4
  %tobool15.not.i42 = icmp eq ptr %434, null
  br i1 %tobool15.not.i42, label %if.else.i43.do.end40.i_crit_edge, label %land.lhs.true.i45

if.else.i43.do.end40.i_crit_edge:                 ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

land.lhs.true.i45:                                ; preds = %if.else.i43
  %s_stream.i44 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %434, i32 0, i32 10
  %435 = ptrtoint ptr %s_stream.i44 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %s_stream.i44, align 4
  %tobool18.not.i = icmp eq ptr %436, null
  br i1 %tobool18.not.i, label %land.lhs.true.i45.do.end40.i_crit_edge, label %if.else20.i

land.lhs.true.i45.do.end40.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.else20.i:                                      ; preds = %land.lhs.true.i45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %437 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool21.not.i = icmp eq ptr %437, null
  br i1 %tobool21.not.i, label %if.else20.i.if.else28.i_crit_edge, label %land.lhs.true22.i

if.else20.i.if.else28.i_crit_edge:                ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else28.i

land.lhs.true22.i:                                ; preds = %if.else20.i
  %s_stream23.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %437, i32 0, i32 10
  %438 = ptrtoint ptr %s_stream23.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %s_stream23.i, align 4
  %tobool24.not.i = icmp eq ptr %439, null
  br i1 %tobool24.not.i, label %land.lhs.true22.i.if.else28.i_crit_edge, label %land.lhs.true22.i.if.end35.i_crit_edge

land.lhs.true22.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

land.lhs.true22.i.if.else28.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else28.i

if.else28.i:                                      ; preds = %land.lhs.true22.i.if.else28.i_crit_edge, %if.else20.i.if.else28.i_crit_edge
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else28.i, %land.lhs.true22.i.if.end35.i_crit_edge
  %.sink.i46 = phi ptr [ %436, %if.else28.i ], [ %439, %land.lhs.true22.i.if.end35.i_crit_edge ]
  %call32.i = tail call i32 %.sink.i46(ptr noundef nonnull %430, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool36.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool36.not.i, label %if.end35.i.if.end44.i_crit_edge, label %if.end35.i.do.end40.i_crit_edge

if.end35.i.do.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.end35.i.if.end44.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

do.end40.i:                                       ; preds = %if.end35.i.do.end40.i_crit_edge, %land.lhs.true.i45.do.end40.i_crit_edge, %if.else.i43.do.end40.i_crit_edge, %do.end13.i.do.end40.i_crit_edge
  %440 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %cal.i.i8, align 4
  %dev42.i = getelementptr inbounds %struct.cal_dev, ptr %441, i32 0, i32 4
  %442 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev42.i, align 8
  %444 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %instance.i.i9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %443, ptr noundef nonnull @.str.80, i32 noundef %445) #10
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end40.i, %if.end35.i.if.end44.i_crit_edge
  %446 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %source.i, align 4
  %tobool48.not.i = icmp eq ptr %447, null
  br i1 %tobool48.not.i, label %if.end44.i.if.end_crit_edge, label %if.else50.i

if.end44.i.if.end_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else50.i:                                      ; preds = %if.end44.i
  %ops51.i = getelementptr inbounds %struct.v4l2_subdev, ptr %447, i32 0, i32 6
  %448 = ptrtoint ptr %ops51.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ops51.i, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %tobool52.not.i = icmp eq ptr %451, null
  br i1 %tobool52.not.i, label %if.else50.i.if.end_crit_edge, label %land.lhs.true53.i

if.else50.i.if.end_crit_edge:                     ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true53.i:                                ; preds = %if.else50.i
  %s_power.i47 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %451, i32 0, i32 10
  %452 = ptrtoint ptr %s_power.i47 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %s_power.i47, align 4
  %tobool56.not.i = icmp eq ptr %453, null
  br i1 %tobool56.not.i, label %land.lhs.true53.i.if.end_crit_edge, label %if.else58.i

land.lhs.true53.i.if.end_crit_edge:               ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else58.i:                                      ; preds = %land.lhs.true53.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %454 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool59.not.i = icmp eq ptr %454, null
  br i1 %tobool59.not.i, label %if.else58.i.if.else66.i_crit_edge, label %land.lhs.true60.i

if.else58.i.if.else66.i_crit_edge:                ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else66.i

land.lhs.true60.i:                                ; preds = %if.else58.i
  %s_power61.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %454, i32 0, i32 10
  %455 = ptrtoint ptr %s_power61.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %s_power61.i, align 4
  %tobool62.not.i = icmp eq ptr %456, null
  br i1 %tobool62.not.i, label %land.lhs.true60.i.if.else66.i_crit_edge, label %land.lhs.true60.i.if.end73.i_crit_edge

land.lhs.true60.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

land.lhs.true60.i.if.else66.i_crit_edge:          ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else66.i

if.else66.i:                                      ; preds = %land.lhs.true60.i.if.else66.i_crit_edge, %if.else58.i.if.else66.i_crit_edge
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else66.i, %land.lhs.true60.i.if.end73.i_crit_edge
  %.sink137.i = phi ptr [ %453, %if.else66.i ], [ %456, %land.lhs.true60.i.if.end73.i_crit_edge ]
  %call70.i = tail call i32 %.sink137.i(ptr noundef nonnull %447, i32 noundef 0) #7
  %__result47.0.fr.i = freeze i32 %call70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result47.0.fr.i)
  %cmp75.i = icmp sgt i32 %__result47.0.fr.i, -1
  br i1 %cmp75.i, label %if.end73.i.if.end_crit_edge, label %switch.early.test.i48

if.end73.i.if.end_crit_edge:                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

switch.early.test.i48:                            ; preds = %if.end73.i
  %457 = zext i32 %__result47.0.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %457, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %__result47.0.fr.i, label %do.end83.i [
    i32 -19, label %switch.early.test.i48.if.end_crit_edge
    i32 -515, label %switch.early.test.i48.if.end_crit_edge56
  ]

switch.early.test.i48.if.end_crit_edge56:         ; preds = %switch.early.test.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

switch.early.test.i48.if.end_crit_edge:           ; preds = %switch.early.test.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end83.i:                                       ; preds = %switch.early.test.i48
  call void @__sanitizer_cov_trace_pc() #9
  %458 = ptrtoint ptr %cal.i.i8 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cal.i.i8, align 4
  %dev85.i = getelementptr inbounds %struct.cal_dev, ptr %459, i32 0, i32 4
  %460 = ptrtoint ptr %dev85.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev85.i, align 8
  %462 = ptrtoint ptr %instance.i.i9 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %instance.i.i9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %461, ptr noundef nonnull @.str.83, i32 noundef %463) #10
  br label %if.end

if.end:                                           ; preds = %do.end83.i, %switch.early.test.i48.if.end_crit_edge, %switch.early.test.i48.if.end_crit_edge56, %if.end73.i.if.end_crit_edge, %land.lhs.true53.i.if.end_crit_edge, %if.else50.i.if.end_crit_edge, %if.end44.i.if.end_crit_edge, %if.else.if.end_crit_edge, %do.end198.i, %if.end175.i, %do.end.i, %do.end.i.i, %if.end.i.if.end_crit_edge, %if.then.i
  %ret.0 = phi i32 [ 0, %if.then.i ], [ %__result.0.fr.i, %do.end.i ], [ %__result115.0386390.i, %if.end175.i ], [ 0, %do.end198.i ], [ -22, %if.end.i.if.end_crit_edge ], [ %extract.t.i, %do.end.i.i ], [ 0, %if.else.if.end_crit_edge ], [ 0, %if.end44.i.if.end_crit_edge ], [ 0, %if.else50.i.if.end_crit_edge ], [ 0, %land.lhs.true53.i.if.end_crit_edge ], [ 0, %if.end73.i.if.end_crit_edge ], [ 0, %switch.early.test.i48.if.end_crit_edge ], [ 0, %switch.early.test.i48.if.end_crit_edge56 ], [ 0, %do.end83.i ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cal_camerarx_power(ptr nocapture noundef readonly %phy, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %enable to i32
  %cal = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal, align 4
  %instance = getelementptr inbounds %struct.cal_camerarx, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %instance, align 4
  %mul = shl i32 %3, 7
  %add = add i32 %mul, 772
  %base.i.i22 = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i22, align 8
  %add.ptr.i.i23 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %7 = and i32 %6, -25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl.i = select i1 %enable, i32 134217728, i32 0
  %or.i = or i32 %8, %shl.i
  %9 = ptrtoint ptr %base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i22, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %11) #7, !srcloc !165
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cal, align 4
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %instance, align 4
  %mul3 = shl i32 %15, 7
  %add4 = add i32 %mul3, 772
  %base.i.i = getelementptr inbounds %struct.cal_dev, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %add4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %19 = lshr i32 %18, 1
  %shr44.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr44.i, i32 %cond)
  %cmp5 = icmp eq i32 %shr44.i, %cond
  br i1 %cmp5, label %for.body.if.end12_crit_edge, label %for.inc

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.inc:                                          ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cal, align 4
  %dev = getelementptr inbounds %struct.cal_dev, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %instance, align 4
  %cond11 = select i1 %enable, ptr @.str.71, ptr @.str.72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.69, i32 noundef %25, ptr noundef nonnull %cond11) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end, %for.body.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cal_format_by_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_get_link_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_camerarx_sd_enum_mbus_code(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp eq i32 %1, 1
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  br i1 %cmp1.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %if.then
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %4 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %which, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %5, label %if.end.cal_camerarx_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.cal_camerarx_get_pad_format.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_get_pad_format.exit

sw.bb.i:                                          ; preds = %if.end
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not.i.i.not = icmp eq i16 %8, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !169

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  br label %cal_camerarx_get_pad_format.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %sd, i32 260
  br label %cal_camerarx_get_pad_format.exit

cal_camerarx_get_pad_format.exit:                 ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %if.end.cal_camerarx_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %10, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.end.cal_camerarx_get_pad_format.exit_crit_edge ]
  %code4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %out.sink.split

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_num_formats to i32))
  %11 = load i32, ptr @cal_num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp7.not = icmp ult i32 %3, %11
  br i1 %cmp7.not, label %if.end9, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %code11 = getelementptr [0 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 %3, i32 1
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end9, %cal_camerarx_get_pad_format.exit
  %code4.sink = phi ptr [ %code4, %cal_camerarx_get_pad_format.exit ], [ %code11, %if.end9 ]
  %12 = ptrtoint ptr %code4.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code4.sink, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %14 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code5, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else.out_crit_edge, %if.then.out_crit_edge
  %ret.1 = phi i32 [ -22, %if.then.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ 0, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_camerarx_sd_enum_frame_size(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %4 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %which, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %5, label %if.then2.cal_camerarx_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.then2.cal_camerarx_get_pad_format.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_get_pad_format.exit

sw.bb.i:                                          ; preds = %if.then2
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not.i.i.not = icmp eq i16 %8, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !169

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  br label %cal_camerarx_get_pad_format.exit

sw.bb1.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %sd, i32 260
  br label %cal_camerarx_get_pad_format.exit

cal_camerarx_get_pad_format.exit:                 ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %if.then2.cal_camerarx_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %10, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then2.cal_camerarx_get_pad_format.exit_crit_edge ]
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code, align 4
  %code4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %code4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.not = icmp eq i32 %12, %14
  br i1 %cmp5.not, label %if.end7, label %cal_camerarx_get_pad_format.exit.out_crit_edge

cal_camerarx_get_pad_format.exit.out_crit_edge:   ; preds = %cal_camerarx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %cal_camerarx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %retval.0.i, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %17 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %min_width, align 4
  %18 = load i32, ptr %retval.0.i, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %19 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_width, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %22 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %min_height, align 4
  %23 = load i32, ptr %height, align 4
  br label %out.sink.split

if.else:                                          ; preds = %if.end
  %code10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %24 = ptrtoint ptr %code10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code10, align 4
  %call11 = tail call ptr @cal_format_by_code(i32 noundef %25) #7
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.else.out_crit_edge, label %if.end13

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bpp = getelementptr inbounds %struct.cal_format_info, ptr %call11, i32 0, i32 2
  %26 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bpp, align 4
  %conv = zext i8 %27 to i16
  %add = add nuw nsw i16 %conv, 7
  %and = and i16 %add, 504
  %div48 = udiv i16 128, %and
  %div.zext = zext i16 %div48 to i32
  %min_width14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %28 = ptrtoint ptr %min_width14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.zext, ptr %min_width14, align 4
  %29 = load i8, ptr %bpp, align 4
  %conv16 = zext i8 %29 to i32
  %add17 = add nuw nsw i32 %conv16, 7
  %and18 = and i32 %add17, 504
  %div19 = udiv i32 524288, %and18
  %max_width20 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %30 = ptrtoint ptr %max_width20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div19, ptr %max_width20, align 4
  %min_height21 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %31 = ptrtoint ptr %min_height21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %min_height21, align 4
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end13, %if.end7
  %.sink = phi i32 [ %23, %if.end7 ], [ 16383, %if.end13 ]
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %32 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %max_height, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else.out_crit_edge, %cal_camerarx_get_pad_format.exit.out_crit_edge
  %ret.1 = phi i32 [ -22, %cal_camerarx_get_pad_format.exit.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ 0, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup25

cleanup25:                                        ; preds = %out, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -22, %entry.cleanup25_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_camerarx_sd_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %3, label %entry.cal_camerarx_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.cal_camerarx_get_pad_format.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !170

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %cal_camerarx_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -252
  %arrayidx.i = getelementptr %struct.cal_camerarx, ptr %add.ptr.i, i32 0, i32 12, i32 %1
  br label %cal_camerarx_get_pad_format.exit

cal_camerarx_get_pad_format.exit:                 ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.cal_camerarx_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.cal_camerarx_get_pad_format.exit_crit_edge ]
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_camerarx_sd_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -252
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp eq i32 %1, 1
  br i1 %cmp1.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mutex.i = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %5, label %if.then.cal_camerarx_sd_get_fmt.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

if.then.cal_camerarx_sd_get_fmt.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_sd_get_fmt.exit

sw.bb.i.i:                                        ; preds = %if.then
  %num_pads.i.i.i = getelementptr i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i.i, align 4
  %conv.i.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %3, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %sw.bb.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !170

sw.bb.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %sw.bb.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %3, %sw.bb.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i.i
  br label %cal_camerarx_sd_get_fmt.exit

sw.bb1.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.cal_camerarx, ptr %add.ptr.i, i32 0, i32 12, i32 %3
  br label %cal_camerarx_sd_get_fmt.exit

cal_camerarx_sd_get_fmt.exit:                     ; preds = %sw.bb1.i.i, %v4l2_subdev_get_try_format.exit.i.i, %if.then.cal_camerarx_sd_get_fmt.exit_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %sw.bb1.i.i ], [ %arrayidx.i.i.i, %v4l2_subdev_get_try_format.exit.i.i ], [ null, %if.then.cal_camerarx_sd_get_fmt.exit_crit_edge ]
  %format2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %format2.i, ptr %retval.0.i.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %call4 = tail call ptr @cal_format_by_code(i32 noundef %13) #7
  %tobool.not = icmp eq ptr %call4, null
  %spec.store.select = select i1 %tobool.not, ptr @cal_formats, ptr %call4
  %bpp7 = getelementptr inbounds %struct.cal_format_info, ptr %spec.store.select, i32 0, i32 2
  %14 = ptrtoint ptr %bpp7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bpp7, align 4
  %conv = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 7
  %and = and i32 %add, 504
  %16 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format3, align 4
  %div.rhs.trunc = trunc i32 %and to i16
  %div93 = udiv i16 128, %div.rhs.trunc
  %div.zext = zext i16 %div93 to i32
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %div.zext)
  %div10 = udiv i32 524288, %and
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %div10)
  %20 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %format3, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 1)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 16383)
  %25 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height, align 4
  %code37 = getelementptr inbounds %struct.cal_format_info, ptr %spec.store.select, i32 0, i32 1
  %26 = ptrtoint ptr %code37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code37, align 4
  %28 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %field, align 4
  %mutex = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %format, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %31, label %if.end.cal_camerarx_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.cal_camerarx_get_pad_format.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_get_pad_format.exit

sw.bb.i:                                          ; preds = %if.end
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %33 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.not.i.i.not = icmp eq i16 %34, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !169

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  br label %cal_camerarx_get_pad_format.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %sd, i32 260
  br label %cal_camerarx_get_pad_format.exit

cal_camerarx_get_pad_format.exit:                 ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %if.end.cal_camerarx_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %36, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.end.cal_camerarx_get_pad_format.exit_crit_edge ]
  %37 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %38 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %format, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %39, label %cal_camerarx_get_pad_format.exit.cal_camerarx_get_pad_format.exit92_crit_edge [
    i32 0, label %sw.bb.i85
    i32 1, label %sw.bb1.i90
  ]

cal_camerarx_get_pad_format.exit.cal_camerarx_get_pad_format.exit92_crit_edge: ; preds = %cal_camerarx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cal_camerarx_get_pad_format.exit92

sw.bb.i85:                                        ; preds = %cal_camerarx_get_pad_format.exit
  %num_pads.i.i82 = getelementptr i8, ptr %sd, i32 32
  %41 = ptrtoint ptr %num_pads.i.i82 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_pads.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %42)
  %cmp.not.i.i84 = icmp ugt i16 %42, 1
  br i1 %cmp.not.i.i84, label %sw.bb.i85.v4l2_subdev_get_try_format.exit.i88_crit_edge, label %do.end.i.i86, !prof !170

sw.bb.i85.v4l2_subdev_get_try_format.exit.i88_crit_edge: ; preds = %sw.bb.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i88

do.end.i.i86:                                     ; preds = %sw.bb.i85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i88

v4l2_subdev_get_try_format.exit.i88:              ; preds = %do.end.i.i86, %sw.bb.i85.v4l2_subdev_get_try_format.exit.i88_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i86 ], [ 1, %sw.bb.i85.v4l2_subdev_get_try_format.exit.i88_crit_edge ]
  %43 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i87 = getelementptr %struct.v4l2_subdev_pad_config, ptr %44, i32 %spec.select.i.i
  br label %cal_camerarx_get_pad_format.exit92

sw.bb1.i90:                                       ; preds = %cal_camerarx_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i89 = getelementptr i8, ptr %sd, i32 308
  br label %cal_camerarx_get_pad_format.exit92

cal_camerarx_get_pad_format.exit92:               ; preds = %sw.bb1.i90, %v4l2_subdev_get_try_format.exit.i88, %cal_camerarx_get_pad_format.exit.cal_camerarx_get_pad_format.exit92_crit_edge
  %retval.0.i91 = phi ptr [ %arrayidx.i89, %sw.bb1.i90 ], [ %arrayidx.i.i87, %v4l2_subdev_get_try_format.exit.i88 ], [ null, %cal_camerarx_get_pad_format.exit.cal_camerarx_get_pad_format.exit92_crit_edge ]
  %45 = call ptr @memcpy(ptr %retval.0.i91, ptr %format3, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %cal_camerarx_get_pad_format.exit92, %cal_camerarx_sd_get_fmt.exit
  %mutex.sink = phi ptr [ %mutex, %cal_camerarx_get_pad_format.exit92 ], [ %mutex.i, %cal_camerarx_sd_get_fmt.exit ]
  tail call void @mutex_unlock(ptr noundef %mutex.sink) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 480, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cal_camerarx_i913_errata._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cal_camerarx_i913_errata._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @cal_camerarx_create.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 847, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 851, i32 7}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 852, i32 7}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 855, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cal_camerarx_create._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cal_camerarx_create._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 860, i32 2}
!23 = !{ptr @cal_camerarx_create._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cal_camerarx_create._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 876, i32 39}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 510, i32 4}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cal_camerarx_regmap_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cal_camerarx_regmap_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 537, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cal_camerarx_parse_dt._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cal_camerarx_parse_dt._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 544, i32 3}
!39 = !{ptr @cal_camerarx_parse_dt._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cal_camerarx_parse_dt._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 552, i32 4}
!43 = !{ptr @cal_camerarx_parse_dt._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cal_camerarx_parse_dt._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 564, i32 2}
!47 = !{ptr @cal_camerarx_parse_dt._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cal_camerarx_parse_dt._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 573, i32 3}
!51 = !{ptr @cal_camerarx_parse_dt._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cal_camerarx_parse_dt._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 579, i32 2}
!55 = !{ptr @cal_camerarx_parse_dt._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cal_camerarx_parse_dt._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @cal_camerarx_subdev_ops, !58, !"cal_camerarx_subdev_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 817, i32 37}
!59 = !{ptr @cal_camerarx_video_ops, !60, !"cal_camerarx_video_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 805, i32 43}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 299, i32 3}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cal_camerarx_start._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cal_camerarx_start._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 335, i32 2}
!68 = !{ptr @cal_camerarx_start._entry.36, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cal_camerarx_start._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 363, i32 2}
!72 = !{ptr @cal_camerarx_start._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cal_camerarx_start._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 370, i32 2}
!76 = !{ptr @cal_camerarx_start._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cal_camerarx_start._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 395, i32 3}
!80 = !{ptr @cal_camerarx_start._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cal_camerarx_start._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 404, i32 2}
!84 = !{ptr @cal_camerarx_start._entry.48, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cal_camerarx_start._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 64, i32 3}
!88 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cal_camerarx_get_ext_link_freq._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @cal_camerarx_get_ext_link_freq._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 69, i32 2}
!93 = !{ptr @cal_camerarx_get_ext_link_freq._entry.53, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cal_camerarx_get_ext_link_freq._entry_ptr.55, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 98, i32 2}
!97 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cal_camerarx_lane_config._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @cal_camerarx_lane_config._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 136, i32 2}
!102 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cal_camerarx_config._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @cal_camerarx_config._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 140, i32 2}
!107 = !{ptr @cal_camerarx_config._entry.60, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cal_camerarx_config._entry_ptr.62, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 148, i32 2}
!111 = !{ptr @cal_camerarx_config._entry.63, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cal_camerarx_config._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 158, i32 2}
!115 = !{ptr @cal_camerarx_config._entry.66, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cal_camerarx_config._entry_ptr.68, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 187, i32 3}
!119 = !{ptr @.str.70, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cal_camerarx_power._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @cal_camerarx_power._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.71, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 208, i32 3}
!126 = !{ptr @.str.74, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cal_camerarx_wait_reset._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cal_camerarx_wait_reset._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 226, i32 3}
!131 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cal_camerarx_wait_stop_state._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @cal_camerarx_wait_stop_state._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 440, i32 2}
!136 = !{ptr @.str.78, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cal_camerarx_stop._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cal_camerarx_stop._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 448, i32 3}
!141 = !{ptr @cal_camerarx_stop._entry.79, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cal_camerarx_stop._entry_ptr.81, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 452, i32 3}
!145 = !{ptr @cal_camerarx_stop._entry.82, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cal_camerarx_stop._entry_ptr.84, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @cal_camerarx_pad_ops, !148, !"cal_camerarx_pad_ops", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 809, i32 41}
!149 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!151 = !{ptr @cal_camerarx_media_ops, !152, !"cal_camerarx_media_ops", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/ti-vpe/cal-camerarx.c", i32 822, i32 39}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 4925687}
!163 = !{i64 2152466036}
!164 = !{i64 2152467391}
!165 = !{i64 4925269}
!166 = !{i8 0, i8 2}
!167 = !{i32 0, i32 33}
!168 = !{!"auto-init"}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{!"branch_weights", i32 2000, i32 1}
