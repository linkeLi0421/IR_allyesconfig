; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.sun6i_csi = type { ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, %struct.v4l2_fwnode_endpoint, %struct.sun6i_csi_config, %struct.sun6i_video }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.95, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.95 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.sun6i_csi_config = type { i32, i32, i32, i32, i32 }
%struct.sun6i_video = type { %struct.video_device, %struct.media_pad, ptr, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, i32, %struct.v4l2_format, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.sun6i_csi_dev = type { %struct.sun6i_csi, ptr, ptr, ptr, ptr, ptr, [3 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i_csi\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sun6i_csi_is_format_supported\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported mbus code: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported pixformat: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun50i-a64-csi\00", [39 x i8] zeroinitializer }, align 32
@sun6i_csi_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 185, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enable csi clk err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun6i_csi_set_power\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_csi_set_power._entry_ptr = internal global ptr @sun6i_csi_set_power._entry, section ".printk_index", align 4
@sun6i_csi_set_power._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 194, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enable clk_dram_csi clk err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sun6i_csi_set_power._entry_ptr.12 = internal global ptr @sun6i_csi_set_power._entry.10, section ".printk_index", align 4
@sun6i_csi_set_power._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 200, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset err %d\0A\00", [18 x i8] zeroinitializer }, align 32
@sun6i_csi_set_power._entry_ptr.15 = internal global ptr @sun6i_csi_set_power._entry.13, section ".printk_index", align 4
@__initcall__kmod_sun6i_csi__308_931_sun6i_csi_platform_driver_init6 = internal global ptr @sun6i_csi_platform_driver_init, section ".initcall6.init", align 4
@sun6i_csi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_csi_probe, ptr @sun6i_csi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.35, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_csi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun6i_csi_platform_driver_exit = internal global ptr @sun6i_csi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [67 x i8] c"sun6i_csi.description=Allwinner V3s Camera Sensor Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [52 x i8] c"sun6i_csi.author=Yong Deng <yong.deng@magewell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [64 x i8] c"sun6i_csi.file=drivers/media/platform/sunxi/sun6i-csi/sun6i-csi\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [22 x i8] c"sun6i_csi.license=GPL\00", section ".modinfo", align 1
@sun6i_csi_setup_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 438, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported bus type: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun6i_csi_setup_bus\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun6i_csi_setup_bus._entry_ptr = internal global ptr @sun6i_csi_setup_bus._entry, section ".printk_index", align 4
@sun6i_csi_setup_bus._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 455, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported bus width: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@sun6i_csi_setup_bus._entry_ptr.21 = internal global ptr @sun6i_csi_setup_bus._entry.19, section ".printk_index", align 4
@get_csi_input_format.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_csi_input_format\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Select YUV422 as default input format of CSI.\0A\00", [49 x i8] zeroinitializer }, align 32
@get_csi_output_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.24, ptr @.str.2, i32 299, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_csi_output_format\00", [42 x i8] zeroinitializer }, align 32
@get_csi_output_format._entry_ptr = internal global ptr @get_csi_output_format._entry, section ".printk_index", align 4
@get_csi_input_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.25, ptr @.str.2, i32 334, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_csi_input_seq\00", [46 x i8] zeroinitializer }, align 32
@get_csi_input_seq._entry_ptr = internal global ptr @get_csi_input_seq._entry, section ".printk_index", align 4
@get_csi_input_seq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.25, ptr @.str.2, i32 356, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@get_csi_input_seq._entry_ptr.27 = internal global ptr @get_csi_input_seq._entry.26, section ".printk_index", align 4
@get_csi_input_seq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.2, i32 366, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unsupported pixformat: 0x%x, defaulting to YUYV\0A\00", [47 x i8] zeroinitializer }, align 32
@get_csi_input_seq._entry_ptr.30 = internal global ptr @get_csi_input_seq._entry.28, section ".printk_index", align 4
@sun6i_csi_set_window.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun6i_csi_set_window\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Horizontal length should be 2 times of width for packed YUV formats!\0A\00", [58 x i8] zeroinitializer }, align 32
@sun6i_csi_set_window.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Calculating pixelformat(0x%x)'s bytesperline as a packed format\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i-csi\00", [22 x i8] zeroinitializer }, align 32
@sun6i_csi_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-csi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun6i_csi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 156, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sun6i_csi:845:(&sun6i_csi_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 847, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init register map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun6i_csi_resource_request\00", [37 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry_ptr = internal global ptr @sun6i_csi_resource_request._entry, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.2, i32 853, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to acquire csi clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry_ptr.43 = internal global ptr @sun6i_csi_resource_request._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.2, i32 859, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to acquire dram-csi clock\0A\00", [62 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry_ptr.47 = internal global ptr @sun6i_csi_resource_request._entry.45, section ".printk_index", align 4
@sun6i_csi_resource_request._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.39, ptr @.str.2, i32 865, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot get reset controller\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry_ptr.50 = internal global ptr @sun6i_csi_resource_request._entry.48, section ".printk_index", align 4
@sun6i_csi_resource_request._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.39, ptr @.str.2, i32 876, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot request csi IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@sun6i_csi_resource_request._entry_ptr.53 = internal global ptr @sun6i_csi_resource_request._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Allwinner Video Capture Device\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@sun6i_csi_v4l2_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sun6i_csi:742:(&csi->ctrl_handler)->_lock\00", [54 x i8] zeroinitializer }, align 32
@sun6i_csi_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 745, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"V4L2 controls handler init failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun6i_csi_v4l2_init\00", [44 x i8] zeroinitializer }, align 32
@sun6i_csi_v4l2_init._entry_ptr = internal global ptr @sun6i_csi_v4l2_init._entry, section ".printk_index", align 4
@sun6i_csi_v4l2_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 754, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"V4L2 device registration failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@sun6i_csi_v4l2_init._entry_ptr.61 = internal global ptr @sun6i_csi_v4l2_init._entry.59, section ".printk_index", align 4
@sun6i_csi_async_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr null, ptr @sun6i_subdev_notify_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@sun6i_csi_v4l2_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 774, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"notifier registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sun6i_csi_v4l2_init._entry_ptr.64 = internal global ptr @sun6i_csi_v4l2_init._entry.62, section ".printk_index", align 4
@sun6i_csi_fwnode_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 702, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Only support a single port with one endpoint\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun6i_csi_fwnode_parse\00", [41 x i8] zeroinitializer }, align 32
@sun6i_csi_fwnode_parse._entry_ptr = internal global ptr @sun6i_csi_fwnode_parse._entry, section ".printk_index", align 4
@sun6i_csi_fwnode_parse._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 712, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported media bus type\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_csi_fwnode_parse._entry_ptr.69 = internal global ptr @sun6i_csi_fwnode_parse._entry.67, section ".printk_index", align 4
@sun6i_subdev_notify_complete.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sun6i_subdev_notify_complete\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"notify complete, all subdevs registered\0A\00", [55 x i8] zeroinitializer }, align 32
@sun6i_csi_link_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 641, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: no source pad in external entity %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun6i_csi_link_entity\00", [42 x i8] zeroinitializer }, align 32
@sun6i_csi_link_entity._entry_ptr = internal global ptr @sun6i_csi_link_entity._entry, section ".printk_index", align 4
@sun6i_csi_link_entity.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"creating %s:%u -> %s:%u link\0A\00", [34 x i8] zeroinitializer }, align 32
@sun6i_csi_link_entity._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.2, i32 659, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create %s:%u -> %s:%u link\0A\00", [58 x i8] zeroinitializer }, align 32
@sun6i_csi_link_entity._entry_ptr.77 = internal global ptr @sun6i_csi_link_entity._entry.75, section ".printk_index", align 4
@switch.table.sun6i_csi_set_format = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 512, i32 768, i32 0, i32 256, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 768, i32 0, i32 256], [44 x i8] zeroinitializer }, align 32
@switch.table.sun6i_csi_set_format.78 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 768, i32 512, i32 256, i32 0, i32 768, i32 768, i32 768, i32 768, i32 768, i32 768, i32 512, i32 256, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 909203022, i64 1345466932]
@__sancov_gen_cov_switch_values.79 = internal global [29 x i64] [i64 27, i64 32, i64 808534338, i64 808534599, i64 808535874, i64 808535890, i64 825382478, i64 825644622, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 909203022, i64 1111967570, i64 1195528775, i64 1195724874, i64 1196573255, i64 1345466932, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.83 = internal global [29 x i64] [i64 27, i64 32, i64 808534338, i64 808534599, i64 808535874, i64 808535890, i64 825382478, i64 825644622, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 909203022, i64 1111967570, i64 1195528775, i64 1195724874, i64 1196573255, i64 1345466932, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.84 = internal global [11 x i64] [i64 9, i64 32, i64 825382478, i64 825644622, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 909203022, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.87 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 909203022, i64 1345466932]
@__sancov_gen_cov_switch_values.88 = internal global [33 x i64] [i64 31, i64 32, i64 808534338, i64 808534599, i64 808535874, i64 808535890, i64 825382478, i64 825644622, i64 825770306, i64 842088770, i64 842089031, i64 842090306, i64 842090322, i64 842091848, i64 842093913, i64 842094158, i64 842094169, i64 859981650, i64 861030210, i64 876758866, i64 877807426, i64 909203022, i64 1111967570, i64 1195528775, i64 1195724874, i64 1196573255, i64 1345466932, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 79, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 85, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 176, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 185, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 194, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 200, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"sun6i_csi_platform_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 923, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 437, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 455, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 235, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 299, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 333, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 355, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 365, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 512, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 555, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [54 x i8] c"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 131, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 927, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"sun6i_csi_of_match\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 913, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"sun6i_csi_regmap_config\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 826, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 844, i32 17 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 847, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 851, i32 43 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 853, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 857, i32 43 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 859, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 865, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 876, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 733, i32 32 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 737, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 742, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 744, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 753, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c"sun6i_csi_async_ops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 691, i32 52 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 774, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 702, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 712, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 674, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 640, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 650, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private constant [54 x i8] c"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 657, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [34 x i8] c"switch.table.sun6i_csi_set_format\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [37 x i8] c"switch.table.sun6i_csi_set_format.78\00", align 1
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_sun6i_csi_platform_driver_exit, ptr @__initcall__kmod_sun6i_csi__308_931_sun6i_csi_platform_driver_init6, ptr @get_csi_input_seq._entry, ptr @get_csi_input_seq._entry.26, ptr @get_csi_input_seq._entry.28, ptr @get_csi_input_seq._entry_ptr, ptr @get_csi_input_seq._entry_ptr.27, ptr @get_csi_input_seq._entry_ptr.30, ptr @get_csi_output_format._entry, ptr @get_csi_output_format._entry_ptr, ptr @sun6i_csi_fwnode_parse._entry, ptr @sun6i_csi_fwnode_parse._entry.67, ptr @sun6i_csi_fwnode_parse._entry_ptr, ptr @sun6i_csi_fwnode_parse._entry_ptr.69, ptr @sun6i_csi_link_entity._entry, ptr @sun6i_csi_link_entity._entry.75, ptr @sun6i_csi_link_entity._entry_ptr, ptr @sun6i_csi_link_entity._entry_ptr.77, ptr @sun6i_csi_platform_driver_exit, ptr @sun6i_csi_resource_request._entry, ptr @sun6i_csi_resource_request._entry.41, ptr @sun6i_csi_resource_request._entry.45, ptr @sun6i_csi_resource_request._entry.48, ptr @sun6i_csi_resource_request._entry.51, ptr @sun6i_csi_resource_request._entry_ptr, ptr @sun6i_csi_resource_request._entry_ptr.43, ptr @sun6i_csi_resource_request._entry_ptr.47, ptr @sun6i_csi_resource_request._entry_ptr.50, ptr @sun6i_csi_resource_request._entry_ptr.53, ptr @sun6i_csi_set_power._entry, ptr @sun6i_csi_set_power._entry.10, ptr @sun6i_csi_set_power._entry.13, ptr @sun6i_csi_set_power._entry_ptr, ptr @sun6i_csi_set_power._entry_ptr.12, ptr @sun6i_csi_set_power._entry_ptr.15, ptr @sun6i_csi_setup_bus._entry, ptr @sun6i_csi_setup_bus._entry.19, ptr @sun6i_csi_setup_bus._entry_ptr, ptr @sun6i_csi_setup_bus._entry_ptr.21, ptr @sun6i_csi_v4l2_init._entry, ptr @sun6i_csi_v4l2_init._entry.59, ptr @sun6i_csi_v4l2_init._entry.62, ptr @sun6i_csi_v4l2_init._entry_ptr, ptr @sun6i_csi_v4l2_init._entry_ptr.61, ptr @sun6i_csi_v4l2_init._entry_ptr.64, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @sun6i_csi_platform_driver, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sun6i_csi_of_match, ptr @sun6i_csi_resource_request._key, ptr @.str.36, ptr @sun6i_csi_regmap_config, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @sun6i_csi_v4l2_init._key, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @sun6i_csi_async_ops, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @switch.table.sun6i_csi_set_format, ptr @switch.table.sun6i_csi_set_format.78], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_set_power._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_set_power._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_setup_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_setup_bus._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_csi_output_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_csi_input_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_csi_input_seq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_csi_input_seq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_resource_request._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_resource_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_resource_request._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_resource_request._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_resource_request._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_resource_request._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_v4l2_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_v4l2_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_async_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_v4l2_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_fwnode_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_fwnode_parse._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_link_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_csi_link_entity._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun6i_csi_set_format to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun6i_csi_set_format.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sun6i_csi_is_format_supported(ptr nocapture noundef readonly %csi, i32 noundef %pixformat, i32 noundef %mbus_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_type = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_type, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch165 = icmp ult i32 %.off, 2
  br i1 %switch165, label %land.lhs.true, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %entry
  %bus_width = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 5, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp8 = icmp eq i8 %3, 16
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then:                                          ; preds = %land.lhs.true
  %4 = zext i32 %pixformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pixformat, label %do.body16 [
    i32 842091848, label %if.then.sw.bb_crit_edge
    i32 842094158, label %if.then.sw.bb_crit_edge179
    i32 825382478, label %if.then.sw.bb_crit_edge180
    i32 909203022, label %if.then.sw.bb_crit_edge181
    i32 825644622, label %if.then.sw.bb_crit_edge182
    i32 842093913, label %if.then.sw.bb_crit_edge183
    i32 842094169, label %if.then.sw.bb_crit_edge184
    i32 1345466932, label %if.then.sw.bb_crit_edge185
  ]

if.then.sw.bb_crit_edge185:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge184:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge183:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge182:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge181:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge180:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge179:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge179, %if.then.sw.bb_crit_edge180, %if.then.sw.bb_crit_edge181, %if.then.sw.bb_crit_edge182, %if.then.sw.bb_crit_edge183, %if.then.sw.bb_crit_edge184, %if.then.sw.bb_crit_edge185
  %mbus_code.off = add i32 %mbus_code, -8207
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mbus_code.off)
  %switch = icmp ult i32 %mbus_code.off, 4
  br i1 %switch, label %sw.bb.cleanup_crit_edge, label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_is_format_supported, %if.then14)) #6
          to label %cleanup [label %if.then14], !srcloc !171

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug299, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %mbus_code) #6
  br label %cleanup

do.body16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_is_format_supported, %if.then28)) #6
          to label %cleanup [label %if.then28], !srcloc !171

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %7 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug300, ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %pixformat) #6
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %entry.if.end34_crit_edge
  %9 = zext i32 %pixformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %pixformat, label %do.body114 [
    i32 825770306, label %sw.bb35
    i32 1196573255, label %sw.bb38
    i32 1195528775, label %sw.bb41
    i32 1111967570, label %sw.bb44
    i32 808535874, label %sw.bb47
    i32 808534599, label %sw.bb50
    i32 808534338, label %sw.bb53
    i32 808535890, label %sw.bb56
    i32 842090306, label %sw.bb59
    i32 842089031, label %sw.bb62
    i32 842088770, label %sw.bb65
    i32 842090322, label %sw.bb68
    i32 1448695129, label %sw.bb71
    i32 1431918169, label %sw.bb74
    i32 1498831189, label %sw.bb77
    i32 1498765654, label %sw.bb80
    i32 842091848, label %if.end34.sw.bb83_crit_edge
    i32 842094158, label %if.end34.sw.bb83_crit_edge186
    i32 825382478, label %if.end34.sw.bb83_crit_edge187
    i32 909203022, label %if.end34.sw.bb83_crit_edge188
    i32 825644622, label %if.end34.sw.bb83_crit_edge189
    i32 842093913, label %if.end34.sw.bb83_crit_edge190
    i32 842094169, label %if.end34.sw.bb83_crit_edge191
    i32 1345466932, label %if.end34.sw.bb83_crit_edge192
    i32 1346520914, label %sw.bb104
    i32 1380075346, label %sw.bb107
    i32 1195724874, label %sw.bb110
  ]

if.end34.sw.bb83_crit_edge192:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge191:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge190:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge189:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge188:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge187:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge186:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end34.sw.bb83_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

sw.bb35:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %mbus_code)
  %cmp36 = icmp eq i32 %mbus_code, 12289
  br label %cleanup

sw.bb38:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12307, i32 %mbus_code)
  %cmp39 = icmp eq i32 %mbus_code, 12307
  br label %cleanup

sw.bb41:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12290, i32 %mbus_code)
  %cmp42 = icmp eq i32 %mbus_code, 12290
  br label %cleanup

sw.bb44:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12308, i32 %mbus_code)
  %cmp45 = icmp eq i32 %mbus_code, 12308
  br label %cleanup

sw.bb47:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %mbus_code)
  %cmp48 = icmp eq i32 %mbus_code, 12295
  br label %cleanup

sw.bb50:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12302, i32 %mbus_code)
  %cmp51 = icmp eq i32 %mbus_code, 12302
  br label %cleanup

sw.bb53:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %mbus_code)
  %cmp54 = icmp eq i32 %mbus_code, 12298
  br label %cleanup

sw.bb56:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12303, i32 %mbus_code)
  %cmp57 = icmp eq i32 %mbus_code, 12303
  br label %cleanup

sw.bb59:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12296, i32 %mbus_code)
  %cmp60 = icmp eq i32 %mbus_code, 12296
  br label %cleanup

sw.bb62:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12304, i32 %mbus_code)
  %cmp63 = icmp eq i32 %mbus_code, 12304
  br label %cleanup

sw.bb65:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12305, i32 %mbus_code)
  %cmp66 = icmp eq i32 %mbus_code, 12305
  br label %cleanup

sw.bb68:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12306, i32 %mbus_code)
  %cmp69 = icmp eq i32 %mbus_code, 12306
  br label %cleanup

sw.bb71:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %mbus_code)
  %cmp72 = icmp eq i32 %mbus_code, 8200
  br label %cleanup

sw.bb74:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %mbus_code)
  %cmp75 = icmp eq i32 %mbus_code, 8201
  br label %cleanup

sw.bb77:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %mbus_code)
  %cmp78 = icmp eq i32 %mbus_code, 8198
  br label %cleanup

sw.bb80:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %mbus_code)
  %cmp81 = icmp eq i32 %mbus_code, 8199
  br label %cleanup

sw.bb83:                                          ; preds = %if.end34.sw.bb83_crit_edge, %if.end34.sw.bb83_crit_edge186, %if.end34.sw.bb83_crit_edge187, %if.end34.sw.bb83_crit_edge188, %if.end34.sw.bb83_crit_edge189, %if.end34.sw.bb83_crit_edge190, %if.end34.sw.bb83_crit_edge191, %if.end34.sw.bb83_crit_edge192
  %mbus_code.off163 = add i32 %mbus_code, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mbus_code.off163)
  %switch164 = icmp ult i32 %mbus_code.off163, 4
  br i1 %switch164, label %sw.bb83.cleanup_crit_edge, label %do.body86

sw.bb83.cleanup_crit_edge:                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body86:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_is_format_supported, %if.then98)) #6
          to label %cleanup [label %if.then98], !srcloc !171

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %dev99 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %10 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug301, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %mbus_code) #6
  br label %cleanup

sw.bb104:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4104, i32 %mbus_code)
  %cmp105 = icmp eq i32 %mbus_code, 4104
  br label %cleanup

sw.bb107:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4103, i32 %mbus_code)
  %cmp108 = icmp eq i32 %mbus_code, 4103
  br label %cleanup

sw.bb110:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %mbus_code)
  %cmp111 = icmp eq i32 %mbus_code, 16385
  br label %cleanup

do.body114:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_is_format_supported, %if.then126)) #6
          to label %cleanup [label %if.then126], !srcloc !171

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  %dev127 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %12 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev127, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug302, ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef %pixformat) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %do.body114, %sw.bb110, %sw.bb107, %sw.bb104, %if.then98, %do.body86, %sw.bb83.cleanup_crit_edge, %sw.bb80, %sw.bb77, %sw.bb74, %sw.bb71, %sw.bb68, %sw.bb65, %sw.bb62, %sw.bb59, %sw.bb56, %sw.bb53, %sw.bb50, %sw.bb47, %sw.bb44, %sw.bb41, %sw.bb38, %sw.bb35, %if.then28, %do.body16, %if.then14, %do.body, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp111, %sw.bb110 ], [ %cmp108, %sw.bb107 ], [ %cmp105, %sw.bb104 ], [ %cmp81, %sw.bb80 ], [ %cmp78, %sw.bb77 ], [ %cmp75, %sw.bb74 ], [ %cmp72, %sw.bb71 ], [ %cmp69, %sw.bb68 ], [ %cmp66, %sw.bb65 ], [ %cmp63, %sw.bb62 ], [ %cmp60, %sw.bb59 ], [ %cmp57, %sw.bb56 ], [ %cmp54, %sw.bb53 ], [ %cmp51, %sw.bb50 ], [ %cmp48, %sw.bb47 ], [ %cmp45, %sw.bb44 ], [ %cmp42, %sw.bb41 ], [ %cmp39, %sw.bb38 ], [ %cmp36, %sw.bb35 ], [ true, %sw.bb.cleanup_crit_edge ], [ false, %if.then28 ], [ false, %if.then14 ], [ true, %sw.bb83.cleanup_crit_edge ], [ false, %if.then126 ], [ false, %if.then98 ], [ false, %do.body ], [ false, %do.body16 ], [ false, %do.body86 ], [ false, %do.body114 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun6i_csi_set_power(ptr nocapture noundef readonly %csi, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %regmap2 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 2
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  br i1 %enable, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %clk_ram = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 4
  %4 = ptrtoint ptr %clk_ram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ram, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %clk_mod = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 3
  %8 = ptrtoint ptr %clk_mod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mod, align 8
  tail call void @clk_rate_exclusive_put(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %clk_mod7 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 3
  %10 = ptrtoint ptr %clk_mod7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_mod7, align 8
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %rstc_bus = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 5
  %12 = ptrtoint ptr %rstc_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rstc_bus, align 8
  %call8 = tail call i32 @reset_control_assert(ptr noundef %13) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %clk_mod10 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 3
  %14 = ptrtoint ptr %clk_mod10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_mod10, align 8
  %call.i78 = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end15, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end9.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i78, %if.end9.do.end_crit_edge ]
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  %of_node16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %of_node16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node16, align 8
  %call17 = tail call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %clk_mod10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_mod10, align 8
  %call21 = tail call i32 @clk_set_rate_exclusive(ptr noundef %21, i32 noundef 300000000) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %clk_ram23 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 4
  %22 = ptrtoint ptr %clk_ram23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ram23, align 4
  %call.i79 = tail call i32 @clk_prepare(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.end.i83, label %if.end22.do.end29_crit_edge

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end.i83:                                       ; preds = %if.end22
  %call1.i81 = tail call i32 @clk_enable(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool2.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool2.not.i82, label %if.end31, label %if.then3.i84

if.then3.i84:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i84, %if.end22.do.end29_crit_edge
  %retval.0.i85.ph = phi i32 [ %call1.i81, %if.then3.i84 ], [ %call.i79, %if.end22.do.end29_crit_edge ]
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i85.ph) #9
  br label %clk_mod_disable

if.end31:                                         ; preds = %if.end.i83
  %rstc_bus32 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 5
  %26 = ptrtoint ptr %rstc_bus32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rstc_bus32, align 8
  %call33 = tail call i32 @reset_control_deassert(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %call33) #9
  %30 = ptrtoint ptr %clk_ram23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_ram23, align 4
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  br label %clk_mod_disable

if.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

clk_mod_disable:                                  ; preds = %do.end38, %do.end29
  %ret.0 = phi i32 [ %retval.0.i85.ph, %do.end29 ], [ %call33, %do.end38 ]
  %32 = ptrtoint ptr %of_node16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node16, align 8
  %call44 = tail call i32 @of_device_is_compatible(ptr noundef %33, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %clk_mod_disable.if.end48_crit_edge, label %if.then46

clk_mod_disable.if.end48_crit_edge:               ; preds = %clk_mod_disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then46:                                        ; preds = %clk_mod_disable
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %clk_mod10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_mod10, align 8
  tail call void @clk_rate_exclusive_put(ptr noundef %35) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %clk_mod_disable.if.end48_crit_edge
  %36 = ptrtoint ptr %clk_mod10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_mod10, align 8
  tail call void @clk_disable(ptr noundef %37) #6
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end40, %do.end, %if.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %if.end48 ], [ 0, %if.end40 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun6i_csi_update_config(ptr nocapture noundef %csi, ptr noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %config1, ptr %config, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg.i) #6
  %1 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cfg.i, align 4, !annotation !172
  %field.i = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field.i, align 8
  %switch.tableidx = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  %switch.cast = trunc i32 %switch.tableidx to i6
  %switch.downshift = lshr i6 -15, %switch.cast
  %5 = and i6 %switch.downshift, 1
  %6 = sext i6 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.masked = icmp ne i6 %5, 0
  %input_interlaced.0.off0.i = select i1 %4, i1 %switch.masked, i1 false
  %bus.i = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 5, i32 2
  %bus_width10.i = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 5, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %bus_width10.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_width10.i, align 4
  %regmap.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %cfg.i) #6
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg.i, align 4
  %and.i = and i32 %12, -3082144
  %or.i = or i32 %and.i, 2097152
  %spec.select = select i1 %input_interlaced.0.off0.i, i32 %or.i, i32 %and.i
  store i32 %spec.select, ptr %cfg.i, align 4
  %bus_type.i = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %14, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb41.i
  ]

sw.bb.i:                                          ; preds = %if.end
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp18.i = icmp eq i8 %8, 16
  %cond.i = zext i1 %cmp18.i to i32
  %or20.i = or i32 %spec.select, %cond.i
  %and21.i = shl i32 %17, 8
  %18 = and i32 %and21.i, 524288
  %19 = or i32 %or20.i, %18
  %and26.i = shl i32 %17, 13
  %20 = and i32 %and26.i, 262144
  %21 = or i32 %19, %20
  %and31.i = shl i32 %17, 14
  %22 = and i32 %and31.i, 131072
  %23 = or i32 %22, %21
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cfg.i, align 4
  %and36.i = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.then38.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then38.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cfg.i, align 4
  %or39.i = or i32 %26, 65536
  store i32 %or39.i, ptr %cfg.i, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp47.i = icmp eq i8 %8, 16
  %cond49.i = select i1 %cmp47.i, i32 5, i32 4
  %or50.i = or i32 %spec.select, %cond49.i
  %and51.i = shl i32 %28, 8
  %29 = and i32 %and51.i, 524288
  %30 = or i32 %or50.i, %29
  %31 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cfg.i, align 4
  %and56.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %sw.bb41.i.sw.epilog.i_crit_edge, label %if.then58.i

sw.bb41.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then58.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #8
  %or59.i = or i32 %30, 65536
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or59.i, ptr %cfg.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef %14) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.then58.i, %sw.bb41.i.sw.epilog.i_crit_edge, %if.then38.i, %sw.bb.i.sw.epilog.i_crit_edge
  %35 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %8, label %do.end72.i [
    i8 8, label %sw.epilog.i.sun6i_csi_setup_bus.exit_crit_edge
    i8 10, label %sw.bb65.i
    i8 12, label %sw.bb67.i
    i8 16, label %sw.epilog.i.sun6i_csi_setup_bus.exit_crit_edge7
  ]

sw.epilog.i.sun6i_csi_setup_bus.exit_crit_edge7:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_setup_bus.exit

sw.epilog.i.sun6i_csi_setup_bus.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_setup_bus.exit

sw.bb65.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg.i, align 4
  %or66.i = or i32 %37, 256
  store i32 %or66.i, ptr %cfg.i, align 4
  br label %sun6i_csi_setup_bus.exit

sw.bb67.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cfg.i, align 4
  %or68.i = or i32 %39, 512
  store i32 %or68.i, ptr %cfg.i, align 4
  br label %sun6i_csi_setup_bus.exit

do.end72.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv62.i = zext i8 %8 to i32
  %dev73.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 1
  %40 = ptrtoint ptr %dev73.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev73.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.20, i32 noundef %conv62.i) #9
  br label %sun6i_csi_setup_bus.exit

sun6i_csi_setup_bus.exit:                         ; preds = %do.end72.i, %sw.bb67.i, %sw.bb65.i, %sw.epilog.i.sun6i_csi_setup_bus.exit_crit_edge, %sw.epilog.i.sun6i_csi_setup_bus.exit_crit_edge7
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %44 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cfg.i, align 4
  %call77.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 4, i32 noundef %45) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg.i) #6
  call fastcc void @sun6i_csi_set_format(ptr noundef %csi)
  call fastcc void @sun6i_csi_set_window(ptr noundef %csi)
  br label %cleanup

cleanup:                                          ; preds = %sun6i_csi_setup_bus.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sun6i_csi_setup_bus.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_csi_set_format(ptr nocapture noundef readonly %sdev) unnamed_addr #0 align 64 {
entry:
  %cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #6
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cfg, align 4, !annotation !172
  %regmap = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 68, ptr noundef nonnull %cfg) #6
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg, align 4
  %and = and i32 %4, -16727809
  store i32 %and, ptr %cfg, align 4
  %config = getelementptr inbounds %struct.sun6i_csi, ptr %sdev, i32 0, i32 6
  %code = getelementptr inbounds %struct.sun6i_csi, ptr %sdev, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %and.i = and i32 %6, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 8192
  br i1 %cmp.not.i, label %if.end.i, label %entry.get_csi_input_format.exit_crit_edge

entry.get_csi_input_format.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_format.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %8, label %do.body.i [
    i32 1448695129, label %if.end.i.get_csi_input_format.exit_crit_edge
    i32 1431918169, label %if.end.i.get_csi_input_format.exit_crit_edge71
    i32 1498831189, label %if.end.i.get_csi_input_format.exit_crit_edge72
    i32 1498765654, label %if.end.i.get_csi_input_format.exit_crit_edge73
  ]

if.end.i.get_csi_input_format.exit_crit_edge73:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_format.exit

if.end.i.get_csi_input_format.exit_crit_edge72:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_format.exit

if.end.i.get_csi_input_format.exit_crit_edge71:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_format.exit

if.end.i.get_csi_input_format.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_format.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_csi_input_format.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_set_format, %if.then3.i)) #6
          to label %get_csi_input_format.exit [label %if.then3.i], !srcloc !171

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_csi_input_format.__UNIQUE_ID_ddebug303, ptr noundef %11, ptr noundef nonnull @.str.23) #6
  br label %get_csi_input_format.exit

get_csi_input_format.exit:                        ; preds = %if.then3.i, %do.body.i, %if.end.i.get_csi_input_format.exit_crit_edge, %if.end.i.get_csi_input_format.exit_crit_edge71, %if.end.i.get_csi_input_format.exit_crit_edge72, %if.end.i.get_csi_input_format.exit_crit_edge73, %entry.get_csi_input_format.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_csi_input_format.exit_crit_edge ], [ 0, %if.end.i.get_csi_input_format.exit_crit_edge ], [ 0, %if.end.i.get_csi_input_format.exit_crit_edge71 ], [ 0, %if.end.i.get_csi_input_format.exit_crit_edge72 ], [ 0, %if.end.i.get_csi_input_format.exit_crit_edge73 ], [ 3145728, %if.then3.i ], [ 3145728, %do.body.i ]
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 4
  %or = or i32 %13, %retval.0.i
  store i32 %or, ptr %cfg, align 4
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config, align 8
  %field = getelementptr inbounds %struct.sun6i_csi, ptr %sdev, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 8
  %switch.tableidx = add i32 %17, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 6
  %switch.cast = trunc i32 %switch.tableidx to i6
  %switch.downshift = lshr i6 -15, %switch.cast
  %19 = and i6 %switch.downshift, 1
  %20 = sext i6 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %switch.masked = icmp ne i6 %19, 0
  %buf_interlaced.0.off0.i = select i1 %18, i1 %switch.masked, i1 false
  %21 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %15, label %do.end.i [
    i32 825770306, label %get_csi_input_format.exit.sw.bb.i_crit_edge
    i32 1196573255, label %get_csi_input_format.exit.sw.bb.i_crit_edge74
    i32 1195528775, label %get_csi_input_format.exit.sw.bb.i_crit_edge75
    i32 1111967570, label %get_csi_input_format.exit.sw.bb.i_crit_edge76
    i32 808535874, label %get_csi_input_format.exit.sw.bb4.i_crit_edge
    i32 808534599, label %get_csi_input_format.exit.sw.bb4.i_crit_edge77
    i32 808534338, label %get_csi_input_format.exit.sw.bb4.i_crit_edge78
    i32 808535890, label %get_csi_input_format.exit.sw.bb4.i_crit_edge79
    i32 842090306, label %get_csi_input_format.exit.sw.bb7.i_crit_edge
    i32 842089031, label %get_csi_input_format.exit.sw.bb7.i_crit_edge80
    i32 842088770, label %get_csi_input_format.exit.sw.bb7.i_crit_edge81
    i32 842090322, label %get_csi_input_format.exit.sw.bb7.i_crit_edge82
    i32 1448695129, label %get_csi_input_format.exit.sw.bb10.i_crit_edge
    i32 1431918169, label %get_csi_input_format.exit.sw.bb10.i_crit_edge83
    i32 1498831189, label %get_csi_input_format.exit.sw.bb10.i_crit_edge84
    i32 1498765654, label %get_csi_input_format.exit.sw.bb10.i_crit_edge85
    i32 842091848, label %sw.bb13.i
    i32 842094158, label %get_csi_input_format.exit.sw.bb16.i_crit_edge
    i32 825382478, label %get_csi_input_format.exit.sw.bb16.i_crit_edge86
    i32 842093913, label %get_csi_input_format.exit.sw.bb19.i_crit_edge
    i32 842094169, label %get_csi_input_format.exit.sw.bb19.i_crit_edge87
    i32 909203022, label %get_csi_input_format.exit.sw.bb22.i_crit_edge
    i32 825644622, label %get_csi_input_format.exit.sw.bb22.i_crit_edge88
    i32 1345466932, label %sw.bb25.i
    i32 1346520914, label %get_csi_input_format.exit.sw.bb28.i_crit_edge
    i32 1380075346, label %get_csi_input_format.exit.sw.bb28.i_crit_edge89
    i32 1195724874, label %sw.bb31.i
  ]

get_csi_input_format.exit.sw.bb28.i_crit_edge89:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb28.i

get_csi_input_format.exit.sw.bb28.i_crit_edge:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb28.i

get_csi_input_format.exit.sw.bb22.i_crit_edge88:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

get_csi_input_format.exit.sw.bb22.i_crit_edge:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

get_csi_input_format.exit.sw.bb19.i_crit_edge87:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i

get_csi_input_format.exit.sw.bb19.i_crit_edge:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i

get_csi_input_format.exit.sw.bb16.i_crit_edge86:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

get_csi_input_format.exit.sw.bb16.i_crit_edge:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

get_csi_input_format.exit.sw.bb10.i_crit_edge85:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

get_csi_input_format.exit.sw.bb10.i_crit_edge84:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

get_csi_input_format.exit.sw.bb10.i_crit_edge83:  ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

get_csi_input_format.exit.sw.bb10.i_crit_edge:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

get_csi_input_format.exit.sw.bb7.i_crit_edge82:   ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

get_csi_input_format.exit.sw.bb7.i_crit_edge81:   ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

get_csi_input_format.exit.sw.bb7.i_crit_edge80:   ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

get_csi_input_format.exit.sw.bb7.i_crit_edge:     ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

get_csi_input_format.exit.sw.bb4.i_crit_edge79:   ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

get_csi_input_format.exit.sw.bb4.i_crit_edge78:   ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

get_csi_input_format.exit.sw.bb4.i_crit_edge77:   ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

get_csi_input_format.exit.sw.bb4.i_crit_edge:     ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

get_csi_input_format.exit.sw.bb.i_crit_edge76:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

get_csi_input_format.exit.sw.bb.i_crit_edge75:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

get_csi_input_format.exit.sw.bb.i_crit_edge74:    ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

get_csi_input_format.exit.sw.bb.i_crit_edge:      ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %get_csi_input_format.exit.sw.bb.i_crit_edge, %get_csi_input_format.exit.sw.bb.i_crit_edge74, %get_csi_input_format.exit.sw.bb.i_crit_edge75, %get_csi_input_format.exit.sw.bb.i_crit_edge76
  %cond.i = select i1 %buf_interlaced.0.off0.i, i32 524288, i32 0
  br label %get_csi_output_format.exit

sw.bb4.i:                                         ; preds = %get_csi_input_format.exit.sw.bb4.i_crit_edge, %get_csi_input_format.exit.sw.bb4.i_crit_edge77, %get_csi_input_format.exit.sw.bb4.i_crit_edge78, %get_csi_input_format.exit.sw.bb4.i_crit_edge79
  %cond6.i = select i1 %buf_interlaced.0.off0.i, i32 589824, i32 65536
  br label %get_csi_output_format.exit

sw.bb7.i:                                         ; preds = %get_csi_input_format.exit.sw.bb7.i_crit_edge, %get_csi_input_format.exit.sw.bb7.i_crit_edge80, %get_csi_input_format.exit.sw.bb7.i_crit_edge81, %get_csi_input_format.exit.sw.bb7.i_crit_edge82
  %cond9.i = select i1 %buf_interlaced.0.off0.i, i32 655360, i32 131072
  br label %get_csi_output_format.exit

sw.bb10.i:                                        ; preds = %get_csi_input_format.exit.sw.bb10.i_crit_edge, %get_csi_input_format.exit.sw.bb10.i_crit_edge83, %get_csi_input_format.exit.sw.bb10.i_crit_edge84, %get_csi_input_format.exit.sw.bb10.i_crit_edge85
  %cond12.i = select i1 %buf_interlaced.0.off0.i, i32 524288, i32 0
  br label %get_csi_output_format.exit

sw.bb13.i:                                        ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cond15.i = select i1 %buf_interlaced.0.off0.i, i32 655360, i32 589824
  br label %get_csi_output_format.exit

sw.bb16.i:                                        ; preds = %get_csi_input_format.exit.sw.bb16.i_crit_edge, %get_csi_input_format.exit.sw.bb16.i_crit_edge86
  %cond18.i = select i1 %buf_interlaced.0.off0.i, i32 393216, i32 327680
  br label %get_csi_output_format.exit

sw.bb19.i:                                        ; preds = %get_csi_input_format.exit.sw.bb19.i_crit_edge, %get_csi_input_format.exit.sw.bb19.i_crit_edge87
  %cond21.i = select i1 %buf_interlaced.0.off0.i, i32 131072, i32 65536
  br label %get_csi_output_format.exit

sw.bb22.i:                                        ; preds = %get_csi_input_format.exit.sw.bb22.i_crit_edge, %get_csi_input_format.exit.sw.bb22.i_crit_edge88
  %cond24.i = select i1 %buf_interlaced.0.off0.i, i32 458752, i32 262144
  br label %get_csi_output_format.exit

sw.bb25.i:                                        ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cond27.i = select i1 %buf_interlaced.0.off0.i, i32 196608, i32 0
  br label %get_csi_output_format.exit

sw.bb28.i:                                        ; preds = %get_csi_input_format.exit.sw.bb28.i_crit_edge, %get_csi_input_format.exit.sw.bb28.i_crit_edge89
  %cond30.i = select i1 %buf_interlaced.0.off0.i, i32 786432, i32 262144
  br label %get_csi_output_format.exit

sw.bb31.i:                                        ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cond33.i = select i1 %buf_interlaced.0.off0.i, i32 524288, i32 0
  br label %get_csi_output_format.exit

do.end.i:                                         ; preds = %get_csi_input_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i48 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i48, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.4, i32 noundef %15) #9
  br label %get_csi_output_format.exit

get_csi_output_format.exit:                       ; preds = %do.end.i, %sw.bb31.i, %sw.bb28.i, %sw.bb25.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i49 = phi i32 [ 0, %do.end.i ], [ %cond33.i, %sw.bb31.i ], [ %cond30.i, %sw.bb28.i ], [ %cond27.i, %sw.bb25.i ], [ %cond24.i, %sw.bb22.i ], [ %cond21.i, %sw.bb19.i ], [ %cond18.i, %sw.bb16.i ], [ %cond15.i, %sw.bb13.i ], [ %cond12.i, %sw.bb10.i ], [ %cond9.i, %sw.bb7.i ], [ %cond6.i, %sw.bb4.i ], [ %cond.i, %sw.bb.i ]
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg, align 4
  %or11 = or i32 %25, %retval.0.i49
  store i32 %or11, ptr %cfg, align 4
  %26 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code, align 4
  %28 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %config, align 8
  %and.i50 = and i32 %27, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and.i50)
  %cmp.not.i51 = icmp eq i32 %and.i50, 8192
  br i1 %cmp.not.i51, label %if.end.i52, label %get_csi_output_format.exit.get_csi_input_seq.exit_crit_edge

get_csi_output_format.exit.get_csi_input_seq.exit_crit_edge: ; preds = %get_csi_output_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_seq.exit

if.end.i52:                                       ; preds = %get_csi_output_format.exit
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %29, label %do.end18.i [
    i32 842091848, label %if.end.i52.sw.bb.i53_crit_edge
    i32 842094158, label %if.end.i52.sw.bb.i53_crit_edge90
    i32 909203022, label %if.end.i52.sw.bb.i53_crit_edge91
    i32 842093913, label %if.end.i52.sw.bb.i53_crit_edge92
    i32 1345466932, label %if.end.i52.sw.bb.i53_crit_edge93
    i32 825382478, label %if.end.i52.sw.bb5.i_crit_edge
    i32 825644622, label %if.end.i52.sw.bb5.i_crit_edge94
    i32 842094169, label %if.end.i52.sw.bb5.i_crit_edge95
    i32 1448695129, label %if.end.i52.get_csi_input_seq.exit_crit_edge
  ]

if.end.i52.get_csi_input_seq.exit_crit_edge:      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_csi_input_seq.exit

if.end.i52.sw.bb5.i_crit_edge95:                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.i52.sw.bb5.i_crit_edge94:                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.i52.sw.bb5.i_crit_edge:                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.i52.sw.bb.i53_crit_edge93:                 ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i53

if.end.i52.sw.bb.i53_crit_edge92:                 ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i53

if.end.i52.sw.bb.i53_crit_edge91:                 ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i53

if.end.i52.sw.bb.i53_crit_edge90:                 ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i53

if.end.i52.sw.bb.i53_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i53

sw.bb.i53:                                        ; preds = %if.end.i52.sw.bb.i53_crit_edge, %if.end.i52.sw.bb.i53_crit_edge90, %if.end.i52.sw.bb.i53_crit_edge91, %if.end.i52.sw.bb.i53_crit_edge92, %if.end.i52.sw.bb.i53_crit_edge93
  %switch.tableidx60 = add i32 %27, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx60)
  %31 = icmp ult i32 %switch.tableidx60, 13
  br i1 %31, label %switch.hole_check, label %sw.bb.i53.do.end.i56_crit_edge

sw.bb.i53.do.end.i56_crit_edge:                   ; preds = %sw.bb.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i56

do.end.i56:                                       ; preds = %switch.hole_check.do.end.i56_crit_edge, %sw.bb.i53.do.end.i56_crit_edge
  %dev.i55 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i55, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.3, i32 noundef %27) #9
  br label %get_csi_input_seq.exit

sw.bb5.i:                                         ; preds = %if.end.i52.sw.bb5.i_crit_edge, %if.end.i52.sw.bb5.i_crit_edge94, %if.end.i52.sw.bb5.i_crit_edge95
  %switch.tableidx63 = add i32 %27, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx63)
  %34 = icmp ult i32 %switch.tableidx63, 13
  br i1 %34, label %switch.hole_check64, label %sw.bb5.i.do.end12.i_crit_edge

sw.bb5.i.do.end12.i_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %switch.hole_check64.do.end12.i_crit_edge, %sw.bb5.i.do.end12.i_crit_edge
  %dev13.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %35 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.3, i32 noundef %27) #9
  br label %get_csi_input_seq.exit

do.end18.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  %dev19.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %37 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev19.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.29, i32 noundef %29) #9
  br label %get_csi_input_seq.exit

switch.hole_check:                                ; preds = %sw.bb.i53
  %switch.maskindex = trunc i32 %switch.tableidx60 to i16
  %switch.shifted = lshr i16 7695, %switch.maskindex
  %39 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %switch.lobit.not = icmp eq i16 %39, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i56_crit_edge, label %switch.lookup61

switch.hole_check.do.end.i56_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i56

switch.lookup61:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.sun6i_csi_set_format, i32 0, i32 %switch.tableidx60
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_csi_input_seq.exit

switch.hole_check64:                              ; preds = %sw.bb5.i
  %switch.maskindex66 = trunc i32 %switch.tableidx63 to i16
  %switch.shifted67 = lshr i16 7695, %switch.maskindex66
  %41 = and i16 %switch.shifted67, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %switch.lobit68.not = icmp eq i16 %41, 0
  br i1 %switch.lobit68.not, label %switch.hole_check64.do.end12.i_crit_edge, label %switch.lookup65

switch.hole_check64.do.end12.i_crit_edge:         ; preds = %switch.hole_check64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i

switch.lookup65:                                  ; preds = %switch.hole_check64
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep69 = getelementptr inbounds [13 x i32], ptr @switch.table.sun6i_csi_set_format.78, i32 0, i32 %switch.tableidx63
  %42 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load70 = load i32, ptr %switch.gep69, align 4
  br label %get_csi_input_seq.exit

get_csi_input_seq.exit:                           ; preds = %switch.lookup65, %switch.lookup61, %do.end18.i, %do.end12.i, %do.end.i56, %if.end.i52.get_csi_input_seq.exit_crit_edge, %get_csi_output_format.exit.get_csi_input_seq.exit_crit_edge
  %retval.0.i58 = phi i32 [ 0, %get_csi_output_format.exit.get_csi_input_seq.exit_crit_edge ], [ 0, %if.end.i52.get_csi_input_seq.exit_crit_edge ], [ 0, %do.end18.i ], [ 0, %do.end12.i ], [ 0, %do.end.i56 ], [ %switch.load, %switch.lookup61 ], [ %switch.load70, %switch.lookup65 ]
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cfg, align 4
  %or19 = or i32 %44, %retval.0.i58
  %45 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %field, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %46, label %if.else28 [
    i32 2, label %if.then
    i32 3, label %if.then26
  ]

if.then:                                          ; preds = %get_csi_input_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or19, ptr %cfg, align 4
  br label %if.end30

if.then26:                                        ; preds = %get_csi_input_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or27 = or i32 %or19, 1024
  %49 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or27, ptr %cfg, align 4
  br label %if.end30

if.else28:                                        ; preds = %get_csi_input_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or29 = or i32 %or19, 2048
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or29, ptr %cfg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26, %if.then
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %53 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cfg, align 4
  %call32 = call i32 @regmap_write(ptr noundef %52, i32 noundef 68, i32 noundef %54) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_csi_set_window(ptr nocapture noundef %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.sun6i_csi, ptr %sdev, i32 0, i32 6
  %planar_offset2 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 6
  %width3 = getelementptr inbounds %struct.sun6i_csi, ptr %sdev, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width3, align 4
  %height4 = getelementptr inbounds %struct.sun6i_csi, ptr %sdev, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height4, align 4
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1448695129, label %entry.do.body_crit_edge
    i32 1431918169, label %entry.do.body_crit_edge116
    i32 1498831189, label %entry.do.body_crit_edge117
    i32 1498765654, label %entry.do.body_crit_edge118
  ]

entry.do.body_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge116, %entry.do.body_crit_edge117, %entry.do.body_crit_edge118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_set_window.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_set_window, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_set_window.__UNIQUE_ID_ddebug304, ptr noundef %8, ptr noundef nonnull @.str.32) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %mul = shl i32 %1, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %hor_len.0 = phi i32 [ %1, %entry.sw.epilog_crit_edge ], [ %mul, %do.end ]
  %regmap = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %hor_len.0, 16
  %and = and i32 %shl, 536805376
  %call7 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 128, i32 noundef %and) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %shl9 = shl i32 %3, 16
  %and10 = and i32 %shl9, 536805376
  %call12 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 132, i32 noundef %and10) #6
  %13 = ptrtoint ptr %planar_offset2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %planar_offset2, align 4
  %14 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config1, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %15, label %do.body34 [
    i32 842091848, label %sw.epilog.sw.bb14_crit_edge
    i32 842094158, label %sw.epilog.sw.bb14_crit_edge119
    i32 825382478, label %sw.epilog.sw.bb14_crit_edge120
    i32 909203022, label %sw.epilog.sw.bb14_crit_edge121
    i32 825644622, label %sw.epilog.sw.bb14_crit_edge122
    i32 842093913, label %sw.epilog.sw.bb18_crit_edge
    i32 842094169, label %sw.epilog.sw.bb18_crit_edge123
    i32 1345466932, label %sw.bb25
  ]

sw.epilog.sw.bb18_crit_edge123:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

sw.epilog.sw.bb18_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

sw.epilog.sw.bb14_crit_edge122:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.epilog.sw.bb14_crit_edge121:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.epilog.sw.bb14_crit_edge120:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.epilog.sw.bb14_crit_edge119:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.epilog.sw.bb14_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.epilog.sw.bb14_crit_edge, %sw.epilog.sw.bb14_crit_edge119, %sw.epilog.sw.bb14_crit_edge120, %sw.epilog.sw.bb14_crit_edge121, %sw.epilog.sw.bb14_crit_edge122
  %mul15 = mul i32 %3, %1
  %arrayidx16 = getelementptr %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul15, ptr %arrayidx16, align 4
  br label %sw.epilog59

sw.bb18:                                          ; preds = %sw.epilog.sw.bb18_crit_edge, %sw.epilog.sw.bb18_crit_edge123
  %div107 = lshr i32 %1, 1
  %mul19 = mul i32 %3, %1
  %arrayidx20 = getelementptr %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul19, ptr %arrayidx20, align 4
  %mul22 = mul i32 %div107, %3
  %div23108 = lshr i32 %mul22, 1
  %add = add i32 %div23108, %mul19
  br label %sw.epilog59

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %div26106 = lshr i32 %1, 1
  %mul27 = mul i32 %3, %1
  %arrayidx28 = getelementptr %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul27, ptr %arrayidx28, align 4
  %mul30 = mul i32 %div26106, %3
  %add31 = add i32 %mul27, %mul30
  br label %sw.epilog59

do.body34:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_set_window.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_set_window, %if.then46)) #6
          to label %do.end51 [label %if.then46], !srcloc !171

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 1
  %20 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev47, align 8
  %22 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %config1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_set_window.__UNIQUE_ID_ddebug305, ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %23) #6
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %do.body34
  %24 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config1, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %25, label %do.end.i [
    i32 825770306, label %do.end51.sun6i_csi_get_bpp.exit_crit_edge
    i32 1196573255, label %do.end51.sun6i_csi_get_bpp.exit_crit_edge124
    i32 1195528775, label %do.end51.sun6i_csi_get_bpp.exit_crit_edge125
    i32 1111967570, label %do.end51.sun6i_csi_get_bpp.exit_crit_edge126
    i32 1195724874, label %do.end51.sun6i_csi_get_bpp.exit_crit_edge127
    i32 808535874, label %do.end51.sw.bb1.i_crit_edge
    i32 808534599, label %do.end51.sw.bb1.i_crit_edge128
    i32 808534338, label %do.end51.sw.bb1.i_crit_edge129
    i32 808535890, label %do.end51.sw.bb1.i_crit_edge130
    i32 842090306, label %do.end51.sw.bb2.i_crit_edge
    i32 842089031, label %do.end51.sw.bb2.i_crit_edge131
    i32 842088770, label %do.end51.sw.bb2.i_crit_edge132
    i32 842090322, label %do.end51.sw.bb2.i_crit_edge133
    i32 842091848, label %do.end51.sw.bb2.i_crit_edge134
    i32 842094158, label %do.end51.sw.bb2.i_crit_edge135
    i32 825382478, label %do.end51.sw.bb2.i_crit_edge136
    i32 842093913, label %do.end51.sw.bb2.i_crit_edge137
    i32 842094169, label %do.end51.sw.bb2.i_crit_edge138
    i32 1448695129, label %do.end51.sw.bb3.i_crit_edge
    i32 1431918169, label %do.end51.sw.bb3.i_crit_edge139
    i32 1498831189, label %do.end51.sw.bb3.i_crit_edge140
    i32 1498765654, label %do.end51.sw.bb3.i_crit_edge141
    i32 909203022, label %do.end51.sw.bb3.i_crit_edge142
    i32 825644622, label %do.end51.sw.bb3.i_crit_edge143
    i32 1345466932, label %do.end51.sw.bb3.i_crit_edge144
    i32 1346520914, label %do.end51.sw.bb3.i_crit_edge145
    i32 1380075346, label %do.end51.sw.bb3.i_crit_edge146
    i32 859981650, label %do.end51.sw.bb4.i_crit_edge
    i32 861030210, label %do.end51.sw.bb4.i_crit_edge147
    i32 876758866, label %do.end51.sw.bb5.i_crit_edge
    i32 877807426, label %do.end51.sw.bb5.i_crit_edge148
  ]

do.end51.sw.bb5.i_crit_edge148:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

do.end51.sw.bb5.i_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

do.end51.sw.bb4.i_crit_edge147:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

do.end51.sw.bb4.i_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

do.end51.sw.bb3.i_crit_edge146:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge145:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge144:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge143:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge142:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge141:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge140:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge139:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb3.i_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

do.end51.sw.bb2.i_crit_edge138:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge137:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge136:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge135:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge134:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge133:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge132:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge131:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb2.i_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

do.end51.sw.bb1.i_crit_edge130:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end51.sw.bb1.i_crit_edge129:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end51.sw.bb1.i_crit_edge128:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end51.sw.bb1.i_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end51.sun6i_csi_get_bpp.exit_crit_edge127:     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_get_bpp.exit

do.end51.sun6i_csi_get_bpp.exit_crit_edge126:     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_get_bpp.exit

do.end51.sun6i_csi_get_bpp.exit_crit_edge125:     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_get_bpp.exit

do.end51.sun6i_csi_get_bpp.exit_crit_edge124:     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_get_bpp.exit

do.end51.sun6i_csi_get_bpp.exit_crit_edge:        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_get_bpp.exit

sw.bb1.i:                                         ; preds = %do.end51.sw.bb1.i_crit_edge, %do.end51.sw.bb1.i_crit_edge128, %do.end51.sw.bb1.i_crit_edge129, %do.end51.sw.bb1.i_crit_edge130
  br label %sun6i_csi_get_bpp.exit

sw.bb2.i:                                         ; preds = %do.end51.sw.bb2.i_crit_edge, %do.end51.sw.bb2.i_crit_edge131, %do.end51.sw.bb2.i_crit_edge132, %do.end51.sw.bb2.i_crit_edge133, %do.end51.sw.bb2.i_crit_edge134, %do.end51.sw.bb2.i_crit_edge135, %do.end51.sw.bb2.i_crit_edge136, %do.end51.sw.bb2.i_crit_edge137, %do.end51.sw.bb2.i_crit_edge138
  br label %sun6i_csi_get_bpp.exit

sw.bb3.i:                                         ; preds = %do.end51.sw.bb3.i_crit_edge, %do.end51.sw.bb3.i_crit_edge139, %do.end51.sw.bb3.i_crit_edge140, %do.end51.sw.bb3.i_crit_edge141, %do.end51.sw.bb3.i_crit_edge142, %do.end51.sw.bb3.i_crit_edge143, %do.end51.sw.bb3.i_crit_edge144, %do.end51.sw.bb3.i_crit_edge145, %do.end51.sw.bb3.i_crit_edge146
  br label %sun6i_csi_get_bpp.exit

sw.bb4.i:                                         ; preds = %do.end51.sw.bb4.i_crit_edge, %do.end51.sw.bb4.i_crit_edge147
  br label %sun6i_csi_get_bpp.exit

sw.bb5.i:                                         ; preds = %do.end51.sw.bb5.i_crit_edge, %do.end51.sw.bb5.i_crit_edge148
  br label %sun6i_csi_get_bpp.exit

do.end.i:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %25) #6
  br label %sun6i_csi_get_bpp.exit

sun6i_csi_get_bpp.exit:                           ; preds = %do.end.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end51.sun6i_csi_get_bpp.exit_crit_edge, %do.end51.sun6i_csi_get_bpp.exit_crit_edge124, %do.end51.sun6i_csi_get_bpp.exit_crit_edge125, %do.end51.sun6i_csi_get_bpp.exit_crit_edge126, %do.end51.sun6i_csi_get_bpp.exit_crit_edge127
  %retval.0.i113 = phi i32 [ 0, %do.end.i ], [ 32, %sw.bb5.i ], [ 24, %sw.bb4.i ], [ 16, %sw.bb3.i ], [ 12, %sw.bb2.i ], [ 10, %sw.bb1.i ], [ 8, %do.end51.sun6i_csi_get_bpp.exit_crit_edge ], [ 8, %do.end51.sun6i_csi_get_bpp.exit_crit_edge124 ], [ 8, %do.end51.sun6i_csi_get_bpp.exit_crit_edge125 ], [ 8, %do.end51.sun6i_csi_get_bpp.exit_crit_edge126 ], [ 8, %do.end51.sun6i_csi_get_bpp.exit_crit_edge127 ]
  %27 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width3, align 4
  %mul55 = mul i32 %28, %retval.0.i113
  %div56109 = lshr i32 %mul55, 3
  %arrayidx57 = getelementptr %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %arrayidx57, align 4
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sun6i_csi_get_bpp.exit, %sw.bb25, %sw.bb18, %sw.bb14
  %.sink = phi i32 [ -1, %sun6i_csi_get_bpp.exit ], [ %add31, %sw.bb25 ], [ %add, %sw.bb18 ], [ -1, %sw.bb14 ]
  %bytesperline_c.0 = phi i32 [ 0, %sun6i_csi_get_bpp.exit ], [ %div26106, %sw.bb25 ], [ %div107, %sw.bb18 ], [ %1, %sw.bb14 ]
  %bytesperline_y.0 = phi i32 [ %div56109, %sun6i_csi_get_bpp.exit ], [ %1, %sw.bb25 ], [ %1, %sw.bb18 ], [ %1, %sw.bb14 ]
  %arrayidx58 = getelementptr %struct.sun6i_csi_dev, ptr %sdev, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %arrayidx58, align 4
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %shl61 = shl i32 %bytesperline_c.0, 16
  %and62 = and i32 %shl61, 1073676288
  %and64 = and i32 %bytesperline_y.0, 16383
  %or65 = or i32 %and62, %and64
  %call66 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 136, i32 noundef %or65) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun6i_csi_update_buf_addr(ptr nocapture noundef readonly %csi, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %planar_offset = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 6
  %2 = ptrtoint ptr %planar_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %planar_offset, align 4
  %add = add i32 %3, %addr
  %shr = lshr i32 %add, 2
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 80, i32 noundef %shr) #6
  %arrayidx3 = getelementptr %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %add7 = add i32 %5, %addr
  %shr8 = lshr i32 %add7, 2
  %call9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 88, i32 noundef %shr8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx11 = getelementptr %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp12.not = icmp eq i32 %9, -1
  br i1 %cmp12.not, label %if.end.if.end20_crit_edge, label %if.then13

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %add17 = add i32 %9, %addr
  %shr18 = lshr i32 %add17, 2
  %call19 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 96, i32 noundef %shr18) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun6i_csi_set_stream(ptr nocapture noundef readonly %csi, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %csi, i32 0, i32 2
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 112, i32 noundef 0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 116, i32 noundef 255) #6
  %call5 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 112, i32 noundef 95) #6
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_csi_platform_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_csi_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_csi_platform_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_csi_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_csi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3352, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 8
  %call.i22 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.sun6i_csi_resource_request.exit_crit_edge, label %if.end.i

if.end.sun6i_csi_resource_request.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun6i_csi_resource_request.exit

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %call.i22, ptr noundef nonnull @sun6i_csi_regmap_config, ptr noundef nonnull @sun6i_csi_resource_request._key, ptr noundef nonnull @.str.37) #6
  %regmap.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %regmap.i, align 4
  %cmp.i87.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  br label %sun6i_csi_resource_request.exit

if.end10.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.40) #6
  %clk_mod.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %clk_mod.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12.i, ptr %clk_mod.i, align 8
  %cmp.i88.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i, label %do.end18.i, label %if.end22.i

do.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #9
  %5 = ptrtoint ptr %clk_mod.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_mod.i, align 8
  br label %sun6i_csi_resource_request.exit

if.end22.i:                                       ; preds = %if.end10.i
  %call24.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.44) #6
  %clk_ram.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %clk_ram.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call24.i, ptr %clk_ram.i, align 4
  %cmp.i89.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89.i, label %do.end30.i, label %if.end34.i

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #9
  %8 = ptrtoint ptr %clk_ram.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ram.i, align 4
  br label %sun6i_csi_resource_request.exit

if.end34.i:                                       ; preds = %if.end22.i
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %rstc_bus.i = getelementptr inbounds %struct.sun6i_csi_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %rstc_bus.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %rstc_bus.i, align 8
  %cmp.i90.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90.i, label %do.end42.i, label %if.end46.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  %11 = ptrtoint ptr %rstc_bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rstc_bus.i, align 8
  br label %sun6i_csi_resource_request.exit

if.end46.i:                                       ; preds = %if.end34.i
  %call47.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp.i = icmp slt i32 %call47.i, 0
  br i1 %cmp.i, label %if.end46.i.cleanup_crit_edge, label %if.end49.i

if.end46.i.cleanup_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49.i:                                       ; preds = %if.end46.i
  %call.i91.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call47.i, ptr noundef nonnull @sun6i_csi_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool.not.i, label %if.end49.i.if.end6_crit_edge, label %do.end55.i

if.end49.i.if.end6_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end55.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #9
  br label %cleanup

sun6i_csi_resource_request.exit:                  ; preds = %do.end42.i, %do.end30.i, %do.end18.i, %do.end.i, %if.end.sun6i_csi_resource_request.exit_crit_edge
  %retval.0.i.in = phi ptr [ %3, %do.end.i ], [ %6, %do.end18.i ], [ %9, %do.end30.i ], [ %12, %do.end42.i ], [ %call.i22, %if.end.sun6i_csi_resource_request.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool4.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool4.not, label %sun6i_csi_resource_request.exit.if.end6_crit_edge, label %sun6i_csi_resource_request.exit.cleanup_crit_edge

sun6i_csi_resource_request.exit.cleanup_crit_edge: ; preds = %sun6i_csi_resource_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sun6i_csi_resource_request.exit.if.end6_crit_edge: ; preds = %sun6i_csi_resource_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %sun6i_csi_resource_request.exit.if.end6_crit_edge, %if.end49.i.if.end6_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i, align 8
  %media_dev.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %media_dev.i, align 8
  %model.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 3, i32 2
  %call.i23 = tail call i32 @strscpy(ptr noundef %model.i, ptr noundef nonnull @.str.54, i32 noundef 32) #6
  %hw_revision.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hw_revision.i, align 8
  %bus_info.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.dev_name.exit.i_crit_edge

if.end6.dev_name.exit.i_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end6.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.end6.dev_name.exit.i_crit_edge ]
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info.i, i32 noundef 32, ptr noundef nonnull @.str.55, ptr noundef %retval.0.i.i) #6
  tail call void @media_device_init(ptr noundef %media_dev.i) #6
  %notifier.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 4
  tail call void @v4l2_async_nf_init(ptr noundef %notifier.i) #6
  %ctrl_handler.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 1
  %call10.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 0, ptr noundef nonnull @sun6i_csi_v4l2_init._key, ptr noundef nonnull @.str.56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i24 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i24, label %if.end.i26, label %do.end.i25

do.end.i25:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.57, i32 noundef %call10.i) #9
  br label %clean_media.i

if.end.i26:                                       ; preds = %dev_name.exit.i
  %v4l2_dev.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 2
  %mdev.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %media_dev.i, ptr %mdev.i, align 4
  %ctrl_handler15.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %ctrl_handler15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctrl_handler.i, ptr %ctrl_handler15.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  %call18.i = tail call i32 @v4l2_device_register(ptr noundef %28, ptr noundef %v4l2_dev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.60, i32 noundef %call18.i) #9
  br label %free_ctrl.i

if.end25.i:                                       ; preds = %if.end.i26
  %video.i = getelementptr inbounds %struct.sun6i_csi, ptr %call.i, i32 0, i32 7
  %call26.i = tail call i32 @sun6i_video_init(ptr noundef %video.i, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.unreg_v4l2.i_crit_edge

if.end25.i.unreg_v4l2.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unreg_v4l2.i

if.end29.i:                                       ; preds = %if.end25.i
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %call32.i = tail call i32 @v4l2_async_nf_parse_fwnode_endpoints(ptr noundef %32, ptr noundef %notifier.i, i32 noundef 28, ptr noundef nonnull @sun6i_csi_fwnode_parse) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end29.i.clean_video.i_crit_edge

if.end29.i.clean_video.i_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_video.i

if.end35.i:                                       ; preds = %if.end29.i
  %33 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sun6i_csi_async_ops, ptr %notifier.i, align 8
  %call39.i = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev.i, ptr noundef %notifier.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end35.i.cleanup_crit_edge, label %do.end44.i

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.63) #9
  br label %clean_video.i

clean_video.i:                                    ; preds = %do.end44.i, %if.end29.i.clean_video.i_crit_edge
  %ret.0.i = phi i32 [ %call32.i, %if.end29.i.clean_video.i_crit_edge ], [ %call39.i, %do.end44.i ]
  tail call void @sun6i_video_cleanup(ptr noundef %video.i) #6
  br label %unreg_v4l2.i

unreg_v4l2.i:                                     ; preds = %clean_video.i, %if.end25.i.unreg_v4l2.i_crit_edge
  %ret.1.i = phi i32 [ %call26.i, %if.end25.i.unreg_v4l2.i_crit_edge ], [ %ret.0.i, %clean_video.i ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #6
  br label %free_ctrl.i

free_ctrl.i:                                      ; preds = %unreg_v4l2.i, %do.end23.i
  %ret.2.i = phi i32 [ %call18.i, %do.end23.i ], [ %ret.1.i, %unreg_v4l2.i ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #6
  br label %clean_media.i

clean_media.i:                                    ; preds = %free_ctrl.i, %do.end.i25
  %ret.3.i = phi i32 [ %call10.i, %do.end.i25 ], [ %ret.2.i, %free_ctrl.i ]
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #6
  tail call void @media_device_cleanup(ptr noundef %media_dev.i) #6
  br label %cleanup

cleanup:                                          ; preds = %clean_media.i, %if.end35.i.cleanup_crit_edge, %sun6i_csi_resource_request.exit.cleanup_crit_edge, %do.end55.i, %if.end46.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %sun6i_csi_resource_request.exit.cleanup_crit_edge ], [ %ret.3.i, %clean_media.i ], [ 0, %if.end35.i.cleanup_crit_edge ], [ -6, %if.end46.i.cleanup_crit_edge ], [ %call.i91.i, %do.end55.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_csi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %media_dev.i = getelementptr inbounds %struct.sun6i_csi, ptr %1, i32 0, i32 3
  tail call void @media_device_unregister(ptr noundef %media_dev.i) #6
  %notifier.i = getelementptr inbounds %struct.sun6i_csi, ptr %1, i32 0, i32 4
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #6
  %video.i = getelementptr inbounds %struct.sun6i_csi, ptr %1, i32 0, i32 7
  tail call void @sun6i_video_cleanup(ptr noundef %video.i) #6
  %v4l2_dev.i = getelementptr inbounds %struct.sun6i_csi, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #6
  %ctrl_handler.i = getelementptr inbounds %struct.sun6i_csi, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #6
  tail call void @media_device_cleanup(ptr noundef %media_dev.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_csi_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.sun6i_csi_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !172
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 116, ptr noundef nonnull %status) #6
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = and i32 %4, 92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 @regmap_write(ptr noundef %1, i32 noundef 116, i32 noundef %4) #6
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i31 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %and17 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %video = getelementptr inbounds %struct.sun6i_csi, ptr %dev_id, i32 0, i32 7
  call void @sun6i_video_frame_done(ptr noundef %video) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %call21 = call i32 @regmap_write(ptr noundef %1, i32 noundef 116, i32 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 1, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun6i_video_frame_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun6i_video_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_parse_fwnode_endpoints(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_csi_fwnode_parse(ptr noundef %dev, ptr nocapture noundef readonly %vep, ptr nocapture noundef readnone %asd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %vep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.fwnode_endpoint, ptr %vep, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bus_type = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 1
  %6 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_type, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.end5

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_ep = getelementptr inbounds %struct.sun6i_csi, ptr %1, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %v4l2_ep, ptr %vep, i32 64)
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %sw.bb, %do.end
  %retval.0 = phi i32 [ -107, %do.end ], [ -107, %do.end5 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun6i_video_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_subdev_notify_complete(ptr noundef %notifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -928
  %v4l2_dev1 = getelementptr i8, ptr %notifier, i32 -740
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_subdev_notify_complete.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_subdev_notify_complete, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_subdev_notify_complete.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.71) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %subdevs = getelementptr i8, ptr %notifier, i32 -732
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevs, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 -80
  %tobool8.not = icmp eq ptr %add.ptr7, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %fwnode = getelementptr i8, ptr %3, i32 88
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode, align 4
  %call11 = tail call fastcc i32 @sun6i_csi_link_entity(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr7, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev1, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %media_dev = getelementptr i8, ptr %notifier, i32 -608
  %call19 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ -22, %do.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_csi_link_entity(ptr noundef %csi, ptr noundef %entity, ptr noundef %fwnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %entity, ptr noundef %fwnode, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %video = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_csi_link_entity.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_csi_link_entity, %if.then7)) #6
          to label %do.end13 [label %if.then7], !srcloc !171

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csi, align 8
  %name9 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %6 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name9, align 4
  %name10 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 7, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name10, align 4
  %index = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 7, i32 1, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index, align 4
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_csi_link_entity.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.74, ptr noundef %7, i32 noundef %call, ptr noundef %9, i32 noundef %conv) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %if.end
  %conv14 = trunc i32 %call to i16
  %index15 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 7, i32 1, i32 2
  %12 = ptrtoint ptr %index15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index15, align 4
  %call16 = tail call i32 @media_create_pad_link(ptr noundef %entity, i16 noundef zeroext %conv14, ptr noundef %video, i16 noundef zeroext %13, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end22, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csi, align 8
  %name24 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %16 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name24, align 4
  %name25 = getelementptr inbounds %struct.sun6i_csi, ptr %csi, i32 0, i32 7, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name25, align 4
  %20 = ptrtoint ptr %index15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index15, align 4
  %conv27 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.76, ptr noundef %17, i32 noundef %call, ptr noundef %19, i32 noundef %conv27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call16, %do.end22 ], [ 0, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !84, !85, !86, !88, !89, !90, !91, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !158, !159, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 79, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug299, !1, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 85, i32 4}
!8 = !{ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug300, !7, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!9 = !{ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug301, !10, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 142, i32 4}
!11 = !{ptr @sun6i_csi_is_format_supported.__UNIQUE_ID_ddebug302, !12, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 157, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 176, i32 10}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 185, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun6i_csi_set_power._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun6i_csi_set_power._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 194, i32 3}
!24 = !{ptr @sun6i_csi_set_power._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun6i_csi_set_power._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 200, i32 3}
!28 = !{ptr @sun6i_csi_set_power._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun6i_csi_set_power._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_sun6i_csi__308_931_sun6i_csi_platform_driver_init6, !31, !"__initcall__kmod_sun6i_csi__308_931_sun6i_csi_platform_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 931, i32 1}
!32 = !{ptr @__exitcall_sun6i_csi_platform_driver_exit, !31, !"__exitcall_sun6i_csi_platform_driver_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_description309, !34, !"__UNIQUE_ID_description309", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 933, i32 1}
!35 = !{ptr @__UNIQUE_ID_author310, !36, !"__UNIQUE_ID_author310", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 934, i32 1}
!37 = !{ptr @__UNIQUE_ID_file311, !38, !"__UNIQUE_ID_file311", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 935, i32 1}
!39 = !{ptr @__UNIQUE_ID_license312, !38, !"__UNIQUE_ID_license312", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 437, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sun6i_csi_setup_bus._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @sun6i_csi_setup_bus._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 455, i32 3}
!48 = !{ptr @sun6i_csi_setup_bus._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sun6i_csi_setup_bus._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 235, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @get_csi_input_format.__UNIQUE_ID_ddebug303, !51, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 299, i32 3}
!56 = !{ptr @get_csi_output_format._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @get_csi_output_format._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 333, i32 4}
!60 = !{ptr @get_csi_input_seq._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @get_csi_input_seq._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @get_csi_input_seq._entry.26, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 355, i32 4}
!64 = !{ptr @get_csi_input_seq._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 365, i32 3}
!67 = !{ptr @get_csi_input_seq._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @get_csi_input_seq._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 512, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sun6i_csi_set_window.__UNIQUE_ID_ddebug304, !70, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 555, i32 3}
!75 = !{ptr @sun6i_csi_set_window.__UNIQUE_ID_ddebug305, !74, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h", i32 131, i32 3}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 927, i32 11}
!80 = !{ptr @sun6i_csi_platform_driver, !81, !"sun6i_csi_platform_driver", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 923, i32 31}
!82 = !{ptr @sun6i_csi_resource_request._key, !83, !"_key", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 844, i32 17}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 847, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sun6i_csi_resource_request._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @sun6i_csi_resource_request._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 851, i32 43}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 853, i32 3}
!95 = !{ptr @sun6i_csi_resource_request._entry.41, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sun6i_csi_resource_request._entry_ptr.43, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 857, i32 43}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 859, i32 3}
!101 = !{ptr @sun6i_csi_resource_request._entry.45, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sun6i_csi_resource_request._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 865, i32 3}
!105 = !{ptr @sun6i_csi_resource_request._entry.48, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sun6i_csi_resource_request._entry_ptr.50, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 876, i32 3}
!109 = !{ptr @sun6i_csi_resource_request._entry.51, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sun6i_csi_resource_request._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @sun6i_csi_regmap_config, !112, !"sun6i_csi_regmap_config", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 826, i32 35}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 733, i32 32}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 737, i32 4}
!117 = !{ptr @sun6i_csi_v4l2_init._key, !118, !"_key", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 742, i32 8}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 744, i32 3}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @sun6i_csi_v4l2_init._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @sun6i_csi_v4l2_init._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 753, i32 3}
!127 = !{ptr @sun6i_csi_v4l2_init._entry.59, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sun6i_csi_v4l2_init._entry_ptr.61, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 774, i32 3}
!131 = !{ptr @sun6i_csi_v4l2_init._entry.62, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @sun6i_csi_v4l2_init._entry_ptr.64, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 702, i32 3}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @sun6i_csi_fwnode_parse._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @sun6i_csi_fwnode_parse._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 712, i32 3}
!140 = !{ptr @sun6i_csi_fwnode_parse._entry.67, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sun6i_csi_fwnode_parse._entry_ptr.69, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @sun6i_csi_async_ops, !143, !"sun6i_csi_async_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 691, i32 52}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 674, i32 2}
!146 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sun6i_subdev_notify_complete.__UNIQUE_ID_ddebug307, !145, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 640, i32 3}
!150 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @sun6i_csi_link_entity._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @sun6i_csi_link_entity._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 650, i32 2}
!155 = !{ptr @sun6i_csi_link_entity.__UNIQUE_ID_ddebug306, !154, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 657, i32 3}
!158 = !{ptr @sun6i_csi_link_entity._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @sun6i_csi_link_entity._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @sun6i_csi_of_match, !161, !"sun6i_csi_of_match", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c", i32 913, i32 34}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 2148744577, i64 2148744582, i64 2148744595, i64 2148744639, i64 2148744673, i64 2148744694}
!172 = !{!"auto-init"}
