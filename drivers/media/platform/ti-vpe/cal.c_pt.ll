; ModuleID = '/llk/IR_all_yes/drivers/media/platform/ti-vpe/cal.c_pt.bc'
source_filename = "../drivers/media/platform/ti-vpe/cal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.cal_format_info = type { i32, i32, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.cal_data = type { ptr, i32, i32 }
%struct.cal_camerarx_data = type { [4 x %struct.anon.84], i32 }
%struct.anon.84 = type { i32, i32 }
%struct.cal_dev = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [2 x ptr], i32, [8 x ptr], %struct.media_device, %struct.v4l2_device, %struct.v4l2_async_notifier, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cal_camerarx = type { ptr, ptr, [4 x ptr], ptr, i32, %struct.v4l2_fwnode_endpoint, ptr, ptr, ptr, %struct.media_pipeline, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.mutex, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.85, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.85 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.99, i16, i16, i16, [10 x i16] }
%union.anon.99 = type { i16 }
%struct.cal_ctx = type { %struct.v4l2_ctrl_handler, %struct.video_device, %struct.media_pad, ptr, ptr, %struct.mutex, %struct.cal_dmaqueue, ptr, %struct.v4l2_format, ptr, i32, i32, %struct.vb2_queue, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
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
%struct.cal_dmaqueue = type { %struct.spinlock, %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head }
%struct.v4l2_format = type { i32, %union.anon.103 }
%union.anon.103 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.105, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.105 = type { i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.97, i32 }
%union.anon.97 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.cal_v4l2_async_subdev = type { %struct.v4l2_async_subdev, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.101, %struct.list_head, %struct.list_head }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { i32, i16 }

@__UNIQUE_ID_description304 = internal constant [33 x i8] c"ti_cal.description=TI CAL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [46 x i8] c"ti_cal.author=Benoit Parrot, <bparrot@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [49 x i8] c"ti_cal.file=drivers/media/platform/ti-vpe/ti-cal\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [22 x i8] c"ti_cal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version308 = internal constant [21 x i8] c"ti_cal.version=0.1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti_cal\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@cal_video_nr = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_video_nr = internal constant [16 x i8] c"ti_cal.video_nr\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @cal_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype309 = internal constant [30 x i8] c"ti_cal.parmtype=video_nr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr310 = internal constant [59 x i8] c"ti_cal.parm=video_nr:videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"ti_cal.debug\00", align 1
@cal_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @cal_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype311 = internal constant [27 x i8] c"ti_cal.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug312 = internal constant [39 x i8] c"ti_cal.parm=debug:activates debug info\00", section ".modinfo", align 1
@cal_mc_api = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_mc_api = internal constant [14 x i8] c"ti_cal.mc_api\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_mc_api = internal constant %struct.kernel_param { ptr @__param_str_mc_api, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @cal_mc_api } }, section "__param", align 4
@__UNIQUE_ID_mc_apitype313 = internal constant [28 x i8] c"ti_cal.parmtype=mc_api:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mc_api314 = internal constant [40 x i8] c"ti_cal.parm=mc_api:activates the MC API\00", section ".modinfo", align 1
@cal_formats = dso_local constant { [23 x %struct.cal_format_info], [76 x i8] } { [23 x %struct.cal_format_info] [%struct.cal_format_info { i32 1448695129, i32 8200, i8 16, i8 0 }, %struct.cal_format_info { i32 1498831189, i32 8198, i8 16, i8 0 }, %struct.cal_format_info { i32 1431918169, i32 8201, i8 16, i8 0 }, %struct.cal_format_info { i32 1498765654, i32 8199, i8 16, i8 0 }, %struct.cal_format_info { i32 1346520914, i32 4104, i8 16, i8 0 }, %struct.cal_format_info { i32 1380075346, i32 4103, i8 16, i8 0 }, %struct.cal_format_info { i32 1329743698, i32 4100, i8 16, i8 0 }, %struct.cal_format_info { i32 1363298130, i32 4099, i8 16, i8 0 }, %struct.cal_format_info { i32 859981650, i32 4108, i8 24, i8 0 }, %struct.cal_format_info { i32 861030210, i32 4107, i8 24, i8 0 }, %struct.cal_format_info { i32 876758866, i32 4109, i8 32, i8 0 }, %struct.cal_format_info { i32 825770306, i32 12289, i8 8, i8 0 }, %struct.cal_format_info { i32 1196573255, i32 12307, i8 8, i8 0 }, %struct.cal_format_info { i32 1195528775, i32 12290, i8 8, i8 0 }, %struct.cal_format_info { i32 1111967570, i32 12308, i8 8, i8 0 }, %struct.cal_format_info { i32 808535874, i32 12295, i8 10, i8 0 }, %struct.cal_format_info { i32 808534599, i32 12302, i8 10, i8 0 }, %struct.cal_format_info { i32 808534338, i32 12298, i8 10, i8 0 }, %struct.cal_format_info { i32 808535890, i32 12303, i8 10, i8 0 }, %struct.cal_format_info { i32 842090306, i32 12296, i8 12, i8 0 }, %struct.cal_format_info { i32 842089031, i32 12304, i8 12, i8 0 }, %struct.cal_format_info { i32 842088770, i32 12305, i8 12, i8 0 }, %struct.cal_format_info { i32 842090322, i32 12306, i8 12, i8 0 }], [76 x i8] zeroinitializer }, align 32
@cal_num_formats = dso_local constant { i32, [28 x i8] } { i32 23, [28 x i8] zeroinitializer }, align 32
@cal_quickdump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 271, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CAL Registers @ 0x%pa:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cal_quickdump_regs\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/ti-vpe/cal.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cal_quickdump_regs._entry_ptr = internal global ptr @cal_quickdump_regs._entry, section ".printk_index", align 4
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cal_quickdump_regs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CSI2 Core %u Registers @ %pa:\0A\00", [33 x i8] zeroinitializer }, align 32
@cal_quickdump_regs._entry_ptr.11 = internal global ptr @cal_quickdump_regs._entry.9, section ".printk_index", align 4
@cal_ctx_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 481, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctx%u: Failed to reserve pix proc: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cal_ctx_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cal_ctx_prepare._entry_ptr = internal global ptr @cal_ctx_prepare._entry, section ".printk_index", align 4
@cal_ctx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 532, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctx%u: failed to disable dma cleanly\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cal_ctx_stop\00", [19 x i8] zeroinitializer }, align 32
@cal_ctx_stop._entry_ptr = internal global ptr @cal_ctx_stop._entry, section ".printk_index", align 4
@__initcall__kmod_ti_cal__335_1263_cal_pdrv_init6 = internal global ptr @cal_pdrv_init, section ".initcall6.init", align 4
@cal_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cal_probe, ptr @cal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.34, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cal_pdrv_exit = internal global ptr @cal_pdrv_exit, section ".exitcall.exit", align 4
@cal_ctx_csi2_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 347, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctx%u: CAL_CSI2_CTX(%u, %u) = 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cal_ctx_csi2_config\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@cal_ctx_csi2_config._entry_ptr = internal global ptr @cal_ctx_csi2_config._entry, section ".printk_index", align 4
@cal_ctx_pix_proc_config.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@cal_ctx_pix_proc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 383, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:%s: bpp:%d unsupported! Overwritten with 8.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cal_ctx_pix_proc_config\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cal_ctx_pix_proc_config._entry_ptr = internal global ptr @cal_ctx_pix_proc_config._entry, section ".printk_index", align 4
@cal_ctx_pix_proc_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.5, i32 398, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ctx%u: CAL_PIX_PROC(%u) = 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@cal_ctx_pix_proc_config._entry_ptr.25 = internal global ptr @cal_ctx_pix_proc_config._entry.23, section ".printk_index", align 4
@cal_ctx_wr_dma_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 417, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ctx%u: CAL_WR_DMA_CTRL(%d) = 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cal_ctx_wr_dma_config\00", [42 x i8] zeroinitializer }, align 32
@cal_ctx_wr_dma_config._entry_ptr = internal global ptr @cal_ctx_wr_dma_config._entry, section ".printk_index", align 4
@cal_ctx_wr_dma_config._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 422, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ctx%u: CAL_WR_DMA_OFST(%d) = 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@cal_ctx_wr_dma_config._entry_ptr.30 = internal global ptr @cal_ctx_wr_dma_config._entry.28, section ".printk_index", align 4
@cal_ctx_wr_dma_config._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 435, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctx%u: CAL_WR_DMA_XSIZE(%d) = 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@cal_ctx_wr_dma_config._entry_ptr.33 = internal global ptr @cal_ctx_wr_dma_config._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cal\00", [28 x i8] zeroinitializer }, align 32
@cal_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra72-cal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra72x_cal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra72-pre-es2-cal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra72x_es1_cal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra76-cal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra76x_cal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-cal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_cal_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1079, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Could not get feature data based on compatible version\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cal_probe\00", [22 x i8] zeroinitializer }, align 32
@cal_probe._entry_ptr = internal global ptr @cal_probe._entry, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@cal_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.5, i32 1089, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot get CAL fclk\0A\00", [43 x i8] zeroinitializer }, align 32
@cal_probe._entry_ptr.40 = internal global ptr @cal_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cal_top\00", [24 x i8] zeroinitializer }, align 32
@cal_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.5, i32 1104, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ioresource %s at %pa - %pa\0A\00", [36 x i8] zeroinitializer }, align 32
@cal_probe._entry_ptr.44 = internal global ptr @cal_probe._entry.42, section ".printk_index", align 4
@cal_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.36, ptr @.str.5, i32 1107, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"got irq# %d\0A\00", [19 x i8] zeroinitializer }, align 32
@cal_probe._entry_ptr.47 = internal global ptr @cal_probe._entry.45, section ".printk_index", align 4
@cal_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.36, ptr @.str.5, i32 1141, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Neither port is configured, no point in staying up\0A\00", [44 x i8] zeroinitializer }, align 32
@cal_probe._entry_ptr.50 = internal global ptr @cal_probe._entry.48, section ".printk_index", align 4
@cal_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.36, ptr @.str.5, i32 1153, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create context %u\0A\00", [35 x i8] zeroinitializer }, align 32
@cal_probe._entry_ptr.53 = internal global ptr @cal_probe._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,camerrx-control\00", [45 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 1027, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get ti,camerrx-control: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal_init_camerarx_regmap\00", [39 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry_ptr = internal global ptr @cal_init_camerarx_regmap._entry, section ".printk_index", align 4
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camerrx_control\00", [16 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.5, i32 1037, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to ioremap camerrx_control\0A\00", [61 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry_ptr.60 = internal global ptr @cal_init_camerarx_regmap._entry.58, section ".printk_index", align 4
@cal_init_camerarx_regmap._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.56, ptr @.str.5, i32 1042, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry_ptr.62 = internal global ptr @cal_init_camerarx_regmap._entry.61, section ".printk_index", align 4
@cal_init_camerarx_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal:1049:(&config)->lock\00", [39 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.56, ptr @.str.5, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013regmap init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@cal_init_camerarx_regmap._entry_ptr.66 = internal global ptr @cal_init_camerarx_regmap._entry.64, section ".printk_index", align 4
@cal_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cal_irq = private unnamed_addr constant [8 x i8] c"cal_irq\00", align 1
@cal_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.cal_irq, ptr @.str.5, i32 630, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OCPO ERROR\0A\00", [20 x i8] zeroinitializer }, align 32
@cal_irq._entry_ptr = internal global ptr @cal_irq._entry, section ".printk_index", align 4
@cal_irq._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cal_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.cal_irq, ptr @.str.5, i32 638, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CIO%u error: %#08x\0A\00", [44 x i8] zeroinitializer }, align 32
@cal_irq._entry_ptr.72 = internal global ptr @cal_irq._entry.70, section ".printk_index", align 4
@cal_irq._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cal_irq._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.cal_irq, ptr @.str.5, i32 649, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIO%u VC error: %#08x\0A\00", [41 x i8] zeroinitializer }, align 32
@cal_irq._entry_ptr.76 = internal global ptr @cal_irq._entry.74, section ".printk_index", align 4
@cal_get_hwinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 992, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CAL HW revision %lu.%lu.%lu (0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cal_get_hwinfo\00", [17 x i8] zeroinitializer }, align 32
@cal_get_hwinfo._entry_ptr = internal global ptr @cal_get_hwinfo._entry, section ".printk_index", align 4
@cal_get_hwinfo._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 998, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected CAL HW revision 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cal_get_hwinfo._entry_ptr.81 = internal global ptr @cal_get_hwinfo._entry.79, section ".printk_index", align 4
@cal_get_hwinfo._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.5, i32 1005, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CAL_HL_HWINFO = 0x%08x, expected 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@cal_get_hwinfo._entry_ptr.84 = internal global ptr @cal_get_hwinfo._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CAL\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@cal_media_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 898, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register V4L2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cal_media_init\00", [17 x i8] zeroinitializer }, align 32
@cal_media_init._entry_ptr = internal global ptr @cal_media_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cal_media_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 842, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register media device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cal_media_register\00", [45 x i8] zeroinitializer }, align 32
@cal_media_register._entry_ptr = internal global ptr @cal_media_register._entry, section ".printk_index", align 4
@cal_async_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @cal_async_notifier_bound, ptr @cal_async_notifier_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@cal_async_notifier_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 800, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"phy%u: Failed to add subdev to notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cal_async_notifier_register\00", [36 x i8] zeroinitializer }, align 32
@cal_async_notifier_register._entry_ptr = internal global ptr @cal_async_notifier_register._entry, section ".printk_index", align 4
@cal_async_notifier_register._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 810, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error registering async notifier\0A\00", [62 x i8] zeroinitializer }, align 32
@cal_async_notifier_register._entry_ptr.95 = internal global ptr @cal_async_notifier_register._entry.93, section ".printk_index", align 4
@cal_async_notifier_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 713, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"phy%u: Rejecting subdev %s (Already set!!)\00", [53 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal_async_notifier_bound\00", [39 x i8] zeroinitializer }, align 32
@cal_async_notifier_bound._entry_ptr = internal global ptr @cal_async_notifier_bound._entry, section ".printk_index", align 4
@cal_async_notifier_bound._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.5, i32 718, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"phy%u: Using source %s for capture\0A\00", [60 x i8] zeroinitializer }, align 32
@cal_async_notifier_bound._entry_ptr.100 = internal global ptr @cal_async_notifier_bound._entry.98, section ".printk_index", align 4
@cal_async_notifier_bound._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.5, i32 725, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"phy%u: Source %s has no connected source pad\0A\00", [50 x i8] zeroinitializer }, align 32
@cal_async_notifier_bound._entry_ptr.103 = internal global ptr @cal_async_notifier_bound._entry.101, section ".printk_index", align 4
@cal_async_notifier_bound._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.97, ptr @.str.5, i32 735, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"phy%u: Failed to create media link for source %s\0A\00", [46 x i8] zeroinitializer }, align 32
@cal_async_notifier_bound._entry_ptr.106 = internal global ptr @cal_async_notifier_bound._entry.104, section ".printk_index", align 4
@cal_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.5, i32 1190, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Removing %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cal_remove\00", [21 x i8] zeroinitializer }, align 32
@cal_remove._entry_ptr = internal global ptr @cal_remove._entry, section ".printk_index", align 4
@dra72x_cal_data = internal constant { %struct.cal_data, [20 x i8] } { %struct.cal_data { ptr @dra72x_cal_camerarx, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dra72x_es1_cal_data = internal constant { %struct.cal_data, [20 x i8] } { %struct.cal_data { ptr @dra72x_cal_camerarx, i32 2, i32 1 }, [20 x i8] zeroinitializer }, align 32
@dra76x_cal_data = internal constant { %struct.cal_data, [20 x i8] } { %struct.cal_data { ptr @dra76x_cal_csi_phy, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@am654_cal_data = internal constant { %struct.cal_data, [20 x i8] } { %struct.cal_data { ptr @am654_cal_csi_phy, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dra72x_cal_camerarx = internal constant { [2 x %struct.cal_camerarx_data], [56 x i8] } { [2 x %struct.cal_camerarx_data] [%struct.cal_camerarx_data { [4 x %struct.anon.84] [%struct.anon.84 { i32 10, i32 10 }, %struct.anon.84 { i32 11, i32 12 }, %struct.anon.84 { i32 13, i32 16 }, %struct.anon.84 { i32 17, i32 17 }], i32 4 }, %struct.cal_camerarx_data { [4 x %struct.anon.84] [%struct.anon.84 zeroinitializer, %struct.anon.84 { i32 1, i32 2 }, %struct.anon.84 { i32 3, i32 4 }, %struct.anon.84 { i32 5, i32 5 }], i32 2 }], [56 x i8] zeroinitializer }, align 32
@dra76x_cal_csi_phy = internal constant { [2 x %struct.cal_camerarx_data], [56 x i8] } { [2 x %struct.cal_camerarx_data] [%struct.cal_camerarx_data { [4 x %struct.anon.84] [%struct.anon.84 { i32 8, i32 8 }, %struct.anon.84 { i32 9, i32 10 }, %struct.anon.84 { i32 27, i32 31 }, %struct.anon.84 { i32 11, i32 11 }], i32 5 }, %struct.cal_camerarx_data { [4 x %struct.anon.84] [%struct.anon.84 zeroinitializer, %struct.anon.84 { i32 1, i32 2 }, %struct.anon.84 { i32 24, i32 26 }, %struct.anon.84 { i32 3, i32 3 }], i32 3 }], [56 x i8] zeroinitializer }, align 32
@am654_cal_csi_phy = internal constant { [1 x %struct.cal_camerarx_data], [60 x i8] } { [1 x %struct.cal_camerarx_data] [%struct.cal_camerarx_data { [4 x %struct.anon.84] [%struct.anon.84 { i32 15, i32 15 }, %struct.anon.84 { i32 24, i32 25 }, %struct.anon.84 { i32 0, i32 4 }, %struct.anon.84 zeroinitializer], i32 5 }], [60 x i8] zeroinitializer }, align 32
@cal_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.5, i32 1244, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAL_CTRL = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cal_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@cal_runtime_resume._entry_ptr = internal global ptr @cal_runtime_resume._entry, section ".printk_index", align 4
@switch.table.cal_ctx_start = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 5, i32 5, i32 9, i32 5, i32 13, i32 5, i32 5, i32 5, i32 21], [60 x i8] zeroinitializer }, align 32
@switch.table.cal_ctx_start.111 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 327680, i32 0, i32 327680, i32 0, i32 0, i32 0, i32 327680], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 808534338, i64 808534599, i64 808535874, i64 808535890, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 859981650, i64 861030210, i64 876758866, i64 1111967570, i64 1195528775, i64 1196573255, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.112 = internal global [25 x i64] [i64 23, i64 32, i64 4099, i64 4100, i64 4103, i64 4104, i64 4107, i64 4108, i64 4109, i64 8198, i64 8199, i64 8200, i64 8201, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 36, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"cal_video_nr\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 38, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant [10 x i8] c"cal_debug\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 42, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"cal_mc_api\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 52, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"cal_formats\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 61, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"cal_num_formats\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 157, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 271, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 272, i32 28 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 279, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 481, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 532, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"cal_pdrv\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1253, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 345, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 381, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 397, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 416, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 421, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 434, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1257, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"cal_of_match\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 956, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant [11 x i8] c"cal_pm_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1249, i32 32 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1079, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1087, i32 39 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1089, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1098, i32 7 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1103, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1107, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1141, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1153, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1018, i32 52 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1026, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1034, i32 9 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1037, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1041, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1049, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1051, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 630, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 637, i32 5 }
@___asan_gen_.350 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 647, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 988, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 997, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1004, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 886, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 887, i32 51 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 898, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 842, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [23 x i8] c"cal_async_notifier_ops\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 774, i32 52 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 800, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 810, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 712, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 718, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 724, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 734, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1190, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [16 x i8] c"dra72x_cal_data\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 209, i32 30 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c"dra72x_es1_cal_data\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 214, i32 30 }
@___asan_gen_.464 = private unnamed_addr constant [16 x i8] c"dra76x_cal_data\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 241, i32 30 }
@___asan_gen_.467 = private unnamed_addr constant [15 x i8] c"am654_cal_data\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 257, i32 30 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c"dra72x_cal_camerarx\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 188, i32 39 }
@___asan_gen_.473 = private unnamed_addr constant [19 x i8] c"dra76x_cal_csi_phy\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 220, i32 39 }
@___asan_gen_.476 = private unnamed_addr constant [18 x i8] c"am654_cal_csi_phy\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 246, i32 39 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [39 x i8] c"../drivers/media/platform/ti-vpe/cal.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1244, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [27 x i8] c"switch.table.cal_ctx_start\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [31 x i8] c"switch.table.cal_ctx_start.111\00", align 1
@llvm.compiler.used = appending global [181 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_debug312, ptr @__UNIQUE_ID_debugtype311, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mc_api314, ptr @__UNIQUE_ID_mc_apitype313, ptr @__UNIQUE_ID_version308, ptr @__UNIQUE_ID_video_nr310, ptr @__UNIQUE_ID_video_nrtype309, ptr @__exitcall_cal_pdrv_exit, ptr @__initcall__kmod_ti_cal__335_1263_cal_pdrv_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_mc_api, ptr @__param_video_nr, ptr @cal_async_notifier_bound._entry, ptr @cal_async_notifier_bound._entry.101, ptr @cal_async_notifier_bound._entry.104, ptr @cal_async_notifier_bound._entry.98, ptr @cal_async_notifier_bound._entry_ptr, ptr @cal_async_notifier_bound._entry_ptr.100, ptr @cal_async_notifier_bound._entry_ptr.103, ptr @cal_async_notifier_bound._entry_ptr.106, ptr @cal_async_notifier_register._entry, ptr @cal_async_notifier_register._entry.93, ptr @cal_async_notifier_register._entry_ptr, ptr @cal_async_notifier_register._entry_ptr.95, ptr @cal_ctx_csi2_config._entry, ptr @cal_ctx_csi2_config._entry_ptr, ptr @cal_ctx_pix_proc_config._entry, ptr @cal_ctx_pix_proc_config._entry.23, ptr @cal_ctx_pix_proc_config._entry_ptr, ptr @cal_ctx_pix_proc_config._entry_ptr.25, ptr @cal_ctx_prepare._entry, ptr @cal_ctx_prepare._entry_ptr, ptr @cal_ctx_stop._entry, ptr @cal_ctx_stop._entry_ptr, ptr @cal_ctx_wr_dma_config._entry, ptr @cal_ctx_wr_dma_config._entry.28, ptr @cal_ctx_wr_dma_config._entry.31, ptr @cal_ctx_wr_dma_config._entry_ptr, ptr @cal_ctx_wr_dma_config._entry_ptr.30, ptr @cal_ctx_wr_dma_config._entry_ptr.33, ptr @cal_get_hwinfo._entry, ptr @cal_get_hwinfo._entry.79, ptr @cal_get_hwinfo._entry.82, ptr @cal_get_hwinfo._entry_ptr, ptr @cal_get_hwinfo._entry_ptr.81, ptr @cal_get_hwinfo._entry_ptr.84, ptr @cal_init_camerarx_regmap._entry, ptr @cal_init_camerarx_regmap._entry.58, ptr @cal_init_camerarx_regmap._entry.61, ptr @cal_init_camerarx_regmap._entry.64, ptr @cal_init_camerarx_regmap._entry_ptr, ptr @cal_init_camerarx_regmap._entry_ptr.60, ptr @cal_init_camerarx_regmap._entry_ptr.62, ptr @cal_init_camerarx_regmap._entry_ptr.66, ptr @cal_irq._entry, ptr @cal_irq._entry.70, ptr @cal_irq._entry.74, ptr @cal_irq._entry_ptr, ptr @cal_irq._entry_ptr.72, ptr @cal_irq._entry_ptr.76, ptr @cal_media_init._entry, ptr @cal_media_init._entry_ptr, ptr @cal_media_register._entry, ptr @cal_media_register._entry_ptr, ptr @cal_pdrv_exit, ptr @cal_probe._entry, ptr @cal_probe._entry.38, ptr @cal_probe._entry.42, ptr @cal_probe._entry.45, ptr @cal_probe._entry.48, ptr @cal_probe._entry.51, ptr @cal_probe._entry_ptr, ptr @cal_probe._entry_ptr.40, ptr @cal_probe._entry_ptr.44, ptr @cal_probe._entry_ptr.47, ptr @cal_probe._entry_ptr.50, ptr @cal_probe._entry_ptr.53, ptr @cal_quickdump_regs._entry, ptr @cal_quickdump_regs._entry.9, ptr @cal_quickdump_regs._entry_ptr, ptr @cal_quickdump_regs._entry_ptr.11, ptr @cal_remove._entry, ptr @cal_remove._entry_ptr, ptr @cal_runtime_resume._entry, ptr @cal_runtime_resume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cal_video_nr, ptr @cal_debug, ptr @cal_mc_api, ptr @cal_formats, ptr @cal_num_formats, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cal_pdrv, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @cal_of_match, ptr @cal_pm_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @cal_init_camerarx_regmap._key, ptr @.str.63, ptr @.str.65, ptr @cal_irq._rs, ptr @.str.67, ptr @.str.68, ptr @cal_irq._rs.69, ptr @.str.71, ptr @cal_irq._rs.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @cal_async_notifier_ops, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @dra72x_cal_data, ptr @dra72x_es1_cal_data, ptr @dra76x_cal_data, ptr @am654_cal_data, ptr @dra72x_cal_camerarx, ptr @dra76x_cal_csi_phy, ptr @am654_cal_csi_phy, ptr @.str.109, ptr @.str.110, ptr @switch.table.cal_ctx_start, ptr @switch.table.cal_ctx_start.111], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_video_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_mc_api to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_formats to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_num_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_quickdump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_quickdump_regs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_csi2_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_pix_proc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_pix_proc_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_wr_dma_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_wr_dma_config._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_wr_dma_config._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_init_camerarx_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_init_camerarx_regmap._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_init_camerarx_regmap._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_init_camerarx_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_init_camerarx_regmap._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_irq._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_irq._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_irq._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_get_hwinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_get_hwinfo._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_get_hwinfo._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_media_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_media_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_register._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_bound._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_bound._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_async_notifier_bound._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra72x_cal_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra72x_es1_cal_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra76x_cal_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_cal_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra72x_cal_camerarx to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra76x_cal_csi_phy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_cal_csi_phy to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cal_ctx_start to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cal_ctx_start.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cal_format_by_fourcc(i32 noundef %fourcc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %for.cond.22 [
    i32 1448695129, label %entry.cleanup_crit_edge
    i32 1498831189, label %cleanup.fold.split
    i32 1431918169, label %cleanup.fold.split8
    i32 1498765654, label %cleanup.fold.split9
    i32 1346520914, label %cleanup.fold.split10
    i32 1380075346, label %cleanup.fold.split11
    i32 1329743698, label %cleanup.fold.split12
    i32 1363298130, label %cleanup.fold.split13
    i32 859981650, label %cleanup.fold.split14
    i32 861030210, label %cleanup.fold.split15
    i32 876758866, label %cleanup.fold.split16
    i32 825770306, label %cleanup.fold.split17
    i32 1196573255, label %cleanup.fold.split18
    i32 1195528775, label %cleanup.fold.split19
    i32 1111967570, label %cleanup.fold.split20
    i32 808535874, label %cleanup.fold.split21
    i32 808534599, label %cleanup.fold.split22
    i32 808534338, label %cleanup.fold.split23
    i32 808535890, label %cleanup.fold.split24
    i32 842090306, label %cleanup.fold.split25
    i32 842089031, label %cleanup.fold.split26
    i32 842088770, label %cleanup.fold.split27
    i32 842090322, label %cleanup.fold.split28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.22:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split, %for.cond.22, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @cal_formats, %entry.cleanup_crit_edge ], [ null, %for.cond.22 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 2), %cleanup.fold.split8 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 3), %cleanup.fold.split9 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 4), %cleanup.fold.split10 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 5), %cleanup.fold.split11 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 6), %cleanup.fold.split12 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 7), %cleanup.fold.split13 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 8), %cleanup.fold.split14 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 9), %cleanup.fold.split15 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 10), %cleanup.fold.split16 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 11), %cleanup.fold.split17 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 12), %cleanup.fold.split18 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 13), %cleanup.fold.split19 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 14), %cleanup.fold.split20 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 15), %cleanup.fold.split21 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 16), %cleanup.fold.split22 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 17), %cleanup.fold.split23 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 18), %cleanup.fold.split24 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 19), %cleanup.fold.split25 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 20), %cleanup.fold.split26 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 21), %cleanup.fold.split27 ], [ getelementptr inbounds ([23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 22), %cleanup.fold.split28 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cal_format_by_code(i32 noundef %code) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %code, label %entry.cleanup_crit_edge [
    i32 8200, label %entry.if.then_crit_edge
    i32 8198, label %if.then.fold.split
    i32 8201, label %if.then.fold.split10
    i32 8199, label %if.then.fold.split11
    i32 4104, label %if.then.fold.split12
    i32 4103, label %if.then.fold.split13
    i32 4100, label %if.then.fold.split14
    i32 4099, label %if.then.fold.split15
    i32 4108, label %if.then.fold.split16
    i32 4107, label %if.then.fold.split17
    i32 4109, label %if.then.fold.split18
    i32 12289, label %if.then.fold.split19
    i32 12307, label %if.then.fold.split20
    i32 12290, label %if.then.fold.split21
    i32 12308, label %if.then.fold.split22
    i32 12295, label %if.then.fold.split23
    i32 12302, label %if.then.fold.split24
    i32 12298, label %if.then.fold.split25
    i32 12303, label %if.then.fold.split26
    i32 12296, label %if.then.fold.split27
    i32 12304, label %if.then.fold.split28
    i32 12305, label %if.then.fold.split29
    i32 12306, label %if.then.fold.split30
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split30, %if.then.fold.split29, %if.then.fold.split28, %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split, %entry.if.then_crit_edge
  %i.08.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split10 ], [ 3, %if.then.fold.split11 ], [ 4, %if.then.fold.split12 ], [ 5, %if.then.fold.split13 ], [ 6, %if.then.fold.split14 ], [ 7, %if.then.fold.split15 ], [ 8, %if.then.fold.split16 ], [ 9, %if.then.fold.split17 ], [ 10, %if.then.fold.split18 ], [ 11, %if.then.fold.split19 ], [ 12, %if.then.fold.split20 ], [ 13, %if.then.fold.split21 ], [ 14, %if.then.fold.split22 ], [ 15, %if.then.fold.split23 ], [ 16, %if.then.fold.split24 ], [ 17, %if.then.fold.split25 ], [ 18, %if.then.fold.split26 ], [ 19, %if.then.fold.split27 ], [ 20, %if.then.fold.split28 ], [ 21, %if.then.fold.split29 ], [ 22, %if.then.fold.split30 ]
  %arrayidx = getelementptr [23 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 %i.08.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_quickdump_regs(ptr nocapture noundef readonly %cal) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %res = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 3
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %3) #13
  %base = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %sub.i = add i32 %9, 1
  %add.i = sub i32 %sub.i, %11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %5, i32 noundef %add.i, i1 noundef zeroext false) #10
  %data = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 5
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %num_csi2_phy27 = getelementptr inbounds %struct.cal_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_csi2_phy27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_csi2_phy27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not = icmp eq i32 %15, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cal_dev, ptr %cal, i32 0, i32 9, i32 %i.029
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %res7 = getelementptr inbounds %struct.cal_camerarx, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %res7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %i.029, ptr noundef %21) #13
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %24 = ptrtoint ptr %res7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %res7, align 4
  %end.i23 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %end.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i23, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  %sub.i24 = add i32 %27, 1
  %add.i25 = sub i32 %sub.i24, %29
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %23, i32 noundef %add.i25, i1 noundef zeroext false) #10
  %inc = add nuw i32 %i.029, 1
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %num_csi2_phy = getelementptr inbounds %struct.cal_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %num_csi2_phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_csi2_phy, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_ctx_set_dma_addr(ptr nocapture noundef readonly %ctx, i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %2 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add = add nuw nsw i32 %mul, 516
  %base.i = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %addr) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !265
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cal_ctx_prepare(ptr nocapture noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmtinfo = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmtinfo, align 8
  %meta = getelementptr inbounds %struct.cal_format_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %meta, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %use_pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 19
  %4 = xor i8 %3, 1
  %5 = ptrtoint ptr %use_pix_proc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %use_pix_proc, align 2
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cal, align 8
  %lock.i = getelementptr inbounds %struct.cal_dev, ptr %7, i32 0, i32 13, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %reserved_pix_proc_mask.i = getelementptr inbounds %struct.cal_dev, ptr %7, i32 0, i32 15
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %reserved_pix_proc_mask.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 4
  br i1 %cmp.i, label %cal_reserve_pix_proc.exit.thread, label %cal_reserve_pix_proc.exit

cal_reserve_pix_proc.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %do.end

cal_reserve_pix_proc.exit:                        ; preds = %if.then
  %shl.i = shl nuw i32 1, %call.i
  %8 = ptrtoint ptr %reserved_pix_proc_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reserved_pix_proc_mask.i, align 8
  %or.i = or i32 %9, %shl.i
  store i32 %or.i, ptr %reserved_pix_proc_mask.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %cal_reserve_pix_proc.exit.do.end_crit_edge, label %if.end

cal_reserve_pix_proc.exit.do.end_crit_edge:       ; preds = %cal_reserve_pix_proc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %cal_reserve_pix_proc.exit.do.end_crit_edge, %cal_reserve_pix_proc.exit.thread
  %retval.0.i18 = phi i32 [ -28, %cal_reserve_pix_proc.exit.thread ], [ %call.i, %cal_reserve_pix_proc.exit.do.end_crit_edge ]
  %10 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %14 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %retval.0.i18) #13
  br label %cleanup

if.end:                                           ; preds = %cal_reserve_pix_proc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = trunc i32 %call.i to i8
  %pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 16
  %16 = ptrtoint ptr %pix_proc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %pix_proc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %do.end ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_ctx_unprepare(ptr nocapture noundef readonly %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 19
  %0 = ptrtoint ptr %use_pix_proc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_pix_proc, align 2, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cal, align 8
  %pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 16
  %4 = ptrtoint ptr %pix_proc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pix_proc, align 1
  %conv = zext i8 %5 to i32
  %lock.i = getelementptr inbounds %struct.cal_dev, ptr %3, i32 0, i32 13, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %shl.i = shl nuw i32 1, %conv
  %neg.i = xor i32 %shl.i, -1
  %reserved_pix_proc_mask.i = getelementptr inbounds %struct.cal_dev, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %reserved_pix_proc_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reserved_pix_proc_mask.i, align 8
  %and.i = and i32 %7, %neg.i
  store i32 %and.i, ptr %reserved_pix_proc_mask.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_ctx_start(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sequence = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sequence, align 8
  %state = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %cal.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cal.i, align 8
  %phy.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %instance.i = getelementptr inbounds %struct.cal_camerarx, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance.i, align 4
  %mul.i = shl i32 %7, 7
  %add.i = add i32 %mul.i, 816
  %csi2_ctx.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 15
  %8 = ptrtoint ptr %csi2_ctx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %csi2_ctx.i, align 2
  %conv.i = zext i8 %9 to i32
  %mul1.i = shl nuw nsw i32 %conv.i, 2
  %add2.i = add i32 %add.i, %mul1.i
  %base.i.i = getelementptr inbounds %struct.cal_dev, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add2.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %cport.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 14
  %13 = ptrtoint ptr %cport.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cport.i, align 1
  %conv3.i = zext i8 %14 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i, 8
  %and1.i.i = and i32 %shl.i.i, 7936
  %datatype.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 18
  %15 = ptrtoint ptr %datatype.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %datatype.i, align 1
  %17 = and i32 %12, -1058996225
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %and1.i52.i = zext i8 %16 to i32
  %and.i51.i = or i32 %18, %and1.i52.i
  %vc.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 17
  %19 = ptrtoint ptr %vc.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vc.i, align 8
  %conv5.i = zext i8 %20 to i32
  %and.i51.masked.i = and i32 %and.i51.i, -1073708993
  %shl.i55.i = shl nuw nsw i32 %conv5.i, 6
  %and1.i56.i = and i32 %shl.i55.i, 192
  %height.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i, align 4
  %shl.i59.i = shl i32 %22, 16
  %and1.i60.i = and i32 %shl.i59.i, 1073676288
  %or.i57.i = or i32 %and.i51.masked.i, %and1.i.i
  %and.i54.i = or i32 %or.i57.i, %and1.i56.i
  %or.i61.i = or i32 %and.i54.i, %and1.i60.i
  %23 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cal.i, align 8
  %25 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy.i, align 4
  %instance8.i = getelementptr inbounds %struct.cal_camerarx, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %instance8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %instance8.i, align 4
  %mul9.i = shl i32 %28, 7
  %add10.i = add i32 %mul9.i, 816
  %29 = ptrtoint ptr %csi2_ctx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %csi2_ctx.i, align 2
  %conv12.i = zext i8 %30 to i32
  %mul13.i = shl nuw nsw i32 %conv12.i, 2
  %add14.i = add i32 %add10.i, %mul13.i
  %base.i64.i = getelementptr inbounds %struct.cal_dev, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i64.i, align 8
  %add.ptr.i65.i = getelementptr i8, ptr %32, i32 %add14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i61.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %33) #10, !srcloc !265
  %34 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i = icmp ugt i32 %34, 2
  br i1 %cmp.i, label %do.end.i, label %entry.cal_ctx_csi2_config.exit_crit_edge

entry.cal_ctx_csi2_config.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_ctx_csi2_config.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cal.i, align 8
  %dev.i = getelementptr inbounds %struct.cal_dev, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  %dma_ctx.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %39 = ptrtoint ptr %dma_ctx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dma_ctx.i, align 4
  %conv18.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy.i, align 4
  %instance20.i = getelementptr inbounds %struct.cal_camerarx, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %instance20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %instance20.i, align 4
  %45 = ptrtoint ptr %csi2_ctx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %csi2_ctx.i, align 2
  %conv22.i = zext i8 %46 to i32
  %mul26.i = shl i32 %44, 7
  %add27.i = add i32 %mul26.i, 816
  %mul30.i = shl nuw nsw i32 %conv22.i, 2
  %add31.i = add i32 %add27.i, %mul30.i
  %base.i66.i = getelementptr inbounds %struct.cal_dev, ptr %36, i32 0, i32 2
  %47 = ptrtoint ptr %base.i66.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i66.i, align 8
  %add.ptr.i67.i = getelementptr i8, ptr %48, i32 %add31.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #10, !srcloc !267
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %38, ptr noundef nonnull @.str.17, i32 noundef %conv18.i, i32 noundef %44, i32 noundef %conv22.i, i32 noundef %50) #13
  br label %cal_ctx_csi2_config.exit

cal_ctx_csi2_config.exit:                         ; preds = %do.end.i, %entry.cal_ctx_csi2_config.exit_crit_edge
  %use_pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 19
  %51 = ptrtoint ptr %use_pix_proc to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_pix_proc, align 2, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %cal_ctx_csi2_config.exit.if.end_crit_edge, label %if.then

cal_ctx_csi2_config.exit.if.end_crit_edge:        ; preds = %cal_ctx_csi2_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cal_ctx_csi2_config.exit
  %fmtinfo.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 7
  %53 = ptrtoint ptr %fmtinfo.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fmtinfo.i, align 8
  %bpp.i = getelementptr inbounds %struct.cal_format_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bpp.i, align 4
  %switch.tableidx = add i8 %56, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %57 = icmp ult i8 %switch.tableidx, 9
  br i1 %57, label %switch.hole_check, label %if.then.do.body.i_crit_edge

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %switch.hole_check.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %.b50.i = load i1, ptr @cal_ctx_pix_proc_config.__print_once, align 1
  br i1 %.b50.i, label %do.body.i.sw.epilog.i_crit_edge, label %if.then.i

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cal_ctx_pix_proc_config.__print_once, align 1
  %58 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cal.i, align 8
  %dev.i16 = getelementptr inbounds %struct.cal_dev, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i16, align 8
  %conv7.i = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5, i32 noundef 383, ptr noundef nonnull @.str.21, i32 noundef %conv7.i) #13
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %62 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %switch.lobit.not = icmp eq i16 %62, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body.i_crit_edge, label %switch.lookup

switch.hole_check.do.body.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %63 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.cal_ctx_start, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load i32, ptr %switch.gep, align 4
  %65 = sext i8 %switch.tableidx to i32
  %switch.gep51 = getelementptr inbounds [9 x i32], ptr @switch.table.cal_ctx_start.111, i32 0, i32 %65
  %66 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load52 = load i32, ptr %switch.gep51, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.then.i, %do.body.i.sw.epilog.i_crit_edge
  %extract.0.i = phi i32 [ 5, %if.then.i ], [ 5, %do.body.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %pack.0.i = phi i32 [ 0, %if.then.i ], [ 0, %do.body.i.sw.epilog.i_crit_edge ], [ %switch.load52, %switch.lookup ]
  %67 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cal.i, align 8
  %pix_proc.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 16
  %69 = ptrtoint ptr %pix_proc.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pix_proc.i, align 1
  %conv11.i = zext i8 %70 to i32
  %mul.i17 = shl nuw nsw i32 %conv11.i, 2
  %add.i18 = add nuw nsw i32 %mul.i17, 192
  %base.i.i19 = getelementptr inbounds %struct.cal_dev, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i19, align 8
  %add.ptr.i.i20 = getelementptr i8, ptr %72, i32 %add.i18
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %74 = ptrtoint ptr %cport.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cport.i, align 1
  %conv12.i22 = zext i8 %75 to i32
  %shl.i58.i = shl nuw nsw i32 %conv12.i22, 19
  %and1.i59.i = and i32 %shl.i58.i, 16252928
  %76 = and i32 %73, 262399
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  %and.i57.masked.i = or i32 %pack.0.i, %extract.0.i
  %and.i61.i = or i32 %and.i57.masked.i, %77
  %or.i62.i = or i32 %and.i61.i, %and1.i59.i
  %78 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cal.i, align 8
  %80 = ptrtoint ptr %pix_proc.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pix_proc.i, align 1
  %conv15.i = zext i8 %81 to i32
  %mul16.i = shl nuw nsw i32 %conv15.i, 2
  %add17.i = add nuw nsw i32 %mul16.i, 192
  %base.i63.i = getelementptr inbounds %struct.cal_dev, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %base.i63.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i63.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %83, i32 %add17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i62.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %84) #10, !srcloc !265
  %85 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp.i23 = icmp ugt i32 %85, 2
  br i1 %cmp.i23, label %do.end23.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end23.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cal.i, align 8
  %dev25.i = getelementptr inbounds %struct.cal_dev, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev25.i, align 8
  %dma_ctx.i24 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %90 = ptrtoint ptr %dma_ctx.i24 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dma_ctx.i24, align 4
  %conv26.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %pix_proc.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %pix_proc.i, align 1
  %conv28.i = zext i8 %93 to i32
  %mul32.i = shl nuw nsw i32 %conv28.i, 2
  %add33.i = add nuw nsw i32 %mul32.i, 192
  %base.i65.i = getelementptr inbounds %struct.cal_dev, ptr %87, i32 0, i32 2
  %94 = ptrtoint ptr %base.i65.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i65.i, align 8
  %add.ptr.i66.i = getelementptr i8, ptr %95, i32 %add33.i
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #10, !srcloc !267
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %89, ptr noundef nonnull @.str.24, i32 noundef %conv26.i, i32 noundef %conv28.i, i32 noundef %97) #13
  br label %if.end

if.end:                                           ; preds = %do.end23.i, %sw.epilog.i.if.end_crit_edge, %cal_ctx_csi2_config.exit.if.end_crit_edge
  %bytesperline.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 4
  %98 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bytesperline.i, align 4
  %100 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cal.i, align 8
  %dma_ctx.i26 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %102 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dma_ctx.i26, align 4
  %conv.i27 = zext i8 %103 to i32
  %mul.i28 = shl nuw nsw i32 %conv.i27, 4
  %add.i29 = add nuw nsw i32 %mul.i28, 512
  %base.i.i30 = getelementptr inbounds %struct.cal_dev, ptr %101, i32 0, i32 2
  %104 = ptrtoint ptr %base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i.i30, align 8
  %add.ptr.i.i31 = getelementptr i8, ptr %105, i32 %add.i29
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %107 = ptrtoint ptr %cport.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %cport.i, align 1
  %conv1.i = zext i8 %108 to i32
  %shl.i.i33 = shl nuw nsw i32 %conv1.i, 9
  %and1.i.i34 = and i32 %shl.i.i33, 15872
  %109 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height.i, align 4
  %shl.i116.i = shl i32 %110, 18
  %111 = and i32 %106, 662700800
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  %and.i115.masked.masked.masked.i = or i32 %112, %and1.i.i34
  %and.i120.i = or i32 %and.i115.masked.masked.masked.i, %shl.i116.i
  %or.i122.i = or i32 %and.i120.i, 16640
  %113 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cal.i, align 8
  %115 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %dma_ctx.i26, align 4
  %conv6.i = zext i8 %116 to i32
  %mul7.i = shl nuw nsw i32 %conv6.i, 4
  %add8.i = add nuw nsw i32 %mul7.i, 512
  %base.i123.i = getelementptr inbounds %struct.cal_dev, ptr %114, i32 0, i32 2
  %117 = ptrtoint ptr %base.i123.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i123.i, align 8
  %add.ptr.i124.i = getelementptr i8, ptr %118, i32 %add8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %119 = tail call i32 @llvm.bswap.i32(i32 %or.i122.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i, i32 %119) #10, !srcloc !265
  %120 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp.i36 = icmp ugt i32 %120, 2
  br i1 %cmp.i36, label %do.end.i38, label %if.end.do.end23.i40_crit_edge

if.end.do.end23.i40_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i40

do.end.i38:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cal.i, align 8
  %dev.i37 = getelementptr inbounds %struct.cal_dev, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i37, align 8
  %125 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %dma_ctx.i26, align 4
  %conv13.i = zext i8 %126 to i32
  %mul19.i = shl nuw nsw i32 %conv13.i, 4
  %add20.i = add nuw nsw i32 %mul19.i, 512
  %base.i125.i = getelementptr inbounds %struct.cal_dev, ptr %122, i32 0, i32 2
  %127 = ptrtoint ptr %base.i125.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i125.i, align 8
  %add.ptr.i126.i = getelementptr i8, ptr %128, i32 %add20.i
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126.i) #10, !srcloc !267
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %124, ptr noundef nonnull @.str.26, i32 noundef %conv13.i, i32 noundef %conv13.i, i32 noundef %130) #13
  br label %do.end23.i40

do.end23.i40:                                     ; preds = %do.end.i38, %if.end.do.end23.i40_crit_edge
  %131 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cal.i, align 8
  %133 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dma_ctx.i26, align 4
  %conv26.i39 = zext i8 %134 to i32
  %mul27.i = shl nuw nsw i32 %conv26.i39, 4
  %add28.i = add nuw nsw i32 %mul27.i, 520
  %base.i.i.i = getelementptr inbounds %struct.cal_dev, ptr %132, i32 0, i32 2
  %135 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %136, i32 %add28.i
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %138 = and i32 %137, 251721983
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #10
  %and2.i.i = and i32 %99, 524272
  %or.i128.i = or i32 %139, %and2.i.i
  %140 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %141, i32 %add28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %142 = tail call i32 @llvm.bswap.i32(i32 %or.i128.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %142) #10, !srcloc !265
  %143 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp30.i = icmp ugt i32 %143, 2
  br i1 %cmp30.i, label %do.end35.i, label %do.end23.i40.do.end50.i_crit_edge

do.end23.i40.do.end50.i_crit_edge:                ; preds = %do.end23.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50.i

do.end35.i:                                       ; preds = %do.end23.i40
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cal.i, align 8
  %dev37.i = getelementptr inbounds %struct.cal_dev, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev37.i, align 8
  %148 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dma_ctx.i26, align 4
  %conv39.i = zext i8 %149 to i32
  %mul45.i = shl nuw nsw i32 %conv39.i, 4
  %add46.i = add nuw nsw i32 %mul45.i, 520
  %base.i129.i = getelementptr inbounds %struct.cal_dev, ptr %145, i32 0, i32 2
  %150 = ptrtoint ptr %base.i129.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i129.i, align 8
  %add.ptr.i130.i = getelementptr i8, ptr %151, i32 %add46.i
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130.i) #10, !srcloc !267
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %147, ptr noundef nonnull @.str.29, i32 noundef %conv39.i, i32 noundef %conv39.i, i32 noundef %153) #13
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end35.i, %do.end23.i40.do.end50.i_crit_edge
  %154 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cal.i, align 8
  %156 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %dma_ctx.i26, align 4
  %conv53.i = zext i8 %157 to i32
  %mul54.i = shl nuw nsw i32 %conv53.i, 4
  %add55.i = add nuw nsw i32 %mul54.i, 524
  %base.i131.i = getelementptr inbounds %struct.cal_dev, ptr %155, i32 0, i32 2
  %158 = ptrtoint ptr %base.i131.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i131.i, align 8
  %add.ptr.i132.i = getelementptr i8, ptr %159, i32 %add55.i
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %161 = and i32 %160, 117442304
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #10
  %163 = shl i32 %99, 16
  %shl.i135.i = and i32 %163, -524288
  %or.i136.i = or i32 %162, %shl.i135.i
  %164 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cal.i, align 8
  %166 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %dma_ctx.i26, align 4
  %conv60.i = zext i8 %167 to i32
  %mul61.i = shl nuw nsw i32 %conv60.i, 4
  %add62.i = add nuw nsw i32 %mul61.i, 524
  %base.i137.i = getelementptr inbounds %struct.cal_dev, ptr %165, i32 0, i32 2
  %168 = ptrtoint ptr %base.i137.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i137.i, align 8
  %add.ptr.i138.i = getelementptr i8, ptr %169, i32 %add62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %170 = tail call i32 @llvm.bswap.i32(i32 %or.i136.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 %170) #10, !srcloc !265
  %171 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %171)
  %cmp64.i = icmp ugt i32 %171, 2
  br i1 %cmp64.i, label %do.end69.i, label %do.end50.i.cal_ctx_wr_dma_config.exit_crit_edge

do.end50.i.cal_ctx_wr_dma_config.exit_crit_edge:  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_ctx_wr_dma_config.exit

do.end69.i:                                       ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cal.i, align 8
  %dev71.i = getelementptr inbounds %struct.cal_dev, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %dev71.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev71.i, align 8
  %176 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %dma_ctx.i26, align 4
  %conv73.i = zext i8 %177 to i32
  %mul79.i = shl nuw nsw i32 %conv73.i, 4
  %add80.i = add nuw nsw i32 %mul79.i, 524
  %base.i139.i = getelementptr inbounds %struct.cal_dev, ptr %173, i32 0, i32 2
  %178 = ptrtoint ptr %base.i139.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i139.i, align 8
  %add.ptr.i140.i = getelementptr i8, ptr %179, i32 %add80.i
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #10, !srcloc !267
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %175, ptr noundef nonnull @.str.32, i32 noundef %conv73.i, i32 noundef %conv73.i, i32 noundef %181) #13
  br label %cal_ctx_wr_dma_config.exit

cal_ctx_wr_dma_config.exit:                       ; preds = %do.end69.i, %do.end50.i.cal_ctx_wr_dma_config.exit_crit_edge
  %182 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cal.i, align 8
  %184 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %dma_ctx.i26, align 4
  %conv = zext i8 %185 to i32
  %shl = shl nuw i32 1, %conv
  %base.i = getelementptr inbounds %struct.cal_dev, ptr %183, i32 0, i32 2
  %186 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %187, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %188 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %188) #10, !srcloc !265
  %189 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cal.i, align 8
  %191 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %dma_ctx.i26, align 4
  %conv3 = zext i8 %192 to i32
  %shl4 = shl nuw i32 1, %conv3
  %base.i41 = getelementptr inbounds %struct.cal_dev, ptr %190, i32 0, i32 2
  %193 = ptrtoint ptr %base.i41 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base.i41, align 8
  %add.ptr.i42 = getelementptr i8, ptr %194, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %195 = tail call i32 @llvm.bswap.i32(i32 %shl4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %195) #10, !srcloc !265
  %196 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cal.i, align 8
  %198 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %dma_ctx.i26, align 4
  %conv.i45 = zext i8 %199 to i32
  %mul.i46 = shl nuw nsw i32 %conv.i45, 4
  %add.i47 = add nuw nsw i32 %mul.i46, 512
  %base.i.i48 = getelementptr inbounds %struct.cal_dev, ptr %197, i32 0, i32 2
  %200 = ptrtoint ptr %base.i.i48 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base.i.i48, align 8
  %add.ptr.i.i49 = getelementptr i8, ptr %201, i32 %add.i47
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %203 = and i32 %202, -117440513
  %204 = or i32 %203, 67108864
  %205 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cal.i, align 8
  %207 = ptrtoint ptr %dma_ctx.i26 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %dma_ctx.i26, align 4
  %conv3.i50 = zext i8 %208 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i50, 4
  %add5.i = add nuw nsw i32 %mul4.i, 512
  %base.i9.i = getelementptr inbounds %struct.cal_dev, ptr %206, i32 0, i32 2
  %209 = ptrtoint ptr %base.i9.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i9.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %210, i32 %add5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %204) #10, !srcloc !265
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_ctx_stop(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %dma) #10
  %state = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %dma) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 530) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %dma) #10
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.i = icmp eq i32 %2, 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %dma) #10
  br i1 %cmp.i, label %entry.if.end46_crit_edge, label %if.then12

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 5
  %call16110 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %dma) #10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i97111 = icmp eq i32 %5, 3
  call void @_raw_spin_unlock_irq(ptr noundef %dma) #10
  br i1 %cmp.i97111, label %if.end39.thread, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

if.end39.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end46

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.1112 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then12.cleanup_crit_edge ]
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret13.1112) #10
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %dma) #10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i97 = icmp eq i32 %7, 3
  call void @_raw_spin_unlock_irq(ptr noundef %dma) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool22.not = icmp eq i32 %call35, 0
  %8 = select i1 %cmp.i97, i1 %tobool22.not, i1 false
  %__ret13.1 = select i1 %8, i32 1, i32 %call35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool28.not = icmp eq i32 %__ret13.1, 0
  %9 = select i1 %cmp.i97, i1 true, i1 %tobool28.not
  br i1 %9, label %if.end39, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %phi.cmp = icmp eq i32 %__ret13.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.end45, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %14 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %conv) #13
  %16 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cal, align 8
  %18 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dma_ctx, align 4
  %conv.i = zext i8 %19 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.i = add nuw nsw i32 %mul.i, 512
  %base.i.i = getelementptr inbounds %struct.cal_dev, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %add.i
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %23 = and i32 %22, -117440513
  %24 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cal, align 8
  %26 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dma_ctx, align 4
  %conv3.i = zext i8 %27 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i, 4
  %add5.i = add nuw nsw i32 %mul4.i, 512
  %base.i9.i = getelementptr inbounds %struct.cal_dev, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %base.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i9.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %29, i32 %add5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %23) #10, !srcloc !265
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.end39.if.end46_crit_edge, %if.end39.thread, %entry.if.end46_crit_edge
  %cal47 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %30 = ptrtoint ptr %cal47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cal47, align 8
  %dma_ctx48 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %32 = ptrtoint ptr %dma_ctx48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dma_ctx48, align 4
  %conv49 = zext i8 %33 to i32
  %shl = shl nuw i32 1, %conv49
  %base.i = getelementptr inbounds %struct.cal_dev, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %35, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  call void @arm_heavy_mb() #10
  %36 = call i32 @llvm.bswap.i32(i32 %shl) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %36) #10, !srcloc !265
  %37 = ptrtoint ptr %cal47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cal47, align 8
  %39 = ptrtoint ptr %dma_ctx48 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dma_ctx48, align 4
  %conv52 = zext i8 %40 to i32
  %shl53 = shl nuw i32 1, %conv52
  %base.i98 = getelementptr inbounds %struct.cal_dev, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i98, align 8
  %add.ptr.i99 = getelementptr i8, ptr %42, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  call void @arm_heavy_mb() #10
  %43 = call i32 @llvm.bswap.i32(i32 %shl53) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %43) #10, !srcloc !265
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %state, align 4
  %45 = ptrtoint ptr %cal47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cal47, align 8
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 4
  %47 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy, align 4
  %instance = getelementptr inbounds %struct.cal_camerarx, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %instance, align 4
  %mul = shl i32 %50, 7
  %add = add i32 %mul, 816
  %csi2_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 15
  %51 = ptrtoint ptr %csi2_ctx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %csi2_ctx, align 2
  %conv57 = zext i8 %52 to i32
  %mul58 = shl nuw nsw i32 %conv57, 2
  %add59 = add i32 %add, %mul58
  %base.i100 = getelementptr inbounds %struct.cal_dev, ptr %46, i32 0, i32 2
  %53 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i100, align 8
  %add.ptr.i101 = getelementptr i8, ptr %54, i32 %add59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #10, !srcloc !265
  %use_pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 19
  %55 = ptrtoint ptr %use_pix_proc to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %use_pix_proc, align 2, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool60.not = icmp eq i8 %56, 0
  br i1 %tobool60.not, label %if.end46.if.end66_crit_edge, label %if.then61

if.end46.if.end66_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then61:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %cal47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cal47, align 8
  %pix_proc = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 16
  %59 = ptrtoint ptr %pix_proc to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pix_proc, align 1
  %conv63 = zext i8 %60 to i32
  %mul64 = shl nuw nsw i32 %conv63, 2
  %add65 = add nuw nsw i32 %mul64, 192
  %base.i102 = getelementptr inbounds %struct.cal_dev, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %base.i102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i102, align 8
  %add.ptr.i103 = getelementptr i8, ptr %62, i32 %add65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #10, !srcloc !265
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end46.if.end66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_pdrv_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cal_pdrv, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cal_pdrv_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @cal_pdrv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %config.i = alloca %struct.regmap_config, align 4
  %offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 872, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %data = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev9, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 8
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config.i) #10
  %11 = call ptr @memset(ptr %config.i, i32 0, i32 172)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #10
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %offset.i, align 4, !annotation !269
  %call.i243 = call ptr @syscon_regmap_lookup_by_phandle_args(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef 1, ptr noundef nonnull %offset.i) #10
  %cmp.i.i = icmp ugt ptr %call.i243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %syscon_camerrx.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %syscon_camerrx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i243, ptr %syscon_camerrx.i, align 4
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  br label %cal_init_camerarx_regmap.exit.thread

do.end.i:                                         ; preds = %if.end21
  %add.ptr.i = getelementptr i8, ptr %8, i32 -16
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 8
  %18 = ptrtoint ptr %call.i243 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.55, i32 noundef %18) #13
  %call5.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull @.str.57) #10
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 8
  %call7.i = call ptr @devm_ioremap_resource(ptr noundef %20, ptr noundef %call5.i) #10
  %cmp.i65.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %do.end12.i, label %do.body16.i

do.end12.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.59) #13
  br label %cal_init_camerarx_regmap.exit

do.body16.i:                                      ; preds = %do.end.i
  %23 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %do.body16.i.do.end24.i_crit_edge, label %do.end20.i

do.body16.i.do.end24.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.end20.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev9, align 8
  %name.i = getelementptr inbounds %struct.resource, ptr %call5.i, i32 0, i32 2
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5.i, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %25, ptr noundef nonnull @.str.43, ptr noundef %27, ptr noundef %call5.i, ptr noundef %end.i) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end20.i, %do.body16.i.do.end24.i_crit_edge
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config.i, i32 0, i32 1
  %28 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %reg_bits.i, align 4
  %reg_stride.i = getelementptr inbounds %struct.regmap_config, ptr %config.i, i32 0, i32 2
  %29 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %reg_stride.i, align 4
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config.i, i32 0, i32 4
  %30 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %val_bits.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call5.i, i32 0, i32 1
  %31 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i.i, align 4
  %33 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call5.i, align 4
  %add.i.i = add i32 %32, -3
  %sub.i = sub i32 %add.i.i, %34
  %max_register.i = getelementptr inbounds %struct.regmap_config, ptr %config.i, i32 0, i32 19
  %35 = ptrtoint ptr %max_register.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %max_register.i, align 4
  %call27.i = call ptr @__regmap_init_mmio_clk(ptr noundef null, ptr noundef null, ptr noundef %call7.i, ptr noundef nonnull %config.i, ptr noundef nonnull @cal_init_camerarx_regmap._key, ptr noundef nonnull @.str.63) #10
  %cmp.i66.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i, label %do.end32.i, label %if.end36.i

do.end32.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  br label %cal_init_camerarx_regmap.exit

if.end36.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %syscon_camerrx37.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %syscon_camerrx37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call27.i, ptr %syscon_camerrx37.i, align 4
  br label %cal_init_camerarx_regmap.exit.thread

cal_init_camerarx_regmap.exit.thread:             ; preds = %if.end36.i, %if.then.i
  %.sink = phi i32 [ 0, %if.end36.i ], [ %15, %if.then.i ]
  %syscon_camerrx_offset38.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %syscon_camerrx_offset38.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %syscon_camerrx_offset38.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #10
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config.i) #10
  br label %if.end24

cal_init_camerarx_regmap.exit:                    ; preds = %do.end32.i, %do.end12.i
  %retval.0.i.in = phi ptr [ %call7.i, %do.end12.i ], [ %call27.i, %do.end32.i ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #10
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config.i) #10
  %cmp = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp, label %cal_init_camerarx_regmap.exit.cleanup_crit_edge, label %cal_init_camerarx_regmap.exit.if.end24_crit_edge

cal_init_camerarx_regmap.exit.if.end24_crit_edge: ; preds = %cal_init_camerarx_regmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cal_init_camerarx_regmap.exit.cleanup_crit_edge:  ; preds = %cal_init_camerarx_regmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %cal_init_camerarx_regmap.exit.if.end24_crit_edge, %cal_init_camerarx_regmap.exit.thread
  %call25 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.41) #10
  %res = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call25, ptr %res, align 4
  %call28 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call25) #10
  %base = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call28, ptr %base, align 8
  %cmp.i244 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then31, label %do.body35

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %call28 to i32
  br label %cleanup

do.body35:                                        ; preds = %if.end24
  %41 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp36.not = icmp eq i32 %41, 0
  br i1 %cmp36.not, label %do.body35.do.end47_crit_edge, label %do.end40

do.body35.do.end47_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev9, align 8
  %44 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %res, align 4
  %name = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  %end = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %43, ptr noundef nonnull @.str.43, ptr noundef %47, ptr noundef %45, ptr noundef %end) #13
  br label %do.end47

do.end47:                                         ; preds = %do.end40, %do.body35.do.end47_crit_edge
  %call48 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %48 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp50.not = icmp eq i32 %48, 0
  br i1 %cmp50.not, label %do.end47.do.end58_crit_edge, label %do.end54

do.end47.do.end58_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.end54:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %50, ptr noundef nonnull @.str.46, i32 noundef %call48) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end54, %do.end47.do.end58_crit_edge
  %call.i245 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call48, ptr noundef nonnull @cal_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool61.not = icmp eq i32 %call.i245, 0
  br i1 %tobool61.not, label %if.end63, label %do.end58.cleanup_crit_edge

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %do.end58
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %call.i246 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp.i247 = icmp slt i32 %call.i246, 0
  br i1 %cmp.i247, label %if.then.i248, label %if.end69

if.then.i248:                                     ; preds = %if.end63
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !271
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i248.error_pm_runtime_crit_edge, label %do.end11.i.i.i.i.i

if.then.i248.error_pm_runtime_crit_edge:          ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_pm_runtime

do.end11.i.i.i.i.i:                               ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !272
  br label %error_pm_runtime

if.end69:                                         ; preds = %if.end63
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 8
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #10, !srcloc !267
  %55 = call i32 @llvm.bswap.i32(i32 %54) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %revision.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %revision.i, align 8
  %shr.mask.i = and i32 %55, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cond.i = icmp eq i32 %shr.mask.i, 1073741824
  br i1 %cond.i, label %do.body14.i, label %do.end81.i

do.body14.i:                                      ; preds = %if.end69
  %57 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp.i250 = icmp ugt i32 %57, 2
  br i1 %cmp.i250, label %do.end17.i, label %do.body14.i.sw.epilog.i_crit_edge

do.body14.i.sw.epilog.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end17.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev9, align 8
  %and35.i = lshr i32 %55, 8
  %shr36.i = and i32 %and35.i, 7
  %and54.i = and i32 %55, 63
  %and73.i = lshr i32 %55, 11
  %shr74.i = and i32 %and73.i, 31
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %59, ptr noundef nonnull @.str.77, i32 noundef %shr36.i, i32 noundef %and54.i, i32 noundef %shr74.i, i32 noundef %55) #13
  br label %sw.epilog.i

do.end81.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.80, i32 noundef %55) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end81.i, %do.end17.i, %do.body14.i.sw.epilog.i_crit_edge
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 1761921443, i32 %64)
  %cmp85.not.i = icmp eq i32 %64, 1761921443
  br i1 %cmp85.not.i, label %sw.epilog.i.cal_get_hwinfo.exit_crit_edge, label %do.end89.i

sw.epilog.i.cal_get_hwinfo.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_get_hwinfo.exit

do.end89.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = call i32 @llvm.bswap.i32(i32 %64) #10
  %66 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.83, i32 noundef %65, i32 noundef -1547107223) #13
  br label %cal_get_hwinfo.exit

cal_get_hwinfo.exit:                              ; preds = %do.end89.i, %sw.epilog.i.cal_get_hwinfo.exit_crit_edge
  %call.i252 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #10
  %mdev1.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 12
  %68 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev9, align 8
  %70 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %mdev1.i, align 8
  %71 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %revision.i, align 8
  %hw_revision.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 12, i32 6
  %73 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %hw_revision.i, align 8
  %model.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 12, i32 2
  %call.i255 = call i32 @strscpy(ptr noundef %model.i, ptr noundef nonnull @.str.85, i32 noundef 32) #10
  %bus_info.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 12, i32 5
  %74 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mdev1.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cal_get_hwinfo.exit.dev_name.exit.i_crit_edge

cal_get_hwinfo.exit.dev_name.exit.i_crit_edge:    ; preds = %cal_get_hwinfo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %cal_get_hwinfo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %cal_get_hwinfo.exit.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %79, %if.end.i.i ], [ %77, %cal_get_hwinfo.exit.dev_name.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info.i, i32 noundef 32, ptr noundef nonnull @.str.86, ptr noundef %retval.0.i.i) #10
  call void @media_device_init(ptr noundef %mdev1.i) #10
  %v4l2_dev.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 13
  %mdev7.i = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 13, i32 1
  %80 = ptrtoint ptr %mdev7.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mdev1.i, ptr %mdev7.i, align 4
  %81 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev9, align 8
  %call10.i = call i32 @v4l2_device_register(ptr noundef %82, ptr noundef %v4l2_dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  %83 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev9, align 8
  br i1 %tobool.not.i, label %cal_media_init.exit.thread, label %cal_media_init.exit

cal_media_init.exit.thread:                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %84, i32 noundef -1) #10
  br label %for.cond.preheader

cal_media_init.exit:                              ; preds = %dev_name.exit.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp73 = icmp slt i32 %call10.i, 0
  br i1 %cmp73, label %cal_media_init.exit.error_pm_runtime_crit_edge, label %cal_media_init.exit.for.cond.preheader_crit_edge

cal_media_init.exit.for.cond.preheader_crit_edge: ; preds = %cal_media_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

cal_media_init.exit.error_pm_runtime_crit_edge:   ; preds = %cal_media_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_pm_runtime

for.cond.preheader:                               ; preds = %cal_media_init.exit.for.cond.preheader_crit_edge, %cal_media_init.exit.thread
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %num_csi2_phy268 = getelementptr inbounds %struct.cal_data, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %num_csi2_phy268 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_csi2_phy268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp77269.not = icmp eq i32 %88, 0
  br i1 %cmp77269.not, label %for.cond.preheader.do.end98_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end98_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

for.body:                                         ; preds = %if.end88.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0271 = phi i32 [ %inc, %if.end88.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %connected.0.off0270 = phi i1 [ %spec.select, %if.end88.for.body_crit_edge ], [ false, %for.cond.preheader.for.body_crit_edge ]
  %call78 = call ptr @cal_camerarx_create(ptr noundef nonnull %call.i, i32 noundef %i.0271) #10
  %arrayidx = getelementptr %struct.cal_dev, ptr %call.i, i32 0, i32 9, i32 %i.0271
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call78, ptr %arrayidx, align 4
  %cmp.i257 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then82, label %if.end88

if.then82:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %call78 to i32
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx, align 4
  br label %error_camerarx

if.end88:                                         ; preds = %for.body
  %source_node = getelementptr inbounds %struct.cal_camerarx, ptr %call78, i32 0, i32 7
  %92 = ptrtoint ptr %source_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %source_node, align 4
  %tobool91.not = icmp ne ptr %93, null
  %spec.select = select i1 %tobool91.not, i1 true, i1 %connected.0.off0270
  %inc = add nuw i32 %i.0271, 1
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  %num_csi2_phy = getelementptr inbounds %struct.cal_data, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %num_csi2_phy to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_csi2_phy, align 4
  %cmp77 = icmp ult i32 %inc, %97
  br i1 %cmp77, label %if.end88.for.body_crit_edge, label %for.end

if.end88.for.body_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end88
  br i1 %spec.select, label %for.cond101.preheader, label %for.end.do.end98_crit_edge

for.end.do.end98_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

for.cond101.preheader:                            ; preds = %for.end
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  %num_csi2_phy103272 = getelementptr inbounds %struct.cal_data, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %num_csi2_phy103272 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_csi2_phy103272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp104273.not = icmp eq i32 %101, 0
  br i1 %cmp104273.not, label %for.cond101.preheader.for.end129_crit_edge, label %for.body105.lr.ph

for.cond101.preheader.for.end129_crit_edge:       ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end129

for.body105.lr.ph:                                ; preds = %for.cond101.preheader
  %num_contexts = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 10
  br label %for.body105

do.end98:                                         ; preds = %for.end.do.end98_crit_edge, %for.cond.preheader.do.end98_crit_edge
  %102 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.49) #13
  br label %error_camerarx

for.body105:                                      ; preds = %for.inc127.for.body105_crit_edge, %for.body105.lr.ph
  %i.1274 = phi i32 [ 0, %for.body105.lr.ph ], [ %inc128, %for.inc127.for.body105_crit_edge ]
  %arrayidx107 = getelementptr %struct.cal_dev, ptr %call.i, i32 0, i32 9, i32 %i.1274
  %104 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx107, align 4
  %source_node108 = getelementptr inbounds %struct.cal_camerarx, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %source_node108 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %source_node108, align 4
  %tobool109.not = icmp eq ptr %107, null
  br i1 %tobool109.not, label %for.body105.for.inc127_crit_edge, label %if.end111

for.body105.for.inc127_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc127

if.end111:                                        ; preds = %for.body105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %108 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 2528) #14
  %tobool.not.i258 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i258, label %if.end111.cal_ctx_create.exit_crit_edge, label %if.end.i260

if.end111.cal_ctx_create.exit_crit_edge:          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_ctx_create.exit

if.end.i260:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %cal1.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 3
  %109 = ptrtoint ptr %cal1.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i, ptr %cal1.i, align 8
  %110 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx107, align 4
  %phy2.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %phy2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %phy2.i, align 4
  %conv.i = trunc i32 %i.1274 to i8
  %dma_ctx.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 13
  %113 = ptrtoint ptr %dma_ctx.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv.i, ptr %dma_ctx.i, align 4
  %csi2_ctx.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 15
  %114 = ptrtoint ptr %csi2_ctx.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv.i, ptr %csi2_ctx.i, align 2
  %cport.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 14
  %115 = ptrtoint ptr %cport.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i, ptr %cport.i, align 1
  %vc.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 17
  %116 = ptrtoint ptr %vc.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %vc.i, align 8
  %datatype.i = getelementptr inbounds %struct.cal_ctx, ptr %call7.i.i.i, i32 0, i32 18
  %117 = ptrtoint ptr %datatype.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %datatype.i, align 1
  %call5.i259 = call i32 @cal_ctx_v4l2_init(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i259)
  %tobool6.not.i = icmp eq i32 %call5.i259, 0
  %call..i = select i1 %tobool6.not.i, ptr %call7.i.i.i, ptr null
  br label %cal_ctx_create.exit

cal_ctx_create.exit:                              ; preds = %if.end.i260, %if.end111.cal_ctx_create.exit_crit_edge
  %retval.0.i261 = phi ptr [ null, %if.end111.cal_ctx_create.exit_crit_edge ], [ %call..i, %if.end.i260 ]
  %118 = ptrtoint ptr %num_contexts to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_contexts, align 4
  %arrayidx113 = getelementptr %struct.cal_dev, ptr %call.i, i32 0, i32 11, i32 %119
  %120 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %retval.0.i261, ptr %arrayidx113, align 4
  %121 = load i32, ptr %num_contexts, align 4
  %arrayidx116 = getelementptr %struct.cal_dev, ptr %call.i, i32 0, i32 11, i32 %121
  %122 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx116, align 4
  %tobool117.not = icmp eq ptr %123, null
  br i1 %tobool117.not, label %do.end121, label %if.end124

do.end121:                                        ; preds = %cal_ctx_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.52, i32 noundef %121) #13
  br label %error_context

if.end124:                                        ; preds = %cal_ctx_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  %inc126 = add i32 %121, 1
  %126 = ptrtoint ptr %num_contexts to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %inc126, ptr %num_contexts, align 4
  br label %for.inc127

for.inc127:                                       ; preds = %if.end124, %for.body105.for.inc127_crit_edge
  %inc128 = add nuw i32 %i.1274, 1
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data, align 4
  %num_csi2_phy103 = getelementptr inbounds %struct.cal_data, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %num_csi2_phy103 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_csi2_phy103, align 4
  %cmp104 = icmp ult i32 %inc128, %130
  br i1 %cmp104, label %for.inc127.for.body105_crit_edge, label %for.inc127.for.end129_crit_edge

for.inc127.for.end129_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end129

for.inc127.for.body105_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body105

for.end129:                                       ; preds = %for.inc127.for.end129_crit_edge, %for.cond101.preheader.for.end129_crit_edge
  %call130 = call fastcc i32 @cal_media_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %for.end129.cleanup_crit_edge, label %for.end129.error_context_crit_edge

for.end129.error_context_crit_edge:               ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_context

for.end129.cleanup_crit_edge:                     ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_context:                                    ; preds = %for.end129.error_context_crit_edge, %do.end121
  %ret.0 = phi i32 [ -19, %do.end121 ], [ %call130, %for.end129.error_context_crit_edge ]
  %num_contexts135 = getelementptr inbounds %struct.cal_dev, ptr %call.i, i32 0, i32 10
  %131 = ptrtoint ptr %num_contexts135 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_contexts135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp136277.not = icmp eq i32 %132, 0
  br i1 %cmp136277.not, label %error_context.error_camerarx_crit_edge, label %error_context.for.body137_crit_edge

error_context.for.body137_crit_edge:              ; preds = %error_context
  br label %for.body137

error_context.error_camerarx_crit_edge:           ; preds = %error_context
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_camerarx

for.body137:                                      ; preds = %for.body137.for.body137_crit_edge, %error_context.for.body137_crit_edge
  %i.2278 = phi i32 [ %inc141, %for.body137.for.body137_crit_edge ], [ 0, %error_context.for.body137_crit_edge ]
  %arrayidx139 = getelementptr %struct.cal_dev, ptr %call.i, i32 0, i32 11, i32 %i.2278
  %133 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx139, align 4
  call void @cal_ctx_v4l2_cleanup(ptr noundef %134) #10
  call void @kfree(ptr noundef %134) #10
  %inc141 = add nuw i32 %i.2278, 1
  %135 = ptrtoint ptr %num_contexts135 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_contexts135, align 4
  %cmp136 = icmp ult i32 %inc141, %136
  br i1 %cmp136, label %for.body137.for.body137_crit_edge, label %for.body137.error_camerarx_crit_edge

for.body137.error_camerarx_crit_edge:             ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_camerarx

for.body137.for.body137_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body137

error_camerarx:                                   ; preds = %for.body137.error_camerarx_crit_edge, %error_context.error_camerarx_crit_edge, %do.end98, %if.then82
  %ret.1 = phi i32 [ %90, %if.then82 ], [ -19, %do.end98 ], [ %ret.0, %error_context.error_camerarx_crit_edge ], [ %ret.0, %for.body137.error_camerarx_crit_edge ]
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %num_csi2_phy145279 = getelementptr inbounds %struct.cal_data, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %num_csi2_phy145279 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_csi2_phy145279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp146280.not = icmp eq i32 %140, 0
  br i1 %cmp146280.not, label %error_camerarx.for.end152_crit_edge, label %error_camerarx.for.body147_crit_edge

error_camerarx.for.body147_crit_edge:             ; preds = %error_camerarx
  br label %for.body147

error_camerarx.for.end152_crit_edge:              ; preds = %error_camerarx
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end152

for.body147:                                      ; preds = %for.body147.for.body147_crit_edge, %error_camerarx.for.body147_crit_edge
  %i.3281 = phi i32 [ %inc151, %for.body147.for.body147_crit_edge ], [ 0, %error_camerarx.for.body147_crit_edge ]
  %arrayidx149 = getelementptr %struct.cal_dev, ptr %call.i, i32 0, i32 9, i32 %i.3281
  %141 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx149, align 4
  call void @cal_camerarx_destroy(ptr noundef %142) #10
  %inc151 = add nuw i32 %i.3281, 1
  %143 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data, align 4
  %num_csi2_phy145 = getelementptr inbounds %struct.cal_data, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %num_csi2_phy145 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_csi2_phy145, align 4
  %cmp146 = icmp ult i32 %inc151, %146
  br i1 %cmp146, label %for.body147.for.body147_crit_edge, label %for.body147.for.end152_crit_edge

for.body147.for.end152_crit_edge:                 ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end152

for.body147.for.body147_crit_edge:                ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body147

for.end152:                                       ; preds = %for.body147.for.end152_crit_edge, %error_camerarx.for.end152_crit_edge
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #10
  call void @media_device_cleanup(ptr noundef %mdev1.i) #10
  br label %error_pm_runtime

error_pm_runtime:                                 ; preds = %for.end152, %cal_media_init.exit.error_pm_runtime_crit_edge, %do.end11.i.i.i.i.i, %if.then.i248.error_pm_runtime_crit_edge
  %ret.2 = phi i32 [ %call10.i, %cal_media_init.exit.error_pm_runtime_crit_edge ], [ %ret.1, %for.end152 ], [ %call.i246, %if.then.i248.error_pm_runtime_crit_edge ], [ %call.i246, %do.end11.i.i.i.i.i ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %error_pm_runtime, %for.end129.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %if.then31, %cal_init_camerarx_regmap.exit.cleanup_crit_edge, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end17 ], [ %40, %if.then31 ], [ %ret.2, %error_pm_runtime ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %cal_init_camerarx_regmap.exit.cleanup_crit_edge ], [ %call.i245, %do.end58.cleanup_crit_edge ], [ 0, %for.end129.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %4, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.34) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev4, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.end3.pm_runtime_resume_and_get.exit_crit_edge

do.end3.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %do.end3
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !271
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !272
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %do.end3.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end3.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %num_contexts.i = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %num_contexts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_contexts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 0
  br i1 %cmp6.not.i, label %pm_runtime_resume_and_get.exit.cal_media_unregister.exit_crit_edge, label %pm_runtime_resume_and_get.exit.for.body.i_crit_edge

pm_runtime_resume_and_get.exit.for.body.i_crit_edge: ; preds = %pm_runtime_resume_and_get.exit
  br label %for.body.i

pm_runtime_resume_and_get.exit.cal_media_unregister.exit_crit_edge: ; preds = %pm_runtime_resume_and_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_media_unregister.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %pm_runtime_resume_and_get.exit.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %pm_runtime_resume_and_get.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cal_dev, ptr %1, i32 0, i32 11, i32 %i.07.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @cal_ctx_v4l2_unregister(ptr noundef %9) #10
  %inc.i = add nuw i32 %i.07.i, 1
  %10 = ptrtoint ptr %num_contexts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_contexts.i, align 4
  %cmp.i49 = icmp ult i32 %inc.i, %11
  br i1 %cmp.i49, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cal_media_unregister.exit_crit_edge

for.body.i.cal_media_unregister.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_media_unregister.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cal_media_unregister.exit:                        ; preds = %for.body.i.cal_media_unregister.exit_crit_edge, %pm_runtime_resume_and_get.exit.cal_media_unregister.exit_crit_edge
  %notifier.i.i = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 14
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i.i) #10
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i.i) #10
  %mdev.i = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 12
  tail call void @media_device_unregister(ptr noundef %mdev.i) #10
  %data = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %num_csi2_phy52 = getelementptr inbounds %struct.cal_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_csi2_phy52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_csi2_phy52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp653.not = icmp eq i32 %15, 0
  br i1 %cmp653.not, label %cal_media_unregister.exit.for.cond7.preheader_crit_edge, label %cal_media_unregister.exit.for.body_crit_edge

cal_media_unregister.exit.for.body_crit_edge:     ; preds = %cal_media_unregister.exit
  br label %for.body

cal_media_unregister.exit.for.cond7.preheader_crit_edge: ; preds = %cal_media_unregister.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body.for.cond7.preheader_crit_edge, %cal_media_unregister.exit.for.cond7.preheader_crit_edge
  %16 = ptrtoint ptr %num_contexts.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_contexts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp855.not = icmp eq i32 %17, 0
  br i1 %cmp855.not, label %for.cond7.preheader.for.cond14.preheader_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.for.cond14.preheader_crit_edge: ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cal_media_unregister.exit.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %cal_media_unregister.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cal_dev, ptr %1, i32 0, i32 9, i32 %i.054
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @cal_camerarx_disable(ptr noundef %19) #10
  %inc = add nuw i32 %i.054, 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %num_csi2_phy = getelementptr inbounds %struct.cal_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %num_csi2_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_csi2_phy, align 4
  %cmp6 = icmp ult i32 %inc, %23
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.cond7.preheader_crit_edge

for.body.for.cond7.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond14.preheader:                             ; preds = %for.body9.for.cond14.preheader_crit_edge, %for.cond7.preheader.for.cond14.preheader_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %num_csi2_phy1657 = getelementptr inbounds %struct.cal_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %num_csi2_phy1657 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_csi2_phy1657, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1758.not = icmp eq i32 %27, 0
  br i1 %cmp1758.not, label %for.cond14.preheader.for.end23_crit_edge, label %for.cond14.preheader.for.body18_crit_edge

for.cond14.preheader.for.body18_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body18

for.cond14.preheader.for.end23_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.156 = phi i32 [ %inc12, %for.body9.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %arrayidx10 = getelementptr %struct.cal_dev, ptr %1, i32 0, i32 11, i32 %i.156
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx10, align 4
  tail call void @cal_ctx_v4l2_cleanup(ptr noundef %29) #10
  tail call void @kfree(ptr noundef %29) #10
  %inc12 = add nuw i32 %i.156, 1
  %30 = ptrtoint ptr %num_contexts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_contexts.i, align 4
  %cmp8 = icmp ult i32 %inc12, %31
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.cond14.preheader_crit_edge

for.body9.for.cond14.preheader_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond14.preheader.for.body18_crit_edge
  %i.259 = phi i32 [ %inc22, %for.body18.for.body18_crit_edge ], [ 0, %for.cond14.preheader.for.body18_crit_edge ]
  %arrayidx20 = getelementptr %struct.cal_dev, ptr %1, i32 0, i32 9, i32 %i.259
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx20, align 4
  tail call void @cal_camerarx_destroy(ptr noundef %33) #10
  %inc22 = add nuw i32 %i.259, 1
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %num_csi2_phy16 = getelementptr inbounds %struct.cal_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %num_csi2_phy16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_csi2_phy16, align 4
  %cmp17 = icmp ult i32 %inc22, %37
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end23_crit_edge

for.body18.for.end23_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

for.end23:                                        ; preds = %for.body18.for.end23_crit_edge, %for.cond14.preheader.for.end23_crit_edge
  %v4l2_dev.i = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 13
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #10
  tail call void @media_device_cleanup(ptr noundef %mdev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp24 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp24, label %if.then25, label %for.end23.if.end28_crit_edge

for.end23.if.end28_crit_edge:                     ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call.i51 = tail call i32 @__pm_runtime_idle(ptr noundef %dev4, i32 noundef 4) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %for.end23.if.end28_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev4, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_irq(i32 noundef %irq_cal, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.cal_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !267
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end54_crit_edge, label %if.then

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i135 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %2) #10, !srcloc !265
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end9_crit_edge, label %do.body

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %if.then
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @cal_irq._rs, ptr noundef nonnull @__func__.cal_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.if.end9_crit_edge, label %do.end

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cal_dev, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.68) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %data10 = getelementptr inbounds %struct.cal_dev, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data10, align 4
  %num_csi2_phy159 = getelementptr inbounds %struct.cal_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_csi2_phy159 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_csi2_phy159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp160.not = icmp eq i32 %11, 0
  br i1 %cmp160.not, label %if.end9.if.end54_crit_edge, label %for.body.lr.ph

if.end9.if.end54_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

for.body.lr.ph:                                   ; preds = %if.end9
  %dev24 = getelementptr inbounds %struct.cal_dev, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0161, 3
  %add = add i32 %mul, 16
  %shl = shl nuw i32 1, %add
  %and11 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.body.if.end30_crit_edge, label %if.then13

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then13:                                        ; preds = %for.body
  %mul14 = shl i32 %i.0161, 7
  %add15 = add i32 %mul14, 776
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i137 = getelementptr i8, ptr %13, i32 %add15
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @cal_irq._rs.69, ptr noundef nonnull @__func__.cal_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then13.do.end27_crit_edge, label %do.end23

if.then13.do.end27_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end23:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %16 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.71, i32 noundef %i.0161, i32 noundef %15) #13
  br label %do.end27

do.end27:                                         ; preds = %do.end23, %if.then13.do.end27_crit_edge
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %add.ptr.i139 = getelementptr i8, ptr %19, i32 %add15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %14) #10, !srcloc !265
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %for.body.if.end30_crit_edge
  %add32 = add i32 %mul, 17
  %shl33 = shl nuw i32 1, %add32
  %and34 = and i32 %shl33, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end30.for.inc_crit_edge, label %if.then36

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then36:                                        ; preds = %if.end30
  %mul37 = shl i32 %i.0161, 7
  %add38 = add i32 %mul37, 808
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr.i141 = getelementptr i8, ptr %21, i32 %add38
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @cal_irq._rs.73, ptr noundef nonnull @__func__.cal_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then36.do.end50_crit_edge, label %do.end46

if.then36.do.end50_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end46:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.75, i32 noundef %i.0161, i32 noundef %23) #13
  br label %do.end50

do.end50:                                         ; preds = %do.end46, %if.then36.do.end50_crit_edge
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr.i143 = getelementptr i8, ptr %27, i32 %add38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %22) #10, !srcloc !265
  br label %for.inc

for.inc:                                          ; preds = %do.end50, %if.end30.for.inc_crit_edge
  %inc = add nuw i32 %i.0161, 1
  %28 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data10, align 4
  %num_csi2_phy = getelementptr inbounds %struct.cal_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %num_csi2_phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_csi2_phy, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end54_crit_edge

for.inc.if.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end54:                                         ; preds = %for.inc.if.end54_crit_edge, %if.end9.if.end54_crit_edge, %entry.if.end54_crit_edge
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %add.ptr.i145 = getelementptr i8, ptr %33, i32 52
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #10, !srcloc !267
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool56.not = icmp eq i32 %34, 0
  br i1 %tobool56.not, label %if.end54.if.end70_crit_edge, label %if.then57

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then57:                                        ; preds = %if.end54
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %add.ptr.i147 = getelementptr i8, ptr %37, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %34) #10, !srcloc !265
  %num_contexts = getelementptr inbounds %struct.cal_dev, ptr %data, i32 0, i32 10
  %38 = ptrtoint ptr %num_contexts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_contexts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp60165.not = icmp eq i32 %39, 0
  br i1 %cmp60165.not, label %if.then57.if.end70_crit_edge, label %if.then57.for.body61_crit_edge

if.then57.for.body61_crit_edge:                   ; preds = %if.then57
  br label %for.body61

if.then57.if.end70_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

for.body61:                                       ; preds = %for.inc67.for.body61_crit_edge, %if.then57.for.body61_crit_edge
  %i58.0166 = phi i32 [ %inc68, %for.inc67.for.body61_crit_edge ], [ 0, %if.then57.for.body61_crit_edge ]
  %shl62 = shl nuw i32 1, %i58.0166
  %and63 = and i32 %shl62, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.body61.for.inc67_crit_edge, label %if.then65

for.body61.for.inc67_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc67

if.then65:                                        ; preds = %for.body61
  %arrayidx = getelementptr %struct.cal_dev, ptr %data, i32 0, i32 11, i32 %i58.0166
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %dma.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %dma.i) #10
  %state.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.i = icmp eq i32 %43, 2
  br i1 %cmp.i, label %if.then.i, label %if.then65.if.end.i_crit_edge

if.then65.if.end.i_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %state.i, align 4
  %wait.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then65.if.end.i_crit_edge
  %pending.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pending.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end14.thread.i, label %if.end14.i

if.end14.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %dma.i) #10
  br label %for.inc67

if.end14.i:                                       ; preds = %if.end.i
  %active.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active.i, align 4
  store ptr %46, ptr %active.i, align 4
  %49 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %pending.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dma.i) #10
  %tobool17.not.i = icmp eq ptr %48, null
  br i1 %tobool17.not.i, label %if.end14.i.for.inc67_crit_edge, label %if.then18.i

if.end14.i.for.inc67_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc67

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get() #10
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %48, i32 0, i32 5
  %50 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %field.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 8, i32 1, i32 0, i32 3
  %51 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %field.i, align 4
  %field20.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %field20.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %field20.i, align 4
  %sequence.i = getelementptr inbounds %struct.cal_ctx, ptr %41, i32 0, i32 11
  %54 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sequence.i, align 8
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %sequence.i, align 8
  %sequence22.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %48, i32 0, i32 4
  %56 = ptrtoint ptr %sequence22.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %sequence22.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %48, i32 noundef 5) #10
  br label %for.inc67

for.inc67:                                        ; preds = %if.then18.i, %if.end14.i.for.inc67_crit_edge, %if.end14.thread.i, %for.body61.for.inc67_crit_edge
  %inc68 = add nuw i32 %i58.0166, 1
  %57 = ptrtoint ptr %num_contexts to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_contexts, align 4
  %cmp60 = icmp ult i32 %inc68, %58
  br i1 %cmp60, label %for.inc67.for.body61_crit_edge, label %for.inc67.if.end70_crit_edge

for.inc67.if.end70_crit_edge:                     ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

for.inc67.for.body61_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body61

if.end70:                                         ; preds = %for.inc67.if.end70_crit_edge, %if.then57.if.end70_crit_edge, %if.end54.if.end70_crit_edge
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr.i149 = getelementptr i8, ptr %60, i32 68
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #10, !srcloc !267
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool72.not = icmp eq i32 %61, 0
  br i1 %tobool72.not, label %if.end70.if.end89_crit_edge, label %if.then73

if.end70.if.end89_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then73:                                        ; preds = %if.end70
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 8
  %add.ptr.i151 = getelementptr i8, ptr %64, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %61) #10, !srcloc !265
  %num_contexts76 = getelementptr inbounds %struct.cal_dev, ptr %data, i32 0, i32 10
  %65 = ptrtoint ptr %num_contexts76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_contexts76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp77168.not = icmp eq i32 %66, 0
  br i1 %cmp77168.not, label %if.then73.if.end89_crit_edge, label %if.then73.for.body78_crit_edge

if.then73.for.body78_crit_edge:                   ; preds = %if.then73
  br label %for.body78

if.then73.if.end89_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

for.body78:                                       ; preds = %for.inc86.for.body78_crit_edge, %if.then73.for.body78_crit_edge
  %i74.0169 = phi i32 [ %inc87, %for.inc86.for.body78_crit_edge ], [ 0, %if.then73.for.body78_crit_edge ]
  %shl79 = shl nuw i32 1, %i74.0169
  %and80 = and i32 %shl79, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %for.body78.for.inc86_crit_edge, label %if.then82

for.body78.for.inc86_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc86

if.then82:                                        ; preds = %for.body78
  %arrayidx84 = getelementptr %struct.cal_dev, ptr %data, i32 0, i32 11, i32 %i74.0169
  %67 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx84, align 4
  %dma.i152 = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %dma.i152) #10
  %state.i153 = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 6, i32 4
  %69 = ptrtoint ptr %state.i153 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i154 = icmp eq i32 %70, 1
  br i1 %cmp.i154, label %if.then.i155, label %if.else.i

if.then.i155:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  %cal.i.i = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %cal.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cal.i.i, align 8
  %dma_ctx.i.i = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 13
  %73 = ptrtoint ptr %dma_ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dma_ctx.i.i, align 4
  %conv.i.i = zext i8 %74 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 512
  %base.i.i.i = getelementptr inbounds %struct.cal_dev, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %76, i32 %add.i.i
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %78 = and i32 %77, -117440513
  %79 = ptrtoint ptr %cal.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cal.i.i, align 8
  %81 = ptrtoint ptr %dma_ctx.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dma_ctx.i.i, align 4
  %conv3.i.i = zext i8 %82 to i32
  %mul4.i.i = shl nuw nsw i32 %conv3.i.i, 4
  %add5.i.i = add nuw nsw i32 %mul4.i.i, 512
  %base.i9.i.i = getelementptr inbounds %struct.cal_dev, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %base.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i9.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %84, i32 %add5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %78) #10, !srcloc !265
  %85 = ptrtoint ptr %state.i153 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %state.i153, align 4
  br label %cal_irq_wdma_start.exit

if.else.i:                                        ; preds = %if.then82
  %queue.i = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 6, i32 1
  %86 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %87, %queue.i
  br i1 %cmp.i.not.i, label %if.else.i.cal_irq_wdma_start.exit_crit_edge, label %land.lhs.true.i

if.else.i.cal_irq_wdma_start.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_irq_wdma_start.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %pending.i156 = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 6, i32 2
  %88 = ptrtoint ptr %pending.i156 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pending.i156, align 4
  %tobool6.not.i = icmp eq ptr %89, null
  br i1 %tobool6.not.i, label %if.then7.i, label %land.lhs.true.i.cal_irq_wdma_start.exit_crit_edge

land.lhs.true.i.cal_irq_wdma_start.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cal_irq_wdma_start.exit

if.then7.i:                                       ; preds = %land.lhs.true.i
  %add.ptr.i157 = getelementptr i8, ptr %87, i32 -736
  %call.i.i158 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr.i157, i32 noundef 0) #10
  %90 = ptrtoint ptr %call.i.i158 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call.i.i158, align 4
  %cal.i28.i = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 3
  %92 = ptrtoint ptr %cal.i28.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cal.i28.i, align 8
  %dma_ctx.i29.i = getelementptr inbounds %struct.cal_ctx, ptr %68, i32 0, i32 13
  %94 = ptrtoint ptr %dma_ctx.i29.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dma_ctx.i29.i, align 4
  %conv.i30.i = zext i8 %95 to i32
  %mul.i31.i = shl nuw nsw i32 %conv.i30.i, 4
  %add.i32.i = add nuw nsw i32 %mul.i31.i, 516
  %base.i.i33.i = getelementptr inbounds %struct.cal_dev, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %base.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i.i33.i, align 8
  %add.ptr.i.i34.i = getelementptr i8, ptr %97, i32 %add.i32.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %98 = tail call i32 @llvm.bswap.i32(i32 %91) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34.i, i32 %98) #10, !srcloc !265
  %99 = ptrtoint ptr %pending.i156 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.i157, ptr %pending.i156, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %87) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i, align 4
  %102 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %87, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %106 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %87, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cal_irq_wdma_start.exit

cal_irq_wdma_start.exit:                          ; preds = %list_del.exit.i, %land.lhs.true.i.cal_irq_wdma_start.exit_crit_edge, %if.else.i.cal_irq_wdma_start.exit_crit_edge, %if.then.i155
  tail call void @_raw_spin_unlock(ptr noundef %dma.i152) #10
  br label %for.inc86

for.inc86:                                        ; preds = %cal_irq_wdma_start.exit, %for.body78.for.inc86_crit_edge
  %inc87 = add nuw i32 %i74.0169, 1
  %108 = ptrtoint ptr %num_contexts76 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_contexts76, align 4
  %cmp77 = icmp ult i32 %inc87, %109
  br i1 %cmp77, label %for.inc86.for.body78_crit_edge, label %for.inc86.if.end89_crit_edge

for.inc86.if.end89_crit_edge:                     ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

for.inc86.for.body78_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body78

if.end89:                                         ; preds = %for.inc86.if.end89_crit_edge, %if.then73.if.end89_crit_edge, %if.end70.if.end89_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cal_camerarx_create(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cal_media_register(ptr noundef %cal) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 12
  %call = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %notifier.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 14
  tail call void @v4l2_async_nf_init(ptr noundef %notifier.i) #10
  %2 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cal_async_notifier_ops, ptr %notifier.i, align 8
  %data.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 5
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %num_csi2_phy48.i = getelementptr inbounds %struct.cal_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_csi2_phy48.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_csi2_phy48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp49.not.i = icmp eq i32 %6, 0
  br i1 %cmp49.not.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.050.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cal_dev, ptr %cal, i32 0, i32 9, i32 %i.050.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %source_node.i = getelementptr inbounds %struct.cal_camerarx, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %source_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %source_node.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %cond.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.end.i:                                       ; preds = %for.body.i
  %fwnode5.i = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 3
  %call.i = tail call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier.i, ptr noundef %fwnode5.i, i32 noundef 32) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cal_async_notifier_register.exit, label %if.end11.i

if.end11.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %phy12.i = getelementptr inbounds %struct.cal_v4l2_async_subdev, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %phy12.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %phy12.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.050.i, 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %num_csi2_phy.i = getelementptr inbounds %struct.cal_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_csi2_phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_csi2_phy.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %v4l2_dev.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 13
  %call16.i = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev.i, ptr noundef %notifier.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.end.i.cleanup_crit_edge, label %cal_async_notifier_register.exit.thread14

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cal_async_notifier_register.exit.thread14:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev22.i = getelementptr inbounds %struct.cal_dev, ptr %cal, i32 0, i32 4
  %16 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.94) #13
  br label %if.then3

cal_async_notifier_register.exit:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cal9.i = getelementptr inbounds %struct.cal_camerarx, ptr %8, i32 0, i32 3
  %18 = ptrtoint ptr %cal9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cal9.i, align 4
  %dev.i = getelementptr inbounds %struct.cal_dev, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %instance.i = getelementptr inbounds %struct.cal_camerarx, ptr %8, i32 0, i32 4
  %22 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %instance.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.91, i32 noundef %23) #13
  %24 = ptrtoint ptr %call.i to i32
  br label %if.then3

if.then3:                                         ; preds = %cal_async_notifier_register.exit, %cal_async_notifier_register.exit.thread14
  %ret.2.i17 = phi i32 [ %call16.i, %cal_async_notifier_register.exit.thread14 ], [ %24, %cal_async_notifier_register.exit ]
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #10
  tail call void @media_device_unregister(ptr noundef %mdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %for.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2.i17, %if.then3 ], [ 0, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_camerarx_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle_args(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cal_ctx_v4l2_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_async_notifier_bound(ptr nocapture noundef readnone %notifier, ptr noundef %subdev, ptr nocapture noundef readonly %asd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.cal_v4l2_async_subdev, ptr %asd, i32 0, i32 1
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cal = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cal, align 4
  %dev = getelementptr inbounds %struct.cal_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %instance = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %instance, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.96, i32 noundef %9, ptr noundef %name) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %subdev, ptr %source, align 4
  %11 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end.do.end15_crit_edge, label %do.end7

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cal8 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %cal8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cal8, align 4
  %dev9 = getelementptr inbounds %struct.cal_dev, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 8
  %instance10 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %instance10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %instance10, align 4
  %name11 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %15, ptr noundef nonnull @.str.99, i32 noundef %17, ptr noundef %name11) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end7, %if.end.do.end15_crit_edge
  %source_ep_node = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %source_ep_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %source_ep_node, align 4
  %tobool16.not = icmp eq ptr %19, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 3
  %spec.select = select i1 %tobool16.not, ptr null, ptr %fwnode
  %call17 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %subdev, ptr noundef %spec.select, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end28

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %cal23 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %cal23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cal23, align 4
  %dev24 = getelementptr inbounds %struct.cal_dev, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev24, align 8
  %instance25 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %instance25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %instance25, align 4
  %name26 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.102, i32 noundef %25, ptr noundef %name26) #13
  br label %cleanup

if.end28:                                         ; preds = %do.end15
  %conv = trunc i32 %call17 to i16
  %subdev30 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 10
  %call32 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext %conv, ptr noundef %subdev30, i16 noundef zeroext 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %do.end37

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %cal38 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %cal38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cal38, align 4
  %dev39 = getelementptr inbounds %struct.cal_dev, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev39, align 8
  %instance40 = getelementptr inbounds %struct.cal_camerarx, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %instance40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %instance40, align 4
  %name41 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.105, i32 noundef %31, ptr noundef %name41) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end28.cleanup_crit_edge, %do.end22, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call17, %do.end22 ], [ %call32, %do.end37 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_async_notifier_complete(ptr noundef %notifier) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_contexts = getelementptr i8, ptr %notifier, i32 -772
  %0 = ptrtoint ptr %num_contexts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_contexts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not = icmp eq i32 %1, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ctx = getelementptr i8, ptr %notifier, i32 -768
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %ctx, i32 0, i32 %i.038
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @cal_ctx_v4l2_register(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.err_ctx_unreg_crit_edge

for.body.err_ctx_unreg_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ctx_unreg

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.038, 1
  %4 = ptrtoint ptr %num_contexts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_contexts, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %6 = load i8, ptr @cal_mc_api, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %for.end.cleanup_crit_edge, label %if.end3

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %for.end
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -128
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end3.err_ctx_unreg_crit_edge

if.end3.err_ctx_unreg_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ctx_unreg

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_ctx_unreg:                                    ; preds = %if.end3.err_ctx_unreg_crit_edge, %for.body.err_ctx_unreg_crit_edge
  %i.036 = phi i32 [ %i.0.lcssa, %if.end3.err_ctx_unreg_crit_edge ], [ %i.038, %for.body.err_ctx_unreg_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.end3.err_ctx_unreg_crit_edge ], [ %call, %for.body.err_ctx_unreg_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036)
  %cmp9.not39 = icmp eq i32 %i.036, 0
  br i1 %cmp9.not39, label %err_ctx_unreg.cleanup_crit_edge, label %for.body10.lr.ph

err_ctx_unreg.cleanup_crit_edge:                  ; preds = %err_ctx_unreg
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body10.lr.ph:                                 ; preds = %err_ctx_unreg
  %ctx11 = getelementptr i8, ptr %notifier, i32 -768
  br label %for.body10

for.body10:                                       ; preds = %for.inc19.for.body10_crit_edge, %for.body10.lr.ph
  %i.140 = phi i32 [ %i.036, %for.body10.lr.ph ], [ %sub, %for.inc19.for.body10_crit_edge ]
  %sub = add i32 %i.140, -1
  %arrayidx12 = getelementptr [8 x ptr], ptr %ctx11, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %for.body10.for.inc19_crit_edge, label %if.end15

for.body10.for.inc19_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19

if.end15:                                         ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cal_ctx_v4l2_unregister(ptr noundef nonnull %8) #10
  br label %for.inc19

for.inc19:                                        ; preds = %if.end15, %for.body10.for.inc19_crit_edge
  %cmp9.not = icmp eq i32 %sub, 0
  br i1 %cmp9.not, label %for.inc19.cleanup_crit_edge, label %for.inc19.for.body10_crit_edge

for.inc19.for.body10_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.inc19.cleanup_crit_edge:                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc19.cleanup_crit_edge, %err_ctx_unreg.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %ret.0, %err_ctx_unreg.cleanup_crit_edge ], [ %ret.0, %for.inc19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cal_ctx_v4l2_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_ctx_v4l2_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_ctx_v4l2_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_camerarx_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_runtime_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.cal_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %num_csi2_phy38 = getelementptr inbounds %struct.cal_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_csi2_phy38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_csi2_phy38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp39.not = icmp eq i32 %9, 0
  br i1 %cmp39.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cal_dev, ptr %1, i32 0, i32 9, i32 %i.040
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @cal_camerarx_i913_errata(ptr noundef %11) #10
  %inc = add nuw i32 %i.040, 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %num_csi2_phy = getelementptr inbounds %struct.cal_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_csi2_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_csi2_phy, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #10, !srcloc !265
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %19, i32 256
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #10, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %21 = and i32 %20, -2145394688
  %22 = or i32 %21, 2128617471
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %22) #10, !srcloc !265
  %25 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp3 = icmp ugt i32 %25, 2
  br i1 %cmp3, label %do.end, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.cal_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev6, align 8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %29, i32 256
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #10, !srcloc !267
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %27, ptr noundef nonnull @.str.109, i32 noundef %31) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %if.end.do.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_camerarx_i913_errata(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !254}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__UNIQUE_ID_description304, !1, !"__UNIQUE_ID_description304", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_author305, !3, !"__UNIQUE_ID_author305", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file306, !5, !"__UNIQUE_ID_file306", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license307, !5, !"__UNIQUE_ID_license307", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version308, !8, !"__UNIQUE_ID_version308", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 36, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @cal_video_nr, !14, !"cal_video_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 38, i32 5}
!15 = !{ptr @__param_video_nr, !16, !"__param_video_nr", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 39, i32 1}
!17 = !{ptr @__UNIQUE_ID_video_nrtype309, !16, !"__UNIQUE_ID_video_nrtype309", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_video_nr310, !19, !"__UNIQUE_ID_video_nr310", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 40, i32 1}
!20 = !{ptr @__param_debug, !21, !"__param_debug", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 43, i32 1}
!22 = !{ptr @__UNIQUE_ID_debugtype311, !21, !"__UNIQUE_ID_debugtype311", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_debug312, !24, !"__UNIQUE_ID_debug312", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 44, i32 1}
!25 = !{ptr @cal_mc_api, !26, !"cal_mc_api", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 52, i32 6}
!27 = !{ptr @__param_mc_api, !28, !"__param_mc_api", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 53, i32 1}
!29 = !{ptr @__UNIQUE_ID_mc_apitype313, !28, !"__UNIQUE_ID_mc_apitype313", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_mc_api314, !31, !"__UNIQUE_ID_mc_api314", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 54, i32 1}
!32 = !{ptr @cal_formats, !33, !"cal_formats", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 61, i32 30}
!34 = !{ptr @cal_num_formats, !35, !"cal_num_formats", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 157, i32 20}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 271, i32 2}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cal_quickdump_regs._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @cal_quickdump_regs._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 272, i32 28}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 279, i32 3}
!48 = !{ptr @cal_quickdump_regs._entry.9, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cal_quickdump_regs._entry_ptr.11, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 481, i32 4}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cal_ctx_prepare._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @cal_ctx_prepare._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 532, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cal_ctx_stop._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @cal_ctx_stop._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @__initcall__kmod_ti_cal__335_1263_cal_pdrv_init6, !62, !"__initcall__kmod_ti_cal__335_1263_cal_pdrv_init6", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1263, i32 1}
!63 = !{ptr @__exitcall_cal_pdrv_exit, !62, !"__exitcall_cal_pdrv_exit", i1 false, i1 false}
!64 = !{ptr @cal_debug, !65, !"cal_debug", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 42, i32 14}
!66 = !{ptr @__param_str_video_nr, !16, !"__param_str_video_nr", i1 false, i1 false}
!67 = !{ptr @__param_str_debug, !21, !"__param_str_debug", i1 false, i1 false}
!68 = !{ptr @__param_str_mc_api, !28, !"__param_str_mc_api", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 345, i32 2}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cal_ctx_csi2_config._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @cal_ctx_csi2_config._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"__print_once", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 381, i32 3}
!77 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cal_ctx_pix_proc_config._entry, !76, !"_entry", i1 false, i1 false}
!81 = !{ptr @cal_ctx_pix_proc_config._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 397, i32 2}
!84 = !{ptr @cal_ctx_pix_proc_config._entry.23, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cal_ctx_pix_proc_config._entry_ptr.25, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 416, i32 2}
!88 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cal_ctx_wr_dma_config._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @cal_ctx_wr_dma_config._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 421, i32 2}
!93 = !{ptr @cal_ctx_wr_dma_config._entry.28, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cal_ctx_wr_dma_config._entry_ptr.30, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 434, i32 2}
!97 = !{ptr @cal_ctx_wr_dma_config._entry.31, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cal_ctx_wr_dma_config._entry_ptr.33, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1257, i32 11}
!101 = !{ptr @cal_pdrv, !102, !"cal_pdrv", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1253, i32 31}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1079, i32 3}
!105 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cal_probe._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @cal_probe._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1087, i32 39}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1089, i32 3}
!112 = !{ptr @cal_probe._entry.38, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cal_probe._entry_ptr.40, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1098, i32 7}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1103, i32 2}
!118 = !{ptr @cal_probe._entry.42, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cal_probe._entry_ptr.44, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1107, i32 2}
!122 = !{ptr @cal_probe._entry.45, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @cal_probe._entry_ptr.47, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1141, i32 3}
!126 = !{ptr @cal_probe._entry.48, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cal_probe._entry_ptr.50, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1153, i32 4}
!130 = !{ptr @cal_probe._entry.51, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cal_probe._entry_ptr.53, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1018, i32 52}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1026, i32 2}
!136 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cal_init_camerarx_regmap._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cal_init_camerarx_regmap._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1034, i32 9}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1037, i32 3}
!143 = !{ptr @cal_init_camerarx_regmap._entry.58, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cal_init_camerarx_regmap._entry_ptr.60, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @cal_init_camerarx_regmap._entry.61, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1041, i32 2}
!147 = !{ptr @cal_init_camerarx_regmap._entry_ptr.62, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @cal_init_camerarx_regmap._key, !149, !"_key", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1049, i32 11}
!150 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1051, i32 3}
!153 = !{ptr @cal_init_camerarx_regmap._entry.64, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cal_init_camerarx_regmap._entry_ptr.66, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 630, i32 4}
!157 = !{ptr @cal_irq._rs, !156, !"_rs", i1 false, i1 false}
!158 = !{ptr @__func__.cal_irq, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cal_irq._entry, !156, !"_entry", i1 false, i1 false}
!161 = !{ptr @cal_irq._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @cal_irq._rs.69, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 637, i32 5}
!164 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cal_irq._entry.70, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @cal_irq._entry_ptr.72, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @cal_irq._rs.73, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 647, i32 5}
!169 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cal_irq._entry.74, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @cal_irq._entry_ptr.76, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 988, i32 3}
!174 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @cal_get_hwinfo._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @cal_get_hwinfo._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 997, i32 3}
!179 = !{ptr @cal_get_hwinfo._entry.79, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @cal_get_hwinfo._entry_ptr.81, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1004, i32 3}
!183 = !{ptr @cal_get_hwinfo._entry.82, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @cal_get_hwinfo._entry_ptr.84, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 886, i32 23}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 887, i32 51}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 898, i32 3}
!191 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @cal_media_init._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @cal_media_init._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 842, i32 3}
!196 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @cal_media_register._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @cal_media_register._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 800, i32 4}
!201 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @cal_async_notifier_register._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @cal_async_notifier_register._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 810, i32 3}
!206 = !{ptr @cal_async_notifier_register._entry.93, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @cal_async_notifier_register._entry_ptr.95, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @cal_async_notifier_ops, !209, !"cal_async_notifier_ops", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 774, i32 52}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 712, i32 3}
!212 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @cal_async_notifier_bound._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @cal_async_notifier_bound._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 718, i32 2}
!217 = !{ptr @cal_async_notifier_bound._entry.98, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @cal_async_notifier_bound._entry_ptr.100, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 724, i32 3}
!221 = !{ptr @cal_async_notifier_bound._entry.101, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @cal_async_notifier_bound._entry_ptr.103, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 734, i32 3}
!225 = !{ptr @cal_async_notifier_bound._entry.104, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @cal_async_notifier_bound._entry_ptr.106, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1190, i32 2}
!229 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @cal_remove._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @cal_remove._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @cal_of_match, !233, !"cal_of_match", i1 false, i1 false}
!233 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 956, i32 34}
!234 = !{ptr @dra72x_cal_data, !235, !"dra72x_cal_data", i1 false, i1 false}
!235 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 209, i32 30}
!236 = !{ptr @dra72x_cal_camerarx, !237, !"dra72x_cal_camerarx", i1 false, i1 false}
!237 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 188, i32 39}
!238 = !{ptr @dra72x_es1_cal_data, !239, !"dra72x_es1_cal_data", i1 false, i1 false}
!239 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 214, i32 30}
!240 = !{ptr @dra76x_cal_data, !241, !"dra76x_cal_data", i1 false, i1 false}
!241 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 241, i32 30}
!242 = !{ptr @dra76x_cal_csi_phy, !243, !"dra76x_cal_csi_phy", i1 false, i1 false}
!243 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 220, i32 39}
!244 = !{ptr @am654_cal_data, !245, !"am654_cal_data", i1 false, i1 false}
!245 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 257, i32 30}
!246 = !{ptr @am654_cal_csi_phy, !247, !"am654_cal_csi_phy", i1 false, i1 false}
!247 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 246, i32 39}
!248 = !{ptr @cal_pm_ops, !249, !"cal_pm_ops", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1249, i32 32}
!250 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/ti-vpe/cal.c", i32 1244, i32 2}
!252 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @cal_runtime_resume._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @cal_runtime_resume._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{i64 2151801474}
!265 = !{i64 4259352}
!266 = !{i8 0, i8 2}
!267 = !{i64 4259770}
!268 = !{i64 2151800119}
!269 = !{!"auto-init"}
!270 = !{i64 2148269243}
!271 = !{i64 754066, i64 754091, i64 754113, i64 754129, i64 754141, i64 754161, i64 754185, i64 754201, i64 754213}
!272 = !{i64 2148269431}
