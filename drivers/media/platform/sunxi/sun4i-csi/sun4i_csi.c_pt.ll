; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sun4i_csi_traits = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sun4i_csi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], %struct.anon.117, %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_device, %struct.media_device, %struct.video_device, %struct.media_pad, %struct.v4l2_pix_format_mplane, %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_async_notifier, ptr, i32, %struct.mutex, %struct.vb2_queue, %struct.list_head, %struct.spinlock, i32 }
%struct.anon.117 = type { i32, ptr, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.114, i16, i16, i16, [10 x i16] }
%union.anon.114 = type { i16 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.118, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.118 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }

@__initcall__kmod_sun4i_csi__300_341_sun4i_csi_driver_init6 = internal global ptr @sun4i_csi_driver_init, section ".initcall6.init", align 4
@sun4i_csi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_csi_probe, ptr @sun4i_csi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_csi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_csi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_csi_driver_exit = internal global ptr @sun4i_csi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [67 x i8] c"sun4i_csi.description=Allwinner A10 Camera Sensor Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [52 x i8] c"sun4i_csi.author=Maxime Ripard <mripard@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [64 x i8] c"sun4i_csi.file=drivers/media/platform/sunxi/sun4i-csi/sun4i-csi\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [22 x i8] c"sun4i_csi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-csi\00", [22 x i8] zeroinitializer }, align 32
@sun4i_csi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-csi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_csi1_traits }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-csi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_csi0_traits }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun4i_csi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_csi_runtime_suspend, ptr @sun4i_csi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Allwinner Video Capture Device\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 191, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get our bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_csi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry_ptr = internal global ptr @sun4i_csi_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 198, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get our ISP clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry_ptr.12 = internal global ptr @sun4i_csi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 205, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get our ram clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry_ptr.16 = internal global ptr @sun4i_csi_probe._entry.14, section ".printk_index", align 4
@sun4i_csi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 211, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry_ptr.19 = internal global ptr @sun4i_csi_probe._entry.17, section ".printk_index", align 4
@sun4i_csi_subdev_ops = external dso_local constant %struct.v4l2_subdev_ops, align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun4i-csi-0\00", [20 x i8] zeroinitializer }, align 32
@sun4i_csi_video_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 247, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't register our notifier.\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_csi_probe._entry_ptr.23 = internal global ptr @sun4i_csi_probe._entry.21, section ".printk_index", align 4
@sun4i_csi_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @sun4i_csi_notify_bound, ptr @sun4i_csi_notify_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@sun4i_csi_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 56, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't find output pad for subdev %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_csi_notify_bound\00", [41 x i8] zeroinitializer }, align 32
@sun4i_csi_notify_bound._entry_ptr = internal global ptr @sun4i_csi_notify_bound._entry, section ".printk_index", align 4
@sun4i_csi_notify_bound.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.25, ptr @.str.6, ptr @.str.27, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i_csi\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bound %s pad: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sun4i_a10_csi1_traits = internal constant { %struct.sun4i_csi_traits, [20 x i8] } { %struct.sun4i_csi_traits { i32 1, i32 24, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sun7i_a20_csi0_traits = internal constant { %struct.sun4i_csi_traits, [20 x i8] } { %struct.sun4i_csi_traits { i32 4, i32 16, i8 1 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"sun4i_csi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 332, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 336, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"sun4i_csi_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 291, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"sun4i_csi_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 326, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 173, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 176, i32 59 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 189, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 191, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 196, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 198, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 203, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 205, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 211, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 220, i32 47 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"sun4i_csi_video_entity_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 39, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 247, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"sun4i_csi_notify_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 111, i32 52 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 55, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 60, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"sun4i_a10_csi1_traits\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 279, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"sun7i_a20_csi0_traits\00", align 1
@___asan_gen_.125 = private constant [54 x i8] c"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 285, i32 38 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_sun4i_csi_driver_exit, ptr @__initcall__kmod_sun4i_csi__300_341_sun4i_csi_driver_init6, ptr @sun4i_csi_driver_exit, ptr @sun4i_csi_notify_bound._entry, ptr @sun4i_csi_notify_bound._entry_ptr, ptr @sun4i_csi_probe._entry, ptr @sun4i_csi_probe._entry.10, ptr @sun4i_csi_probe._entry.14, ptr @sun4i_csi_probe._entry.17, ptr @sun4i_csi_probe._entry.21, ptr @sun4i_csi_probe._entry_ptr, ptr @sun4i_csi_probe._entry_ptr.12, ptr @sun4i_csi_probe._entry_ptr.16, ptr @sun4i_csi_probe._entry_ptr.19, ptr @sun4i_csi_probe._entry_ptr.23, ptr @sun4i_csi_driver, ptr @.str, ptr @sun4i_csi_of_match, ptr @sun4i_csi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @sun4i_csi_video_entity_ops, ptr @.str.22, ptr @sun4i_csi_notify_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @sun4i_a10_csi1_traits, ptr @sun7i_a20_csi0_traits], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_video_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_csi1_traits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_csi0_traits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_csi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_csi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_csi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3392, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %subdev3 = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 15
  %vdev4 = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 12
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %traits = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %traits to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %traits, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  %mdev = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 11, i32 2
  %call14 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.1, i32 noundef 32) #6
  %hw_revision = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 11, i32 6
  %6 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hw_revision, align 8
  %bus_info = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 11, i32 5
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end10.dev_name.exit_crit_edge ]
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i)
  tail call void @media_device_init(ptr noundef %mdev) #6
  %v4l = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 10
  %mdev23 = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %mdev23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mdev, ptr %mdev23, align 4
  %call24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %dev_name.exit
  %call31 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call35, ptr %bus_clk, align 4
  %cmp.i203 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %do.end, label %if.end42

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %17 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %traits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %traits, align 4
  %has_isp = getelementptr inbounds %struct.sun4i_csi_traits, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %has_isp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_isp, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not = icmp eq i8 %23, 0
  br i1 %tobool44.not, label %if.end42.if.end58_crit_edge, label %if.then45

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then45:                                        ; preds = %if.end42
  %call47 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  %isp_clk = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %isp_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call47, ptr %isp_clk, align 8
  %cmp.i204 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %do.end53, label %if.then45.if.end58_crit_edge

if.then45.if.end58_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.end53:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %25 = ptrtoint ptr %isp_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isp_clk, align 8
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.then45.if.end58_crit_edge, %if.end42.if.end58_crit_edge
  %call60 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %ram_clk = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %ram_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call60, ptr %ram_clk, align 4
  %cmp.i205 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end66, label %if.end70

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %29 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ram_clk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end70:                                         ; preds = %if.end58
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %rst, align 8
  %cmp.i206 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %do.end78, label %if.end82

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  %33 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rst, align 8
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end82:                                         ; preds = %if.end70
  tail call void @v4l2_subdev_init(ptr noundef %subdev3, ptr noundef nonnull @sun4i_csi_subdev_ops) #6
  %flags = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 15, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 12, ptr %flags, align 4
  %function = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 20482, ptr %function, align 4
  %owner = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 15, i32 2
  %38 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %owner, align 4
  %name = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 15, i32 9
  %39 = call ptr @memcpy(ptr %name, ptr @.str.20, i32 12)
  %dev_priv.i = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 15, i32 11
  %40 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %subdev_pads = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 16
  %flags85 = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 16, i32 0, i32 4
  %41 = ptrtoint ptr %flags85 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %flags85, align 4
  %flags88 = getelementptr %struct.sun4i_csi, ptr %call.i, i32 0, i32 16, i32 1, i32 4
  %42 = ptrtoint ptr %flags88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %flags88, align 4
  %call92 = tail call i32 @media_entity_pads_init(ptr noundef %subdev3, i16 noundef zeroext 2, ptr noundef %subdev_pads) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end82.cleanup_crit_edge, label %if.end95

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end95:                                         ; preds = %if.end82
  %vdev_pad = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 13
  %flags96 = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 13, i32 4
  %43 = ptrtoint ptr %flags96 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %flags96, align 4
  %ops = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 12, i32 0, i32 11
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sun4i_csi_video_entity_ops, ptr %ops, align 8
  %call100 = tail call i32 @media_entity_pads_init(ptr noundef %vdev4, i16 noundef zeroext 1, ptr noundef %vdev_pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end95.cleanup_crit_edge, label %if.end103

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end103:                                        ; preds = %if.end95
  %call104 = tail call i32 @sun4i_csi_dma_register(ptr noundef nonnull %call.i, i32 noundef %call31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.err_clean_pad_crit_edge

if.end103.err_clean_pad_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clean_pad

if.end107:                                        ; preds = %if.end103
  %call108 = tail call fastcc i32 @sun4i_csi_notifier_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.err_unregister_media_crit_edge

if.end107.err_unregister_media_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unregister_media

if.end111:                                        ; preds = %if.end107
  %notifier = getelementptr inbounds %struct.sun4i_csi, ptr %call.i, i32 0, i32 18
  %call113 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end120, label %do.end118

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.22) #9
  br label %err_unregister_media

if.end120:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %cleanup

err_unregister_media:                             ; preds = %do.end118, %if.end107.err_unregister_media_crit_edge
  %ret.0 = phi i32 [ %call108, %if.end107.err_unregister_media_crit_edge ], [ %call113, %do.end118 ]
  tail call void @media_device_unregister(ptr noundef %mdev) #6
  tail call void @sun4i_csi_dma_unregister(ptr noundef nonnull %call.i) #6
  br label %err_clean_pad

err_clean_pad:                                    ; preds = %err_unregister_media, %if.end103.err_clean_pad_crit_edge
  %ret.1 = phi i32 [ %call104, %if.end103.err_clean_pad_crit_edge ], [ %ret.0, %err_unregister_media ]
  tail call void @media_device_cleanup(ptr noundef %mdev) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clean_pad, %if.end120, %if.end95.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %do.end78, %do.end66, %do.end53, %do.end, %if.end30.cleanup_crit_edge, %if.then27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then27 ], [ %19, %do.end ], [ %27, %do.end53 ], [ %31, %do.end66 ], [ %35, %do.end78 ], [ %ret.1, %err_clean_pad ], [ 0, %if.end120 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call92, %if.end82.cleanup_crit_edge ], [ %call100, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 18
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #6
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #6
  %vdev = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 12
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #6
  %mdev = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 11
  tail call void @media_device_unregister(ptr noundef %mdev) #6
  tail call void @sun4i_csi_dma_unregister(ptr noundef %1) #6
  tail call void @media_device_cleanup(ptr noundef %mdev) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_csi_dma_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_csi_notifier_init(ptr noundef %csi) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #6
  %0 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  %notifier = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 18
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #6
  %3 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csi, align 8
  %call = tail call ptr @dev_fwnode(ptr noundef %4) #6
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1, ptr noundef nonnull %vep) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %bus = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 9
  %bus6 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2
  %5 = ptrtoint ptr %bus6 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %bus6, align 4
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %bus, align 8
  %call8 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call1, i32 noundef 28) #6
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call8 to i32
  br label %out

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sun4i_csi_notify_ops, ptr %notifier, align 4
  br label %out

out:                                              ; preds = %if.end12, %if.then10, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %8, %if.then10 ], [ 0, %if.end12 ]
  call void @fwnode_handle_put(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_csi_dma_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_notify_bound(ptr nocapture noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -2676
  %src_subdev = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %src_subdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %subdev, ptr %src_subdev, align 4
  %fwnode = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 15
  %1 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwnode, align 4
  %call = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %subdev, ptr noundef %2, i32 noundef 2) #6
  %src_pad = getelementptr i8, ptr %notifier, i32 52
  %3 = ptrtoint ptr %src_pad to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %src_pad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef %name) #9
  %6 = ptrtoint ptr %src_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_pad, align 8
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_csi_notify_bound.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_csi_notify_bound, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !81

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %name10 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  %10 = ptrtoint ptr %src_pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_pad, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_csi_notify_bound.__UNIQUE_ID_ddebug299, ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef %name10, i32 noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body3, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.then8 ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_notify_complete(ptr noundef %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr i8, ptr %notifier, i32 -308
  %vdev2 = getelementptr i8, ptr %notifier, i32 -1884
  %v4l = getelementptr i8, ptr %notifier, i32 -2620
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l, ptr noundef %subdev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %notifier, i32 -2676
  %call3 = tail call i32 @sun4i_csi_v4l2_register(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mdev = getelementptr i8, ptr %notifier, i32 -2492
  %call7 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call11 = tail call i32 @media_create_pad_link(ptr noundef %subdev1, i16 noundef zeroext 1, ptr noundef %vdev2, i16 noundef zeroext 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.err_clean_media_crit_edge

if.end9.err_clean_media_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clean_media

if.end14:                                         ; preds = %if.end9
  %src_subdev = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %src_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_subdev, align 4
  %src_pad = getelementptr i8, ptr %notifier, i32 52
  %2 = ptrtoint ptr %src_pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_pad, align 8
  %conv = trunc i32 %3 to i16
  %call17 = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %subdev1, i16 noundef zeroext 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.err_clean_media_crit_edge

if.end14.err_clean_media_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clean_media

if.end20:                                         ; preds = %if.end14
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23 = icmp slt i32 %call.i, 0
  br i1 %cmp23, label %if.end20.err_clean_media_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.err_clean_media_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clean_media

err_clean_media:                                  ; preds = %if.end20.err_clean_media_crit_edge, %if.end14.err_clean_media_crit_edge, %if.end9.err_clean_media_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end9.err_clean_media_crit_edge ], [ %call17, %if.end14.err_clean_media_crit_edge ], [ %call.i, %if.end20.err_clean_media_crit_edge ]
  tail call void @media_device_unregister(ptr noundef %mdev) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clean_media, %if.end20.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_clean_media ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_csi_v4l2_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %isp_clk = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %isp_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %ram_clk = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %rst = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst, align 8
  %call1 = tail call i32 @reset_control_assert(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rst = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 8
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %3) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %ram_clk = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ram_clk, align 4
  %call.i12 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %clk_prepare_enable.exit.clk_prepare_enable.exit18_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit18_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit18

if.end.i16:                                       ; preds = %clk_prepare_enable.exit
  %call1.i14 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %if.end.i16.clk_prepare_enable.exit18_crit_edge, label %if.then3.i17

if.end.i16.clk_prepare_enable.exit18_crit_edge:   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit18

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit18

clk_prepare_enable.exit18:                        ; preds = %if.then3.i17, %if.end.i16.clk_prepare_enable.exit18_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit18_crit_edge
  %isp_clk = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %isp_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp_clk, align 8
  %call4 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef 80000000) #6
  %10 = ptrtoint ptr %isp_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp_clk, align 8
  %call.i19 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i23, label %clk_prepare_enable.exit18.clk_prepare_enable.exit25_crit_edge

clk_prepare_enable.exit18.clk_prepare_enable.exit25_crit_edge: ; preds = %clk_prepare_enable.exit18
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit25

if.end.i23:                                       ; preds = %clk_prepare_enable.exit18
  %call1.i21 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool2.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool2.not.i22, label %if.end.i23.clk_prepare_enable.exit25_crit_edge, label %if.then3.i24

if.end.i23.clk_prepare_enable.exit25_crit_edge:   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit25

if.then3.i24:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %clk_prepare_enable.exit25

clk_prepare_enable.exit25:                        ; preds = %if.then3.i24, %if.end.i23.clk_prepare_enable.exit25_crit_edge, %clk_prepare_enable.exit18.clk_prepare_enable.exit25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16777216) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_sun4i_csi__300_341_sun4i_csi_driver_init6, !1, !"__initcall__kmod_sun4i_csi__300_341_sun4i_csi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 341, i32 1}
!2 = !{ptr @__exitcall_sun4i_csi_driver_exit, !1, !"__exitcall_sun4i_csi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description301, !4, !"__UNIQUE_ID_description301", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 343, i32 1}
!5 = !{ptr @__UNIQUE_ID_author302, !6, !"__UNIQUE_ID_author302", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 344, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 345, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 336, i32 12}
!12 = !{ptr @sun4i_csi_driver, !13, !"sun4i_csi_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 332, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 173, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 176, i32 59}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 189, i32 42}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 191, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sun4i_csi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun4i_csi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 196, i32 43}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 198, i32 4}
!32 = !{ptr @sun4i_csi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun4i_csi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 203, i32 42}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 205, i32 3}
!38 = !{ptr @sun4i_csi_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun4i_csi_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 211, i32 3}
!42 = !{ptr @sun4i_csi_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun4i_csi_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 220, i32 47}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 247, i32 3}
!48 = !{ptr @sun4i_csi_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sun4i_csi_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sun4i_csi_video_entity_ops, !51, !"sun4i_csi_video_entity_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 39, i32 45}
!52 = !{ptr @sun4i_csi_notify_ops, !53, !"sun4i_csi_notify_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 111, i32 52}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 55, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sun4i_csi_notify_bound._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sun4i_csi_notify_bound._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 60, i32 2}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sun4i_csi_notify_bound.__UNIQUE_ID_ddebug299, !60, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!63 = !{ptr @sun4i_csi_of_match, !64, !"sun4i_csi_of_match", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 291, i32 34}
!65 = !{ptr @sun4i_a10_csi1_traits, !66, !"sun4i_a10_csi1_traits", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 279, i32 38}
!67 = !{ptr @sun7i_a20_csi0_traits, !68, !"sun7i_a20_csi0_traits", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 285, i32 38}
!69 = !{ptr @sun4i_csi_pm_ops, !70, !"sun4i_csi_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c", i32 326, i32 32}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148728501, i64 2148728506, i64 2148728519, i64 2148728563, i64 2148728597, i64 2148728618}
!82 = !{i64 2156518414}
!83 = !{i64 6254901}
