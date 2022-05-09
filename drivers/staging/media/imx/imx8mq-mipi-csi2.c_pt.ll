; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx8mq-mipi-csi2.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx8mq-mipi-csi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.csi2_pix_format = type { i32, i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
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
%struct.csi_state = type { ptr, ptr, [3 x %struct.clk_bulk_data], ptr, ptr, %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_async_notifier, ptr, %struct.v4l2_fwnode_bus_mipi_csi2, %struct.mutex, ptr, [2 x %struct.v4l2_mbus_framefmt], i32, i32, ptr, i8, ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
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
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.96, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.96 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__initcall__kmod_imx8mq_mipi_csi2__298_986_imx8mq_mipi_csi_driver_init6 = internal global ptr @imx8mq_mipi_csi_driver_init, section ".initcall6.init", align 4
@imx8mq_mipi_csi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8mq_mipi_csi_probe, ptr @imx8mq_mipi_csi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx8mq_mipi_csi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8mq_mipi_csi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8mq_mipi_csi_driver_exit = internal global ptr @imx8mq_mipi_csi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [64 x i8] c"imx8mq_mipi_csi2.description=i.MX8MQ MIPI CSI-2 receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [70 x i8] c"imx8mq_mipi_csi2.author=Martin Kepplinger <martin.kepplinger@puri.sm>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [65 x i8] c"imx8mq_mipi_csi2.file=drivers/staging/media/imx/imx8mq-mipi-csi2\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [32 x i8] c"imx8mq_mipi_csi2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [49 x i8] c"imx8mq_mipi_csi2.alias=platform:imx8mq-mipi-csi2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx8mq-mipi-csi2\00", [47 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-mipi-csi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx8mq_mipi_csi_suspend, ptr @imx8mq_mipi_csi_resume, ptr @imx8mq_mipi_csi_suspend, ptr @imx8mq_mipi_csi_resume, ptr @imx8mq_mipi_csi_suspend, ptr @imx8mq_mipi_csi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8mq_mipi_csi_runtime_suspend, ptr @imx8mq_mipi_csi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 896, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to parse device tree: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx8mq_mipi_csi_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/media/imx/imx8mq-mipi-csi2.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_probe._entry_ptr = internal global ptr @imx8mq_mipi_csi_probe._entry, section ".printk_index", align 4
@imx8mq_mipi_csi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get reset: %pe\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx8mq_mipi_csi_parse_dt\00", [39 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_parse_dt._entry_ptr = internal global ptr @imx8mq_mipi_csi_parse_dt._entry, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,mipi-phy-gpr\00", [47 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_parse_dt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 858, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no fsl,mipi-phy-gpr property found: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_parse_dt._entry_ptr.12 = internal global ptr @imx8mq_mipi_csi_parse_dt._entry.10, section ".printk_index", align 4
@imx8mq_mipi_csi_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 866, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error finding node by phandle\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_parse_dt._entry_ptr.15 = internal global ptr @imx8mq_mipi_csi_parse_dt._entry.13, section ".printk_index", align 4
@imx8mq_mipi_csi_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get gpr regmap: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_parse_dt._entry_ptr.18 = internal global ptr @imx8mq_mipi_csi_parse_dt._entry.16, section ".printk_index", align 4
@imx8mq_mipi_csi_parse_dt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.8, ptr @.str.3, ptr @.str.20, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx8mq_mipi_csi2\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy gpr register set to 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"esc\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ui\00", [29 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx8mq_mipi_csi_video_ops, ptr null, ptr null, ptr null, ptr @imx8mq_mipi_csi_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr @v4l2_subdev_get_fwnode_pad_1_to_1, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_formats = internal constant { [21 x %struct.csi2_pix_format], [56 x i8] } { [21 x %struct.csi2_pix_format] [%struct.csi2_pix_format { i32 12289, i8 8 }, %struct.csi2_pix_format { i32 12307, i8 8 }, %struct.csi2_pix_format { i32 12290, i8 8 }, %struct.csi2_pix_format { i32 12308, i8 8 }, %struct.csi2_pix_format { i32 8193, i8 8 }, %struct.csi2_pix_format { i32 12295, i8 10 }, %struct.csi2_pix_format { i32 12302, i8 10 }, %struct.csi2_pix_format { i32 12298, i8 10 }, %struct.csi2_pix_format { i32 12303, i8 10 }, %struct.csi2_pix_format { i32 8202, i8 10 }, %struct.csi2_pix_format { i32 12296, i8 12 }, %struct.csi2_pix_format { i32 12304, i8 12 }, %struct.csi2_pix_format { i32 12305, i8 12 }, %struct.csi2_pix_format { i32 12306, i8 12 }, %struct.csi2_pix_format { i32 8211, i8 12 }, %struct.csi2_pix_format { i32 12313, i8 14 }, %struct.csi2_pix_format { i32 12314, i8 14 }, %struct.csi2_pix_format { i32 12315, i8 14 }, %struct.csi2_pix_format { i32 12316, i8 14 }, %struct.csi2_pix_format { i32 8200, i8 16 }, %struct.csi2_pix_format { i32 8209, i8 16 }], [56 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8mq_mipi_csi_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx8mq_mipi_csi_init_cfg, ptr @imx8mq_mipi_csi_enum_mbus_code, ptr null, ptr null, ptr @imx8mq_mipi_csi_get_fmt, ptr @imx8mq_mipi_csi_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@imx8mq_mipi_csi_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to assert resets: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx8mq_mipi_csi_sw_reset\00", [39 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_sw_reset._entry_ptr = internal global ptr @imx8mq_mipi_csi_sw_reset._entry, section ".printk_index", align 4
@imx8mq_mipi_csi_calc_hs_settle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to obtain link frequency: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx8mq_mipi_csi_calc_hs_settle\00", [33 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_calc_hs_settle._entry_ptr = internal global ptr @imx8mq_mipi_csi_calc_hs_settle._entry, section ".printk_index", align 4
@imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Out-of-bound lane rate %u\0A\00", [37 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_calc_hs_settle._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not get esc clock rate.\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_calc_hs_settle._entry_ptr.32 = internal global ptr @imx8mq_mipi_csi_calc_hs_settle._entry.30, section ".printk_index", align 4
@imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esc clk rate: %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.28, ptr @.str.3, ptr @.str.34, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lane rate %u Ths_settle %u hs_settle %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dram\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"icc_set_bw failed with %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx8mq_mipi_csi_pm_resume\00", [38 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_pm_resume._entry_ptr = internal global ptr @imx8mq_mipi_csi_pm_resume._entry, section ".printk_index", align 4
@imx8mq_mipi_csi_async_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"data lanes reordering is not supported\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx8mq_mipi_csi_async_register\00", [33 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_async_register._entry_ptr = internal global ptr @imx8mq_mipi_csi_async_register._entry, section ".printk_index", align 4
@imx8mq_mipi_csi_async_register.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"data lanes: %d flags: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @imx8mq_mipi_csi_notify_bound, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.42, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx8mq_mipi_csi_pm_suspend\00", [37 x i8] zeroinitializer }, align 32
@imx8mq_mipi_csi_pm_suspend._entry_ptr = internal global ptr @imx8mq_mipi_csi_pm_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [22 x i64] [i64 20, i64 32, i64 8193, i64 8200, i64 8202, i64 8209, i64 8211, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12313, i64 12314, i64 12315, i64 12316]
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"imx8mq_mipi_csi_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 976, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 981, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"imx8mq_mipi_csi_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 970, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"imx8mq_mipi_csi_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 779, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 896, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 911, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 851, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 855, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 858, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 866, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 872, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 877, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 80, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 81, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 82, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"imx8mq_mipi_csi_subdev_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 595, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 796, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"imx8mq_mipi_csi_entity_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 604, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant [24 x i8] c"imx8mq_mipi_csi_formats\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 144, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"imx8mq_mipi_csi_video_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 584, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"imx8mq_mipi_csi_pad_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 588, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 243, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 318, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 325, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 345, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 349, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 358, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 998, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 831, i32 43 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 732, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 659, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 668, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"imx8mq_mipi_csi_notify_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 632, i32 52 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [48 x i8] c"../drivers/staging/media/imx/imx8mq-mipi-csi2.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 719, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_imx8mq_mipi_csi_driver_exit, ptr @__initcall__kmod_imx8mq_mipi_csi2__298_986_imx8mq_mipi_csi_driver_init6, ptr @imx8mq_mipi_csi_async_register._entry, ptr @imx8mq_mipi_csi_async_register._entry_ptr, ptr @imx8mq_mipi_csi_calc_hs_settle._entry, ptr @imx8mq_mipi_csi_calc_hs_settle._entry.30, ptr @imx8mq_mipi_csi_calc_hs_settle._entry_ptr, ptr @imx8mq_mipi_csi_calc_hs_settle._entry_ptr.32, ptr @imx8mq_mipi_csi_driver_exit, ptr @imx8mq_mipi_csi_parse_dt._entry, ptr @imx8mq_mipi_csi_parse_dt._entry.10, ptr @imx8mq_mipi_csi_parse_dt._entry.13, ptr @imx8mq_mipi_csi_parse_dt._entry.16, ptr @imx8mq_mipi_csi_parse_dt._entry_ptr, ptr @imx8mq_mipi_csi_parse_dt._entry_ptr.12, ptr @imx8mq_mipi_csi_parse_dt._entry_ptr.15, ptr @imx8mq_mipi_csi_parse_dt._entry_ptr.18, ptr @imx8mq_mipi_csi_pm_resume._entry, ptr @imx8mq_mipi_csi_pm_resume._entry_ptr, ptr @imx8mq_mipi_csi_pm_suspend._entry, ptr @imx8mq_mipi_csi_pm_suspend._entry_ptr, ptr @imx8mq_mipi_csi_probe._entry, ptr @imx8mq_mipi_csi_probe._entry_ptr, ptr @imx8mq_mipi_csi_sw_reset._entry, ptr @imx8mq_mipi_csi_sw_reset._entry_ptr, ptr @imx8mq_mipi_csi_driver, ptr @.str, ptr @imx8mq_mipi_csi_of_match, ptr @imx8mq_mipi_csi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx8mq_mipi_csi_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @imx8mq_mipi_csi_subdev_ops, ptr @.str.24, ptr @imx8mq_mipi_csi_entity_ops, ptr @imx8mq_mipi_csi_formats, ptr @imx8mq_mipi_csi_video_ops, ptr @imx8mq_mipi_csi_pad_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @imx8mq_mipi_csi_notify_ops, ptr @.str.42], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_parse_dt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_formats to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_calc_hs_settle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_calc_hs_settle._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_async_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_mipi_csi_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8mq_mipi_csi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8mq_mipi_csi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8mq_mipi_csi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 592, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call fastcc i32 @imx8mq_mipi_csi_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call3) #11
  br label %cleanup46

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup46

if.end12:                                         ; preds = %if.end5
  %arrayidx1.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 2, i32 0
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.21, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.22, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.23, ptr %arrayidx1.2.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call.i84 = tail call i32 @devm_clk_bulk_get(ptr noundef %7, i32 noundef 3, ptr noundef %arrayidx1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp14 = icmp slt i32 %call.i84, 0
  br i1 %cmp14, label %if.end12.cleanup46_crit_edge, label %if.end16

if.end12.cleanup46_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end16:                                         ; preds = %if.end12
  %sd = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sd, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @imx8mq_mipi_csi_probe.__key) #8
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef nonnull @imx8mq_mipi_csi_subdev_ops) #8
  %owner.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner.i, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.imx8mq_mipi_csi_subdev_init.exit_crit_edge

if.end16.imx8mq_mipi_csi_subdev_init.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx8mq_mipi_csi_subdev_init.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %imx8mq_mipi_csi_subdev_init.exit

imx8mq_mipi_csi_subdev_init.exit:                 ; preds = %if.end.i.i, %if.end16.imx8mq_mipi_csi_subdev_init.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.end16.imx8mq_mipi_csi_subdev_init.exit_crit_edge ]
  %name.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5, i32 9
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #8
  %flags.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %17, 4
  store i32 %or.i, ptr %flags.i, align 4
  %function.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  %18 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20482, ptr %function.i, align 4
  %ops.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5, i32 0, i32 11
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @imx8mq_mipi_csi_entity_ops, ptr %ops.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %dev5.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 5, i32 14
  %22 = ptrtoint ptr %dev5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev5.i, align 4
  %csi2_fmt.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %csi2_fmt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @imx8mq_mipi_csi_formats, ptr %csi2_fmt.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12
  %code.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %24 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12302, ptr %code.i.i, align 4
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 640, ptr %arrayidx.i.i.i, align 4
  %height.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %26 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 480, ptr %height.i.i, align 4
  %field.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  %27 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field.i.i, align 4
  %colorspace.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 4
  %28 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 11, ptr %colorspace.i.i, align 4
  %xfer_func.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 7
  %29 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 5, ptr %xfer_func.i.i, align 4
  %30 = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %30, align 4
  %quantization.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 0, i32 6
  %32 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %quantization.i.i, align 2
  %arrayidx.i85.i.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 12, i32 1
  %33 = call ptr @memcpy(ptr %arrayidx.i85.i.i, ptr %arrayidx.i.i.i, i32 48)
  %pads.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 6
  %flags7.i = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 6, i32 0, i32 4
  %34 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %flags7.i, align 4
  %flags10.i = getelementptr %struct.csi_state, ptr %call.i, i32 0, i32 6, i32 1, i32 4
  %35 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %flags10.i, align 4
  %call14.i = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %pads.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp21 = icmp slt i32 %call14.i, 0
  br i1 %cmp21, label %imx8mq_mipi_csi_subdev_init.exit.mutex_crit_edge, label %if.end23

imx8mq_mipi_csi_subdev_init.exit.mutex_crit_edge: ; preds = %imx8mq_mipi_csi_subdev_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mutex

if.end23:                                         ; preds = %imx8mq_mipi_csi_subdev_init.exit
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i, align 4
  %call3.i = tail call ptr @of_icc_get(ptr noundef %dev1, ptr noundef nonnull @.str.36) #8
  %icc_path.i = getelementptr i8, ptr %37, i32 544
  %38 = ptrtoint ptr %icc_path.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call3.i, ptr %icc_path.i, align 4
  %tobool.not.i.i86 = icmp eq ptr %call3.i, null
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i86, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end23
  %39 = ptrtoint ptr %call3.i to i32
  br i1 %cmp.i.i, label %if.then.i.mutex_crit_edge, label %if.then.i.if.end27_crit_edge

if.then.i.if.end27_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then.i.mutex_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mutex

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %icc_path_bw.i = getelementptr i8, ptr %37, i32 548
  %40 = ptrtoint ptr %icc_path_bw.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 700000, ptr %icc_path_bw.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i, %if.then.i.if.end27_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %41 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = tail call fastcc i32 @imx8mq_mipi_csi_pm_resume(ptr noundef %dev1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.icc_crit_edge, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29.icc_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %icc

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %call35 = tail call fastcc i32 @imx8mq_mipi_csi_async_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %cleanup, label %if.end34.cleanup46_crit_edge

if.end34.cleanup46_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

cleanup:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call41 = tail call fastcc i32 @imx8mq_mipi_csi_pm_suspend(ptr noundef %dev1, i1 noundef zeroext true)
  %notifier = getelementptr inbounds %struct.csi_state, ptr %call.i, i32 0, i32 7
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd) #8
  br label %icc

icc:                                              ; preds = %cleanup, %if.then29.icc_crit_edge
  %ret.0 = phi i32 [ %call35, %cleanup ], [ %call30, %if.then29.icc_crit_edge ]
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i, align 4
  %icc_path.i88 = getelementptr i8, ptr %43, i32 544
  %44 = ptrtoint ptr %icc_path.i88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %icc_path.i88, align 4
  tail call void @icc_put(ptr noundef %45) #8
  br label %mutex

mutex:                                            ; preds = %icc, %if.then.i.mutex_crit_edge, %imx8mq_mipi_csi_subdev_init.exit.mutex_crit_edge
  %ret.1 = phi i32 [ %call14.i, %imx8mq_mipi_csi_subdev_init.exit.mutex_crit_edge ], [ %ret.0, %icc ], [ %39, %if.then.i.mutex_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup46

cleanup46:                                        ; preds = %mutex, %if.end34.cleanup46_crit_edge, %if.end12.cleanup46_crit_edge, %if.then9, %do.end, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %2, %if.then9 ], [ %ret.1, %mutex ], [ -12, %entry.cleanup46_crit_edge ], [ %call.i84, %if.end12.cleanup46_crit_edge ], [ 0, %if.end34.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr i8, ptr %1, i32 260
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #8
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call5 = tail call fastcc i32 @imx8mq_mipi_csi_pm_suspend(ptr noundef %dev, i1 noundef zeroext true)
  %lock = getelementptr i8, ptr %1, i32 336
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %icc_path.i = getelementptr i8, ptr %3, i32 544
  %4 = ptrtoint ptr %icc_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icc_path.i, align 4
  tail call void @icc_put(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx8mq_mipi_csi_parse_dt(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  %out_val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_val) #8
  %4 = ptrtoint ptr %out_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %out_val, align 4, !annotation !129
  %5 = getelementptr inbounds [2 x i32], ptr %out_val, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !129
  %call.i = tail call ptr @devm_reset_control_array_get(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %rst = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %rst, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #11
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i70 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %out_val, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i70)
  %tobool.not = icmp sgt i32 %call.i70, -1
  br i1 %tobool.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %call.i70) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %11 = ptrtoint ptr %out_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_val, align 4
  %call15 = call ptr @of_find_node_by_phandle(i32 noundef %12) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %call15) #8
  %phy_gpr = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 15
  %13 = ptrtoint ptr %phy_gpr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %phy_gpr, align 4
  call void @of_node_put(ptr noundef nonnull %call15) #8
  %14 = ptrtoint ptr %phy_gpr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_gpr, align 4
  %cmp.i71 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %15) #11
  %16 = ptrtoint ptr %phy_gpr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_gpr, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %conv = trunc i32 %20 to i8
  %phy_gpr_reg = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 16
  %21 = ptrtoint ptr %phy_gpr_reg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %phy_gpr_reg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8mq_mipi_csi_parse_dt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8mq_mipi_csi_parse_dt, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !130

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %phy_gpr_reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phy_gpr_reg, align 4
  %conv40 = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx8mq_mipi_csi_parse_dt.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %conv40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end32, %do.end28, %do.end20, %do.end12, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ %call.i70, %do.end12 ], [ %18, %do.end28 ], [ -19, %do.end20 ], [ 0, %if.then38 ], [ 0, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_val) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx8mq_mipi_csi_pm_resume(ptr noundef %dev, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -40
  %icc_path = getelementptr i8, ptr %1, i32 544
  %2 = ptrtoint ptr %icc_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icc_path, align 4
  %icc_path_bw = getelementptr i8, ptr %1, i32 548
  %4 = ptrtoint ptr %icc_path_bw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icc_path_bw, align 4
  %call2 = tail call i32 @icc_set_bw(ptr noundef %3, i32 noundef 0, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %1, i32 336
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br i1 %runtime, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %state4 = getelementptr i8, ptr %1, i32 528
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state4, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %unlock.thread, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

unlock.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %15

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %state8 = getelementptr i8, ptr %1, i32 528
  %8 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state8, align 4
  %and9 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  %or = or i32 %9, 1
  %10 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %state8, align 4
  %clks.i = getelementptr i8, ptr %1, i32 -32
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %clks.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then11.if.end14_crit_edge

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i:                                       ; preds = %if.then11
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %clks.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end14_crit_edge, label %if.then3.i.i

if.end.i.i.if.end14_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks.i) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i.i, %if.end.i.i.if.end14_crit_edge, %if.then11.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.end7.if.end14_crit_edge ], [ %call.i.i, %if.then11.if.end14_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ 0, %if.end.i.i.if.end14_crit_edge ]
  %11 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state8, align 4
  %and16 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.unlock_crit_edge, label %if.then18

if.end14.unlock_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then18:                                        ; preds = %if.end14
  %call19 = tail call fastcc i32 @imx8mq_mipi_csi_start_stream(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.unlock_crit_edge, label %unlock.thread47

if.then18.unlock_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

unlock.thread47:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

unlock:                                           ; preds = %if.then18.unlock_crit_edge, %if.end14.unlock_crit_edge
  %ret.1 = phi i32 [ 0, %if.then18.unlock_crit_edge ], [ %ret.0, %if.end14.unlock_crit_edge ]
  %13 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state8, align 4
  %and25 = and i32 %14, -5
  store i32 %and25, ptr %state8, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool27.not = icmp eq i32 %ret.1, 0
  br i1 %tobool27.not, label %unlock._crit_edge, label %unlock.cleanup_crit_edge

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

unlock._crit_edge:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %15

15:                                               ; preds = %unlock._crit_edge, %unlock.thread
  br label %cleanup

cleanup:                                          ; preds = %15, %unlock.cleanup_crit_edge, %unlock.thread47, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %15 ], [ -11, %unlock.cleanup_crit_edge ], [ -11, %unlock.thread47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx8mq_mipi_csi_async_register(ptr noundef %state) unnamed_addr #2 align 64 {
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
  %notifier = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 7
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.39) #11
  br label %err_parse

for.end:                                          ; preds = %for.cond
  %mipi_csi2 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2
  %bus15 = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 9
  %11 = call ptr @memcpy(ptr %bus15, ptr %mipi_csi2, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8mq_mipi_csi_async_register.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8mq_mipi_csi_async_register, %if.then23)) #8
          to label %do.end31 [label %if.then23], !srcloc !130

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %num_data_lanes26 = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %num_data_lanes26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_data_lanes26, align 1
  %conv27 = zext i8 %15 to i32
  %16 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus15, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx8mq_mipi_csi_async_register.__UNIQUE_ID_ddebug296, ptr noundef %13, ptr noundef nonnull @.str.41, i32 noundef %conv27, i32 noundef %17) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %for.end
  %call33 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call1, i32 noundef 28) #8
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end37

if.then35:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call33 to i32
  br label %err_parse

if.end37:                                         ; preds = %do.end31
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  %19 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @imx8mq_mipi_csi_notify_ops, ptr %notifier, align 4
  %sd = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 5
  %call40 = call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd, ptr noundef %notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #8
  br label %cleanup

err_parse:                                        ; preds = %if.then35, %do.end, %if.end.err_parse_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_parse_crit_edge ], [ -22, %do.end ], [ %18, %if.then35 ]
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %err_parse, %if.end43, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_parse ], [ %call45, %if.end43 ], [ -107, %entry.cleanup_crit_edge ], [ %call40, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx8mq_mipi_csi_pm_suspend(ptr noundef %dev, i1 noundef zeroext %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr i8, ptr %1, i32 336
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %state2 = getelementptr i8, ptr %1, i32 528
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %regs.i.i.i = getelementptr i8, ptr %1, i32 -36
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 251658240) #8, !srcloc !132
  %clks.i = getelementptr i8, ptr %1, i32 -32
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks.i) #8
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks.i) #8
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state2, align 4
  %and4 = and i32 %7, -2
  store i32 %and4, ptr %state2, align 4
  br i1 %runtime, label %if.then.if.end8_crit_edge, label %if.then6

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %and4, 4
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %state2, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %icc_path = getelementptr i8, ptr %1, i32 544
  %9 = ptrtoint ptr %icc_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icc_path, align 4
  %call10 = tail call i32 @icc_set_bw(ptr noundef %10, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %do.end

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call10) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end8.if.end13_crit_edge
  %cond = phi i32 [ -11, %do.end ], [ 0, %if.end8.if.end13_crit_edge ]
  ret i32 %cond
}

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
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_init_cfg(ptr nocapture noundef %sd, ptr noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.not = icmp eq ptr %sd_state, null
  br i1 %tobool.not.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.i.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !133

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  br label %cond.end46

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %sd, i32 432
  br label %cond.end46

cond.end46:                                       ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %3, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12302, ptr %code, align 4
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
  store i32 11, ptr %colorspace, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 7
  %9 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %xfer_func, align 4
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %10, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 6
  %12 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %quantization, align 2
  br i1 %tobool.not.not, label %if.end.i86, label %if.then.i82

if.then.i82:                                      ; preds = %cond.end46
  %num_pads.i.i79 = getelementptr i8, ptr %sd, i32 32
  %13 = ptrtoint ptr %num_pads.i.i79 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp.not.i.i81 = icmp ugt i16 %14, 1
  br i1 %cmp.not.i.i81, label %if.then.i82.v4l2_subdev_get_try_format.exit.i84_crit_edge, label %do.end.i.i83, !prof !134

if.then.i82.v4l2_subdev_get_try_format.exit.i84_crit_edge: ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i84

do.end.i.i83:                                     ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i84

v4l2_subdev_get_try_format.exit.i84:              ; preds = %do.end.i.i83, %if.then.i82.v4l2_subdev_get_try_format.exit.i84_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i83 ], [ 1, %if.then.i82.v4l2_subdev_get_try_format.exit.i84_crit_edge ]
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 %spec.select.i.i
  br label %imx8mq_mipi_csi_get_format.exit88

if.end.i86:                                       ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i85 = getelementptr i8, ptr %sd, i32 480
  br label %imx8mq_mipi_csi_get_format.exit88

imx8mq_mipi_csi_get_format.exit88:                ; preds = %if.end.i86, %v4l2_subdev_get_try_format.exit.i84
  %retval.0.i87 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i84 ], [ %arrayidx.i85, %if.end.i86 ]
  %17 = call ptr @memcpy(ptr %retval.0.i87, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr i8, ptr %sd, i32 -36
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %1, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 134217728) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else41, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then5

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !136
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !137
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %lock = getelementptr i8, ptr %sd, i32 336
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %state6 = getelementptr i8, ptr %sd, i32 528
  %5 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state6, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.unlock.thread_crit_edge

if.then5.unlock.thread_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

if.end9:                                          ; preds = %if.then5
  %call10 = tail call fastcc i32 @imx8mq_mipi_csi_start_stream(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.unlock.thread_crit_edge, label %if.end13

if.end9.unlock.thread_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

if.end13:                                         ; preds = %if.end9
  %src_sd = getelementptr i8, ptr %sd, i32 308
  %7 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_sd, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %if.end13.unlock.thread_crit_edge, label %if.else

if.end13.unlock.thread_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

if.else:                                          ; preds = %if.end13
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.else.unlock.thread_crit_edge, label %land.lhs.true

if.else.unlock.thread_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stream, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %land.lhs.true.unlock.thread_crit_edge, label %if.else21

land.lhs.true.unlock.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

if.else21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.else21.if.else29_crit_edge, label %land.lhs.true23

if.else21.if.else29_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else21
  %s_stream24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_stream24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_stream24, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %land.lhs.true23.if.else29_crit_edge, label %land.lhs.true23.if.end36_crit_edge

land.lhs.true23.if.end36_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else21.if.else29_crit_edge
  br label %if.end36

if.end36:                                         ; preds = %if.else29, %land.lhs.true23.if.end36_crit_edge
  %.sink = phi ptr [ %14, %if.else29 ], [ %17, %land.lhs.true23.if.end36_crit_edge ]
  %call33 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp37 = icmp slt i32 %call33, 0
  br i1 %cmp37, label %if.end36.unlock.thread_crit_edge, label %unlock

if.end36.unlock.thread_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

if.else41:                                        ; preds = %entry
  %lock125 = getelementptr i8, ptr %sd, i32 336
  tail call void @mutex_lock_nested(ptr noundef %lock125, i32 noundef 0) #8
  %src_sd43 = getelementptr i8, ptr %sd, i32 308
  %18 = ptrtoint ptr %src_sd43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_sd43, align 4
  %tobool45.not = icmp eq ptr %19, null
  br i1 %tobool45.not, label %if.else41.if.end72_crit_edge, label %if.else47

if.else41.if.end72_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.else47:                                        ; preds = %if.else41
  %ops48 = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops48, align 4
  %video49 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video49, align 4
  %tobool50.not = icmp eq ptr %23, null
  br i1 %tobool50.not, label %if.else47.if.end72_crit_edge, label %land.lhs.true51

if.else47.if.end72_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

land.lhs.true51:                                  ; preds = %if.else47
  %s_stream54 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_stream54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_stream54, align 4
  %tobool55.not = icmp eq ptr %25, null
  br i1 %tobool55.not, label %land.lhs.true51.if.end72_crit_edge, label %if.else57

land.lhs.true51.if.end72_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.else57:                                        ; preds = %land.lhs.true51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool58.not = icmp eq ptr %26, null
  br i1 %tobool58.not, label %if.else57.if.else65_crit_edge, label %land.lhs.true59

if.else57.if.else65_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else65

land.lhs.true59:                                  ; preds = %if.else57
  %s_stream60 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %s_stream60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_stream60, align 4
  %tobool61.not = icmp eq ptr %28, null
  br i1 %tobool61.not, label %land.lhs.true59.if.else65_crit_edge, label %land.lhs.true59.if.end72.sink.split_crit_edge

land.lhs.true59.if.end72.sink.split_crit_edge:    ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split

land.lhs.true59.if.else65_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else65

if.else65:                                        ; preds = %land.lhs.true59.if.else65_crit_edge, %if.else57.if.else65_crit_edge
  br label %if.end72.sink.split

if.end72.sink.split:                              ; preds = %if.else65, %land.lhs.true59.if.end72.sink.split_crit_edge
  %.sink136 = phi ptr [ %25, %if.else65 ], [ %28, %land.lhs.true59.if.end72.sink.split_crit_edge ]
  %call69 = tail call i32 %.sink136(ptr noundef nonnull %19, i32 noundef 0) #8
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %land.lhs.true51.if.end72_crit_edge, %if.else47.if.end72_crit_edge, %if.else41.if.end72_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 251658240) #8, !srcloc !132
  %state74 = getelementptr i8, ptr %sd, i32 528
  %31 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state74, align 4
  %and75 = and i32 %32, -3
  store i32 %and75, ptr %state74, align 4
  br label %unlock.thread

unlock.thread:                                    ; preds = %if.end72, %if.end36.unlock.thread_crit_edge, %land.lhs.true.unlock.thread_crit_edge, %if.else.unlock.thread_crit_edge, %if.end13.unlock.thread_crit_edge, %if.end9.unlock.thread_crit_edge, %if.then5.unlock.thread_crit_edge
  %lock127.ph = phi ptr [ %lock, %if.then5.unlock.thread_crit_edge ], [ %lock125, %if.end72 ], [ %lock, %if.end36.unlock.thread_crit_edge ], [ %lock, %if.end9.unlock.thread_crit_edge ], [ %lock, %if.end13.unlock.thread_crit_edge ], [ %lock, %land.lhs.true.unlock.thread_crit_edge ], [ %lock, %if.else.unlock.thread_crit_edge ]
  %ret.1.ph = phi i32 [ -16, %if.then5.unlock.thread_crit_edge ], [ 0, %if.end72 ], [ %call33, %if.end36.unlock.thread_crit_edge ], [ %call10, %if.end9.unlock.thread_crit_edge ], [ -19, %if.end13.unlock.thread_crit_edge ], [ -515, %land.lhs.true.unlock.thread_crit_edge ], [ -515, %if.else.unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock127.ph) #8
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %call.i121 = tail call i32 @__pm_runtime_idle(ptr noundef %34, i32 noundef 5) #8
  br label %cleanup

unlock:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state6, align 4
  %or = or i32 %36, 2
  store i32 %or, ptr %state6, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %unlock.thread, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %unlock ], [ %ret.1.ph, %unlock.thread ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx8mq_mipi_csi_start_stream(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rst.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %imx8mq_mipi_csi_sw_reset.exit, label %if.end

imx8mq_mipi_csi_sw_reset.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_data_lanes.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_data_lanes.i, align 1
  %conv.i = zext i8 %5 to i32
  %sub.i = add nsw i32 %conv.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %regs.i.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 251658240, %conv.i
  %9 = and i32 %and.i, 251658240
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %11, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %9) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %13, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 -16711680) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 16777216) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %17, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 1073741824) #8, !srcloc !132
  %call1 = tail call fastcc i32 @imx8mq_mipi_csi_calc_hs_settle(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %phy_gpr.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 15
  %18 = ptrtoint ptr %phy_gpr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_gpr.i, align 4
  %phy_gpr_reg.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 16
  %20 = ptrtoint ptr %phy_gpr_reg.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_gpr_reg.i, align 4
  %conv.i11 = zext i8 %21 to i32
  %hs_settle.i = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 14
  %22 = ptrtoint ptr %hs_settle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hs_settle.i, align 4
  %and.i12 = shl i32 %23, 2
  %shl.i = and i32 %and.i12, 252
  %or.i = or i32 %shl.i, 13568
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv.i11, i32 noundef 16383, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %imx8mq_mipi_csi_sw_reset.exit
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call.i, %imx8mq_mipi_csi_sw_reset.exit ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx8mq_mipi_csi_calc_hs_settle(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_sd = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 8
  %0 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_sd, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  %csi2_fmt = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 11
  %4 = ptrtoint ptr %csi2_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi2_fmt, align 4
  %width = getelementptr inbounds %struct.csi2_pix_format, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 4
  %conv = zext i8 %7 to i32
  %num_data_lanes = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 9, i32 3
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %conv3) #11
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8mq_mipi_csi_calc_hs_settle, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !130

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef %conv6) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %clk = getelementptr %struct.csi_state, ptr %state, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call22 = tail call i32 @clk_get_rate(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end27, label %do.body30

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.31) #11
  br label %cleanup

do.body30:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8mq_mipi_csi_calc_hs_settle, %if.then42)) #8
          to label %do.end46 [label %if.then42], !srcloc !130

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug294, ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %call22) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body30
  %div = udiv i32 1000000000, %call22
  %div47 = udiv i32 %conv6, 1000
  %div48 = udiv i32 6000000, %div47
  %div50 = udiv i32 10000000, %div47
  %add51 = add nuw nsw i32 %div48, 225
  %add52 = add nuw nsw i32 %add51, %div50
  %div53100 = lshr i32 %add52, 1
  %div54 = udiv i32 %div53100, %div
  %sub = add nsw i32 %div54, -1
  %hs_settle = getelementptr inbounds %struct.csi_state, ptr %state, i32 0, i32 14
  %22 = ptrtoint ptr %hs_settle to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %hs_settle, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8mq_mipi_csi_calc_hs_settle, %if.then67)) #8
          to label %cleanup [label %if.then67], !srcloc !130

if.then67:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %25 = ptrtoint ptr %hs_settle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hs_settle, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug295, ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef %conv6, i32 noundef %div53100, i32 noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.end46, %do.end27, %if.then16, %do.body12, %do.end
  %retval.0 = phi i32 [ %conv3, %do.end ], [ -22, %do.end27 ], [ -22, %if.then16 ], [ 0, %if.then67 ], [ -22, %do.body12 ], [ 0, %do.end46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_get_link_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #2 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !134

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ 1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i
  br label %imx8mq_mipi_csi_get_format.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %sd, i32 480
  br label %imx8mq_mipi_csi_get_format.exit

imx8mq_mipi_csi_get_format.exit:                  ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %code5 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup19.sink.split

if.end11:                                         ; preds = %entry
  %index12 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %11 = ptrtoint ptr %index12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %cmp13 = icmp ugt i32 %12, 20
  br i1 %cmp13, label %if.end11.cleanup19_crit_edge, label %if.end15

if.end11.cleanup19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 %12
  br label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %if.end15, %imx8mq_mipi_csi_get_format.exit
  %code5.sink = phi ptr [ %code5, %imx8mq_mipi_csi_get_format.exit ], [ %arrayidx, %if.end15 ]
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
define internal i32 @imx8mq_mipi_csi_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdformat, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !134

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %imx8mq_mipi_csi_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -40
  %arrayidx.i = getelementptr %struct.csi_state, ptr %add.ptr.i, i32 0, i32 12, i32 %3
  br label %imx8mq_mipi_csi_get_format.exit

imx8mq_mipi_csi_get_format.exit:                  ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %lock = getelementptr i8, ptr %sd, i32 336
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
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
  br i1 %cmp.not.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !134

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ 1, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i.i
  br label %imx8mq_mipi_csi_get_fmt.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %sd, i32 480
  br label %imx8mq_mipi_csi_get_fmt.exit

imx8mq_mipi_csi_get_fmt.exit:                     ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %lock.i = getelementptr i8, ptr %sd, i32 336
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
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %11, label %if.end5.find_csi2_format.exit_crit_edge [
    i32 8209, label %cleanup.fold.split26.i
    i32 12307, label %cleanup.fold.split.i
    i32 12290, label %cleanup.fold.split8.i
    i32 12308, label %cleanup.fold.split9.i
    i32 8193, label %cleanup.fold.split10.i
    i32 12295, label %cleanup.fold.split11.i
    i32 12302, label %cleanup.fold.split12.i
    i32 12298, label %cleanup.fold.split13.i
    i32 12303, label %cleanup.fold.split14.i
    i32 8202, label %cleanup.fold.split15.i
    i32 12296, label %cleanup.fold.split16.i
    i32 12304, label %cleanup.fold.split17.i
    i32 12305, label %cleanup.fold.split18.i
    i32 12306, label %cleanup.fold.split19.i
    i32 8211, label %cleanup.fold.split20.i
    i32 12313, label %cleanup.fold.split21.i
    i32 12314, label %cleanup.fold.split22.i
    i32 12315, label %cleanup.fold.split23.i
    i32 12316, label %cleanup.fold.split24.i
    i32 8200, label %cleanup.fold.split25.i
  ]

if.end5.find_csi2_format.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split.i:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split8.i:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split9.i:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split10.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split11.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split12.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split13.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split14.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split15.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split16.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split17.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split18.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split19.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split20.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split21.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split22.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split23.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split24.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split25.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

cleanup.fold.split26.i:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_csi2_format.exit

find_csi2_format.exit:                            ; preds = %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split24.i, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %if.end5.find_csi2_format.exit_crit_edge
  %tobool.not = phi ptr [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 9), %cleanup.fold.split15.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 10), %cleanup.fold.split16.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 11), %cleanup.fold.split17.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 12), %cleanup.fold.split18.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 13), %cleanup.fold.split19.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 14), %cleanup.fold.split20.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 15), %cleanup.fold.split21.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 16), %cleanup.fold.split22.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 17), %cleanup.fold.split23.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 18), %cleanup.fold.split24.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 19), %cleanup.fold.split25.i ], [ getelementptr inbounds ([21 x %struct.csi2_pix_format], ptr @imx8mq_mipi_csi_formats, i32 0, i32 20), %cleanup.fold.split26.i ], [ @imx8mq_mipi_csi_formats, %if.end5.find_csi2_format.exit_crit_edge ]
  %13 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %find_csi2_format.exit
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %15 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.not.i.i.not = icmp eq i16 %16, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !133

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %17 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_state, align 4
  br label %imx8mq_mipi_csi_get_format.exit

if.end.i:                                         ; preds = %find_csi2_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %sd, i32 432
  br label %imx8mq_mipi_csi_get_format.exit

imx8mq_mipi_csi_get_format.exit:                  ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i54 = phi ptr [ %18, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %lock = getelementptr i8, ptr %sd, i32 336
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %19 = ptrtoint ptr %tobool.not to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tobool.not, align 4
  %code12 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i54, i32 0, i32 2
  %21 = ptrtoint ptr %code12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %code12, align 4
  %22 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %format, align 4
  %24 = ptrtoint ptr %retval.0.i54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %retval.0.i54, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %height16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i54, i32 0, i32 1
  %27 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height16, align 4
  %28 = call ptr @memcpy(ptr %format, ptr %retval.0.i54, i32 48)
  %29 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i55 = icmp eq i32 %30, 0
  br i1 %cmp.i55, label %if.then.i59, label %if.end.i65

if.then.i59:                                      ; preds = %imx8mq_mipi_csi_get_format.exit
  %num_pads.i.i56 = getelementptr i8, ptr %sd, i32 32
  %31 = ptrtoint ptr %num_pads.i.i56 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_pads.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp.not.i.i58 = icmp ugt i16 %32, 1
  br i1 %cmp.not.i.i58, label %if.then.i59.v4l2_subdev_get_try_format.exit.i63_crit_edge, label %do.end.i.i60, !prof !134

if.then.i59.v4l2_subdev_get_try_format.exit.i63_crit_edge: ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i63

do.end.i.i60:                                     ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i63

v4l2_subdev_get_try_format.exit.i63:              ; preds = %do.end.i.i60, %if.then.i59.v4l2_subdev_get_try_format.exit.i63_crit_edge
  %spec.select.i.i61 = phi i32 [ 0, %do.end.i.i60 ], [ 1, %if.then.i59.v4l2_subdev_get_try_format.exit.i63_crit_edge ]
  %33 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i62 = getelementptr %struct.v4l2_subdev_pad_config, ptr %34, i32 %spec.select.i.i61
  br label %imx8mq_mipi_csi_get_format.exit67

if.end.i65:                                       ; preds = %imx8mq_mipi_csi_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i64 = getelementptr i8, ptr %sd, i32 480
  br label %imx8mq_mipi_csi_get_format.exit67

imx8mq_mipi_csi_get_format.exit67:                ; preds = %if.end.i65, %v4l2_subdev_get_try_format.exit.i63
  %retval.0.i66 = phi ptr [ %arrayidx.i.i62, %v4l2_subdev_get_try_format.exit.i63 ], [ %arrayidx.i64, %if.end.i65 ]
  %35 = call ptr @memcpy(ptr %retval.0.i66, ptr %format, i32 48)
  %36 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp22 = icmp eq i32 %37, 1
  br i1 %cmp22, label %if.then23, label %imx8mq_mipi_csi_get_format.exit67.cleanup.sink.split_crit_edge

imx8mq_mipi_csi_get_format.exit67.cleanup.sink.split_crit_edge: ; preds = %imx8mq_mipi_csi_get_format.exit67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then23:                                        ; preds = %imx8mq_mipi_csi_get_format.exit67
  call void @__sanitizer_cov_trace_pc() #10
  %csi2_fmt24 = getelementptr i8, ptr %sd, i32 428
  %38 = ptrtoint ptr %csi2_fmt24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tobool.not, ptr %csi2_fmt24, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then23, %imx8mq_mipi_csi_get_format.exit67.cleanup.sink.split_crit_edge, %imx8mq_mipi_csi_get_fmt.exit
  %lock.sink = phi ptr [ %lock.i, %imx8mq_mipi_csi_get_fmt.exit ], [ %lock, %if.then23 ], [ %lock, %imx8mq_mipi_csi_get_format.exit67.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_get_fwnode_pad_1_to_1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @imx8mq_mipi_csi_notify_bound(ptr nocapture noundef %notifier, ptr noundef %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr i8, ptr %notifier, i32 -216
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %src_sd = getelementptr i8, ptr %notifier, i32 48
  %2 = ptrtoint ptr %src_sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sd, ptr %src_sd, align 4
  %call2 = tail call i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %sd, ptr noundef %1, i32 noundef 3) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links_to_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @imx8mq_mipi_csi_pm_suspend(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @imx8mq_mipi_csi_pm_resume(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @imx8mq_mipi_csi_pm_suspend(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_mipi_csi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @imx8mq_mipi_csi_pm_resume(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
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
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !112, !114, !115, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_imx8mq_mipi_csi2__298_986_imx8mq_mipi_csi_driver_init6, !1, !"__initcall__kmod_imx8mq_mipi_csi2__298_986_imx8mq_mipi_csi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 986, i32 1}
!2 = !{ptr @__exitcall_imx8mq_mipi_csi_driver_exit, !1, !"__exitcall_imx8mq_mipi_csi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description299, !4, !"__UNIQUE_ID_description299", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 988, i32 1}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 989, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 990, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias303, !11, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 991, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 981, i32 12}
!14 = !{ptr @imx8mq_mipi_csi_driver, !15, !"imx8mq_mipi_csi_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 976, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 896, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx8mq_mipi_csi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx8mq_mipi_csi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @imx8mq_mipi_csi_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 911, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 851, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @imx8mq_mipi_csi_parse_dt._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @imx8mq_mipi_csi_parse_dt._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 855, i32 39}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 858, i32 3}
!36 = !{ptr @imx8mq_mipi_csi_parse_dt._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx8mq_mipi_csi_parse_dt._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 866, i32 3}
!40 = !{ptr @imx8mq_mipi_csi_parse_dt._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx8mq_mipi_csi_parse_dt._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 872, i32 3}
!44 = !{ptr @imx8mq_mipi_csi_parse_dt._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx8mq_mipi_csi_parse_dt._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 877, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @imx8mq_mipi_csi_parse_dt.__UNIQUE_ID_ddebug297, !47, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 80, i32 20}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 81, i32 19}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 82, i32 18}
!56 = distinct !{null, !57, !"imx8mq_mipi_csi_clk_id", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 79, i32 27}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 796, i32 39}
!60 = !{ptr @imx8mq_mipi_csi_subdev_ops, !61, !"imx8mq_mipi_csi_subdev_ops", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 595, i32 37}
!62 = !{ptr @imx8mq_mipi_csi_video_ops, !63, !"imx8mq_mipi_csi_video_ops", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 584, i32 43}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 243, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @imx8mq_mipi_csi_sw_reset._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @imx8mq_mipi_csi_sw_reset._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 318, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @imx8mq_mipi_csi_calc_hs_settle._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @imx8mq_mipi_csi_calc_hs_settle._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 325, i32 3}
!76 = !{ptr @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug293, !75, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 345, i32 3}
!79 = !{ptr @imx8mq_mipi_csi_calc_hs_settle._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @imx8mq_mipi_csi_calc_hs_settle._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 349, i32 2}
!83 = !{ptr @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug294, !82, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 358, i32 2}
!86 = !{ptr @imx8mq_mipi_csi_calc_hs_settle.__UNIQUE_ID_ddebug295, !85, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!87 = !{ptr @imx8mq_mipi_csi_pad_ops, !88, !"imx8mq_mipi_csi_pad_ops", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 588, i32 41}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!91 = !{ptr @imx8mq_mipi_csi_entity_ops, !92, !"imx8mq_mipi_csi_entity_ops", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 604, i32 45}
!93 = !{ptr @imx8mq_mipi_csi_formats, !94, !"imx8mq_mipi_csi_formats", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 144, i32 37}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 831, i32 43}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 732, i32 3}
!99 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @imx8mq_mipi_csi_pm_resume._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @imx8mq_mipi_csi_pm_resume._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 659, i32 4}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @imx8mq_mipi_csi_async_register._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @imx8mq_mipi_csi_async_register._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 668, i32 2}
!109 = !{ptr @imx8mq_mipi_csi_async_register.__UNIQUE_ID_ddebug296, !108, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!110 = !{ptr @imx8mq_mipi_csi_notify_ops, !111, !"imx8mq_mipi_csi_notify_ops", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 632, i32 52}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 719, i32 3}
!114 = !{ptr @imx8mq_mipi_csi_pm_suspend._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @imx8mq_mipi_csi_pm_suspend._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @imx8mq_mipi_csi_of_match, !117, !"imx8mq_mipi_csi_of_match", i1 false, i1 false}
!117 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 970, i32 34}
!118 = !{ptr @imx8mq_mipi_csi_pm_ops, !119, !"imx8mq_mipi_csi_pm_ops", i1 false, i1 false}
!119 = !{!"../drivers/staging/media/imx/imx8mq-mipi-csi2.c", i32 779, i32 32}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i64 2148745267, i64 2148745272, i64 2148745285, i64 2148745329, i64 2148745363, i64 2148745384}
!131 = !{i64 2156450287}
!132 = !{i64 4696148}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2148262871}
!136 = !{i64 747694, i64 747719, i64 747741, i64 747757, i64 747769, i64 747789, i64 747813, i64 747829, i64 747841}
!137 = !{i64 2148263059}
