; ModuleID = '/llk/IR_all_yes/drivers/media/platform/renesas-ceu.c_pt.bc'
source_filename = "../drivers/media/platform/renesas-ceu.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceu_data = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.ceu_fmt = type { i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.120, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.120 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
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
%struct.ceu_device = type { ptr, %struct.video_device, %struct.v4l2_device, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_pix_format_mplane, %struct.v4l2_async_notifier, %struct.vb2_queue, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.ceu_subdev = type { %struct.v4l2_async_subdev, ptr, i32, %struct.ceu_mbus_fmt }
%struct.v4l2_async_subdev = type { i32, %union.anon.96, %struct.list_head, %struct.list_head }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i32, i16 }
%struct.ceu_mbus_fmt = type { i32, i32, i32, i8, i8, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.ceu_platform_data = type { i32, [2 x %struct.ceu_async_subdev] }
%struct.ceu_async_subdev = type { i32, i8, i8, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceu_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.118, [2 x i32] }
%union.anon.118 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.119, [2 x i32] }
%union.anon.119 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__initcall__kmod_renesas_ceu__301_1745_ceu_driver_init6 = internal global ptr @ceu_driver_init, section ".initcall6.init", align 4
@ceu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ceu_probe, ptr @ceu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ceu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ceu_driver_exit = internal global ptr @ceu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [50 x i8] c"renesas_ceu.description=Renesas CEU camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [60 x i8] c"renesas_ceu.author=Jacopo Mondi <jacopo+renesas@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [52 x i8] c"renesas_ceu.file=drivers/media/platform/renesas-ceu\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [27 x i8] c"renesas_ceu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"renesas-ceu\00", [20 x i8] zeroinitializer }, align 32
@ceu_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s72100-ceu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ceu_data_rz }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740-ceu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ceu_data_rz }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ceu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_runtime_suspend, ptr @ceu_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ceu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ceudev->lock\00", [18 x i8] zeroinitializer }, align 32
@ceu_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ceudev->mlock\00", [17 x i8] zeroinitializer }, align 32
@ceu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1660, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to request CEU interrupt.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceu_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/platform/renesas-ceu.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ceu_probe._entry_ptr = internal global ptr @ceu_probe._entry, section ".printk_index", align 4
@ceu_data_sh4 = internal constant { %struct.ceu_data, [28 x i8] } { %struct.ceu_data { i32 64484115 }, [28 x i8] zeroinitializer }, align 32
@ceu_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @ceu_notify_bound, ptr @ceu_notify_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@ceu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1696, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Renesas Capture Engine Unit %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ceu_probe._entry_ptr.12 = internal global ptr @ceu_probe._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ceu_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 520, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VBP interrupt: abort capture\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ceu_irq\00", [24 x i8] zeroinitializer }, align 32
@ceu_irq._entry_ptr = internal global ptr @ceu_irq._entry, section ".printk_index", align 4
@ceu_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 1566, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No subdevice connected on endpoint %u.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceu_parse_dt\00", [19 x i8] zeroinitializer }, align 32
@ceu_parse_dt._entry_ptr = internal global ptr @ceu_parse_dt._entry, section ".printk_index", align 4
@ceu_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 1574, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to parse endpoint #%u: %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@ceu_parse_dt._entry_ptr.19 = internal global ptr @ceu_parse_dt._entry.17, section ".printk_index", align 4
@ceu_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @ceu_vb2_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @ceu_vb2_prepare, ptr null, ptr null, ptr @ceu_start_streaming, ptr @ceu_stop_streaming, ptr @ceu_vb2_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@ceu_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @ceu_open, ptr @ceu_release }, [60 x i8] zeroinitializer }, align 32
@ceu_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @ceu_querycap, ptr @ceu_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @ceu_enum_input, ptr @ceu_g_input, ptr @ceu_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_g_parm, ptr @ceu_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @ceu_enum_framesizes, ptr @ceu_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@ceu_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: video_register_device failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceu_notify_complete\00", [44 x i8] zeroinitializer }, align 32
@ceu_notify_complete._entry_ptr = internal global ptr @ceu_notify_complete._entry, section ".printk_index", align 4
@ceu_vb2_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 669, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Plane size too small (%lu < %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceu_vb2_prepare\00", [16 x i8] zeroinitializer }, align 32
@ceu_vb2_prepare._entry_ptr = internal global ptr @ceu_vb2_prepare._entry, section ".printk_index", align 4
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@ceu_start_streaming.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"renesas_ceu\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceu_start_streaming\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Subdevice failed to start streaming: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ceu_start_streaming.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.6, ptr @.str.28, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No buffer available for capture.\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ceu_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 330, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"soft reset time out\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceu_soft_reset\00", [17 x i8] zeroinitializer }, align 32
@ceu_soft_reset._entry_ptr = internal global ptr @ceu_soft_reset._entry, section ".printk_index", align 4
@__const.ceu_set_default_fmt.v4l2_fmt = private unnamed_addr constant %struct.v4l2_format { i32 9, %union.anon.101 { %struct.v4l2_pix_format_mplane { i32 640, i32 480, i32 909203022, i32 1, i32 0, [8 x %struct.v4l2_plane_pix_format] [%struct.v4l2_plane_pix_format { i32 614400, i32 1280, [6 x i16] zeroinitializer }, %struct.v4l2_plane_pix_format { i32 614400, i32 1280, [6 x i16] zeroinitializer }, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer], i8 2, i8 0, %union.anon.103 zeroinitializer, i8 0, i8 0, [7 x i8] zeroinitializer }, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" } }, align 4
@ceu_fmt_list = internal constant { [8 x %struct.ceu_fmt], [32 x i8] } { [8 x %struct.ceu_fmt] [%struct.ceu_fmt { i32 909203022, i32 16 }, %struct.ceu_fmt { i32 825644622, i32 16 }, %struct.ceu_fmt { i32 842094158, i32 12 }, %struct.ceu_fmt { i32 825382478, i32 12 }, %struct.ceu_fmt { i32 1448695129, i32 16 }, %struct.ceu_fmt { i32 1498831189, i32 16 }, %struct.ceu_fmt { i32 1431918169, i32 16 }, %struct.ceu_fmt { i32 1498765654, i32 16 }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Renesas CEU\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"platform:renesas-ceu-%s\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Camera%u: %s\00", [19 x i8] zeroinitializer }, align 32
@ceu_data_rz = internal constant { %struct.ceu_data, [28 x i8] } { %struct.ceu_data { i32 60289811 }, [28 x i8] zeroinitializer }, align 32
@switch.table.ceu_notify_complete = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 0, i32 768, i32 512], [16 x i8] zeroinitializer }, align 32
@switch.table.ceu_s_input = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 0, i32 768, i32 512], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 825382478, i64 842094158, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.39 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"ceu_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1735, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1737, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"ceu_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1618, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ceu_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1729, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1643, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1644, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1660, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"ceu_data_sh4\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1613, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"ceu_notify_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1466, i32 52 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1696, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 520, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1565, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1573, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"ceu_vb2_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 770, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant [9 x i8] c"ceu_fops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1125, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"ceu_ioctl_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1342, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1458, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 666, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1163, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 694, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 707, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 330, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"ceu_fmt_list\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 234, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1141, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1144, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1205, i32 41 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"ceu_data_rz\00", align 1
@___asan_gen_.186 = private constant [40 x i8] c"../drivers/media/platform/renesas-ceu.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1609, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant [33 x i8] c"switch.table.ceu_notify_complete\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [25 x i8] c"switch.table.ceu_s_input\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_ceu_driver_exit, ptr @__initcall__kmod_renesas_ceu__301_1745_ceu_driver_init6, ptr @ceu_driver_exit, ptr @ceu_irq._entry, ptr @ceu_irq._entry_ptr, ptr @ceu_notify_complete._entry, ptr @ceu_notify_complete._entry_ptr, ptr @ceu_parse_dt._entry, ptr @ceu_parse_dt._entry.17, ptr @ceu_parse_dt._entry_ptr, ptr @ceu_parse_dt._entry_ptr.19, ptr @ceu_probe._entry, ptr @ceu_probe._entry.9, ptr @ceu_probe._entry_ptr, ptr @ceu_probe._entry_ptr.12, ptr @ceu_soft_reset._entry, ptr @ceu_soft_reset._entry_ptr, ptr @ceu_vb2_prepare._entry, ptr @ceu_vb2_prepare._entry_ptr, ptr @ceu_driver, ptr @.str, ptr @ceu_of_match, ptr @ceu_pm_ops, ptr @ceu_probe.__key, ptr @.str.1, ptr @ceu_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ceu_data_sh4, ptr @ceu_notify_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @ceu_vb2_ops, ptr @ceu_fops, ptr @ceu_ioctl_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ceu_fmt_list, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ceu_data_rz, ptr @switch.table.ceu_notify_complete, ptr @switch.table.ceu_s_input], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_data_sh4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_vb2_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_fmt_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceu_data_rz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceu_notify_complete to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceu_s_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ceu_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ceu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @ceu_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2424) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call7.i.i, align 8
  %capture = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 12
  %3 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %capture, ptr %capture, align 8
  %prev.i = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %capture, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ceu_probe.__key, i16 noundef signext 3) #12
  %mlock = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %mlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ceu_probe.__key.2) #12
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %base = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 17
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call7 to i32
  br label %error_free_ceudev

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.error_free_ceudev_crit_edge, label %if.end16

if.end13.error_free_ceudev_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_ceudev

if.end16:                                         ; preds = %if.end13
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.dev_name.exit_crit_edge

if.end16.dev_name.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end16.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end16.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call14, ptr noundef nonnull @ceu_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #16
  br label %error_free_ceudev

if.end25:                                         ; preds = %dev_name.exit
  tail call void @pm_runtime_enable(ptr noundef %dev1) #12
  %v4l2_dev = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 2
  %call26 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.error_pm_disable_crit_edge

if.end25.error_pm_disable_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_pm_disable

if.end29:                                         ; preds = %if.end25
  %notifier = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 10
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool30.not = icmp eq ptr %12, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  %call32 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #12
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i109 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %if.then31.error_v4l2_unregister_crit_edge, label %if.end.i111

if.then31.error_v4l2_unregister_crit_edge:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_v4l2_unregister

if.end.i111:                                      ; preds = %if.then31
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i109, i32 4) #12
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !106

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  %subdevs8.i.i = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %subdevs8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %subdevs8.i.i, align 8
  br label %error_v4l2_unregister

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i111
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %22 = extractvalue { i32, i1 } %17, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %22, i32 noundef 3520) #12
  %subdevs.i.i = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i.i.i, ptr %subdevs.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_kcalloc.exit.i.i.error_v4l2_unregister_crit_edge, label %for.body.lr.ph.i

devm_kcalloc.exit.i.i.error_v4l2_unregister_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_v4l2_unregister

for.body.lr.ph.i:                                 ; preds = %devm_kcalloc.exit.i.i
  %sd.i.i = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %sd.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sd.i.i, align 4
  %sd_index.i.i = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %sd_index.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sd_index.i.i, align 8
  %num_sd.i.i = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %num_sd.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %num_sd.i.i, align 4
  %27 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %fw_ep.i, i32 0, i32 1
  %28 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %fw_ep.i, i32 0, i32 2
  %29 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %fw_ep.i, i32 0, i32 2, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.080.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fw_ep.i) #12
  %30 = call ptr @memset(ptr %fw_ep.i, i32 0, i32 64)
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %27, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %28, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %29, align 4
  %call5.i = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %16, i32 noundef 0, i32 noundef %i.080.i) #12
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %cond.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef %i.080.i) #16
  br label %error_cleanup.i

cond.end.i:                                       ; preds = %for.body.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call5.i, i32 0, i32 3
  %call11.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %fw_ep.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end18.i, label %do.end16.i

do.end16.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %i.080.i, i32 noundef %call11.i) #16
  br label %error_cleanup.i

if.end18.i:                                       ; preds = %cond.end.i
  %call27.i = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef %fwnode.i, i32 noundef 52) #12
  %cmp.i.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then29.i, label %for.inc.i

if.then29.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %call27.i to i32
  br label %error_cleanup.i

for.inc.i:                                        ; preds = %if.end18.i
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %28, align 4
  %mbus_flags.i = getelementptr inbounds %struct.ceu_subdev, ptr %call27.i, i32 0, i32 2
  %41 = ptrtoint ptr %mbus_flags.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mbus_flags.i, align 4
  %42 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %subdevs.i.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %43, i32 %i.080.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call27.i, ptr %arrayidx.i, align 4
  call void @of_node_put(ptr noundef nonnull %call5.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_ep.i) #12
  %inc.i = add nuw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i109
  br i1 %exitcond.not.i, label %for.inc.i.if.end40_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end40_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

error_cleanup.i:                                  ; preds = %if.then29.i, %do.end16.i, %do.end.i
  %ret.0.ph.i = phi i32 [ -19, %do.end.i ], [ %38, %if.then29.i ], [ %call11.i, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_ep.i) #12
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #12
  call void @of_node_put(ptr noundef %call5.i) #12
  br label %if.end40

if.else:                                          ; preds = %if.end29
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %45 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_data, align 8
  %tobool34.not = icmp eq ptr %46, null
  br i1 %tobool34.not, label %if.else.error_v4l2_unregister_crit_edge, label %if.then35

if.else.error_v4l2_unregister_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_v4l2_unregister

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call fastcc i32 @ceu_parse_platform_data(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %46)
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %error_cleanup.i, %for.inc.i.if.end40_crit_edge
  %ceu_data.0 = phi ptr [ @ceu_data_sh4, %if.then35 ], [ %call32, %error_cleanup.i ], [ %call32, %for.inc.i.if.end40_crit_edge ]
  %num_subdevs.0 = phi i32 [ %call37, %if.then35 ], [ %ret.0.ph.i, %error_cleanup.i ], [ %call.i109, %for.inc.i.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_subdevs.0)
  %cmp41 = icmp slt i32 %num_subdevs.0, 0
  br i1 %cmp41, label %if.end40.error_v4l2_unregister_crit_edge, label %if.end43

if.end40.error_v4l2_unregister_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_v4l2_unregister

if.end43:                                         ; preds = %if.end40
  %47 = ptrtoint ptr %ceu_data.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ceu_data.0, align 4
  %irq_mask44 = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %irq_mask44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq_mask44, align 8
  %v4l2_dev47 = getelementptr inbounds %struct.ceu_device, ptr %call7.i.i, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %v4l2_dev47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %v4l2_dev, ptr %v4l2_dev47, align 4
  %51 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ceu_notify_ops, ptr %notifier, align 8
  %call51 = call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end57, label %error_cleanup

do.end57:                                         ; preds = %if.end43
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i114 = icmp eq ptr %53, null
  br i1 %tobool.not.i114, label %if.end.i115, label %do.end57.dev_name.exit117_crit_edge

do.end57.dev_name.exit117_crit_edge:              ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit117

if.end.i115:                                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit117

dev_name.exit117:                                 ; preds = %if.end.i115, %do.end57.dev_name.exit117_crit_edge
  %retval.0.i116 = phi ptr [ %55, %if.end.i115 ], [ %53, %do.end57.dev_name.exit117_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i116) #16
  br label %cleanup

error_cleanup:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #12
  br label %error_v4l2_unregister

error_v4l2_unregister:                            ; preds = %error_cleanup, %if.end40.error_v4l2_unregister_crit_edge, %if.else.error_v4l2_unregister_crit_edge, %devm_kcalloc.exit.i.i.error_v4l2_unregister_crit_edge, %devm_kcalloc.exit.thread.i.i, %if.then31.error_v4l2_unregister_crit_edge
  %ret.0 = phi i32 [ %call51, %error_cleanup ], [ %num_subdevs.0, %if.end40.error_v4l2_unregister_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i.i ], [ -12, %devm_kcalloc.exit.i.i.error_v4l2_unregister_crit_edge ], [ -19, %if.then31.error_v4l2_unregister_crit_edge ], [ -22, %if.else.error_v4l2_unregister_crit_edge ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  br label %error_pm_disable

error_pm_disable:                                 ; preds = %error_v4l2_unregister, %if.end25.error_pm_disable_crit_edge
  %ret.1 = phi i32 [ %call26, %if.end25.error_pm_disable_crit_edge ], [ %ret.0, %error_v4l2_unregister ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #12
  br label %error_free_ceudev

error_free_ceudev:                                ; preds = %error_pm_disable, %do.end23, %if.end13.error_free_ceudev_crit_edge, %if.then10
  %ret.2 = phi i32 [ %6, %if.then10 ], [ %call14, %if.end13.error_free_ceudev_crit_edge ], [ %call.i, %do.end23 ], [ %ret.1, %error_pm_disable ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error_free_ceudev, %dev_name.exit117, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_free_ceudev ], [ 0, %dev_name.exit117 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #12
  %notifier = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 10
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #12
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #12
  %v4l2_dev = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  %vdev = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vdev) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %irq_mask = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 8
  %neg = xor i32 %5, -1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %7, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %neg) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %8) #12, !srcloc !110
  %and = and i32 %3, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %active = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 13
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active, align 8
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13) #16
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef 6) #12
  %capture23 = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %capture23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn68 = load ptr, ptr %capture23, align 8
  %cmp.not69 = icmp eq ptr %.pn68, %capture23
  br i1 %cmp.not69, label %do.end.cleanup.sink.split_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %call.i = tail call i64 @ktime_get() #12
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %10, i32 0, i32 5
  %14 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 14
  %15 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sequence, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence10 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %sequence10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sequence10, align 8
  %field = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 8
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 4
  %field11 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 2
  %20 = ptrtoint ptr %field11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field11, align 4
  %capture = getelementptr inbounds %struct.ceu_device, ptr %data, i32 0, i32 12
  %21 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %capture, align 4
  %cmp.i.not = icmp eq ptr %22, %capture
  br i1 %cmp.i.not, label %if.end8.if.end18_crit_edge, label %if.then14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %22, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %31 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %active, align 8
  tail call fastcc void @ceu_capture(ptr noundef %data)
  br label %if.end18

if.end18:                                         ; preds = %list_del.exit, %if.end8.if.end18_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef 5) #12
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn68, %do.end.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn70, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #12
  %32 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn70, align 8
  %cmp.not = icmp eq ptr %.pn, %capture23
  br i1 %cmp.not, label %for.body.cleanup.sink.split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %if.end18, %do.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceu_parse_platform_data(ptr noundef %ceudev, ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #12
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !106

devm_kcalloc.exit.thread.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %subdevs8.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 3
  %4 = ptrtoint ptr %subdevs8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %subdevs8.i, align 8
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end
  %5 = ptrtoint ptr %ceudev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ceudev, align 8
  %7 = extractvalue { i32, i1 } %2, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %7, i32 noundef 3520) #12
  %subdevs.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 3
  %8 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i.i, ptr %subdevs.i, align 8
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %ceu_init_async_subdevs.exit

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ceu_init_async_subdevs.exit:                      ; preds = %devm_kcalloc.exit.i
  %sd.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 4
  %9 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sd.i, align 4
  %sd_index.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 5
  %10 = ptrtoint ptr %sd_index.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sd_index.i, align 8
  %num_sd.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 6
  %11 = ptrtoint ptr %num_sd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_sd.i, align 4
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp538.not = icmp eq i32 %13, 0
  br i1 %cmp538.not, label %ceu_init_async_subdevs.exit.cleanup_crit_edge, label %for.body.lr.ph

ceu_init_async_subdevs.exit.cleanup_crit_edge:    ; preds = %ceu_init_async_subdevs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %ceu_init_async_subdevs.exit
  %notifier = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %i2c_adapter_id = getelementptr %struct.ceu_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.039, i32 3
  %14 = ptrtoint ptr %i2c_adapter_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i2c_adapter_id, align 4
  %i2c_address = getelementptr %struct.ceu_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.039, i32 4
  %16 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2c_address, align 4
  %conv = trunc i32 %17 to i16
  %call6 = tail call ptr @__v4l2_async_nf_add_i2c(ptr noundef %notifier, i32 noundef %15, i16 noundef zeroext %conv, i32 noundef 52) #12
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #12
  %18 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ceu_platform_data, ptr %pdata, i32 0, i32 1, i32 %i.039
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %mbus_flags = getelementptr inbounds %struct.ceu_subdev, ptr %call6, i32 0, i32 2
  %21 = ptrtoint ptr %mbus_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mbus_flags, align 4
  %22 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subdevs.i, align 8
  %arrayidx13 = getelementptr ptr, ptr %23, i32 %i.039
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6, ptr %arrayidx13, align 4
  %inc = add nuw i32 %i.039, 1
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdata, align 4
  %cmp5 = icmp ult i32 %inc, %26
  br i1 %cmp5, label %if.end11.for.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.then8, %ceu_init_async_subdevs.exit.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then8 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ 0, %ceu_init_async_subdevs.exit.cleanup_crit_edge ], [ %26, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceu_capture(ptr nocapture noundef readonly %ceudev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 13
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %1, i32 noundef 0) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %base.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 17
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #12, !srcloc !110
  %pixelformat.i = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %pixelformat.i, align 1
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.if.end_crit_edge [
    i32 825382478, label %entry.if.then_crit_edge
    i32 842094158, label %entry.if.then_crit_edge6
    i32 825644622, label %entry.if.then_crit_edge7
    i32 909203022, label %entry.if.then_crit_edge8
  ]

entry.if.then_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge6, %entry.if.then_crit_edge7, %entry.if.then_crit_edge8
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active, align 8
  %call.i1 = tail call ptr @vb2_plane_cookie(ptr noundef %11, i32 noundef 1) #12
  %12 = ptrtoint ptr %call.i1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i1, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %16) #12, !srcloc !110
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 16777216) #12, !srcloc !110
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_i2c(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ceu_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %v4l2_sd, ptr nocapture noundef writeonly %asd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev1, align 4
  %v4l2_sd3 = getelementptr inbounds %struct.ceu_subdev, ptr %asd, i32 0, i32 1
  %2 = ptrtoint ptr %v4l2_sd3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %v4l2_sd, ptr %v4l2_sd3, align 4
  %num_sd = getelementptr i8, ptr %1, i32 140
  %3 = ptrtoint ptr %num_sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sd, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %num_sd, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_notify_complete(ptr nocapture noundef readonly %notifier) #2 align 64 {
entry:
  %mbus_code.i.i = alloca i32, align 4
  %v4l2_fmt.i = alloca %struct.v4l2_format, align 4
  %sd_mbus_fmt.i = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1360
  %vdev2 = getelementptr i8, ptr %1, i32 -1352
  %vb2_vq = getelementptr i8, ptr %1, i32 392
  %2 = ptrtoint ptr %vb2_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %vb2_vq, align 4
  %io_modes = getelementptr i8, ptr %1, i32 396
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr i8, ptr %1, i32 432
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %drv_priv, align 4
  %ops = getelementptr i8, ptr %1, i32 420
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ceu_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr i8, ptr %1, i32 424
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr i8, ptr %1, i32 440
  %7 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr i8, ptr %1, i32 444
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr i8, ptr %1, i32 452
  %9 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %min_buffers_needed, align 4
  %mlock = getelementptr i8, ptr %1, i32 920
  %lock = getelementptr i8, ptr %1, i32 412
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mlock, ptr %lock, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %dev4 = getelementptr i8, ptr %1, i32 400
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev4, align 4
  %call5 = tail call i32 @vb2_queue_init(ptr noundef %vb2_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr i8, ptr %1, i32 132
  %14 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %subdevs = getelementptr i8, ptr %1, i32 128
  %16 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdevs, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %sd, align 4
  %sd_index = getelementptr i8, ptr %1, i32 136
  %21 = ptrtoint ptr %sd_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sd_index, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %22 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd, align 4
  %v4l2_sd11 = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %v4l2_sd11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_sd11, align 4
  %mbus_fmt1.i = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sd_mbus_fmt.i) #12
  %26 = call ptr @memset(ptr %sd_mbus_fmt.i, i32 0, i32 48)
  %27 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %sd_mbus_fmt.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %27, align 4
  %tobool3.not.i = icmp eq ptr %25, null
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %code.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %sd_mbus_fmt.i, i32 0, i32 2
  %index.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %sd_mbus_fmt.i, i32 0, i32 1
  br i1 %tobool3.not.i, label %if.end9.ceu_init_mbus_fmt.exit.thread_crit_edge, label %if.end9.land.rhs.i_crit_edge

if.end9.land.rhs.i_crit_edge:                     ; preds = %if.end9
  br label %land.rhs.i

if.end9.ceu_init_mbus_fmt.exit.thread_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_init_mbus_fmt.exit.thread

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end9.land.rhs.i_crit_edge
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pad.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %land.rhs.i.ceu_init_mbus_fmt.exit.thread_crit_edge, label %land.lhs.true.i

land.rhs.i.ceu_init_mbus_fmt.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_init_mbus_fmt.exit.thread

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %enum_mbus_code.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %enum_mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enum_mbus_code.i, align 4
  %tobool7.not.i = icmp eq ptr %34, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.ceu_init_mbus_fmt.exit.thread_crit_edge, label %if.else9.i

land.lhs.true.i.ceu_init_mbus_fmt.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_init_mbus_fmt.exit.thread

if.else9.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not.i = icmp eq ptr %35, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else16.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else16.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %enum_mbus_code12.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %enum_mbus_code12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enum_mbus_code12.i, align 4
  %tobool13.not.i = icmp eq ptr %37, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.else16.i_crit_edge, label %land.lhs.true11.i.if.end22.i_crit_edge

land.lhs.true11.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

land.lhs.true11.i.if.else16.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

if.else16.i:                                      ; preds = %land.lhs.true11.i.if.else16.i_crit_edge, %if.else9.i.if.else16.i_crit_edge
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else16.i, %land.lhs.true11.i.if.end22.i_crit_edge
  %.sink.i = phi ptr [ %34, %if.else16.i ], [ %37, %land.lhs.true11.i.if.end22.i_crit_edge ]
  %call20.i = call i32 %.sink.i(ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull %sd_mbus_fmt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool23.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool23.not.i, label %while.body.i, label %if.end22.i.ceu_init_mbus_fmt.exit.thread_crit_edge

if.end22.i.ceu_init_mbus_fmt.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_init_mbus_fmt.exit.thread

while.body.i:                                     ; preds = %if.end22.i
  %38 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %code.i, align 4
  %.off.i = add i32 %39, -8198
  %switch.i = icmp ult i32 %.off.i, 4
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %index.i, align 4
  br i1 %switch.i, label %if.end26.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end26.i:                                       ; preds = %while.body.i
  %42 = ptrtoint ptr %mbus_fmt1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %mbus_fmt1.i, align 4
  %bps.i = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %bps.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %bps.i, align 1
  %switch.tableidx = add i32 %39, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %44 = icmp ult i32 %switch.tableidx, 4
  br i1 %44, label %switch.lookup, label %if.end26.i.if.end15_crit_edge

if.end26.i.if.end15_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

switch.lookup:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.mult = shl i32 %switch.tableidx, 8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ceu_notify_complete, i32 0, i32 %switch.tableidx
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 16777472, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %fmt_order.i = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %fmt_order.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %switch.idx.mult, ptr %fmt_order.i, align 4
  %fmt_order_swap.i = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %fmt_order_swap.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %switch.load, ptr %fmt_order_swap.i, align 4
  %swapped.i = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %swapped.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %switch.masked, ptr %swapped.i, align 4
  %bpp.i = getelementptr inbounds %struct.ceu_subdev, ptr %23, i32 0, i32 3, i32 5
  %49 = ptrtoint ptr %bpp.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %bpp.i, align 2
  br label %if.end15

ceu_init_mbus_fmt.exit.thread:                    ; preds = %if.end22.i.ceu_init_mbus_fmt.exit.thread_crit_edge, %land.lhs.true.i.ceu_init_mbus_fmt.exit.thread_crit_edge, %land.rhs.i.ceu_init_mbus_fmt.exit.thread_crit_edge, %if.end9.ceu_init_mbus_fmt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sd_mbus_fmt.i) #12
  br label %cleanup

if.end15:                                         ; preds = %switch.lookup, %if.end26.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sd_mbus_fmt.i) #12
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %v4l2_fmt.i) #12
  %50 = call ptr @memcpy(ptr %v4l2_fmt.i, ptr @__const.ceu_set_default_fmt.v4l2_fmt, i32 204)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbus_code.i.i) #12
  %call.i.i = call fastcc i32 @__ceu_try_fmt(ptr noundef %add.ptr.i, ptr noundef nonnull %v4l2_fmt.i, ptr noundef nonnull %mbus_code.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbus_code.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end19, label %ceu_set_default_fmt.exit

ceu_set_default_fmt.exit:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %v4l2_fmt.i) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %v4l2_pix.i = getelementptr i8, ptr %1, i32 152
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt.i, i32 0, i32 1
  %51 = call ptr @memcpy(ptr %v4l2_pix.i, ptr %fmt.i, i32 192)
  %field.i = getelementptr i8, ptr %1, i32 148
  %52 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %field.i, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %v4l2_fmt.i) #12
  %name = getelementptr i8, ptr %1, i32 -160
  %call20 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #12
  %v4l2_dev21 = getelementptr i8, ptr %1, i32 -180
  %53 = ptrtoint ptr %v4l2_dev21 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %1, ptr %v4l2_dev21, align 4
  %lock23 = getelementptr i8, ptr %1, i32 -8
  %54 = ptrtoint ptr %lock23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mlock, ptr %lock23, align 8
  %queue = getelementptr i8, ptr %1, i32 -168
  %55 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %vb2_vq, ptr %queue, align 8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 8
  %56 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler25 = getelementptr i8, ptr %1, i32 -172
  %58 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %ctrl_handler25, align 4
  %fops = getelementptr i8, ptr %1, i32 -1124
  %59 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ceu_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr i8, ptr %1, i32 -36
  %60 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ceu_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr i8, ptr %1, i32 -40
  %61 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ceu_vdev_release, ptr %release, align 8
  %device_caps = getelementptr i8, ptr %1, i32 -1120
  %62 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 67112960, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 -948
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %vdev2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %v4l2_dev21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %v4l2_dev21, align 4
  %name29 = getelementptr inbounds %struct.v4l2_device, ptr %65, i32 0, i32 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name29, i32 noundef %call.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19.cleanup_crit_edge, %ceu_set_default_fmt.exit, %ceu_init_mbus_fmt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call5, %entry.cleanup_crit_edge ], [ %call.i.i, %ceu_set_default_fmt.exit ], [ 0, %if.end19.cleanup_crit_edge ], [ -6, %ceu_init_mbus_fmt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceu_vdev_release(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_vb2_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %count, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %num_planes8 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %num_planes8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes8, align 1
  %conv9 = zext i8 %5 to i32
  br i1 %tobool.not, label %if.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp39.not = icmp eq i8 %5, 0
  br i1 %cmp39.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %conv9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.040
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.ceu_device, ptr %1, i32 0, i32 9, i32 5, i32 %i.040
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv9, ptr %num_planes, align 4
  %11 = ptrtoint ptr %num_planes8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_planes8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1343.not = icmp eq i8 %12, 0
  br i1 %cmp1343.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body15_crit_edge

if.end7.for.body15_crit_edge:                     ; preds = %if.end7
  br label %for.body15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end7.for.body15_crit_edge
  %i.144 = phi i32 [ %inc21, %for.body15.for.body15_crit_edge ], [ 0, %if.end7.for.body15_crit_edge ]
  %arrayidx17 = getelementptr %struct.ceu_device, ptr %1, i32 0, i32 9, i32 5, i32 %i.144
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr i32, ptr %sizes, i32 %i.144
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx19, align 4
  %inc21 = add nuw nsw i32 %i.144, 1
  %16 = ptrtoint ptr %num_planes8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_planes8, align 1
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp ult i32 %inc21, %conv12
  br i1 %cmp13, label %for.body15.for.body15_crit_edge, label %for.body15.cleanup_crit_edge

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15

cleanup:                                          ; preds = %for.body15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body15.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_vb2_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp45.not = icmp eq i8 %5, 0
  br i1 %cmp45.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %i.046)
  %cmp.i = icmp ugt i32 %7, %i.046
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.046, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  %arrayidx = getelementptr %struct.ceu_device, ptr %3, i32 0, i32 9, i32 5, i32 %i.046
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp ult i32 %9, %11
  br i1 %cmp3, label %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit33

vb2_plane_size.exit.thread:                       ; preds = %for.body
  %arrayidx39 = getelementptr %struct.ceu_device, ptr %3, i32 0, i32 9, i32 5, i32 %i.046
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp340.not = icmp eq i32 %13, 0
  br i1 %cmp340.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit33

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit33:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge
  %14 = phi i32 [ %11, %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge ], [ %13, %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge ]
  %retval.0.i32 = phi i32 [ %9, %vb2_plane_size.exit.vb2_plane_size.exit33_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit33_crit_edge ]
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i32, i32 noundef %14) #16
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.046, i32 3
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %18 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit33 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd1, align 4
  %v4l2_pix.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9
  %mbus_flags2.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mbus_flags2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbus_flags2.i, align 4
  %base.i.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !110
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i83.i = getelementptr i8, ptr %11, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 0) #12, !srcloc !110
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i85.i = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 0) #12, !srcloc !110
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i87.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 0) #12, !srcloc !110
  %height.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %height.i, align 1
  %shl.i = shl i32 %17, 16
  %18 = ptrtoint ptr %v4l2_pix.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %v4l2_pix.i, align 1
  %bpp.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bpp.i, align 2
  %conv.i = zext i8 %21 to i32
  %mul.i = mul i32 %19, %conv.i
  %div81.i = lshr i32 %mul.i, 3
  %or.i = or i32 %div81.i, %shl.i
  %pixelformat.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %pixelformat.i, align 1
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %23, label %entry.do.body103_crit_edge [
    i32 1448695129, label %entry.sw.bb.i_crit_edge
    i32 1431918169, label %entry.sw.bb.i_crit_edge203
    i32 1498831189, label %entry.sw.bb.i_crit_edge204
    i32 1498765654, label %entry.sw.bb.i_crit_edge205
    i32 909203022, label %sw.bb8.i
    i32 842094158, label %entry.sw.bb10.i_crit_edge
    i32 825644622, label %sw.bb16.i
    i32 825382478, label %entry.sw.bb18.i_crit_edge
  ]

entry.sw.bb18.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

entry.sw.bb10.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i

entry.sw.bb.i_crit_edge205:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

entry.sw.bb.i_crit_edge204:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

entry.sw.bb.i_crit_edge203:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

entry.do.body103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge203, %entry.sw.bb.i_crit_edge204, %entry.sw.bb.i_crit_edge205
  %bytesperline.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %bytesperline.i, align 1
  br label %if.end

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10.i

sw.bb10.i:                                        ; preds = %sw.bb8.i, %entry.sw.bb10.i_crit_edge
  %cdocr.0.i = phi i32 [ 7, %entry.sw.bb10.i_crit_edge ], [ 23, %sw.bb8.i ]
  %swapped.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %swapped.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %fmt_order_swap.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 2
  %fmt_order.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 1
  %camcr.0.in.i = select i1 %tobool.not.i, ptr %fmt_order.i, ptr %fmt_order_swap.i
  %29 = ptrtoint ptr %camcr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %camcr.0.i = load i32, ptr %camcr.0.in.i, align 4
  br label %if.end

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb18.i:                                        ; preds = %sw.bb16.i, %entry.sw.bb18.i_crit_edge
  %cdocr.1.i = phi i32 [ 7, %entry.sw.bb18.i_crit_edge ], [ 23, %sw.bb16.i ]
  %swapped19.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %swapped19.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %swapped19.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not.i = icmp eq i8 %31, 0
  %fmt_order22.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 1
  %fmt_order_swap24.i = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3, i32 2
  %camcr.1.in.i = select i1 %tobool20.not.i, ptr %fmt_order_swap24.i, ptr %fmt_order22.i
  %32 = ptrtoint ptr %camcr.1.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %camcr.1.i = load i32, ptr %camcr.1.in.i, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb18.i, %sw.bb10.i, %sw.bb.i
  %camcr.2.i = phi i32 [ %camcr.1.i, %sw.bb18.i ], [ %camcr.0.i, %sw.bb10.i ], [ 16, %sw.bb.i ]
  %cdocr.2.i = phi i32 [ %cdocr.1.i, %sw.bb18.i ], [ %cdocr.0.i, %sw.bb10.i ], [ 23, %sw.bb.i ]
  %cdwdr.0.i = phi i32 [ %19, %sw.bb18.i ], [ %19, %sw.bb10.i ], [ %26, %sw.bb.i ]
  %cfzsr.0.i = or i32 %shl.i, %19
  %and.i = lshr i32 %7, 4
  %33 = and i32 %and.i, 2
  %and33.i = lshr i32 %7, 3
  %and33.lobit.i = and i32 %and33.i, 1
  %or32.i = or i32 %and33.lobit.i, %33
  %or36.i = or i32 %or32.i, %camcr.2.i
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i89.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %36) #12, !srcloc !110
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i91.i = getelementptr i8, ptr %38, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %cdocr.2.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %39) #12, !srcloc !110
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i93.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 12288) #12, !srcloc !110
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i95.i = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 0) #12, !srcloc !110
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i97.i = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 %46) #12, !srcloc !110
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i99.i = getelementptr i8, ptr %48, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %cfzsr.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %49) #12, !srcloc !110
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i101.i = getelementptr i8, ptr %51, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %cdwdr.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 %52) #12, !srcloc !110
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %if.else

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %video, align 4
  %tobool5.not = icmp eq ptr %56, null
  br i1 %tobool5.not, label %if.else.do.body38_crit_edge, label %land.lhs.true

if.else.do.body38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_stream, align 4
  %tobool8.not = icmp eq ptr %58, null
  br i1 %tobool8.not, label %land.lhs.true.do.body38_crit_edge, label %if.else10

land.lhs.true.do.body38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool11.not = icmp eq ptr %59, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %s_stream13 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %s_stream13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_stream13, align 4
  %tobool14.not = icmp eq ptr %61, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %land.lhs.true12.if.end25_crit_edge
  %.sink = phi ptr [ %58, %if.else18 ], [ %61, %land.lhs.true12.if.end25_crit_edge ]
  %call22 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 1) #12
  %62 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call22, label %if.end25.do.body_crit_edge [
    i32 0, label %if.end25.do.body38_crit_edge
    i32 -515, label %if.end25.do.body38_crit_edge206
  ]

if.end25.do.body38_crit_edge206:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

if.end25.do.body38_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %if.end.do.body_crit_edge
  %__result.0197 = phi i32 [ %call22, %if.end25.do.body_crit_edge ], [ -19, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceu_start_streaming.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceu_start_streaming, %if.then34)) #12
          to label %do.body103 [label %if.then34], !srcloc !112

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ceu_start_streaming.__UNIQUE_ID_ddebug299, ptr noundef %64, ptr noundef nonnull @.str.27, i32 noundef %__result.0197) #12
  br label %do.body103

do.body38:                                        ; preds = %if.end25.do.body38_crit_edge, %if.end25.do.body38_crit_edge206, %land.lhs.true.do.body38_crit_edge, %if.else.do.body38_crit_edge
  %__result.0194 = phi i32 [ %call22, %if.end25.do.body38_crit_edge ], [ %call22, %if.end25.do.body38_crit_edge206 ], [ -515, %land.lhs.true.do.body38_crit_edge ], [ -515, %if.else.do.body38_crit_edge ]
  %lock = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 16
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sequence = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 14
  %65 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %sequence, align 4
  %capture = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 12
  %66 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %capture, align 8
  %add.ptr = getelementptr i8, ptr %67, i32 -736
  %tobool48.not = icmp eq ptr %add.ptr, null
  br i1 %tobool48.not, label %if.then49, label %if.end68

if.then49:                                        ; preds = %do.body38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceu_start_streaming.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceu_start_streaming, %if.then63)) #12
          to label %if.else75 [label %if.then63], !srcloc !112

if.then63:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ceu_start_streaming.__UNIQUE_ID_ddebug300, ptr noundef %69, ptr noundef nonnull @.str.28) #12
  br label %if.else75

if.end68:                                         ; preds = %do.body38
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %67) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end68.list_del.exit_crit_edge

if.end68.list_del.exit_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %67, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end68.list_del.exit_crit_edge
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %active = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 13
  %78 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr, ptr %active, align 8
  %irq_mask = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 7
  %79 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq_mask, align 8
  %neg = xor i32 %80, -1
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %82, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %83 = tail call i32 @llvm.bswap.i32(i32 %neg) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %83) #12, !srcloc !110
  %84 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i190 = getelementptr i8, ptr %85, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 16781312) #12, !srcloc !110
  tail call fastcc void @ceu_capture(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #12
  br label %cleanup

if.else75:                                        ; preds = %if.then63, %if.then49
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops, align 4
  %video77 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %video77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %video77, align 4
  %tobool78.not = icmp eq ptr %89, null
  br i1 %tobool78.not, label %if.else75.do.body103_crit_edge, label %land.lhs.true79

if.else75.do.body103_crit_edge:                   ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

land.lhs.true79:                                  ; preds = %if.else75
  %s_stream82 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %s_stream82 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_stream82, align 4
  %tobool83.not = icmp eq ptr %91, null
  br i1 %tobool83.not, label %land.lhs.true79.do.body103_crit_edge, label %if.else85

land.lhs.true79.do.body103_crit_edge:             ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.else85:                                        ; preds = %land.lhs.true79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool86.not = icmp eq ptr %92, null
  br i1 %tobool86.not, label %if.else85.if.else93_crit_edge, label %land.lhs.true87

if.else85.if.else93_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else93

land.lhs.true87:                                  ; preds = %if.else85
  %s_stream88 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %s_stream88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_stream88, align 4
  %tobool89.not = icmp eq ptr %94, null
  br i1 %tobool89.not, label %land.lhs.true87.if.else93_crit_edge, label %if.then90

land.lhs.true87.if.else93_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else93

if.then90:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  %call92 = tail call i32 %94(ptr noundef nonnull %5, i32 noundef 0) #12
  br label %do.body103

if.else93:                                        ; preds = %land.lhs.true87.if.else93_crit_edge, %if.else85.if.else93_crit_edge
  %call97 = tail call i32 %91(ptr noundef nonnull %5, i32 noundef 0) #12
  br label %do.body103

do.body103:                                       ; preds = %if.else93, %if.then90, %land.lhs.true79.do.body103_crit_edge, %if.else75.do.body103_crit_edge, %if.then34, %do.body, %entry.do.body103_crit_edge
  %ret.0 = phi i32 [ %__result.0197, %if.then34 ], [ %__result.0194, %if.else75.do.body103_crit_edge ], [ %__result.0194, %land.lhs.true79.do.body103_crit_edge ], [ %__result.0194, %if.else93 ], [ %__result.0194, %if.then90 ], [ -22, %entry.do.body103_crit_edge ], [ %__result.0197, %do.body ]
  %lock109 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 16
  %call111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock109) #12
  %capture117 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 12
  %95 = ptrtoint ptr %capture117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn200 = load ptr, ptr %capture117, align 8
  %cmp123.not201 = icmp eq ptr %.pn200, %capture117
  br i1 %cmp123.not201, label %do.body103.for.end_crit_edge, label %for.body.lr.ph

do.body103.for.end_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body103
  %active127 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn202 = phi ptr [ %.pn200, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %96 = ptrtoint ptr %active127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %active127, align 8
  tail call void @vb2_buffer_done(ptr noundef %97, i32 noundef 3) #12
  %98 = ptrtoint ptr %.pn202 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn = load ptr, ptr %.pn202, align 8
  %cmp123.not = icmp eq ptr %.pn, %capture117
  br i1 %cmp123.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body103.for.end_crit_edge
  %active133 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 13
  %99 = ptrtoint ptr %active133 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %active133, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock109, i32 noundef %call111) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_del.exit
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceu_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd1, align 4
  %base.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !107
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %irq_mask = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask, align 8
  %and = and i32 %11, %9
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %13, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %14) #12, !srcloc !110
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr.i74 = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 16781312) #12, !srcloc !110
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.else

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %20, null
  br i1 %tobool3.not, label %if.else.if.end22_crit_edge, label %land.lhs.true

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %land.lhs.true.if.end22_crit_edge, label %if.else8

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_stream11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_stream11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_stream11, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end22.sink.split_crit_edge

land.lhs.true10.if.end22.sink.split_crit_edge:    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.sink.split

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else16, %land.lhs.true10.if.end22.sink.split_crit_edge
  %.sink = phi ptr [ %22, %if.else16 ], [ %25, %land.lhs.true10.if.end22.sink.split_crit_edge ]
  %call20 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 0) #12
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %land.lhs.true.if.end22_crit_edge, %if.else.if.end22_crit_edge, %entry.if.end22_crit_edge
  %lock = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 16
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %active = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %active, align 8
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %if.end22.if.end33_crit_edge, label %if.then30

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %27, i32 noundef 6) #12
  %28 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %active, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end22.if.end33_crit_edge
  %capture = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn76 = load ptr, ptr %capture, align 8
  %cmp36.not77 = icmp eq ptr %.pn76, %capture
  br i1 %cmp36.not77, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end33.for.body_crit_edge
  %.pn78 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn76, %if.end33.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn78, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #12
  %30 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn78, align 8
  %cmp36.not = icmp eq ptr %.pn, %capture
  br i1 %cmp36.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end33.for.end_crit_edge
  %31 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %capture, ptr %capture, align 4
  %prev.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %capture, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #12
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 256) #12, !srcloc !110
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.end
  %i.03.i = phi i32 [ 0, %for.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 124
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.03.i)
  %cmp1.i = icmp eq i32 %i.03.i, 100
  br i1 %cmp1.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.for.body6.i_crit_edge

for.end.i.for.body6.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body6.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.29) #16
  br label %ceu_soft_reset.exit

for.body6.i:                                      ; preds = %if.end11.i.for.body6.i_crit_edge, %for.end.i.for.body6.i_crit_edge
  %i.14.i = phi i32 [ %inc13.i, %if.end11.i.for.body6.i_crit_edge ], [ 0, %for.end.i.for.body6.i_crit_edge ]
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not.i = icmp eq i32 %45, 0
  br i1 %tobool9.not.i, label %for.body6.i.ceu_soft_reset.exit_crit_edge, label %if.end11.i

for.body6.i.ceu_soft_reset.exit_crit_edge:        ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_soft_reset.exit

if.end11.i:                                       ; preds = %for.body6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #12
  %inc13.i = add nuw nsw i32 %i.14.i, 1
  %exitcond5.not.i = icmp eq i32 %inc13.i, 100
  br i1 %exitcond5.not.i, label %if.end11.i.ceu_soft_reset.exit_crit_edge, label %if.end11.i.for.body6.i_crit_edge

if.end11.i.for.body6.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i

if.end11.i.ceu_soft_reset.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_soft_reset.exit

ceu_soft_reset.exit:                              ; preds = %if.end11.i.ceu_soft_reset.exit_crit_edge, %for.body6.i.ceu_soft_reset.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceu_vb2_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 16
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %queue = getelementptr inbounds %struct.ceu_buffer, ptr %vb, i32 0, i32 1
  %capture = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %capture) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %capture, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceu_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ceu_try_fmt(ptr nocapture noundef readonly %ceudev, ptr noundef %v4l2_fmt, ptr nocapture noundef writeonly %sd_mbus_code) unnamed_addr #2 align 64 {
entry:
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %sd_format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.ceu_device, ptr %ceudev, i32 0, i32 4
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_sd1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #12
  %4 = call ptr @memset(ptr %pad_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #12
  %5 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_format) #12
  %6 = call ptr @memset(ptr %sd_format, i32 0, i32 88)
  %mbus_fmt = getelementptr inbounds %struct.ceu_subdev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbus_fmt, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %pixelformat, align 1
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %10, label %sw.epilog.thread [
    i32 1448695129, label %cleanup.fold.split11.i
    i32 1498831189, label %cleanup.fold.split12.i
    i32 1431918169, label %cleanup.fold.split13.i
    i32 1498765654, label %cleanup.fold.split14.i
    i32 909203022, label %entry.get_ceu_fmt_from_fourcc.exit_crit_edge
    i32 825644622, label %cleanup.fold.split.i
    i32 842094158, label %cleanup.fold.split9.i
    i32 825382478, label %cleanup.fold.split10.i
  ]

entry.get_ceu_fmt_from_fourcc.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 909203022, ptr %pixelformat, align 1
  %13 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbus_fmt, align 4
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_ceu_fmt_from_fourcc.exit

get_ceu_fmt_from_fourcc.exit:                     ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split.i, %sw.epilog.thread, %entry.get_ceu_fmt_from_fourcc.exit_crit_edge
  %mbus_code.0133 = phi i32 [ %8, %cleanup.fold.split.i ], [ %8, %cleanup.fold.split9.i ], [ %8, %cleanup.fold.split10.i ], [ 8200, %cleanup.fold.split11.i ], [ 8198, %cleanup.fold.split12.i ], [ 8201, %cleanup.fold.split13.i ], [ 8199, %cleanup.fold.split14.i ], [ %14, %sw.epilog.thread ], [ %8, %entry.get_ceu_fmt_from_fourcc.exit_crit_edge ]
  %retval.0.i = phi ptr [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 2), %cleanup.fold.split9.i ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 3), %cleanup.fold.split10.i ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 4), %cleanup.fold.split11.i ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 5), %cleanup.fold.split12.i ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 6), %cleanup.fold.split13.i ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 7), %cleanup.fold.split14.i ], [ @ceu_fmt_list, %sw.epilog.thread ], [ @ceu_fmt_list, %entry.get_ceu_fmt_from_fourcc.exit_crit_edge ]
  %height = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 1
  call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 2, i32 noundef 2560, i32 noundef 4, ptr noundef %height, i32 noundef 4, i32 noundef 1920, i32 noundef 4, i32 noundef 0) #12
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %fmt, align 1
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height, align 1
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %field.i, align 1
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %colorspace.i, align 1
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %colorspace4.i, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i = zext i8 %29 to i16
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %30, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %quantization.i, align 1
  %conv5.i = zext i8 %33 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 10
  %35 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %xfer_func.i, align 1
  %conv7.i = zext i8 %36 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_format, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mbus_code.0133, ptr %code, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_ceu_fmt_from_fourcc.exit.cleanup_crit_edge, label %if.else

get_ceu_fmt_from_fourcc.exit.cleanup_crit_edge:   ; preds = %get_ceu_fmt_from_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %get_ceu_fmt_from_fourcc.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pad, align 4
  %tobool14.not = icmp eq ptr %42, null
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_fmt, align 4
  %tobool17.not = icmp eq ptr %44, null
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.else19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else19:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool20.not = icmp eq ptr %45, null
  br i1 %tobool20.not, label %if.else19.if.else27_crit_edge, label %land.lhs.true21

if.else19.if.else27_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else27

land.lhs.true21:                                  ; preds = %if.else19
  %set_fmt22 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %set_fmt22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_fmt22, align 4
  %tobool23.not = icmp eq ptr %47, null
  br i1 %tobool23.not, label %land.lhs.true21.if.else27_crit_edge, label %land.lhs.true21.if.end33_crit_edge

land.lhs.true21.if.end33_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true21.if.else27_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else27

if.else27:                                        ; preds = %land.lhs.true21.if.else27_crit_edge, %if.else19.if.else27_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %land.lhs.true21.if.end33_crit_edge
  %.sink = phi ptr [ %44, %if.else27 ], [ %47, %land.lhs.true21.if.end33_crit_edge ]
  %call31 = call i32 %.sink(ptr noundef nonnull %3, ptr noundef nonnull %pad_state, ptr noundef nonnull %sd_format) #12
  %48 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call31, label %if.end33.if.end70_crit_edge [
    i32 0, label %if.end33.if.end74_crit_edge
    i32 -22, label %if.else43
  ]

if.end33.if.end74_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.end33.if.end70_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.else43:                                        ; preds = %if.end33
  %49 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %8, ptr %code, align 4
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %pad45 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %pad45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pad45, align 4
  %tobool46.not = icmp eq ptr %53, null
  br i1 %tobool46.not, label %if.else43.cleanup_crit_edge, label %land.lhs.true47

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true47:                                  ; preds = %if.else43
  %set_fmt50 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %set_fmt50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_fmt50, align 4
  %tobool51.not = icmp eq ptr %55, null
  br i1 %tobool51.not, label %land.lhs.true47.cleanup_crit_edge, label %if.else53

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else53:                                        ; preds = %land.lhs.true47
  br i1 %tobool20.not, label %if.else53.if.else61_crit_edge, label %land.lhs.true55

if.else53.if.else61_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else61

land.lhs.true55:                                  ; preds = %if.else53
  %set_fmt56 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 5
  %56 = ptrtoint ptr %set_fmt56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_fmt56, align 4
  %tobool57.not = icmp eq ptr %57, null
  br i1 %tobool57.not, label %land.lhs.true55.if.else61_crit_edge, label %land.lhs.true55.if.end70.sink.split_crit_edge

land.lhs.true55.if.end70.sink.split_crit_edge:    ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split

land.lhs.true55.if.else61_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else61

if.else61:                                        ; preds = %land.lhs.true55.if.else61_crit_edge, %if.else53.if.else61_crit_edge
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.else61, %land.lhs.true55.if.end70.sink.split_crit_edge
  %.sink149 = phi ptr [ %55, %if.else61 ], [ %57, %land.lhs.true55.if.end70.sink.split_crit_edge ]
  %call60 = call i32 %.sink149(ptr noundef nonnull %3, ptr noundef nonnull %pad_state, ptr noundef nonnull %sd_format) #12
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.end33.if.end70_crit_edge
  %ret.0 = phi i32 [ %call31, %if.end33.if.end70_crit_edge ], [ %call60, %if.end70.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool71.not = icmp eq i32 %ret.0, 0
  br i1 %tobool71.not, label %if.end70.if.end74_crit_edge, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.end74:                                         ; preds = %if.end70.if.end74_crit_edge, %if.end33.if.end74_crit_edge
  %58 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %format, align 4
  %60 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %fmt, align 1
  %61 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height2.i, align 4
  %63 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %height, align 1
  %64 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %field3.i, align 4
  %66 = ptrtoint ptr %field.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %field.i, align 1
  %67 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %colorspace4.i, align 4
  %69 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %colorspace.i, align 1
  %70 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %30, align 4
  %conv.i124 = trunc i16 %71 to i8
  %72 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv.i124, ptr %27, align 1
  %73 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %quantization6.i, align 2
  %conv5.i126 = trunc i16 %74 to i8
  %75 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv5.i126, ptr %quantization.i, align 1
  %76 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i129 = trunc i16 %77 to i8
  %78 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv7.i129, ptr %xfer_func.i, align 1
  %79 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %pixelformat, align 1
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %80, label %sw.default.i [
    i32 1448695129, label %if.end74.sw.bb.i_crit_edge
    i32 1498831189, label %if.end74.sw.bb.i_crit_edge150
    i32 1431918169, label %if.end74.sw.bb.i_crit_edge151
    i32 1498765654, label %if.end74.sw.bb.i_crit_edge152
    i32 842094158, label %if.end74.sw.bb2.i_crit_edge
    i32 825382478, label %if.end74.sw.bb2.i_crit_edge153
  ]

if.end74.sw.bb2.i_crit_edge153:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end74.sw.bb2.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end74.sw.bb.i_crit_edge152:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end74.sw.bb.i_crit_edge151:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end74.sw.bb.i_crit_edge150:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end74.sw.bb.i_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end74.sw.bb.i_crit_edge, %if.end74.sw.bb.i_crit_edge150, %if.end74.sw.bb.i_crit_edge151, %if.end74.sw.bb.i_crit_edge152
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 6
  %82 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %num_planes.i, align 1
  %bpp.i = getelementptr inbounds %struct.ceu_fmt, ptr %retval.0.i, i32 0, i32 1
  %83 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bpp.i, align 4
  %mul.i = mul i32 %84, %59
  %div2.i = lshr i32 %mul.i, 3
  %mul1.i = mul i32 %div2.i, %62
  %plane_fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5
  %85 = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %86 = call ptr @memset(ptr %85, i32 0, i32 16)
  %87 = ptrtoint ptr %plane_fmt.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %mul1.i, ptr %plane_fmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul.i)
  %cmp.not.i.i = icmp ult i32 %mul.i, 8
  br i1 %cmp.not.i.i, label %sw.bb.i.ceu_calc_plane_sizes.exit_crit_edge, label %if.then.i.i

sw.bb.i.ceu_calc_plane_sizes.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_calc_plane_sizes.exit

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %div2.i, ptr %85, align 1
  br label %ceu_calc_plane_sizes.exit

sw.bb2.i:                                         ; preds = %if.end74.sw.bb2.i_crit_edge, %if.end74.sw.bb2.i_crit_edge153
  %num_planes3.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 6
  %89 = ptrtoint ptr %num_planes3.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %num_planes3.i, align 1
  %mul7.i = mul i32 %62, %59
  %plane_fmt8.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5
  %90 = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %91 = call ptr @memset(ptr %90, i32 0, i32 16)
  %92 = ptrtoint ptr %plane_fmt8.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %mul7.i, ptr %plane_fmt8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i3.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i3.i, label %ceu_update_plane_sizes.exit6.thread.i, label %if.then.i9.i

ceu_update_plane_sizes.exit6.thread.i:            ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx1119.i = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %div12120.i = lshr i32 %mul7.i, 1
  %93 = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %94 = call ptr @memset(ptr %93, i32 0, i32 16)
  %95 = ptrtoint ptr %arrayidx1119.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %div12120.i, ptr %arrayidx1119.i, align 1
  br label %ceu_calc_plane_sizes.exit

if.then.i9.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %59, ptr %90, align 1
  %arrayidx11.i = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %div121.i = lshr i32 %mul7.i, 1
  %97 = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %98 = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %99 = call ptr @memset(ptr %98, i32 0, i32 12)
  %100 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %div121.i, ptr %arrayidx11.i, align 1
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %59, ptr %97, align 1
  br label %ceu_calc_plane_sizes.exit

sw.default.i:                                     ; preds = %if.end74
  %num_planes14.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 6
  %102 = ptrtoint ptr %num_planes14.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %num_planes14.i, align 1
  %mul18.i = mul i32 %62, %59
  %plane_fmt19.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5
  %103 = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %104 = call ptr @memset(ptr %103, i32 0, i32 16)
  %105 = ptrtoint ptr %plane_fmt19.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %mul18.i, ptr %plane_fmt19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i11.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i11.i, label %ceu_update_plane_sizes.exit14.thread.i, label %if.then.i17.i

ceu_update_plane_sizes.exit14.thread.i:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2221.i = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %106 = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %107 = call ptr @memset(ptr %106, i32 0, i32 16)
  %108 = ptrtoint ptr %arrayidx2221.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %mul18.i, ptr %arrayidx2221.i, align 1
  br label %ceu_calc_plane_sizes.exit

if.then.i17.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %59, ptr %103, align 1
  %arrayidx22.i = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %110 = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %111 = getelementptr %struct.v4l2_format, ptr %v4l2_fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %112 = call ptr @memset(ptr %111, i32 0, i32 12)
  %113 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %mul18.i, ptr %arrayidx22.i, align 1
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %59, ptr %110, align 1
  br label %ceu_calc_plane_sizes.exit

ceu_calc_plane_sizes.exit:                        ; preds = %if.then.i17.i, %ceu_update_plane_sizes.exit14.thread.i, %if.then.i9.i, %ceu_update_plane_sizes.exit6.thread.i, %if.then.i.i, %sw.bb.i.ceu_calc_plane_sizes.exit_crit_edge
  %115 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %code, align 4
  %117 = ptrtoint ptr %sd_mbus_code to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %sd_mbus_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %ceu_calc_plane_sizes.exit, %if.end70.cleanup_crit_edge, %land.lhs.true47.cleanup_crit_edge, %if.else43.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %get_ceu_fmt_from_fourcc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ceu_calc_plane_sizes.exit ], [ %ret.0, %if.end70.cleanup_crit_edge ], [ -515, %if.else43.cleanup_crit_edge ], [ -515, %land.lhs.true47.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %get_ceu_fmt_from_fourcc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_format) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlock = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i10 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.i = icmp slt i32 %call.i10, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.pm_runtime_resume_and_get.exit_crit_edge

if.end.pm_runtime_resume_and_get.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %if.end.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i10, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i10, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mlock) #12
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_resume_and_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pm_runtime_resume_and_get.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vb2_fop_release(ptr noundef %file) #12
  %mlock = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i7 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #12
  tail call void @mutex_unlock(ptr noundef %mlock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.31, i32 noundef 32) #12
  %call3 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.32, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ceu_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %v4l2_pix = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9
  %2 = call ptr @memcpy(ptr %fmt, ptr %v4l2_pix, i32 192)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %mbus_code.i = alloca i32, align 4
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %streaming.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 11, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd.i, align 4
  %v4l2_sd1.i = getelementptr inbounds %struct.ceu_subdev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %v4l2_sd1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v4l2_sd1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbus_code.i) #12
  %7 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mbus_code.i, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #12
  %8 = getelementptr inbounds i8, ptr %format.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %10 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %format.i, align 4
  %call.i4 = call fastcc i32 @__ceu_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef nonnull %mbus_code.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ceu_set_fmt.exit_crit_edge

if.end.ceu_set_fmt.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_set_fmt.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbus_code.i, align 4
  %format2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %code.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %14 = ptrtoint ptr %fmt.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fmt.i, align 1
  %16 = ptrtoint ptr %format2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %format2.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %height.i.i, align 1
  %height2.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height2.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %field.i.i, align 1
  %field3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %field3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %field3.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %colorspace.i.i, align 1
  %colorspace4.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %colorspace4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %colorspace4.i.i, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv.i.i = zext i8 %28 to i16
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %29, align 4
  %quantization.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %31 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %quantization.i.i, align 1
  %conv5.i.i = zext i8 %32 to i16
  %quantization6.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %quantization6.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv5.i.i, ptr %quantization6.i.i, align 2
  %xfer_func.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %34 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %xfer_func.i.i, align 1
  %conv7.i.i = zext i8 %35 to i16
  %xfer_func8.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %xfer_func8.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv7.i.i, ptr %xfer_func8.i.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %if.end.i.ceu_set_fmt.exit_crit_edge, label %if.else.i

if.end.i.ceu_set_fmt.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_set_fmt.exit

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pad.i, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.else.i.ceu_set_fmt.exit_crit_edge, label %land.lhs.true.i

if.else.i.ceu_set_fmt.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_set_fmt.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_fmt.i, align 4
  %tobool9.not.i = icmp eq ptr %42, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.ceu_set_fmt.exit_crit_edge, label %if.else11.i

land.lhs.true.i.ceu_set_fmt.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_set_fmt.exit

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not.i = icmp eq ptr %43, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else19.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else19.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %set_fmt14.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %set_fmt14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_fmt14.i, align 4
  %tobool15.not.i = icmp eq ptr %45, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else19.i_crit_edge, label %land.lhs.true13.i.if.end26.i_crit_edge

land.lhs.true13.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true13.i.if.else19.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

if.else19.i:                                      ; preds = %land.lhs.true13.i.if.else19.i_crit_edge, %if.else11.i.if.else19.i_crit_edge
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else19.i, %land.lhs.true13.i.if.end26.i_crit_edge
  %.sink.i = phi ptr [ %42, %if.else19.i ], [ %45, %land.lhs.true13.i.if.end26.i_crit_edge ]
  %call23.i = call i32 %.sink.i(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %format.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool27.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end26.i.ceu_set_fmt.exit_crit_edge

if.end26.i.ceu_set_fmt.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_set_fmt.exit

if.end29.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %v4l2_pix.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9
  %46 = call ptr @memcpy(ptr %v4l2_pix.i, ptr %fmt.i, i32 192)
  %field.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %field.i, align 4
  br label %ceu_set_fmt.exit

ceu_set_fmt.exit:                                 ; preds = %if.end29.i, %if.end26.i.ceu_set_fmt.exit_crit_edge, %land.lhs.true.i.ceu_set_fmt.exit_crit_edge, %if.else.i.ceu_set_fmt.exit_crit_edge, %if.end.i.ceu_set_fmt.exit_crit_edge, %if.end.ceu_set_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end29.i ], [ %call.i4, %if.end.ceu_set_fmt.exit_crit_edge ], [ %call23.i, %if.end26.i.ceu_set_fmt.exit_crit_edge ], [ -515, %if.else.i.ceu_set_fmt.exit_crit_edge ], [ -515, %land.lhs.true.i.ceu_set_fmt.exit_crit_edge ], [ -19, %if.end.i.ceu_set_fmt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbus_code.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ceu_set_fmt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ceu_set_fmt.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %mbus_code.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbus_code.i) #12
  %call.i2 = call fastcc i32 @__ceu_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef nonnull %mbus_code.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbus_code.i) #12
  ret i32 %call.i2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %inp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inp, align 8
  %num_sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %subdevs = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdevs, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %11 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %std, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %v4l2_sd = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %v4l2_sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_sd, align 4
  %name3 = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 9
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %3, ptr noundef %name3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd_index = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sd_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_index, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  %mbus_code.i.i = alloca i32, align 4
  %v4l2_fmt.i = alloca %struct.v4l2_format, align 4
  %sd_mbus_fmt.i = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i)
  %cmp.not = icmp ugt i32 %3, %i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 11, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sd_index = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %sd_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %i)
  %cmp4 = icmp eq i32 %6, %i
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd, align 4
  %subdevs = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subdevs, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 %i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  store ptr %12, ptr %sd, align 4
  %mbus_fmt1.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 3
  %v4l2_sd2.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %v4l2_sd2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_sd2.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sd_mbus_fmt.i) #12
  %15 = call ptr @memset(ptr %sd_mbus_fmt.i, i32 0, i32 48)
  %16 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %sd_mbus_fmt.i, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %16, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %code.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %sd_mbus_fmt.i, i32 0, i32 2
  %index.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %sd_mbus_fmt.i, i32 0, i32 1
  br i1 %tobool3.not.i, label %if.end6.if.then9_crit_edge, label %if.end6.land.rhs.i_crit_edge

if.end6.land.rhs.i_crit_edge:                     ; preds = %if.end6
  br label %land.rhs.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end6.land.rhs.i_crit_edge
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pad.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %land.rhs.i.if.then9_crit_edge, label %land.lhs.true.i

land.rhs.i.if.then9_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %enum_mbus_code.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %enum_mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_mbus_code.i, align 4
  %tobool7.not.i = icmp eq ptr %23, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.then9_crit_edge, label %if.else9.i

land.lhs.true.i.if.then9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.else9.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not.i = icmp eq ptr %24, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else16.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else16.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %enum_mbus_code12.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %enum_mbus_code12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enum_mbus_code12.i, align 4
  %tobool13.not.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.else16.i_crit_edge, label %land.lhs.true11.i.if.end22.i_crit_edge

land.lhs.true11.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

land.lhs.true11.i.if.else16.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

if.else16.i:                                      ; preds = %land.lhs.true11.i.if.else16.i_crit_edge, %if.else9.i.if.else16.i_crit_edge
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else16.i, %land.lhs.true11.i.if.end22.i_crit_edge
  %.sink.i = phi ptr [ %23, %if.else16.i ], [ %26, %land.lhs.true11.i.if.end22.i_crit_edge ]
  %call20.i = call i32 %.sink.i(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %sd_mbus_fmt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool23.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool23.not.i, label %while.body.i, label %if.end22.i.if.then9_crit_edge

if.end22.i.if.then9_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

while.body.i:                                     ; preds = %if.end22.i
  %27 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code.i, align 4
  %.off.i = add i32 %28, -8198
  %switch.i = icmp ult i32 %.off.i, 4
  %29 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %index.i, align 4
  br i1 %switch.i, label %if.end26.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end26.i:                                       ; preds = %while.body.i
  %31 = ptrtoint ptr %mbus_fmt1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %mbus_fmt1.i, align 4
  %bps.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %bps.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %bps.i, align 1
  %switch.tableidx = add i32 %28, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 4
  br i1 %33, label %switch.lookup, label %if.end26.i.if.end11_crit_edge

if.end26.i.if.end11_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

switch.lookup:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.mult = shl i32 %switch.tableidx, 8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ceu_s_input, i32 0, i32 %switch.tableidx
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 16777472, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %fmt_order.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %fmt_order.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.idx.mult, ptr %fmt_order.i, align 4
  %fmt_order_swap.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %fmt_order_swap.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %switch.load, ptr %fmt_order_swap.i, align 4
  %swapped.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %swapped.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %switch.masked, ptr %swapped.i, align 4
  %bpp.i = getelementptr inbounds %struct.ceu_subdev, ptr %12, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %bpp.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %bpp.i, align 2
  br label %if.end11

if.then9:                                         ; preds = %if.end22.i.if.then9_crit_edge, %land.lhs.true.i.if.then9_crit_edge, %land.rhs.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sd_mbus_fmt.i) #12
  %39 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %8, ptr %sd, align 4
  br label %cleanup

if.end11:                                         ; preds = %switch.lookup, %if.end26.i.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sd_mbus_fmt.i) #12
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %v4l2_fmt.i) #12
  %40 = call ptr @memcpy(ptr %v4l2_fmt.i, ptr @__const.ceu_set_default_fmt.v4l2_fmt, i32 204)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbus_code.i.i) #12
  %call.i.i = call fastcc i32 @__ceu_try_fmt(ptr noundef %1, ptr noundef nonnull %v4l2_fmt.i, ptr noundef nonnull %mbus_code.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbus_code.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %v4l2_fmt.i) #12
  %41 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %8, ptr %sd, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %v4l2_pix.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 9
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %v4l2_fmt.i, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %v4l2_pix.i, ptr %fmt.i, i32 192)
  %field.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %field.i, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %v4l2_fmt.i) #12
  %v4l2_sd = getelementptr inbounds %struct.ceu_subdev, ptr %8, i32 0, i32 1
  %44 = ptrtoint ptr %v4l2_sd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %v4l2_sd, align 4
  %tobool17.not = icmp eq ptr %45, null
  br i1 %tobool17.not, label %if.end16.if.end39_crit_edge, label %if.else

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else:                                          ; preds = %if.end16
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool19.not = icmp eq ptr %49, null
  br i1 %tobool19.not, label %if.else.if.end39_crit_edge, label %land.lhs.true

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_power, align 4
  %tobool22.not = icmp eq ptr %51, null
  br i1 %tobool22.not, label %land.lhs.true.if.end39_crit_edge, label %if.else24

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else24:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %52 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool25.not = icmp eq ptr %52, null
  br i1 %tobool25.not, label %if.else24.if.else32_crit_edge, label %land.lhs.true26

if.else24.if.else32_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else32

land.lhs.true26:                                  ; preds = %if.else24
  %s_power27 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %s_power27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_power27, align 4
  %tobool28.not = icmp eq ptr %54, null
  br i1 %tobool28.not, label %land.lhs.true26.if.else32_crit_edge, label %land.lhs.true26.if.end39.sink.split_crit_edge

land.lhs.true26.if.end39.sink.split_crit_edge:    ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.sink.split

land.lhs.true26.if.else32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else32

if.else32:                                        ; preds = %land.lhs.true26.if.else32_crit_edge, %if.else24.if.else32_crit_edge
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.else32, %land.lhs.true26.if.end39.sink.split_crit_edge
  %.sink = phi ptr [ %51, %if.else32 ], [ %54, %land.lhs.true26.if.end39.sink.split_crit_edge ]
  %call36 = call i32 %.sink(ptr noundef nonnull %45, i32 noundef 0) #12
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %land.lhs.true.if.end39_crit_edge, %if.else.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %55 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd, align 4
  %v4l2_sd42 = getelementptr inbounds %struct.ceu_subdev, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %v4l2_sd42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %v4l2_sd42, align 4
  %tobool44.not = icmp eq ptr %58, null
  br i1 %tobool44.not, label %if.end39.if.end71_crit_edge, label %if.else46

if.end39.if.end71_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.else46:                                        ; preds = %if.end39
  %ops47 = getelementptr inbounds %struct.v4l2_subdev, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %ops47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops47, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %tobool49.not = icmp eq ptr %62, null
  br i1 %tobool49.not, label %if.else46.if.end71_crit_edge, label %land.lhs.true50

if.else46.if.end71_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true50:                                  ; preds = %if.else46
  %s_power53 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %s_power53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_power53, align 4
  %tobool54.not = icmp eq ptr %64, null
  br i1 %tobool54.not, label %land.lhs.true50.if.end71_crit_edge, label %if.else56

land.lhs.true50.if.end71_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.else56:                                        ; preds = %land.lhs.true50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %65 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool57.not = icmp eq ptr %65, null
  br i1 %tobool57.not, label %if.else56.if.else64_crit_edge, label %land.lhs.true58

if.else56.if.else64_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else64

land.lhs.true58:                                  ; preds = %if.else56
  %s_power59 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %s_power59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_power59, align 4
  %tobool60.not = icmp eq ptr %67, null
  br i1 %tobool60.not, label %land.lhs.true58.if.else64_crit_edge, label %land.lhs.true58.if.end71.sink.split_crit_edge

land.lhs.true58.if.end71.sink.split_crit_edge:    ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.sink.split

land.lhs.true58.if.else64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else64

if.else64:                                        ; preds = %land.lhs.true58.if.else64_crit_edge, %if.else56.if.else64_crit_edge
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.else64, %land.lhs.true58.if.end71.sink.split_crit_edge
  %.sink112 = phi ptr [ %64, %if.else64 ], [ %67, %land.lhs.true58.if.end71.sink.split_crit_edge ]
  %call68 = call i32 %.sink112(ptr noundef nonnull %58, i32 noundef 1) #12
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %land.lhs.true50.if.end71_crit_edge, %if.else46.if.end71_crit_edge, %if.end39.if.end71_crit_edge
  %68 = ptrtoint ptr %sd_index to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i, ptr %sd_index, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then14, %if.then9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %if.then14 ], [ 0, %if.end71 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #12
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd, align 4
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %call1, ptr noundef %5, ptr noundef %a) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #12
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd, align 4
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %call1, ptr noundef %5, ptr noundef %a) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #12
  %6 = getelementptr inbounds i8, ptr %fse, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 60)
  %8 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsize, align 4
  %10 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fse, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %mbus_fmt = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbus_fmt, align 4
  %13 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %code, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %14 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %15 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixel_format, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %16, label %entry.cleanup_crit_edge [
    i32 909203022, label %entry.if.end_crit_edge
    i32 825644622, label %entry.if.end_crit_edge62
    i32 842094158, label %entry.if.end_crit_edge63
    i32 825382478, label %entry.if.end_crit_edge64
    i32 1448695129, label %entry.if.end_crit_edge65
    i32 1498831189, label %entry.if.end_crit_edge66
    i32 1431918169, label %entry.if.end_crit_edge67
    i32 1498765654, label %entry.if.end_crit_edge68
  ]

entry.if.end_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge62, %entry.if.end_crit_edge63, %entry.if.end_crit_edge64, %entry.if.end_crit_edge65, %entry.if.end_crit_edge66, %entry.if.end_crit_edge67, %entry.if.end_crit_edge68
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pad, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_frame_size, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.else11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %24, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %enum_frame_size14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %enum_frame_size14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enum_frame_size14, align 4
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26_crit_edge

land.lhs.true13.if.end26_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else19, %land.lhs.true13.if.end26_crit_edge
  %.sink = phi ptr [ %23, %if.else19 ], [ %26, %land.lhs.true13.if.end26_crit_edge ]
  %call23 = call i32 %.sink(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %fse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool27.not = icmp eq i32 %call23, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %28 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_width, align 4
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 2560)
  %31 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %31, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %33 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_height, align 4
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 1920)
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %36 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call23, %if.end26.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #2 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #12
  %6 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fival, align 4
  %8 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fie, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %mbus_fmt = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbus_fmt, align 4
  %12 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %13 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width3, align 4
  %15 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height4 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %16 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height4, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %19 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %interval, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %20 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %which, align 4
  %reserved = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 7
  %21 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %22 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixel_format, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %23, label %entry.cleanup_crit_edge [
    i32 909203022, label %entry.if.end_crit_edge
    i32 825644622, label %entry.if.end_crit_edge58
    i32 842094158, label %entry.if.end_crit_edge59
    i32 825382478, label %entry.if.end_crit_edge60
    i32 1448695129, label %entry.if.end_crit_edge61
    i32 1498831189, label %entry.if.end_crit_edge62
    i32 1431918169, label %entry.if.end_crit_edge63
    i32 1498765654, label %entry.if.end_crit_edge64
  ]

entry.if.end_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge58, %entry.if.end_crit_edge59, %entry.if.end_crit_edge60, %entry.if.end_crit_edge61, %entry.if.end_crit_edge62, %entry.if.end_crit_edge63, %entry.if.end_crit_edge64
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %pad8 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %pad8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pad8, align 4
  %tobool9.not = icmp eq ptr %28, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %enum_frame_interval, align 4
  %tobool12.not = icmp eq ptr %30, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %enum_frame_interval17 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %enum_frame_interval17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enum_frame_interval17, align 4
  %tobool18.not = icmp eq ptr %33, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29_crit_edge

land.lhs.true16.if.end29_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %land.lhs.true16.if.end29_crit_edge
  %.sink = phi ptr [ %30, %if.else22 ], [ %33, %land.lhs.true16.if.end29_crit_edge ]
  %call26 = call i32 %.sink(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %fie) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type, align 4
  %35 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %36 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %interval, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ %call26, %if.end29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.if.end21_crit_edge, label %land.lhs.true

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end21_crit_edge, label %if.else7

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %s_power10 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end21.sink.split_crit_edge

land.lhs.true9.if.end21.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.else15, %land.lhs.true9.if.end21.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else15 ], [ %14, %land.lhs.true9.if.end21.sink.split_crit_edge ]
  %call19 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 0) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %land.lhs.true.if.end21_crit_edge, %if.else.if.end21_crit_edge, %entry.if.end21_crit_edge
  %base.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !110
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 256) #12, !srcloc !110
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end21
  %i.03.i = phi i32 [ 0, %if.end21 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 124
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.03.i)
  %cmp1.i = icmp eq i32 %i.03.i, 100
  br i1 %cmp1.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.for.body6.i_crit_edge

for.end.i.for.body6.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body6.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.29) #16
  br label %ceu_soft_reset.exit

for.body6.i:                                      ; preds = %if.end11.i.for.body6.i_crit_edge, %for.end.i.for.body6.i_crit_edge
  %i.14.i = phi i32 [ %inc13.i, %if.end11.i.for.body6.i_crit_edge ], [ 0, %for.end.i.for.body6.i_crit_edge ]
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not.i = icmp eq i32 %29, 0
  br i1 %tobool9.not.i, label %for.body6.i.ceu_soft_reset.exit_crit_edge, label %if.end11.i

for.body6.i.ceu_soft_reset.exit_crit_edge:        ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_soft_reset.exit

if.end11.i:                                       ; preds = %for.body6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #12
  %inc13.i = add nuw nsw i32 %i.14.i, 1
  %exitcond5.not.i = icmp eq i32 %inc13.i, 100
  br i1 %exitcond5.not.i, label %if.end11.i.ceu_soft_reset.exit_crit_edge, label %if.end11.i.for.body6.i_crit_edge

if.end11.i.for.body6.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i

if.end11.i.ceu_soft_reset.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_soft_reset.exit

ceu_soft_reset.exit:                              ; preds = %if.end11.i.ceu_soft_reset.exit_crit_edge, %for.body6.i.ceu_soft_reset.exit_crit_edge, %do.end.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceu_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sd = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %v4l2_sd1 = getelementptr inbounds %struct.ceu_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2_sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_sd1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.if.end21_crit_edge, label %land.lhs.true

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end21_crit_edge, label %if.else7

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %s_power10 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end21.sink.split_crit_edge

land.lhs.true9.if.end21.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.else15, %land.lhs.true9.if.end21.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else15 ], [ %14, %land.lhs.true9.if.end21.sink.split_crit_edge ]
  %call19 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 1) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %land.lhs.true.if.end21_crit_edge, %if.else.if.end21_crit_edge, %entry.if.end21_crit_edge
  %base.i.i = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 256) #12, !srcloc !110
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end21
  %i.03.i = phi i32 [ 0, %if.end21 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 124
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.03.i)
  %cmp1.i = icmp eq i32 %i.03.i, 100
  br i1 %cmp1.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.for.body6.i_crit_edge

for.end.i.for.body6.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body6.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.29) #16
  br label %ceu_soft_reset.exit

for.body6.i:                                      ; preds = %if.end11.i.for.body6.i_crit_edge, %for.end.i.for.body6.i_crit_edge
  %i.14.i = phi i32 [ %inc13.i, %if.end11.i.for.body6.i_crit_edge ], [ 0, %for.end.i.for.body6.i_crit_edge ]
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not.i = icmp eq i32 %27, 0
  br i1 %tobool9.not.i, label %for.body6.i.ceu_soft_reset.exit_crit_edge, label %if.end11.i

for.body6.i.ceu_soft_reset.exit_crit_edge:        ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_soft_reset.exit

if.end11.i:                                       ; preds = %for.body6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #12
  %inc13.i = add nuw nsw i32 %i.14.i, 1
  %exitcond5.not.i = icmp eq i32 %inc13.i, 100
  br i1 %exitcond5.not.i, label %if.end11.i.ceu_soft_reset.exit_crit_edge, label %if.end11.i.for.body6.i_crit_edge

if.end11.i.for.body6.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i

if.end11.i.ceu_soft_reset.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ceu_soft_reset.exit

ceu_soft_reset.exit:                              ; preds = %if.end11.i.ceu_soft_reset.exit_crit_edge, %for.body6.i.ceu_soft_reset.exit_crit_edge, %do.end.i
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_renesas_ceu__301_1745_ceu_driver_init6, !1, !"__initcall__kmod_renesas_ceu__301_1745_ceu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1745, i32 1}
!2 = !{ptr @__exitcall_ceu_driver_exit, !1, !"__exitcall_ceu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1747, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1748, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1749, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1737, i32 11}
!12 = !{ptr @ceu_driver, !13, !"ceu_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1735, i32 31}
!14 = !{ptr @ceu_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1643, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ceu_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1644, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1660, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ceu_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ceu_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1696, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ceu_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ceu_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/renesas-ceu.c", i32 520, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ceu_irq._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ceu_irq._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1565, i32 4}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ceu_parse_dt._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ceu_parse_dt._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1573, i32 4}
!45 = !{ptr @ceu_parse_dt._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ceu_parse_dt._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ceu_data_sh4, !48, !"ceu_data_sh4", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1613, i32 30}
!49 = !{ptr @ceu_notify_ops, !50, !"ceu_notify_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1466, i32 52}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1458, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ceu_notify_complete._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ceu_notify_complete._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ceu_vb2_ops, !57, !"ceu_vb2_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/renesas-ceu.c", i32 770, i32 29}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/renesas-ceu.c", i32 666, i32 4}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ceu_vb2_prepare._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ceu_vb2_prepare._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/renesas-ceu.c", i32 694, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ceu_start_streaming.__UNIQUE_ID_ddebug299, !67, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/renesas-ceu.c", i32 707, i32 3}
!73 = !{ptr @ceu_start_streaming.__UNIQUE_ID_ddebug300, !72, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/renesas-ceu.c", i32 330, i32 3}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ceu_soft_reset._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ceu_soft_reset._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @ceu_fmt_list, !80, !"ceu_fmt_list", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/renesas-ceu.c", i32 234, i32 29}
!81 = !{ptr @ceu_fops, !82, !"ceu_fops", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1125, i32 42}
!83 = !{ptr @ceu_ioctl_ops, !84, !"ceu_ioctl_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1342, i32 36}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1141, i32 21}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1144, i32 4}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1205, i32 41}
!91 = !{ptr @ceu_of_match, !92, !"ceu_of_match", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1618, i32 34}
!93 = !{ptr @ceu_data_rz, !94, !"ceu_data_rz", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1609, i32 30}
!95 = !{ptr @ceu_pm_ops, !96, !"ceu_pm_ops", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/renesas-ceu.c", i32 1729, i32 32}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 6267740}
!108 = !{i64 2153808089}
!109 = !{i64 2153809444}
!110 = !{i64 6267322}
!111 = !{i8 0, i8 2}
!112 = !{i64 2148799526, i64 2148799531, i64 2148799544, i64 2148799588, i64 2148799622, i64 2148799643}
!113 = !{i64 2148231280}
!114 = !{i64 716103, i64 716128, i64 716150, i64 716166, i64 716178, i64 716198, i64 716222, i64 716238, i64 716250}
!115 = !{i64 2148231468}
!116 = !{!"auto-init"}
