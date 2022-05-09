; ModuleID = '/llk/IR_all_yes/drivers/media/platform/xilinx/xilinx-csi2rxss.c_pt.bc'
source_filename = "../drivers/media/platform/xilinx/xilinx-csi2rxss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xcsi2rxss_event = type { i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.xcsi2rxss_state = type { %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, [22 x i32], [24 x i32], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, [2 x %struct.media_pad], i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.98, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.98 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__initcall__kmod_xilinx_csi2rxss__297_1109_xcsi2rxss_driver_init6 = internal global ptr @xcsi2rxss_driver_init, section ".initcall6.init", align 4
@xcsi2rxss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xcsi2rxss_probe, ptr @xcsi2rxss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xcsi2rxss_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xcsi2rxss_driver_exit = internal global ptr @xcsi2rxss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [56 x i8] c"xilinx_csi2rxss.author=Vishal Sagar <vsagar@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [66 x i8] c"xilinx_csi2rxss.description=Xilinx MIPI CSI-2 Rx Subsystem Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [67 x i8] c"xilinx_csi2rxss.file=drivers/media/platform/xilinx/xilinx-csi2rxss\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [31 x i8] c"xilinx_csi2rxss.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xilinx-csi2rxss\00", [16 x i8] zeroinitializer }, align 32
@xcsi2rxss_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,mipi-csi2-rx-subsystem-5.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xcsi2rxss_clks = internal constant { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.14, ptr null }, %struct.clk_bulk_data { ptr @.str.15, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"video-reset\00", [20 x i8] zeroinitializer }, align 32
@xcsi2rxss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Video Reset GPIO not setup in DT\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xcsi2rxss_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/xilinx/xilinx-csi2rxss.c\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xcsi2rxss_probe._entry_ptr = internal global ptr @xcsi2rxss_probe._entry, section ".printk_index", align 4
@xcsi2rxss_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1016, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Err = %d Interrupt handler reg failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@xcsi2rxss_probe._entry_ptr.9 = internal global ptr @xcsi2rxss_probe._entry.7, section ".printk_index", align 4
@xcsi2rxss_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&xcsi2rxss->lock\00", [47 x i8] zeroinitializer }, align 32
@xcsi2rxss_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @xcsi2rxss_core_ops, ptr null, ptr null, ptr @xcsi2rxss_video_ops, ptr null, ptr null, ptr null, ptr @xcsi2rxss_pad_ops }, [32 x i8] zeroinitializer }, align 32
@xcsi2rxss_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@xcsi2rxss_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1065, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register subdev\0A\00", [37 x i8] zeroinitializer }, align 32
@xcsi2rxss_probe._entry_ptr.13 = internal global ptr @xcsi2rxss_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lite_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_aclk\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,en-csi-v2-0\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlnx,en-vcx\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,en-active-lanes\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlnx,csi-pxl-format\00", [44 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 893, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing xlnx,csi-pxl-format property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xcsi2rxss_parse_of\00", [45 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry_ptr = internal global ptr @xcsi2rxss_parse_of._entry, section ".printk_index", align 4
@xcsi2rxss_parse_of.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xilinx_csi2rxss\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enable csi v2 for this pixel format\00", [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.4, i32 923, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid csi-pxl-format property!\0A\00", [62 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry_ptr.26 = internal global ptr @xcsi2rxss_parse_of._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xlnx,vfb\00", [23 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 929, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"operation without VFB is not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry_ptr.30 = internal global ptr @xcsi2rxss_parse_of._entry.28, section ".printk_index", align 4
@xcsi2rxss_parse_of._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.4, i32 937, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no sink port found\00", [45 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry_ptr.33 = internal global ptr @xcsi2rxss_parse_of._entry.31, section ".printk_index", align 4
@xcsi2rxss_parse_of._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.4, i32 944, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error parsing sink port\00", [40 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry_ptr.36 = internal global ptr @xcsi2rxss_parse_of._entry.34, section ".printk_index", align 4
@xcsi2rxss_parse_of.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.4, ptr @.str.37, i8 0, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mipi number lanes = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.21, ptr @.str.4, i32 957, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no source port found\00", [43 x i8] zeroinitializer }, align 32
@xcsi2rxss_parse_of._entry_ptr.40 = internal global ptr @xcsi2rxss_parse_of._entry.38, section ".printk_index", align 4
@xcsi2rxss_parse_of.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.4, ptr @.str.41, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vcx %s, %u data lanes (%s), data type 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"static\00", [25 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xcsi2rxss_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Short packet = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.46, ptr @.str.4, ptr @.str.49, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Short packet FIFO overflowed\0A\00", [34 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.4, i32 599, ptr @.str.52, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Stream Line Buffer Full!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler._entry_ptr = internal global ptr @xcsi2rxss_irq_handler._entry, section ".printk_index", align 4
@xcsi2rxss_events = internal constant { [22 x %struct.xcsi2rxss_event], [48 x i8] } { [22 x %struct.xcsi2rxss_event] [%struct.xcsi2rxss_event { i32 -2147483648, ptr @.str.56 }, %struct.xcsi2rxss_event { i32 1073741824, ptr @.str.57 }, %struct.xcsi2rxss_event { i32 4194304, ptr @.str.58 }, %struct.xcsi2rxss_event { i32 2097152, ptr @.str.59 }, %struct.xcsi2rxss_event { i32 1048576, ptr @.str.60 }, %struct.xcsi2rxss_event { i32 524288, ptr @.str.61 }, %struct.xcsi2rxss_event { i32 262144, ptr @.str.62 }, %struct.xcsi2rxss_event { i32 131072, ptr @.str.63 }, %struct.xcsi2rxss_event { i32 8192, ptr @.str.64 }, %struct.xcsi2rxss_event { i32 4096, ptr @.str.65 }, %struct.xcsi2rxss_event { i32 2048, ptr @.str.66 }, %struct.xcsi2rxss_event { i32 1024, ptr @.str.67 }, %struct.xcsi2rxss_event { i32 512, ptr @.str.68 }, %struct.xcsi2rxss_event { i32 256, ptr @.str.69 }, %struct.xcsi2rxss_event { i32 128, ptr @.str.70 }, %struct.xcsi2rxss_event { i32 64, ptr @.str.71 }, %struct.xcsi2rxss_event { i32 32, ptr @.str.72 }, %struct.xcsi2rxss_event { i32 16, ptr @.str.73 }, %struct.xcsi2rxss_event { i32 8, ptr @.str.74 }, %struct.xcsi2rxss_event { i32 4, ptr @.str.75 }, %struct.xcsi2rxss_event { i32 2, ptr @.str.76 }, %struct.xcsi2rxss_event { i32 1, ptr @.str.77 }], [48 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_irq_handler.descriptor.54 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.46, ptr @.str.4, ptr @.str.55, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Frame Received\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VCX Frame Errors\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Word Count Errors\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid Lane Count Error\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Short Packet FIFO OverFlow Error\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Short Packet FIFO Not Empty\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Streamline Buffer Full Error\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lane Stop State\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOT Error\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOT Sync Error\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"2 Bit ECC Unrecoverable Error\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"1 Bit ECC Recoverable Error\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRC Error\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Data Id Error\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Virtual Channel 3 Frame Sync Error\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Virtual Channel 3 Frame Level Error\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Virtual Channel 2 Frame Sync Error\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Virtual Channel 2 Frame Level Error\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Virtual Channel 1 Frame Sync Error\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Virtual Channel 1 Frame Level Error\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Virtual Channel 0 Frame Sync Error\00", [61 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Virtual Channel 0 Frame Level Error\00", [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"soft reset timed out!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xcsi2rxss_soft_reset\00", [43 x i8] zeroinitializer }, align 32
@xcsi2rxss_soft_reset._entry_ptr = internal global ptr @xcsi2rxss_soft_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xcsi2dt_mbus_lut = internal constant { [26 x [2 x i32]], [48 x i8] } { [26 x [2 x i32]] [[2 x i32] [i32 30, i32 8207], [2 x i32] [i32 31, i32 8218], [2 x i32] [i32 32, i32 0], [2 x i32] [i32 33, i32 0], [2 x i32] [i32 34, i32 0], [2 x i32] [i32 35, i32 0], [2 x i32] [i32 36, i32 4110], [2 x i32] [i32 40, i32 0], [2 x i32] [i32 41, i32 0], [2 x i32] [i32 42, i32 12308], [2 x i32] [i32 42, i32 12289], [2 x i32] [i32 42, i32 12307], [2 x i32] [i32 42, i32 12290], [2 x i32] [i32 43, i32 12303], [2 x i32] [i32 43, i32 12295], [2 x i32] [i32 43, i32 12302], [2 x i32] [i32 43, i32 12298], [2 x i32] [i32 44, i32 12306], [2 x i32] [i32 44, i32 12296], [2 x i32] [i32 44, i32 12304], [2 x i32] [i32 44, i32 12305], [2 x i32] [i32 46, i32 12320], [2 x i32] [i32 46, i32 12317], [2 x i32] [i32 46, i32 12318], [2 x i32] [i32 46, i32 12319], [2 x i32] [i32 47, i32 0]], [48 x i8] zeroinitializer }, align 32
@xcsi2rxss_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @xcsi2rxss_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xcsi2rxss_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xcsi2rxss_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@xcsi2rxss_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @xcsi2rxss_init_cfg, ptr @xcsi2rxss_enum_mbus_code, ptr null, ptr null, ptr @xcsi2rxss_get_format, ptr @xcsi2rxss_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_subdev_link_validate_default, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 423, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"***** Core Status *****\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xcsi2rxss_log_status\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr = internal global ptr @xcsi2rxss_log_status._entry, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.4, i32 426, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Short Packet FIFO Full = %s\0A\00", [35 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.85 = internal global ptr @xcsi2rxss_log_status._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.4, i32 428, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Short Packet FIFO Not Empty = %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.90 = internal global ptr @xcsi2rxss_log_status._entry.88, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.4, i32 430, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stream line buffer full = %s\0A\00", [34 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.93 = internal global ptr @xcsi2rxss_log_status._entry.91, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.81, ptr @.str.4, i32 432, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Soft reset/Core disable in progress = %s\0A\00", [54 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.96 = internal global ptr @xcsi2rxss_log_status._entry.94, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.81, ptr @.str.4, i32 435, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"******** Clock Lane Info *********\0A\00", [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.99 = internal global ptr @xcsi2rxss_log_status._entry.97, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.81, ptr @.str.4, i32 438, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Clock Lane in Stop State = %s\0A\00", [33 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.102 = internal global ptr @xcsi2rxss_log_status._entry.100, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.81, ptr @.str.4, i32 440, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"******** Data Lane Info *********\0A\00", [61 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.105 = internal global ptr @xcsi2rxss_log_status._entry.103, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.81, ptr @.str.4, i32 441, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Lane\09SoT Error\09SoT Sync Error\09Stop State\0A\00", [54 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.108 = internal global ptr @xcsi2rxss_log_status._entry.106, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.81, ptr @.str.4, i32 449, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d\09%s\09\09%s\09\09%s\0A\00", [17 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.111 = internal global ptr @xcsi2rxss_log_status._entry.109, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.81, ptr @.str.4, i32 455, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"********** Virtual Channel Info ************\0A\00", [50 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.114 = internal global ptr @xcsi2rxss_log_status._entry.112, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.81, ptr @.str.4, i32 456, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VC\09Line Count\09Byte Count\09Data Type\0A\00", [60 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.117 = internal global ptr @xcsi2rxss_log_status._entry.115, section ".printk_index", align 4
@xcsi2rxss_log_status._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.81, ptr @.str.4, i32 478, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d\09%d\09\09%d\09\090x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_status._entry_ptr.120 = internal global ptr @xcsi2rxss_log_status._entry.118, section ".printk_index", align 4
@xcsi2rxss_log_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.4, i32 387, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s events: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xcsi2rxss_log_counters\00", [41 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_counters._entry_ptr = internal global ptr @xcsi2rxss_log_counters._entry, section ".printk_index", align 4
@xcsi2rxss_log_counters._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.4, i32 398, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VC %d Frame %s err vcx events: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@xcsi2rxss_log_counters._entry_ptr.125 = internal global ptr @xcsi2rxss_log_counters._entry.123, section ".printk_index", align 4
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sync\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Level\00", [26 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@xcsi2rxss_set_format.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.129, ptr @.str.4, ptr @.str.130, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xcsi2rxss_set_format\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported media bus format\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 40, i64 41, i64 42, i64 43, i64 44, i64 46, i64 47]
@__sancov_gen_cov_switch_values.131 = internal global [17 x i64] [i64 15, i64 32, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.134 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 4110, i64 8207, i64 8218, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12317, i64 12318, i64 12319, i64 12320]
@__sancov_gen_cov_switch_values.135 = internal global [16 x i64] [i64 14, i64 32, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 40, i64 41, i64 42, i64 43, i64 44, i64 46, i64 47]
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"xcsi2rxss_driver\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1100, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1102, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"xcsi2rxss_of_id_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1094, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"xcsi2rxss_clks\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 257, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 992, i32 53 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 996, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1016, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1029, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"xcsi2rxss_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 865, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"xcsi2rxss_media_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 845, i32 45 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1065, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 258, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 259, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 883, i32 43 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 885, i32 51 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 888, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 890, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 893, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 916, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 923, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 927, i32 36 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 929, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 937, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 944, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 948, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 957, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 963, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 581, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 592, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 599, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"xcsi2rxss_events\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 154, i32 37 }
@___asan_gen_.307 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 627, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 155, i32 17 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 156, i32 20 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 157, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 158, i32 18 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 159, i32 22 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 160, i32 23 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 161, i32 19 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 162, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 163, i32 21 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 164, i32 25 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 165, i32 23 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 166, i32 23 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 167, i32 21 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 168, i32 24 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 169, i32 26 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 170, i32 25 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 171, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 172, i32 25 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 173, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 174, i32 25 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 175, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 176, i32 25 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 343, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"xcsi2dt_mbus_lut\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 185, i32 18 }
@___asan_gen_.391 = private unnamed_addr constant [19 x i8] c"xcsi2rxss_core_ops\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 849, i32 42 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c"xcsi2rxss_video_ops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 853, i32 43 }
@___asan_gen_.397 = private unnamed_addr constant [18 x i8] c"xcsi2rxss_pad_ops\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 857, i32 41 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 423, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 425, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 427, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 429, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 431, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 435, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 437, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 440, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 441, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 446, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 455, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 456, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 477, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 385, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 394, i32 5 }
@___asan_gen_.512 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 998, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.518 = private constant [51 x i8] c"../drivers/media/platform/xilinx/xilinx-csi2rxss.c\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 795, i32 3 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_xcsi2rxss_driver_exit, ptr @__initcall__kmod_xilinx_csi2rxss__297_1109_xcsi2rxss_driver_init6, ptr @xcsi2rxss_driver_exit, ptr @xcsi2rxss_irq_handler._entry, ptr @xcsi2rxss_irq_handler._entry_ptr, ptr @xcsi2rxss_log_counters._entry, ptr @xcsi2rxss_log_counters._entry.123, ptr @xcsi2rxss_log_counters._entry_ptr, ptr @xcsi2rxss_log_counters._entry_ptr.125, ptr @xcsi2rxss_log_status._entry, ptr @xcsi2rxss_log_status._entry.100, ptr @xcsi2rxss_log_status._entry.103, ptr @xcsi2rxss_log_status._entry.106, ptr @xcsi2rxss_log_status._entry.109, ptr @xcsi2rxss_log_status._entry.112, ptr @xcsi2rxss_log_status._entry.115, ptr @xcsi2rxss_log_status._entry.118, ptr @xcsi2rxss_log_status._entry.83, ptr @xcsi2rxss_log_status._entry.88, ptr @xcsi2rxss_log_status._entry.91, ptr @xcsi2rxss_log_status._entry.94, ptr @xcsi2rxss_log_status._entry.97, ptr @xcsi2rxss_log_status._entry_ptr, ptr @xcsi2rxss_log_status._entry_ptr.102, ptr @xcsi2rxss_log_status._entry_ptr.105, ptr @xcsi2rxss_log_status._entry_ptr.108, ptr @xcsi2rxss_log_status._entry_ptr.111, ptr @xcsi2rxss_log_status._entry_ptr.114, ptr @xcsi2rxss_log_status._entry_ptr.117, ptr @xcsi2rxss_log_status._entry_ptr.120, ptr @xcsi2rxss_log_status._entry_ptr.85, ptr @xcsi2rxss_log_status._entry_ptr.90, ptr @xcsi2rxss_log_status._entry_ptr.93, ptr @xcsi2rxss_log_status._entry_ptr.96, ptr @xcsi2rxss_log_status._entry_ptr.99, ptr @xcsi2rxss_parse_of._entry, ptr @xcsi2rxss_parse_of._entry.24, ptr @xcsi2rxss_parse_of._entry.28, ptr @xcsi2rxss_parse_of._entry.31, ptr @xcsi2rxss_parse_of._entry.34, ptr @xcsi2rxss_parse_of._entry.38, ptr @xcsi2rxss_parse_of._entry_ptr, ptr @xcsi2rxss_parse_of._entry_ptr.26, ptr @xcsi2rxss_parse_of._entry_ptr.30, ptr @xcsi2rxss_parse_of._entry_ptr.33, ptr @xcsi2rxss_parse_of._entry_ptr.36, ptr @xcsi2rxss_parse_of._entry_ptr.40, ptr @xcsi2rxss_probe._entry, ptr @xcsi2rxss_probe._entry.11, ptr @xcsi2rxss_probe._entry.7, ptr @xcsi2rxss_probe._entry_ptr, ptr @xcsi2rxss_probe._entry_ptr.13, ptr @xcsi2rxss_probe._entry_ptr.9, ptr @xcsi2rxss_soft_reset._entry, ptr @xcsi2rxss_soft_reset._entry_ptr, ptr @xcsi2rxss_driver, ptr @.str, ptr @xcsi2rxss_of_id_table, ptr @xcsi2rxss_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @xcsi2rxss_probe.__key, ptr @.str.10, ptr @xcsi2rxss_ops, ptr @xcsi2rxss_media_ops, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @xcsi2rxss_irq_handler._rs, ptr @.str.48, ptr @.str.49, ptr @xcsi2rxss_irq_handler._rs.50, ptr @.str.51, ptr @.str.52, ptr @xcsi2rxss_events, ptr @xcsi2rxss_irq_handler._rs.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @xcsi2dt_mbus_lut, ptr @xcsi2rxss_core_ops, ptr @xcsi2rxss_video_ops, ptr @xcsi2rxss_pad_ops, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_clks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_parse_of._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_parse_of._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_parse_of._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_parse_of._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_parse_of._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_irq_handler._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_events to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_irq_handler._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2dt_mbus_lut to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_status._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcsi2rxss_log_counters._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xcsi2rxss_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xcsi2rxss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @xcsi2rxss_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 664, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @xcsi2rxss_clks, i32 noundef 16, i32 noundef 3264) #8
  %clks = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %clks, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #8
  %rst_gpio = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %rst_gpio, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end7
  %cmp.not = icmp eq ptr %call8, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then11.if.end15_crit_edge, label %do.end

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then11.if.end15_crit_edge
  %3 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rst_gpio, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = tail call fastcc i32 @xcsi2rxss_parse_of(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %iomem = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %iomem, align 4
  %cmp.i164 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end33.dev_name.exit_crit_edge

if.end33.dev_name.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end33.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end33.dev_name.exit_crit_edge ]
  %call35 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call30, ptr noundef null, ptr noundef nonnull @xcsi2rxss_irq_handler, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call35) #11
  br label %cleanup

if.end41:                                         ; preds = %dev_name.exit
  %12 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clks, align 4
  %call43 = tail call i32 @clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %14 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clks, align 4
  %call48 = tail call fastcc i32 @clk_bulk_prepare_enable(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body52, label %if.end46.err_clk_put_crit_edge

if.end46.err_clk_put_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

do.body52:                                        ; preds = %if.end46
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @xcsi2rxss_probe.__key) #8
  tail call fastcc void @xcsi2rxss_hard_reset(ptr noundef nonnull %call.i)
  %call55 = tail call fastcc i32 @xcsi2rxss_soft_reset(ptr noundef nonnull %call.i)
  %pads = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 13
  %flags = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 13, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags, align 4
  %flags58 = getelementptr %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 13, i32 1, i32 4
  %17 = ptrtoint ptr %flags58 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %flags58, align 4
  %datatype = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datatype, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.body52.xcsi2rxss_get_nth_mbus.exit_crit_edge [
    i32 30, label %do.body52.if.then4.i_crit_edge
    i32 31, label %if.then4.i.fold.split
    i32 32, label %if.then4.i.fold.split176
    i32 33, label %if.then4.i.fold.split177
    i32 34, label %if.then4.i.fold.split178
    i32 35, label %if.then4.i.fold.split179
    i32 36, label %if.then4.i.fold.split180
    i32 40, label %if.then4.i.fold.split181
    i32 41, label %if.then4.i.fold.split182
    i32 42, label %if.then4.i.fold.split183
    i32 43, label %if.then4.i.fold.split184
    i32 44, label %if.then4.i.fold.split185
    i32 46, label %if.then4.i.fold.split186
    i32 47, label %if.then4.i.fold.split187
  ]

do.body52.if.then4.i_crit_edge:                   ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

do.body52.xcsi2rxss_get_nth_mbus.exit_crit_edge:  ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_get_nth_mbus.exit

if.then4.i.fold.split:                            ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split176:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split177:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split178:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split179:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split180:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split181:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split182:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split183:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split184:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split185:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split186:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split187:                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then4.i.fold.split187, %if.then4.i.fold.split186, %if.then4.i.fold.split185, %if.then4.i.fold.split184, %if.then4.i.fold.split183, %if.then4.i.fold.split182, %if.then4.i.fold.split181, %if.then4.i.fold.split180, %if.then4.i.fold.split179, %if.then4.i.fold.split178, %if.then4.i.fold.split177, %if.then4.i.fold.split176, %if.then4.i.fold.split, %do.body52.if.then4.i_crit_edge
  %i.013.i.lcssa = phi i32 [ 0, %do.body52.if.then4.i_crit_edge ], [ 1, %if.then4.i.fold.split ], [ 2, %if.then4.i.fold.split176 ], [ 3, %if.then4.i.fold.split177 ], [ 4, %if.then4.i.fold.split178 ], [ 5, %if.then4.i.fold.split179 ], [ 6, %if.then4.i.fold.split180 ], [ 7, %if.then4.i.fold.split181 ], [ 8, %if.then4.i.fold.split182 ], [ 9, %if.then4.i.fold.split183 ], [ 13, %if.then4.i.fold.split184 ], [ 17, %if.then4.i.fold.split185 ], [ 21, %if.then4.i.fold.split186 ], [ 25, %if.then4.i.fold.split187 ]
  %arrayidx6.i = getelementptr [26 x [2 x i32]], ptr @xcsi2dt_mbus_lut, i32 0, i32 %i.013.i.lcssa, i32 1
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.i, align 4
  br label %xcsi2rxss_get_nth_mbus.exit

xcsi2rxss_get_nth_mbus.exit:                      ; preds = %if.then4.i, %do.body52.xcsi2rxss_get_nth_mbus.exit_crit_edge
  %retval.0.i165 = phi i32 [ %22, %if.then4.i ], [ 0, %do.body52.xcsi2rxss_get_nth_mbus.exit_crit_edge ]
  %default_format = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 2
  %code = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i165, ptr %code, align 4
  %field = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %colorspace, align 4
  %26 = ptrtoint ptr %default_format to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1920, ptr %default_format, align 4
  %height = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1080, ptr %height, align 4
  %format = getelementptr inbounds %struct.xcsi2rxss_state, ptr %call.i, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %format, ptr %default_format, i32 48)
  tail call void @v4l2_subdev_init(ptr noundef nonnull %call.i, ptr noundef nonnull @xcsi2rxss_ops) #8
  %dev66 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev1, ptr %dev66, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i167 = icmp eq ptr %31, null
  br i1 %tobool.not.i167, label %if.end.i168, label %xcsi2rxss_get_nth_mbus.exit.dev_name.exit170_crit_edge

xcsi2rxss_get_nth_mbus.exit.dev_name.exit170_crit_edge: ; preds = %xcsi2rxss_get_nth_mbus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit170

if.end.i168:                                      ; preds = %xcsi2rxss_get_nth_mbus.exit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit170

dev_name.exit170:                                 ; preds = %if.end.i168, %xcsi2rxss_get_nth_mbus.exit.dev_name.exit170_crit_edge
  %retval.0.i169 = phi ptr [ %33, %if.end.i168 ], [ %31, %xcsi2rxss_get_nth_mbus.exit.dev_name.exit170_crit_edge ]
  %call68 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %retval.0.i169, i32 noundef 32) #8
  %flags69 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %flags69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags69, align 4
  %or = or i32 %35, 12
  store i32 %or, ptr %flags69, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xcsi2rxss_media_ops, ptr %ops, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %37 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %call73 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 2, ptr noundef %pads) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %dev_name.exit170.error_crit_edge, label %if.end76

dev_name.exit170.error_crit_edge:                 ; preds = %dev_name.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end76:                                         ; preds = %dev_name.exit170
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call77 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end82, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  br label %error

error:                                            ; preds = %do.end82, %dev_name.exit170.error_crit_edge
  %ret.0 = phi i32 [ %call73, %dev_name.exit170.error_crit_edge ], [ %call77, %do.end82 ]
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %39 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clks, align 4
  tail call fastcc void @clk_bulk_disable_unprepare(ptr noundef %40)
  br label %err_clk_put

err_clk_put:                                      ; preds = %error, %if.end46.err_clk_put_crit_edge
  %ret.1 = phi i32 [ %call48, %if.end46.err_clk_put_crit_edge ], [ %ret.0, %error ]
  %41 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_put(i32 noundef 2, ptr noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %if.end76.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end40, %if.end29.cleanup_crit_edge, %if.then26, %if.end18.cleanup_crit_edge, %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end15 ], [ %7, %if.then26 ], [ %call35, %do.end40 ], [ %ret.1, %err_clk_put ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %1, i32 0, i32 12
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %clks = getelementptr inbounds %struct.xcsi2rxss_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %3) #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %3) #8
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_put(i32 noundef 2, ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xcsi2rxss_parse_of(ptr noundef %xcsi2rxss) unnamed_addr #2 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %xcsi2rxss, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #8
  %4 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %5 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %5, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i152 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef null) #8
  %tobool.i153 = icmp ne ptr %call.i152, null
  %en_vcx = getelementptr inbounds %struct.xcsi2rxss_state, ptr %xcsi2rxss, i32 0, i32 16
  %frombool3 = zext i1 %tobool.i153 to i8
  %7 = ptrtoint ptr %en_vcx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool3, ptr %en_vcx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i154 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %tobool.i155 = icmp ne ptr %call.i154, null
  %enable_active_lanes = getelementptr inbounds %struct.xcsi2rxss_state, ptr %xcsi2rxss, i32 0, i32 15
  %frombool5 = zext i1 %tobool.i155 to i8
  %8 = ptrtoint ptr %enable_active_lanes to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool5, ptr %enable_active_lanes, align 1
  %datatype = getelementptr inbounds %struct.xcsi2rxss_state, ptr %xcsi2rxss, i32 0, i32 11
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef %datatype, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %datatype, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %10, label %if.end8.do.end28_crit_edge [
    i32 30, label %if.end8.if.end29_crit_edge
    i32 32, label %if.end8.if.end29_crit_edge168
    i32 33, label %if.end8.if.end29_crit_edge169
    i32 34, label %if.end8.if.end29_crit_edge170
    i32 35, label %if.end8.if.end29_crit_edge171
    i32 36, label %if.end8.if.end29_crit_edge172
    i32 40, label %if.end8.if.end29_crit_edge173
    i32 41, label %if.end8.if.end29_crit_edge174
    i32 42, label %if.end8.if.end29_crit_edge175
    i32 43, label %if.end8.if.end29_crit_edge176
    i32 44, label %if.end8.if.end29_crit_edge177
    i32 45, label %if.end8.if.end29_crit_edge178
    i32 31, label %if.end8.sw.bb10_crit_edge
    i32 46, label %if.end8.sw.bb10_crit_edge179
    i32 47, label %if.end8.sw.bb10_crit_edge180
  ]

if.end8.sw.bb10_crit_edge180:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end8.sw.bb10_crit_edge179:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end8.sw.bb10_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end8.if.end29_crit_edge178:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge177:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge176:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge175:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge174:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge173:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge172:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge171:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge170:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge169:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge168:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.do.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

sw.bb10:                                          ; preds = %if.end8.sw.bb10_crit_edge, %if.end8.sw.bb10_crit_edge179, %if.end8.sw.bb10_crit_edge180
  br i1 %tobool.i.not, label %if.then12, label %sw.bb10.if.end29_crit_edge

sw.bb10.if.end29_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_parse_of, %if.then19)) #8
          to label %do.end28 [label %if.then19], !srcloc !256

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.23) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then19, %if.then12, %if.end8.do.end28_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end29:                                         ; preds = %sw.bb10.if.end29_crit_edge, %if.end8.if.end29_crit_edge, %if.end8.if.end29_crit_edge168, %if.end8.if.end29_crit_edge169, %if.end8.if.end29_crit_edge170, %if.end8.if.end29_crit_edge171, %if.end8.if.end29_crit_edge172, %if.end8.if.end29_crit_edge173, %if.end8.if.end29_crit_edge174, %if.end8.if.end29_crit_edge175, %if.end8.if.end29_crit_edge176, %if.end8.if.end29_crit_edge177, %if.end8.if.end29_crit_edge178
  %call.i156 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef null) #8
  %tobool.i157.not = icmp eq ptr %call.i156, null
  br i1 %tobool.i157.not, label %do.end36, label %if.end37

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %call38 = tail call ptr @dev_fwnode(ptr noundef %1) #8
  %call39 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call38, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end45

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %call46 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call39, ptr noundef nonnull %vep) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body53, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #11
  br label %cleanup

do.body53:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_parse_of, %if.then65)) #8
          to label %do.end68 [label %if.then65], !srcloc !256

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %12 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %conv) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body53
  %num_data_lanes71 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %14 = ptrtoint ptr %num_data_lanes71 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_data_lanes71, align 1
  %conv72 = zext i8 %15 to i32
  %max_num_lanes = getelementptr inbounds %struct.xcsi2rxss_state, ptr %xcsi2rxss, i32 0, i32 10
  %16 = ptrtoint ptr %max_num_lanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv72, ptr %max_num_lanes, align 4
  %call73 = call ptr @dev_fwnode(ptr noundef %1) #8
  %call74 = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call73, i32 noundef 1, i32 noundef 0, i32 noundef 1) #8
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %do.end79, label %if.end80

do.end79:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end80:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void @fwnode_handle_put(ptr noundef nonnull %call74) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_parse_of, %if.then93)) #8
          to label %cleanup [label %if.then93], !srcloc !256

if.then93:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %en_vcx94 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %xcsi2rxss, i32 0, i32 16
  %17 = ptrtoint ptr %en_vcx94 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %en_vcx94, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool95.not = icmp eq i8 %18, 0
  %cond = select i1 %tobool95.not, ptr @.str.43, ptr @.str.42
  %19 = ptrtoint ptr %max_num_lanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_num_lanes, align 4
  %21 = ptrtoint ptr %enable_active_lanes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_active_lanes, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool99.not = icmp eq i8 %22, 0
  %cond101 = select i1 %tobool99.not, ptr @.str.45, ptr @.str.44
  %23 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %datatype, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond, i32 noundef %20, ptr noundef nonnull %cond101, i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %if.end80, %do.end79, %do.end51, %do.end44, %do.end36, %do.end28, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end28 ], [ %call46, %do.end51 ], [ -22, %do.end79 ], [ -22, %do.end44 ], [ -22, %do.end36 ], [ 0, %if.then93 ], [ 0, %if.end80 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %iomem.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !258
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and = and i32 %5, -1065467905
  %6 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %8) #8, !srcloc !261
  %and2 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %count.0179 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_irq_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_irq_handler, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !256

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_irq_handler.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %12) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %for.body
  %13 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #8, !srcloc !258
  %16 = shl i32 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and10 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end.if.end15_crit_edge, label %for.inc

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.inc:                                          ; preds = %do.end
  %17 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %19 = lshr exact i32 %and10, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %19) #8, !srcloc !261
  %inc = add nuw nsw i32 %count.0179, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %do.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %and16 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end37_crit_edge, label %do.body19

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_irq_handler.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_irq_handler, %land.lhs.true)) #8
          to label %if.end37 [label %land.lhs.true], !srcloc !256

land.lhs.true:                                    ; preds = %do.body19
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @xcsi2rxss_irq_handler._rs, ptr noundef nonnull @.str.46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end37_crit_edge, label %if.then33

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_irq_handler.descriptor, ptr noundef %1, ptr noundef nonnull @.str.49) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %land.lhs.true.if.end37_crit_edge, %do.body19, %if.end15.if.end37_crit_edge
  %and38 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end51_crit_edge, label %do.body41

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body41:                                        ; preds = %if.end37
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @xcsi2rxss_irq_handler._rs.50, ptr noundef nonnull @.str.46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.do.end50_crit_edge, label %do.end47

do.body41.do.end50_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %1, ptr noundef nonnull @.str.51) #11
  br label %do.end50

do.end50:                                         ; preds = %do.end47, %do.body41.do.end50_crit_edge
  %20 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %23 = and i32 %22, 12616575
  %24 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %23) #8, !srcloc !261
  %26 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %27, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i165) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i4.i167 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i167, i32 %29) #8, !srcloc !261
  %32 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomem.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %35 = and i32 %34, -16777217
  %36 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomem.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !261
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %if.end37.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.end51.if.end109_crit_edge, label %if.end51.for.body57_crit_edge

if.end51.for.body57_crit_edge:                    ; preds = %if.end51
  br label %for.body57

if.end51.if.end109_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

for.body57:                                       ; preds = %for.inc86.for.body57_crit_edge, %if.end51.for.body57_crit_edge
  %i.0180 = phi i32 [ %inc87, %for.inc86.for.body57_crit_edge ], [ 0, %if.end51.for.body57_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.xcsi2rxss_event], ptr @xcsi2rxss_events, i32 0, i32 %i.0180
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %and58 = and i32 %39, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %for.body57.for.inc86_crit_edge, label %if.end61

for.body57.for.inc86_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86

if.end61:                                         ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx62 = getelementptr %struct.xcsi2rxss_state, ptr %data, i32 0, i32 3, i32 %i.0180
  %40 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx62, align 4
  %inc63 = add i32 %41, 1
  store i32 %inc63, ptr %arrayidx62, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_irq_handler.descriptor.54, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_irq_handler, %land.lhs.true76)) #8
          to label %for.inc86 [label %land.lhs.true76], !srcloc !256

land.lhs.true76:                                  ; preds = %if.end61
  %call77 = tail call i32 @___ratelimit(ptr noundef nonnull @xcsi2rxss_irq_handler._rs.53, ptr noundef nonnull @.str.46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true76.for.inc86_crit_edge, label %if.then79

land.lhs.true76.for.inc86_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr [22 x %struct.xcsi2rxss_event], ptr @xcsi2rxss_events, i32 0, i32 %i.0180, i32 1
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 4
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_irq_handler.descriptor.54, ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %43, i32 noundef %45) #8
  br label %for.inc86

for.inc86:                                        ; preds = %if.then79, %land.lhs.true76.for.inc86_crit_edge, %if.end61, %for.body57.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %i.0180, 1
  %exitcond184.not = icmp eq i32 %inc87, 22
  br i1 %exitcond184.not, label %for.end88, label %for.inc86.for.body57_crit_edge

for.inc86.for.body57_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.end88:                                        ; preds = %for.inc86
  %and89 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %for.end88.if.end109_crit_edge, label %land.lhs.true91

for.end88.if.end109_crit_edge:                    ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

land.lhs.true91:                                  ; preds = %for.end88
  %en_vcx = getelementptr inbounds %struct.xcsi2rxss_state, ptr %data, i32 0, i32 16
  %46 = ptrtoint ptr %en_vcx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %en_vcx, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool92.not = icmp eq i8 %47, 0
  br i1 %tobool92.not, label %land.lhs.true91.if.end109_crit_edge, label %if.then93

land.lhs.true91.if.end109_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then93:                                        ; preds = %land.lhs.true91
  %48 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %49, i32 52
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %51 = and i32 %50, -256
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  br label %for.body98

for.body98:                                       ; preds = %for.inc105.for.body98_crit_edge, %if.then93
  %i.1182 = phi i32 [ 0, %if.then93 ], [ %inc106, %for.inc105.for.body98_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.1182
  %and99 = and i32 %shl, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %for.body98.for.inc105_crit_edge, label %if.end102

for.body98.for.inc105_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc105

if.end102:                                        ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx103 = getelementptr %struct.xcsi2rxss_state, ptr %data, i32 0, i32 4, i32 %i.1182
  %53 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx103, align 4
  %inc104 = add i32 %54, 1
  store i32 %inc104, ptr %arrayidx103, align 4
  br label %for.inc105

for.inc105:                                       ; preds = %if.end102, %for.body98.for.inc105_crit_edge
  %inc106 = add nuw nsw i32 %i.1182, 1
  %exitcond185.not = icmp eq i32 %inc106, 24
  br i1 %exitcond185.not, label %for.end107, label %for.inc105.for.body98_crit_edge

for.inc105.for.body98_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

for.end107:                                       ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %56, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %51) #8, !srcloc !261
  br label %if.end109

if.end109:                                        ; preds = %for.end107, %land.lhs.true91.if.end109_crit_edge, %for.end88.if.end109_crit_edge, %if.end51.if.end109_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(ptr noundef %clks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xcsi2rxss_hard_reset(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_gpio = getelementptr inbounds %struct.xcsi2rxss_state, ptr %state, i32 0, i32 7
  %0 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %2 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xcsi2rxss_soft_reset(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem.i.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %state, i32 0, i32 9
  %0 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !261
  %6 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not7 = icmp eq i32 %9, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.08 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 1000, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.08)
  %cmp = icmp eq i32 %timeout.08, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.xcsi2rxss_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.78) #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %timeout.08, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %13 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %16 = and i32 %15, 16777216
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %17 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %20 = and i32 %19, -33554433
  %21 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !261
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -62, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.042.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 3, i32 %i.042.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr [22 x %struct.xcsi2rxss_event], ptr @xcsi2rxss_events, i32 0, i32 %i.042.i, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.121, ptr noundef %7, i32 noundef %5) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %en_vcx.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 16
  %8 = ptrtoint ptr %en_vcx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %en_vcx.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.end.i.xcsi2rxss_log_counters.exit_crit_edge, label %for.end.i.for.body9.i_crit_edge

for.end.i.for.body9.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body9.i

for.end.i.xcsi2rxss_log_counters.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_log_counters.exit

for.body9.i:                                      ; preds = %for.inc20.i.for.body9.i_crit_edge, %for.end.i.for.body9.i_crit_edge
  %i.144.i = phi i32 [ %inc21.i, %for.inc20.i.for.body9.i_crit_edge ], [ 0, %for.end.i.for.body9.i_crit_edge ]
  %arrayidx10.i = getelementptr %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 4, i32 %i.144.i
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11.not.i = icmp eq i32 %11, 0
  br i1 %cmp11.not.i, label %for.body9.i.for.inc20.i_crit_edge, label %do.end15.i

for.body9.i.for.inc20.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.i

do.end15.i:                                       ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %div41.i = lshr i32 %i.144.i, 1
  %add.i = add nuw nsw i32 %div41.i, 4
  %and.i = and i32 %i.144.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool16.not.i, ptr @.str.127, ptr @.str.126
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %add.i, ptr noundef nonnull %cond.i, i32 noundef %11) #11
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %do.end15.i, %for.body9.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.144.i, 1
  %exitcond46.not.i = icmp eq i32 %inc21.i, 24
  br i1 %exitcond46.not.i, label %for.inc20.i.xcsi2rxss_log_counters.exit_crit_edge, label %for.inc20.i.for.body9.i_crit_edge

for.inc20.i.for.body9.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

for.inc20.i.xcsi2rxss_log_counters.exit_crit_edge: ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_log_counters.exit

xcsi2rxss_log_counters.exit:                      ; preds = %for.inc20.i.xcsi2rxss_log_counters.exit_crit_edge, %for.end.i.xcsi2rxss_log_counters.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.80) #11
  %iomem.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 9
  %12 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !258
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef nonnull %cond) #11
  %and9 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef nonnull %cond11) #11
  %and15 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond17) #11
  %and21 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef nonnull %cond23) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.98) #11
  %16 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %17, i32 60
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool32.not = icmp eq i32 %19, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond33) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.104) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.107) #11
  %20 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #8, !srcloc !258
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and44 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.87, ptr @.str.86
  %and47 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.87, ptr @.str.86
  %and50 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 0, ptr noundef nonnull %cond46, ptr noundef nonnull %cond49, ptr noundef nonnull %cond52) #11
  %24 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i122.1 = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.1) #8, !srcloc !258
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and44.1 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.1)
  %tobool45.not.1 = icmp eq i32 %and44.1, 0
  %cond46.1 = select i1 %tobool45.not.1, ptr @.str.87, ptr @.str.86
  %and47.1 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.1)
  %tobool48.not.1 = icmp eq i32 %and47.1, 0
  %cond49.1 = select i1 %tobool48.not.1, ptr @.str.87, ptr @.str.86
  %and50.1 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.1)
  %tobool51.not.1 = icmp eq i32 %and50.1, 0
  %cond52.1 = select i1 %tobool51.not.1, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 1, ptr noundef nonnull %cond46.1, ptr noundef nonnull %cond49.1, ptr noundef nonnull %cond52.1) #11
  %28 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i122.2 = getelementptr i8, ptr %29, i32 72
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.2) #8, !srcloc !258
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and44.2 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.2)
  %tobool45.not.2 = icmp eq i32 %and44.2, 0
  %cond46.2 = select i1 %tobool45.not.2, ptr @.str.87, ptr @.str.86
  %and47.2 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.2)
  %tobool48.not.2 = icmp eq i32 %and47.2, 0
  %cond49.2 = select i1 %tobool48.not.2, ptr @.str.87, ptr @.str.86
  %and50.2 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.2)
  %tobool51.not.2 = icmp eq i32 %and50.2, 0
  %cond52.2 = select i1 %tobool51.not.2, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 2, ptr noundef nonnull %cond46.2, ptr noundef nonnull %cond49.2, ptr noundef nonnull %cond52.2) #11
  %32 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i122.3 = getelementptr i8, ptr %33, i32 76
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.3) #8, !srcloc !258
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and44.3 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.3)
  %tobool45.not.3 = icmp eq i32 %and44.3, 0
  %cond46.3 = select i1 %tobool45.not.3, ptr @.str.87, ptr @.str.86
  %and47.3 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.3)
  %tobool48.not.3 = icmp eq i32 %and47.3, 0
  %cond49.3 = select i1 %tobool48.not.3, ptr @.str.87, ptr @.str.86
  %and50.3 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.3)
  %tobool51.not.3 = icmp eq i32 %and50.3, 0
  %cond52.3 = select i1 %tobool51.not.3, ptr @.str.87, ptr @.str.86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 3, ptr noundef nonnull %cond46.3, ptr noundef nonnull %cond49.3, ptr noundef nonnull %cond52.3) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.113) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.116) #11
  %36 = ptrtoint ptr %en_vcx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %en_vcx.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool59.not = icmp eq i8 %37, 0
  %. = select i1 %tobool59.not, i32 4, i32 16
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %xcsi2rxss_log_counters.exit
  %reg.1130 = phi i32 [ 96, %xcsi2rxss_log_counters.exit ], [ %add72, %for.body62.for.body62_crit_edge ]
  %i.1129 = phi i32 [ 0, %xcsi2rxss_log_counters.exit ], [ %inc74, %for.body62.for.body62_crit_edge ]
  %38 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %39, i32 %reg.1130
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #8, !srcloc !258
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and64 = and i32 %41, 65535
  %shr = lshr i32 %41, 16
  %add66 = or i32 %reg.1130, 4
  %42 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %43, i32 %add66
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #8, !srcloc !258
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %and68 = and i32 %45, 63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef %i.1129, i32 noundef %shr, i32 noundef %and64, i32 noundef %and68) #11
  %add72 = add nuw nsw i32 %reg.1130, 8
  %inc74 = add nuw nsw i32 %i.1129, 1
  %exitcond.not = icmp eq i32 %inc74, %.
  br i1 %exitcond.not, label %for.end75, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.end75:                                        ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %streaming = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !257
  %2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp = icmp eq i32 %2, %enable
  br i1 %cmp, label %entry.stream_done_crit_edge, label %if.end

entry.stream_done_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stream_done

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %uglygep.i = getelementptr i8, ptr %sd, i32 292
  %3 = call ptr @memset(ptr %uglygep.i, i32 0, i32 184)
  %iomem.i.i.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 9
  %4 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !261
  %call.i = tail call fastcc i32 @xcsi2rxss_soft_reset(ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.cleanup.sink.split.i_crit_edge

if.then3.cleanup.sink.split.i_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then3
  %10 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %13 = and i32 %12, -16777217
  %14 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %13) #8, !srcloc !261
  %16 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -12616576) #8, !srcloc !261
  %18 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i4.i58.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i58.i, i32 %21) #8, !srcloc !261
  %24 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %streaming, align 4
  %pads.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 13
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pads.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_get_remote_subdev.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i

lor.lhs.false.i.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_get_remote_subdev.exit.thread.i

is_media_entity_v4l2_subdev.exit.i.i:             ; preds = %lor.lhs.false.i.i
  %obj_type.i.i.i = getelementptr inbounds %struct.media_entity, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %obj_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %obj_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.i.i = icmp eq i32 %28, 2
  br i1 %cmp.i.i.i, label %if.else.i, label %is_media_entity_v4l2_subdev.exit.i.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_get_remote_subdev.exit.thread.i

xcsi2rxss_get_remote_subdev.exit.thread.i:        ; preds = %is_media_entity_v4l2_subdev.exit.i.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge, %lor.lhs.false.i.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge, %if.end.i.xcsi2rxss_get_remote_subdev.exit.thread.i_crit_edge
  %rsubdev70.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 6
  %29 = ptrtoint ptr %rsubdev70.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rsubdev70.i, align 4
  br label %if.then28.i

if.else.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  %rsubdev.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 6
  %30 = ptrtoint ptr %rsubdev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %rsubdev.i, align 4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video.i, align 4
  %tobool6.not.i = icmp eq ptr %34, null
  br i1 %tobool6.not.i, label %if.else.i.if.then28.i_crit_edge, label %land.lhs.true.i

if.else.i.if.then28.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_stream.i, align 4
  %tobool9.not.i = icmp eq ptr %36, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.then28.i_crit_edge, label %if.else11.i

land.lhs.true.i.if.then28.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not.i = icmp eq ptr %37, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else19.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else19.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_stream14.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %s_stream14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_stream14.i, align 4
  %tobool15.not.i = icmp eq ptr %39, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else19.i_crit_edge, label %land.lhs.true13.i.if.end26.i_crit_edge

land.lhs.true13.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

land.lhs.true13.i.if.else19.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19.i

if.else19.i:                                      ; preds = %land.lhs.true13.i.if.else19.i_crit_edge, %if.else11.i.if.else19.i_crit_edge
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else19.i, %land.lhs.true13.i.if.end26.i_crit_edge
  %.sink.i = phi ptr [ %36, %if.else19.i ], [ %39, %land.lhs.true13.i.if.end26.i_crit_edge ]
  %call23.i = tail call i32 %.sink.i(ptr noundef nonnull %26, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool27.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool27.not.i, label %if.end26.i.stream_done_crit_edge, label %if.end26.i.if.then28.i_crit_edge

if.end26.i.if.then28.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

if.end26.i.stream_done_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stream_done

if.then28.i:                                      ; preds = %if.end26.i.if.then28.i_crit_edge, %land.lhs.true.i.if.then28.i_crit_edge, %if.else.i.if.then28.i_crit_edge, %xcsi2rxss_get_remote_subdev.exit.thread.i
  %__result.075.i = phi i32 [ %call23.i, %if.end26.i.if.then28.i_crit_edge ], [ -19, %xcsi2rxss_get_remote_subdev.exit.thread.i ], [ -515, %if.else.i.if.then28.i_crit_edge ], [ -515, %land.lhs.true.i.if.then28.i_crit_edge ]
  %40 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i60.i = getelementptr i8, ptr %41, i32 40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %43 = and i32 %42, 12616575
  %44 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i4.i62.i = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i62.i, i32 %43) #8, !srcloc !261
  %46 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %47, i32 32
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %49 = and i32 %48, -16777217
  %50 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem.i.i.i, align 4
  %add.ptr.i4.i66.i = getelementptr i8, ptr %51, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i66.i, i32 %49) #8, !srcloc !261
  %52 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iomem.i.i.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %55 = and i32 %54, -16777217
  %56 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !261
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then28.i, %if.then3.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %__result.075.i, %if.then28.i ], [ %call.i, %if.then3.cleanup.sink.split.i_crit_edge ]
  %58 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %streaming, align 4
  br label %stream_done

if.else:                                          ; preds = %if.end
  %rsubdev.i14 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 6
  %59 = ptrtoint ptr %rsubdev.i14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rsubdev.i14, align 4
  %tobool.not.i15 = icmp eq ptr %60, null
  br i1 %tobool.not.i15, label %if.else.xcsi2rxss_stop_stream.exit_crit_edge, label %if.else.i18

if.else.xcsi2rxss_stop_stream.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_stop_stream.exit

if.else.i18:                                      ; preds = %if.else
  %ops.i16 = getelementptr inbounds %struct.v4l2_subdev, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i16, align 4
  %video.i17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %video.i17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %video.i17, align 4
  %tobool1.not.i = icmp eq ptr %64, null
  br i1 %tobool1.not.i, label %if.else.i18.xcsi2rxss_stop_stream.exit_crit_edge, label %land.lhs.true.i20

if.else.i18.xcsi2rxss_stop_stream.exit_crit_edge: ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_stop_stream.exit

land.lhs.true.i20:                                ; preds = %if.else.i18
  %s_stream.i19 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %s_stream.i19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_stream.i19, align 4
  %tobool4.not.i = icmp eq ptr %66, null
  br i1 %tobool4.not.i, label %land.lhs.true.i20.xcsi2rxss_stop_stream.exit_crit_edge, label %if.else6.i

land.lhs.true.i20.xcsi2rxss_stop_stream.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_stop_stream.exit

if.else6.i:                                       ; preds = %land.lhs.true.i20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not.i = icmp eq ptr %67, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_stream9.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %s_stream9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_stream9.i, align 4
  %tobool10.not.i = icmp eq ptr %69, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i21 = phi ptr [ %66, %if.else13.i ], [ %69, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i21(ptr noundef nonnull %60, i32 noundef 0) #8
  br label %xcsi2rxss_stop_stream.exit

xcsi2rxss_stop_stream.exit:                       ; preds = %if.end19.sink.split.i, %land.lhs.true.i20.xcsi2rxss_stop_stream.exit_crit_edge, %if.else.i18.xcsi2rxss_stop_stream.exit_crit_edge, %if.else.xcsi2rxss_stop_stream.exit_crit_edge
  %iomem.i.i.i22 = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 9
  %70 = ptrtoint ptr %iomem.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iomem.i.i.i22, align 4
  %add.ptr.i.i.i23 = getelementptr i8, ptr %71, i32 40
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i23) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %73 = and i32 %72, 12616575
  %74 = ptrtoint ptr %iomem.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iomem.i.i.i22, align 4
  %add.ptr.i4.i.i24 = getelementptr i8, ptr %75, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i24, i32 %73) #8, !srcloc !261
  %76 = ptrtoint ptr %iomem.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iomem.i.i.i22, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %77, i32 32
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33.i) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %79 = and i32 %78, -16777217
  %80 = ptrtoint ptr %iomem.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iomem.i.i.i22, align 4
  %add.ptr.i4.i35.i = getelementptr i8, ptr %81, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i35.i, i32 %79) #8, !srcloc !261
  %82 = ptrtoint ptr %iomem.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iomem.i.i.i22, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  %85 = and i32 %84, -16777217
  %86 = ptrtoint ptr %iomem.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iomem.i.i.i22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #8, !srcloc !261
  %88 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %streaming, align 4
  %rst_gpio.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 7
  %89 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rst_gpio.i, align 4
  %tobool.not.i26 = icmp eq ptr %90, null
  br i1 %tobool.not.i26, label %xcsi2rxss_stop_stream.exit.stream_done_crit_edge, label %if.end.i27

xcsi2rxss_stop_stream.exit.stream_done_crit_edge: ; preds = %xcsi2rxss_stop_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stream_done

if.end.i27:                                       ; preds = %xcsi2rxss_stop_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %90, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %91 = ptrtoint ptr %rst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rst_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %92, i32 noundef 0) #8
  br label %stream_done

stream_done:                                      ; preds = %if.end.i27, %xcsi2rxss_stop_stream.exit.stream_done_crit_edge, %cleanup.sink.split.i, %if.end26.i.stream_done_crit_edge, %entry.stream_done_crit_edge
  %ret.0 = phi i32 [ 0, %entry.stream_done_crit_edge ], [ 0, %if.end26.i.stream_done_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %xcsi2rxss_stop_stream.exit.stream_done_crit_edge ], [ 0, %if.end.i27 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_init_cfg(ptr noundef %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %default_format = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !262

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %default_format, i32 48)
  %5 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.not.i.1 = icmp ugt i16 %6, 1
  br i1 %cmp.not.i.1, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge, label %do.end.i.1, !prof !263

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.1

do.end.i.1:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.1

v4l2_subdev_get_try_format.exit.1:                ; preds = %do.end.i.1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge
  %spec.select.i.1 = phi i32 [ 0, %do.end.i.1 ], [ 1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.1 = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.1
  %9 = call ptr @memcpy(ptr %arrayidx.i.1, ptr %default_format, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %datatype = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datatype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %3)
  %cmp2.not = icmp eq i32 %3, 42
  br i1 %cmp2.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %1, -4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %entry.if.end7_crit_edge
  %dt.0 = phi i32 [ %3, %if.then3 ], [ 42, %entry.if.end7_crit_edge ]
  %n.0 = phi i32 [ %sub, %if.then3 ], [ %1, %entry.if.end7_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7
  %i.013.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %n.addr.012.i = phi i32 [ %n.0, %if.end7 ], [ %n.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x [2 x i32]], ptr @xcsi2dt_mbus_lut, i32 0, i32 %i.013.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dt.0)
  %cmp2.i = icmp eq i32 %5, %dt.0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %dec.i = add i32 %n.addr.012.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.012.i)
  %cmp3.i = icmp eq i32 %n.addr.012.i, 0
  br i1 %cmp3.i, label %xcsi2rxss_get_nth_mbus.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %n.addr.1.i = phi i32 [ %dec.i, %if.then.i.for.inc.i_crit_edge ], [ %n.addr.012.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %xcsi2rxss_get_nth_mbus.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

xcsi2rxss_get_nth_mbus.exit.thread:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %code923 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code923 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %code923, align 4
  br label %13

xcsi2rxss_get_nth_mbus.exit:                      ; preds = %if.then.i
  %arrayidx6.i = getelementptr [26 x [2 x i32]], ptr @xcsi2dt_mbus_lut, i32 0, i32 %i.013.i, i32 1
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6.i, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %9 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %code9, align 4
  %10 = and i32 %i.013.i, 536870911
  %11 = lshr i32 33554876, %10
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.not = icmp eq i32 %12, 0
  br i1 %tobool.not.not, label %xcsi2rxss_get_nth_mbus.exit.cleanup_crit_edge, label %xcsi2rxss_get_nth_mbus.exit._crit_edge

xcsi2rxss_get_nth_mbus.exit._crit_edge:           ; preds = %xcsi2rxss_get_nth_mbus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %13

xcsi2rxss_get_nth_mbus.exit.cleanup_crit_edge:    ; preds = %xcsi2rxss_get_nth_mbus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

13:                                               ; preds = %xcsi2rxss_get_nth_mbus.exit._crit_edge, %xcsi2rxss_get_nth_mbus.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %13, %xcsi2rxss_get_nth_mbus.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %13 ], [ 0, %xcsi2rxss_get_nth_mbus.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %1, label %entry.__xcsi2rxss_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__xcsi2rxss_get_pad_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xcsi2rxss_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !263

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %4, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__xcsi2rxss_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 1
  br label %__xcsi2rxss_get_pad_format.exit

__xcsi2rxss_get_pad_format.exit:                  ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__xcsi2rxss_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__xcsi2rxss_get_pad_format.exit_crit_edge ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcsi2rxss_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %3, label %entry.__xcsi2rxss_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__xcsi2rxss_get_pad_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xcsi2rxss_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !263

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %pad, align 4
  br label %__xcsi2rxss_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format.i = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 1
  br label %__xcsi2rxss_get_pad_format.exit

__xcsi2rxss_get_pad_format.exit:                  ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__xcsi2rxss_get_pad_format.exit_crit_edge
  %10 = phi i32 [ %1, %entry.__xcsi2rxss_get_pad_format.exit_crit_edge ], [ %.pr, %v4l2_subdev_get_try_format.exit.i ], [ %1, %sw.bb1.i ]
  %retval.0.i37 = phi ptr [ null, %entry.__xcsi2rxss_get_pad_format.exit_crit_edge ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %__xcsi2rxss_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = call ptr @memcpy(ptr %format, ptr %retval.0.i37, i32 48)
  br label %cleanup

if.end:                                           ; preds = %__xcsi2rxss_get_pad_format.exit
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %13, label %if.end.xcsi2rxss_get_dt.exit_crit_edge [
    i32 8207, label %if.end.if.then.i_crit_edge
    i32 8218, label %if.then.fold.split.i
    i32 0, label %if.then.fold.split11.i
    i32 4110, label %if.then.fold.split12.i
    i32 12308, label %if.then.fold.split13.i
    i32 12289, label %if.then.fold.split14.i
    i32 12307, label %if.then.fold.split15.i
    i32 12290, label %if.then.fold.split16.i
    i32 12303, label %if.then.fold.split17.i
    i32 12295, label %if.then.fold.split18.i
    i32 12302, label %if.then.fold.split19.i
    i32 12298, label %if.then.fold.split20.i
    i32 12306, label %if.then.fold.split21.i
    i32 12296, label %if.then.fold.split22.i
    i32 12304, label %if.then.fold.split23.i
    i32 12305, label %if.then.fold.split24.i
    i32 12320, label %if.then.fold.split25.i
    i32 12317, label %if.then.fold.split26.i
    i32 12318, label %if.then.fold.split27.i
    i32 12319, label %if.then.fold.split28.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.xcsi2rxss_get_dt.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_get_dt.exit

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split20.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split21.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split22.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split23.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split24.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split25.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split26.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split27.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split28.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split28.i, %if.then.fold.split27.i, %if.then.fold.split26.i, %if.then.fold.split25.i, %if.then.fold.split24.i, %if.then.fold.split23.i, %if.then.fold.split22.i, %if.then.fold.split21.i, %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split11.i ], [ 6, %if.then.fold.split12.i ], [ 9, %if.then.fold.split13.i ], [ 10, %if.then.fold.split14.i ], [ 11, %if.then.fold.split15.i ], [ 12, %if.then.fold.split16.i ], [ 13, %if.then.fold.split17.i ], [ 14, %if.then.fold.split18.i ], [ 15, %if.then.fold.split19.i ], [ 16, %if.then.fold.split20.i ], [ 17, %if.then.fold.split21.i ], [ 18, %if.then.fold.split22.i ], [ 19, %if.then.fold.split23.i ], [ 20, %if.then.fold.split24.i ], [ 21, %if.then.fold.split25.i ], [ 22, %if.then.fold.split26.i ], [ 23, %if.then.fold.split27.i ], [ 24, %if.then.fold.split28.i ]
  %arrayidx.i = getelementptr [26 x [2 x i32]], ptr @xcsi2dt_mbus_lut, i32 0, i32 %i.09.lcssa.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  br label %xcsi2rxss_get_dt.exit

xcsi2rxss_get_dt.exit:                            ; preds = %if.then.i, %if.end.xcsi2rxss_get_dt.exit_crit_edge
  %retval.0.i38 = phi i32 [ %16, %if.then.i ], [ 0, %if.end.xcsi2rxss_get_dt.exit_crit_edge ]
  %datatype = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 11
  %17 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datatype, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i38, i32 %18)
  %cmp6.not = icmp eq i32 %retval.0.i38, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %retval.0.i38)
  %cmp7.not = icmp eq i32 %retval.0.i38, 42
  %or.cond = or i1 %cmp7.not, %cmp6.not
  br i1 %or.cond, label %xcsi2rxss_get_dt.exit.if.end18_crit_edge, label %do.body

xcsi2rxss_get_dt.exit.if.end18_crit_edge:         ; preds = %xcsi2rxss_get_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.body:                                          ; preds = %xcsi2rxss_get_dt.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcsi2rxss_set_format.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcsi2rxss_set_format, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !256

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.xcsi2rxss_state, ptr %sd, i32 0, i32 5
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xcsi2rxss_set_format.__UNIQUE_ID_ddebug293, ptr noundef %20, ptr noundef nonnull @.str.130) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %21 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %datatype, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %22, label %do.end.xcsi2rxss_get_nth_mbus.exit_crit_edge [
    i32 30, label %do.end.if.then4.i_crit_edge
    i32 31, label %if.then4.i.fold.split
    i32 32, label %if.then4.i.fold.split48
    i32 33, label %if.then4.i.fold.split49
    i32 34, label %if.then4.i.fold.split50
    i32 35, label %if.then4.i.fold.split51
    i32 36, label %if.then4.i.fold.split52
    i32 40, label %if.then4.i.fold.split53
    i32 41, label %if.then4.i.fold.split54
    i32 42, label %if.then4.i.fold.split55
    i32 43, label %if.then4.i.fold.split56
    i32 44, label %if.then4.i.fold.split57
    i32 46, label %if.then4.i.fold.split58
    i32 47, label %if.then4.i.fold.split59
  ]

do.end.if.then4.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

do.end.xcsi2rxss_get_nth_mbus.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xcsi2rxss_get_nth_mbus.exit

if.then4.i.fold.split:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split48:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split49:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split50:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split51:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split52:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split53:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split54:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split55:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split56:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split57:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split58:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i.fold.split59:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then4.i.fold.split59, %if.then4.i.fold.split58, %if.then4.i.fold.split57, %if.then4.i.fold.split56, %if.then4.i.fold.split55, %if.then4.i.fold.split54, %if.then4.i.fold.split53, %if.then4.i.fold.split52, %if.then4.i.fold.split51, %if.then4.i.fold.split50, %if.then4.i.fold.split49, %if.then4.i.fold.split48, %if.then4.i.fold.split, %do.end.if.then4.i_crit_edge
  %i.013.i.lcssa = phi i32 [ 0, %do.end.if.then4.i_crit_edge ], [ 1, %if.then4.i.fold.split ], [ 2, %if.then4.i.fold.split48 ], [ 3, %if.then4.i.fold.split49 ], [ 4, %if.then4.i.fold.split50 ], [ 5, %if.then4.i.fold.split51 ], [ 6, %if.then4.i.fold.split52 ], [ 7, %if.then4.i.fold.split53 ], [ 8, %if.then4.i.fold.split54 ], [ 9, %if.then4.i.fold.split55 ], [ 13, %if.then4.i.fold.split56 ], [ 17, %if.then4.i.fold.split57 ], [ 21, %if.then4.i.fold.split58 ], [ 25, %if.then4.i.fold.split59 ]
  %arrayidx6.i = getelementptr [26 x [2 x i32]], ptr @xcsi2dt_mbus_lut, i32 0, i32 %i.013.i.lcssa, i32 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  br label %xcsi2rxss_get_nth_mbus.exit

xcsi2rxss_get_nth_mbus.exit:                      ; preds = %if.then4.i, %do.end.xcsi2rxss_get_nth_mbus.exit_crit_edge
  %retval.0.i41 = phi i32 [ %25, %if.then4.i ], [ 0, %do.end.xcsi2rxss_get_nth_mbus.exit_crit_edge ]
  %26 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i41, ptr %code, align 4
  br label %if.end18

if.end18:                                         ; preds = %xcsi2rxss_get_nth_mbus.exit, %xcsi2rxss_get_dt.exit.if.end18_crit_edge
  %27 = call ptr @memcpy(ptr %retval.0.i37, ptr %format, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !164, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !233, !235, !237, !239, !241, !242, !243, !245}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @__initcall__kmod_xilinx_csi2rxss__297_1109_xcsi2rxss_driver_init6, !1, !"__initcall__kmod_xilinx_csi2rxss__297_1109_xcsi2rxss_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1109, i32 1}
!2 = !{ptr @__exitcall_xcsi2rxss_driver_exit, !1, !"__exitcall_xcsi2rxss_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1111, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1112, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1113, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1102, i32 12}
!12 = !{ptr @xcsi2rxss_driver, !13, !"xcsi2rxss_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1100, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 992, i32 53}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 996, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xcsi2rxss_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @xcsi2rxss_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1016, i32 3}
!26 = !{ptr @xcsi2rxss_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xcsi2rxss_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @xcsi2rxss_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1029, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1065, i32 3}
!33 = !{ptr @xcsi2rxss_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @xcsi2rxss_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 258, i32 10}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 259, i32 10}
!39 = !{ptr @xcsi2rxss_clks, !40, !"xcsi2rxss_clks", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 257, i32 35}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 883, i32 43}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 885, i32 51}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 888, i32 31}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 890, i32 35}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 893, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @xcsi2rxss_parse_of._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @xcsi2rxss_parse_of._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 916, i32 4}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 923, i32 3}
!60 = !{ptr @xcsi2rxss_parse_of._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @xcsi2rxss_parse_of._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 927, i32 36}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 929, i32 3}
!66 = !{ptr @xcsi2rxss_parse_of._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @xcsi2rxss_parse_of._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 937, i32 3}
!70 = !{ptr @xcsi2rxss_parse_of._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @xcsi2rxss_parse_of._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 944, i32 3}
!74 = !{ptr @xcsi2rxss_parse_of._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @xcsi2rxss_parse_of._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 948, i32 2}
!78 = !{ptr @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug295, !77, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 957, i32 3}
!81 = !{ptr @xcsi2rxss_parse_of._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @xcsi2rxss_parse_of._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 963, i32 2}
!85 = !{ptr @xcsi2rxss_parse_of.__UNIQUE_ID_ddebug296, !84, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!86 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 581, i32 4}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @xcsi2rxss_irq_handler.__UNIQUE_ID_ddebug292, !91, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 592, i32 3}
!96 = !{ptr @xcsi2rxss_irq_handler._rs, !95, !"_rs", i1 false, i1 false}
!97 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xcsi2rxss_irq_handler.descriptor, !95, !"descriptor", i1 false, i1 false}
!99 = !{ptr @xcsi2rxss_irq_handler._rs.50, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 599, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @xcsi2rxss_irq_handler._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @xcsi2rxss_irq_handler._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @xcsi2rxss_irq_handler._rs.53, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 627, i32 4}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @xcsi2rxss_irq_handler.descriptor.54, !106, !"descriptor", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 155, i32 17}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 156, i32 20}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 157, i32 18}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 158, i32 18}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 159, i32 22}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 160, i32 23}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 161, i32 19}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 162, i32 19}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 163, i32 21}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 164, i32 25}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 165, i32 23}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 166, i32 23}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 167, i32 21}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 168, i32 24}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 169, i32 26}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 170, i32 25}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 171, i32 26}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 172, i32 25}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 173, i32 26}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 174, i32 25}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 175, i32 26}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 176, i32 25}
!153 = !{ptr @xcsi2rxss_events, !154, !"xcsi2rxss_events", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 154, i32 37}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 343, i32 4}
!157 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @xcsi2rxss_soft_reset._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @xcsi2rxss_soft_reset._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @xcsi2dt_mbus_lut, !161, !"xcsi2dt_mbus_lut", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 185, i32 18}
!162 = !{ptr @xcsi2rxss_ops, !163, !"xcsi2rxss_ops", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 865, i32 37}
!164 = !{ptr @xcsi2rxss_core_ops, !165, !"xcsi2rxss_core_ops", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 849, i32 42}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 423, i32 2}
!168 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @xcsi2rxss_log_status._entry, !167, !"_entry", i1 false, i1 false}
!171 = !{ptr @xcsi2rxss_log_status._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 425, i32 2}
!174 = !{ptr @xcsi2rxss_log_status._entry.83, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @xcsi2rxss_log_status._entry_ptr.85, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 427, i32 2}
!180 = !{ptr @xcsi2rxss_log_status._entry.88, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @xcsi2rxss_log_status._entry_ptr.90, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 429, i32 2}
!184 = !{ptr @xcsi2rxss_log_status._entry.91, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @xcsi2rxss_log_status._entry_ptr.93, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 431, i32 2}
!188 = !{ptr @xcsi2rxss_log_status._entry.94, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @xcsi2rxss_log_status._entry_ptr.96, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 435, i32 2}
!192 = !{ptr @xcsi2rxss_log_status._entry.97, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @xcsi2rxss_log_status._entry_ptr.99, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 437, i32 2}
!196 = !{ptr @xcsi2rxss_log_status._entry.100, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @xcsi2rxss_log_status._entry_ptr.102, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.104, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 440, i32 2}
!200 = !{ptr @xcsi2rxss_log_status._entry.103, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @xcsi2rxss_log_status._entry_ptr.105, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.107, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 441, i32 2}
!204 = !{ptr @xcsi2rxss_log_status._entry.106, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @xcsi2rxss_log_status._entry_ptr.108, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 446, i32 3}
!208 = !{ptr @xcsi2rxss_log_status._entry.109, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @xcsi2rxss_log_status._entry_ptr.111, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.113, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 455, i32 2}
!212 = !{ptr @xcsi2rxss_log_status._entry.112, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @xcsi2rxss_log_status._entry_ptr.114, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.116, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 456, i32 2}
!216 = !{ptr @xcsi2rxss_log_status._entry.115, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @xcsi2rxss_log_status._entry_ptr.117, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.119, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 477, i32 3}
!220 = !{ptr @xcsi2rxss_log_status._entry.118, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @xcsi2rxss_log_status._entry_ptr.120, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.121, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 385, i32 4}
!224 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @xcsi2rxss_log_counters._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @xcsi2rxss_log_counters._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.124, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 394, i32 5}
!229 = !{ptr @xcsi2rxss_log_counters._entry.123, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @xcsi2rxss_log_counters._entry_ptr.125, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.126, !228, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.127, !228, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @xcsi2rxss_video_ops, !234, !"xcsi2rxss_video_ops", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 853, i32 43}
!235 = !{ptr @xcsi2rxss_pad_ops, !236, !"xcsi2rxss_pad_ops", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 857, i32 41}
!237 = !{ptr @.str.128, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!239 = !{ptr @.str.129, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 795, i32 3}
!241 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @xcsi2rxss_set_format.__UNIQUE_ID_ddebug293, !240, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!243 = !{ptr @xcsi2rxss_media_ops, !244, !"xcsi2rxss_media_ops", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 845, i32 45}
!245 = !{ptr @xcsi2rxss_of_id_table, !246, !"xcsi2rxss_of_id_table", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/xilinx/xilinx-csi2rxss.c", i32 1094, i32 34}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i64 2148750512, i64 2148750517, i64 2148750530, i64 2148750574, i64 2148750608, i64 2148750629}
!257 = !{i8 0, i8 2}
!258 = !{i64 4296726}
!259 = !{i64 2151837075}
!260 = !{i64 2151838430}
!261 = !{i64 4296308}
!262 = !{!"branch_weights", i32 1, i32 2000}
!263 = !{!"branch_weights", i32 2000, i32 1}
