; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar_drif.c_pt.bc'
source_filename = "../drivers/media/platform/rcar_drif.c"
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.rcar_drif_format = type { i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.rcar_drif = type { ptr, ptr, ptr, i32, ptr, ptr, [32 x %struct.rcar_drif_hwbuf], i32, i32, i8 }
%struct.rcar_drif_hwbuf = type { ptr, i32 }
%struct.rcar_drif_sdr = type { ptr, ptr, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rcar_drif_graph_ep, ptr, i32, [2 x ptr], i32, i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rcar_drif_graph_ep = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.rcar_drif_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_rcar_drif__312_1487_rcar_drif_driver_init6 = internal global ptr @rcar_drif_driver_init, section ".initcall6.init", align 4
@rcar_drif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_drif_probe, ptr @rcar_drif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_drif_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_drif_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_drif_driver_exit = internal global ptr @rcar_drif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description313 = internal constant [53 x i8] c"rcar_drif.description=Renesas R-Car Gen3 DRIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias314 = internal constant [35 x i8] c"rcar_drif.alias=platform:rcar_drif\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [48 x i8] c"rcar_drif.file=drivers/media/platform/rcar_drif\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [22 x i8] c"rcar_drif.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [82 x i8] c"rcar_drif.author=Ramesh Shanmugasundaram <ramesh.shanmugasundaram@bp.renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar_drif\00", [22 x i8] zeroinitializer }, align 32
@rcar_drif_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-drif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rcar_drif_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_drif_suspend, ptr @rcar_drif_resume, ptr @rcar_drif_suspend, ptr @rcar_drif_resume, ptr @rcar_drif_suspend, ptr @rcar_drif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@rcar_drif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk get failed (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_drif_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/platform/rcar_drif.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_drif_probe._entry_ptr = internal global ptr @rcar_drif_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,bonding\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,primary-bond\00", [43 x i8] zeroinitializer }, align 32
@rcar_drif_bond_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 1269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get bonded device from node\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_drif_bond_available\00", [39 x i8] zeroinitializer }, align 32
@rcar_drif_bond_available._entry_ptr = internal global ptr @rcar_drif_bond_available._entry, section ".printk_index", align 4
@rcar_drif_bond_available._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 1284, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"defer probe\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcar_drif_bond_available._entry_ptr.14 = internal global ptr @rcar_drif_bond_available._entry.11, section ".printk_index", align 4
@rcar_drif_sdr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 1302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set default format\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_drif_sdr_probe\00", [44 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe._entry_ptr = internal global ptr @rcar_drif_sdr_probe._entry, section ".printk_index", align 4
@rcar_drif_sdr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdr->v4l2_mutex\00", [47 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdr->vb_queue_mutex\00", [43 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sdr->queued_bufs_lock\00", [41 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sdr->dma_lock\00", [17 x i8] zeroinitializer }, align 32
@rcar_drif_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rcar_drif_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_drif_start_streaming, ptr @rcar_drif_stop_streaming, ptr @rcar_drif_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rcar_drif_sdr_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.4, i32 1327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: vb2_queue_init ret %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe._entry_ptr.26 = internal global ptr @rcar_drif_sdr_probe._entry.24, section ".printk_index", align 4
@rcar_drif_sdr_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.4, i32 1334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed: v4l2_device_register ret %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe._entry_ptr.29 = internal global ptr @rcar_drif_sdr_probe._entry.27, section ".printk_index", align 4
@rcar_drif_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @rcar_drif_notify_bound, ptr @rcar_drif_notify_complete, ptr @rcar_drif_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.16, ptr @.str.4, i32 1351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed: notifier register ret %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_probe._entry_ptr.32 = internal global ptr @rcar_drif_sdr_probe._entry.30, section ".printk_index", align 4
@formats = internal constant { [3 x %struct.rcar_drif_format], [36 x i8] } { [3 x %struct.rcar_drif_format] [%struct.rcar_drif_format { i32 909198160, i32 65536, i32 16, i32 1, i32 2 }, %struct.rcar_drif_format { i32 942752592, i32 65536, i32 18, i32 1, i32 2 }, %struct.rcar_drif_format { i32 808600400, i32 65536, i32 20, i32 1, i32 2 }], [36 x i8] zeroinitializer }, align 32
@rcar_drif_set_default_format.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcar_drif_set_default_format\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"default fmt[%u]: mask %lu num %u\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_drif_queue_setup.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_drif_queue_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"num_bufs %d sizes[0] %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_drif_start_streaming.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_drif_start_streaming\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"num hwbufs %u, hwbuf_size %u\0A\00", [34 x i8] zeroinitializer }, align 32
@rcar_drif_set_mdr1.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_drif_set_mdr1\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch%u: mdr1 = 0x%08x\00", [44 x i8] zeroinitializer }, align 32
@rcar_drif_set_format.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_drif_set_format\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setfmt: bitlen %u wdcnt %u num_ch %u\0A\00", [58 x i8] zeroinitializer }, align 32
@rcar_drif_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fmt num_ch %u cur_ch %u mismatch\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_drif_set_format._entry_ptr = internal global ptr @rcar_drif_set_format._entry, section ".printk_index", align 4
@rcar_drif_set_format.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.44, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ch%u: new mdr[2,3] = 0x%08x, 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@rcar_drif_alloc_dmachannels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ch%u: dma channel req failed: %pe\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_drif_alloc_dmachannels\00", [36 x i8] zeroinitializer }, align 32
@rcar_drif_alloc_dmachannels._entry_ptr = internal global ptr @rcar_drif_alloc_dmachannels._entry, section ".printk_index", align 4
@rcar_drif_alloc_dmachannels._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ch%u: dma slave config failed\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_drif_alloc_dmachannels._entry_ptr.50 = internal global ptr @rcar_drif_alloc_dmachannels._entry.48, section ".printk_index", align 4
@rcar_drif_request_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ch%u: dma alloc failed. num hwbufs %u size %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_drif_request_buf\00", [42 x i8] zeroinitializer }, align 32
@rcar_drif_request_buf._entry_ptr = internal global ptr @rcar_drif_request_buf._entry, section ".printk_index", align 4
@rcar_drif_start_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 721, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ch%u: failed to reset rx. ctr 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_drif_start_channel\00", [40 x i8] zeroinitializer }, align 32
@rcar_drif_start_channel._entry_ptr = internal global ptr @rcar_drif_start_channel._entry, section ".printk_index", align 4
@rcar_drif_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 611, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ch%u: prep dma cyclic failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_drif_qbuf\00", [17 x i8] zeroinitializer }, align 32
@rcar_drif_qbuf._entry_ptr = internal global ptr @rcar_drif_qbuf._entry, section ".printk_index", align 4
@rcar_drif_qbuf._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 620, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ch%u: dma submit failed\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_drif_qbuf._entry_ptr.59 = internal global ptr @rcar_drif_qbuf._entry.57, section ".printk_index", align 4
@rcar_drif_dma_complete.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_drif_dma_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch%u: prod %u\0A\00", [17 x i8] zeroinitializer }, align 32
@rcar_drif_get_fbuf.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_drif_get_fbuf\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\0Aapp late: prod %u\0A\00", [44 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@rcar_drif_enable_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch%u: rx en failed. ctr 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_drif_enable_rx\00", [44 x i8] zeroinitializer }, align 32
@rcar_drif_enable_rx._entry_ptr = internal global ptr @rcar_drif_enable_rx._entry, section ".printk_index", align 4
@rcar_drif_disable_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 682, ptr @.str.69, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ch%u: failed to disable rx. ctr 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_drif_disable_rx\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcar_drif_disable_rx._entry_ptr = internal global ptr @rcar_drif_disable_rx._entry, section ".printk_index", align 4
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@rcar_drif_buf_queue.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_drif_buf_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buf_queue idx %u\0A\00", [46 x i8] zeroinitializer }, align 32
@rcar_drif_parse_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 1228, ptr @.str.69, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad remote port parent\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_drif_parse_subdevs\00", [40 x i8] zeroinitializer }, align 32
@rcar_drif_parse_subdevs._entry_ptr = internal global ptr @rcar_drif_parse_subdevs._entry, section ".printk_index", align 4
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sync-active\00", [20 x i8] zeroinitializer }, align 32
@rcar_drif_get_ep_properties.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.4, ptr @.str.77, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_drif_get_ep_properties\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mdr1 0x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@rcar_drif_notify_bound.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_drif_notify_bound\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bound asd %s\0A\00", [18 x i8] zeroinitializer }, align 32
@rcar_drif_notify_complete._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rcar_drif:1152:(&sdr->ctrl_hdl)->_lock\00", [57 x i8] zeroinitializer }, align 32
@rcar_drif_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 1159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed: register subdev nodes ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_drif_notify_complete\00", [38 x i8] zeroinitializer }, align 32
@rcar_drif_notify_complete._entry_ptr = internal global ptr @rcar_drif_notify_complete._entry, section ".printk_index", align 4
@rcar_drif_notify_complete._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.4, i32 1166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed: ctrl add hdlr ret %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcar_drif_notify_complete._entry_ptr.85 = internal global ptr @rcar_drif_notify_complete._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R-Car DRIF\00", [21 x i8] zeroinitializer }, align 32
@rcar_drif_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@rcar_drif_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rcar_drif_querycap, ptr null, ptr null, ptr null, ptr @rcar_drif_enum_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_drif_g_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_drif_s_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_drif_try_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_drif_g_tuner, ptr @rcar_drif_s_tuner, ptr @rcar_drif_g_frequency, ptr @rcar_drif_s_frequency, ptr @rcar_drif_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 1090, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed video_register_device (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_drif_sdr_register\00", [41 x i8] zeroinitializer }, align 32
@rcar_drif_sdr_register._entry_ptr = internal global ptr @rcar_drif_sdr_register._entry, section ".printk_index", align 4
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@rcar_drif_s_fmt_sdr_cap.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.91, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_drif_s_fmt_sdr_cap\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cur: idx %u mask %lu num %u\0A\00", [35 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rcar_drif_notify_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 1126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"subdev %s is not bound\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_drif_notify_unbind\00", [40 x i8] zeroinitializer }, align 32
@rcar_drif_notify_unbind._entry_ptr = internal global ptr @rcar_drif_notify_unbind._entry, section ".printk_index", align 4
@rcar_drif_notify_unbind.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.4, ptr @.str.94, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unbind asd %s\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 808600400, i64 909198160, i64 942752592]
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"rcar_drif_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1477, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1479, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"rcar_drif_of_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1470, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"rcar_drif_pm_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1467, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1390, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1393, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1252, i32 40 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1244, i32 50 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1269, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1284, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1302, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1309, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1310, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1311, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1312, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"rcar_drif_vb2_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 862, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1327, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1334, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"rcar_drif_notify_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1182, i32 52 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1351, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 154, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 894, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 438, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 801, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 334, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 344, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 349, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 368, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 277, i32 48 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 281, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 294, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 408, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 720, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 611, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 620, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 576, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 473, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1163, i32 7 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 653, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 680, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1169, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 452, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1228, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1199, i32 40 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1205, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1112, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1152, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1159, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1166, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1072, i32 53 }
@___asan_gen_.395 = private unnamed_addr constant [15 x i8] c"rcar_drif_fops\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1053, i32 42 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c"rcar_drif_ioctl_ops\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1025, i32 36 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1090, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 878, i32 49 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 959, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1126, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [38 x i8] c"../drivers/media/platform/rcar_drif.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1136, i32 2 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_alias314, ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_rcar_drif_driver_exit, ptr @__initcall__kmod_rcar_drif__312_1487_rcar_drif_driver_init6, ptr @rcar_drif_alloc_dmachannels._entry, ptr @rcar_drif_alloc_dmachannels._entry.48, ptr @rcar_drif_alloc_dmachannels._entry_ptr, ptr @rcar_drif_alloc_dmachannels._entry_ptr.50, ptr @rcar_drif_bond_available._entry, ptr @rcar_drif_bond_available._entry.11, ptr @rcar_drif_bond_available._entry_ptr, ptr @rcar_drif_bond_available._entry_ptr.14, ptr @rcar_drif_disable_rx._entry, ptr @rcar_drif_disable_rx._entry_ptr, ptr @rcar_drif_driver_exit, ptr @rcar_drif_enable_rx._entry, ptr @rcar_drif_enable_rx._entry_ptr, ptr @rcar_drif_notify_complete._entry, ptr @rcar_drif_notify_complete._entry.83, ptr @rcar_drif_notify_complete._entry_ptr, ptr @rcar_drif_notify_complete._entry_ptr.85, ptr @rcar_drif_notify_unbind._entry, ptr @rcar_drif_notify_unbind._entry_ptr, ptr @rcar_drif_parse_subdevs._entry, ptr @rcar_drif_parse_subdevs._entry_ptr, ptr @rcar_drif_probe._entry, ptr @rcar_drif_probe._entry_ptr, ptr @rcar_drif_qbuf._entry, ptr @rcar_drif_qbuf._entry.57, ptr @rcar_drif_qbuf._entry_ptr, ptr @rcar_drif_qbuf._entry_ptr.59, ptr @rcar_drif_request_buf._entry, ptr @rcar_drif_request_buf._entry_ptr, ptr @rcar_drif_sdr_probe._entry, ptr @rcar_drif_sdr_probe._entry.24, ptr @rcar_drif_sdr_probe._entry.27, ptr @rcar_drif_sdr_probe._entry.30, ptr @rcar_drif_sdr_probe._entry_ptr, ptr @rcar_drif_sdr_probe._entry_ptr.26, ptr @rcar_drif_sdr_probe._entry_ptr.29, ptr @rcar_drif_sdr_probe._entry_ptr.32, ptr @rcar_drif_sdr_register._entry, ptr @rcar_drif_sdr_register._entry_ptr, ptr @rcar_drif_set_format._entry, ptr @rcar_drif_set_format._entry_ptr, ptr @rcar_drif_start_channel._entry, ptr @rcar_drif_start_channel._entry_ptr, ptr @rcar_drif_driver, ptr @.str, ptr @rcar_drif_of_table, ptr @rcar_drif_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @rcar_drif_sdr_probe.__key, ptr @.str.17, ptr @rcar_drif_sdr_probe.__key.18, ptr @.str.19, ptr @rcar_drif_sdr_probe.__key.20, ptr @.str.21, ptr @rcar_drif_sdr_probe.__key.22, ptr @.str.23, ptr @rcar_drif_vb2_ops, ptr @.str.25, ptr @.str.28, ptr @rcar_drif_notify_ops, ptr @.str.31, ptr @formats, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @rcar_drif_notify_complete._key, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @rcar_drif_fops, ptr @rcar_drif_ioctl_ops, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_bond_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_bond_available._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_alloc_dmachannels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_alloc_dmachannels._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_request_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_start_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_qbuf._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_enable_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_disable_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_parse_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_notify_complete._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_notify_complete._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_sdr_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_drif_notify_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_drif_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_drif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_drif_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #11
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !225
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.rcar_drif, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev1, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %clk = getelementptr inbounds %struct.rcar_drif, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %base = getelementptr inbounds %struct.rcar_drif, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %base, align 4
  %cmp.i90 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %start18 = getelementptr inbounds %struct.rcar_drif, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %start18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %start18, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #11
  %14 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i91 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %tobool.not.i.i = icmp eq i32 %call.i.i91, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #11
  br label %if.end25

of_parse_phandle.exit.i:                          ; preds = %if.end17
  %15 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #11
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.if.end25_crit_edge, label %land.lhs.true.i

of_parse_phandle.exit.i.if.end25_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.i:                                  ; preds = %of_parse_phandle.exit.i
  %call1.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %16) #11
  br i1 %call1.i, label %if.then21, label %land.lhs.true.i.if.end25_crit_edge

land.lhs.true.i.if.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %call.i.i93 = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef null) #11
  %tobool.i.i.not = icmp eq ptr %call.i.i93, null
  br i1 %tobool.i.i.not, label %if.then23, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %num = getelementptr inbounds %struct.rcar_drif, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num, align 4
  call void @of_node_put(ptr noundef nonnull %16) #11
  br label %cleanup

if.end25:                                         ; preds = %if.then21.if.end25_crit_edge, %land.lhs.true.i.if.end25_crit_edge, %of_parse_phandle.exit.i.if.end25_crit_edge, %of_parse_phandle.exit.thread.i
  %tobool20.not102 = phi i1 [ false, %if.then21.if.end25_crit_edge ], [ true, %of_parse_phandle.exit.thread.i ], [ true, %of_parse_phandle.exit.i.if.end25_crit_edge ], [ true, %land.lhs.true.i.if.end25_crit_edge ]
  %retval.0.i101 = phi ptr [ %16, %if.then21.if.end25_crit_edge ], [ null, %of_parse_phandle.exit.thread.i ], [ null, %of_parse_phandle.exit.i.if.end25_crit_edge ], [ null, %land.lhs.true.i.if.end25_crit_edge ]
  %call.i94 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1204, i32 noundef 3520) #11
  %tobool28.not = icmp eq ptr %call.i94, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef %retval.0.i101) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i94, ptr %call.i, align 4
  %21 = ptrtoint ptr %call.i94 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %call.i94, align 4
  %num35 = getelementptr inbounds %struct.rcar_drif, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %num35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num35, align 4
  %arrayidx = getelementptr %struct.rcar_drif_sdr, ptr %call.i94, i32 0, i32 14, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %23
  %hw_ch_mask = getelementptr inbounds %struct.rcar_drif_sdr, ptr %call.i94, i32 0, i32 15
  %25 = ptrtoint ptr %hw_ch_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %hw_ch_mask, align 4
  br i1 %tobool20.not102, label %if.end30.cond.false.i_crit_edge, label %if.then38

if.end30.cond.false.i_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

if.then38:                                        ; preds = %if.end30
  %call.i95 = call ptr @of_find_device_by_node(ptr noundef %retval.0.i101) #11
  %tobool.not.i96 = icmp eq ptr %call.i95, null
  br i1 %tobool.not.i96, label %rcar_drif_bond_available.exit.thread, label %if.end.i97

rcar_drif_bond_available.exit.thread:             ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call.i94 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9) #14
  call void @of_node_put(ptr noundef nonnull %retval.0.i101) #11
  br label %cleanup

if.end.i97:                                       ; preds = %if.then38
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %call.i95, i32 0, i32 3
  %mutex.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i95, i32 0, i32 3, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i95, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool3.not.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i, label %do.end10.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i94, ptr %29, align 4
  %num.i = getelementptr inbounds %struct.rcar_drif, ptr %29, i32 0, i32 8
  %31 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num.i, align 4
  %arrayidx.i = getelementptr %struct.rcar_drif_sdr, ptr %call.i94, i32 0, i32 14, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %arrayidx.i, align 4
  %34 = load i32, ptr %num.i, align 4
  %shl.i = shl nuw i32 1, %34
  %35 = ptrtoint ptr %hw_ch_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_ch_mask, align 4
  %or.i = or i32 %36, %shl.i
  store i32 %or.i, ptr %hw_ch_mask, align 4
  br label %rcar_drif_bond_available.exit

do.end10.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %call.i94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i94, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.12) #14
  br label %rcar_drif_bond_available.exit

rcar_drif_bond_available.exit:                    ; preds = %do.end10.i, %if.then4.i
  %ret.0.i = phi i32 [ 0, %if.then4.i ], [ -517, %do.end10.i ]
  call void @mutex_unlock(ptr noundef %mutex.i.i) #11
  call void @put_device(ptr noundef %dev1.i) #11
  call void @of_node_put(ptr noundef nonnull %retval.0.i101) #11
  br i1 %tobool3.not.i, label %rcar_drif_bond_available.exit.cleanup_crit_edge, label %rcar_drif_bond_available.exit.cond.false.i_crit_edge

rcar_drif_bond_available.exit.cond.false.i_crit_edge: ; preds = %rcar_drif_bond_available.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

rcar_drif_bond_available.exit.cleanup_crit_edge:  ; preds = %rcar_drif_bond_available.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false.i:                                     ; preds = %rcar_drif_bond_available.exit.cond.false.i_crit_edge, %if.end30.cond.false.i_crit_edge
  %39 = ptrtoint ptr %hw_ch_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_ch_mask, align 4
  %call.i.i = call i32 @__sw_hweight32(i32 noundef %40) #11
  %num_hw_ch = getelementptr inbounds %struct.rcar_drif_sdr, ptr %call.i94, i32 0, i32 17
  %41 = ptrtoint ptr %num_hw_ch to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i.i, ptr %num_hw_ch, align 4
  %call46 = call fastcc i32 @rcar_drif_sdr_probe(ptr noundef nonnull %call.i94)
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %rcar_drif_bond_available.exit.cleanup_crit_edge, %rcar_drif_bond_available.exit.thread, %if.then29, %if.then23, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then14 ], [ %call46, %cond.false.i ], [ -12, %if.then29 ], [ 0, %if.then23 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0.i, %rcar_drif_bond_available.exit.cleanup_crit_edge ], [ -19, %rcar_drif_bond_available.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num = getelementptr inbounds %struct.rcar_drif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %notifier.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %5, i32 0, i32 10
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #11
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #11
  %v4l2_dev.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %5, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_drif_sdr_probe(ptr noundef %sdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hw_ch.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 17
  %0 = ptrtoint ptr %num_hw_ch.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_hw_ch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.i = icmp eq i32 %1, 2
  br i1 %cmp1.i, label %if.then.i, label %do.end

if.then.i:                                        ; preds = %entry
  %fmt.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 12
  %2 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @formats, ptr %fmt.i, align 4
  %hw_ch_mask.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 15
  %3 = ptrtoint ptr %hw_ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_ch_mask.i, align 4
  %cur_ch_mask.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 16
  %5 = ptrtoint ptr %cur_ch_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cur_ch_mask.i, align 4
  %num_cur_ch.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 18
  %6 = ptrtoint ptr %num_cur_ch.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %num_cur_ch.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_set_default_format.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_sdr_probe, %rcar_drif_set_default_format.exit.thread)) #11
          to label %if.end [label %rcar_drif_set_default_format.exit.thread], !srcloc !226

rcar_drif_set_default_format.exit.thread:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdr, align 4
  %9 = ptrtoint ptr %cur_ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_ch_mask.i, align 4
  %11 = ptrtoint ptr %num_cur_ch.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cur_ch.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_set_default_format.__UNIQUE_ID_ddebug307, ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %10, i32 noundef %12) #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15) #14
  br label %cleanup55

if.end:                                           ; preds = %rcar_drif_set_default_format.exit.thread, %if.then.i
  %hwbuf_size = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 19
  %15 = ptrtoint ptr %hwbuf_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16384, ptr %hwbuf_size, align 4
  %v4l2_mutex = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %v4l2_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @rcar_drif_sdr_probe.__key) #11
  %vb_queue_mutex = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %vb_queue_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @rcar_drif_sdr_probe.__key.18) #11
  %queued_bufs_lock = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %queued_bufs_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @rcar_drif_sdr_probe.__key.20, i16 noundef signext 3) #11
  %dma_lock = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @rcar_drif_sdr_probe.__key.22, i16 noundef signext 3) #11
  %queued_bufs = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 4
  %16 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 4
  %prev.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queued_bufs, ptr %prev.i, align 4
  %vb_queue = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3
  %18 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 11, ptr %vb_queue, align 4
  %io_modes = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 21, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3, i32 10
  %20 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sdr, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3, i32 12
  %21 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rcar_drif_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 3, i32 13
  %24 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8192, ptr %timestamp_flags, align 4
  %call22 = tail call i32 @vb2_queue_init(ptr noundef %vb_queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %25 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdr, align 4
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.25, i32 noundef %call22) #14
  br label %cleanup55

if.end29:                                         ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 2
  %call31 = tail call i32 @v4l2_device_register(ptr noundef %26, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.28, i32 noundef %call31) #14
  br label %cleanup55

if.end38:                                         ; preds = %if.end29
  %call39 = tail call fastcc i32 @rcar_drif_parse_subdevs(ptr noundef %sdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.error_crit_edge

if.end38.error_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end42:                                         ; preds = %if.end38
  %notifier = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 10
  %29 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rcar_drif_notify_ops, ptr %notifier, align 4
  %call46 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %do.end50, label %if.end42.cleanup55_crit_edge

if.end42.cleanup55_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.31, i32 noundef %call46) #14
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #11
  br label %error

error:                                            ; preds = %do.end50, %if.end38.error_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end38.error_crit_edge ], [ %call46, %do.end50 ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %cleanup55

cleanup55:                                        ; preds = %error, %if.end42.cleanup55_crit_edge, %do.end36, %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call22, %do.end27 ], [ %call31, %do.end36 ], [ %ret.0, %error ], [ %call46, %if.end42.cleanup55_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_drif_parse_subdevs(ptr noundef %sdr) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier1 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 10
  tail call void @v4l2_async_nf_init(ptr noundef %notifier1) #11
  %0 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdr, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  %fwnode2 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %fwnode2
  %call = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %spec.select, ptr noundef null) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !225
  %mdr1.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 13
  %5 = ptrtoint ptr %mdr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 806354944, ptr %mdr1.i, align 4
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.75, ptr noundef nonnull %val.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  %cond.i = select i1 %tobool1.not.i, i32 33554432, i32 0
  %8 = ptrtoint ptr %mdr1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mdr1.i, align 4
  %or.i = or i32 %cond.i, %9
  store i32 %or.i, ptr %mdr1.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_get_ep_properties.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_parse_subdevs, %if.then9.i)) #11
          to label %rcar_drif_get_ep_properties.exit [label %if.then9.i], !srcloc !226

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdr, align 4
  %12 = ptrtoint ptr %mdr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdr1.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_get_ep_properties.__UNIQUE_ID_ddebug311, ptr noundef %11, ptr noundef nonnull @.str.77, i32 noundef %13) #11
  br label %rcar_drif_get_ep_properties.exit

rcar_drif_get_ep_properties.exit:                 ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %call4 = call ptr @fwnode_graph_get_remote_port_parent(ptr noundef nonnull %call) #11
  call void @fwnode_handle_put(ptr noundef nonnull %call) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %rcar_drif_get_ep_properties.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %sdr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.73) #14
  br label %cleanup

if.end8:                                          ; preds = %rcar_drif_get_ep_properties.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier1, ptr noundef nonnull %call4, i32 noundef 28) #11
  call void @fwnode_handle_put(ptr noundef nonnull %call4) #11
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call9 to i32
  %spec.select28 = select i1 %cmp.i, i32 %16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select28, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %num_buffers1 = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers1, align 4
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp = icmp ult i32 %add, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 16, %3
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %num_buffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_planes, align 4
  %fmt = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.rcar_drif_format, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffersize, align 4
  %add3 = add i32 %11, 4095
  %and = and i32 %add3, -4096
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_queue_setup.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_queue_setup, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !226

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_dev, align 4
  %15 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_queue_setup.__UNIQUE_ID_ddebug301, ptr noundef %14, ptr noundef nonnull @.str.36, i32 noundef %16, i32 noundef %18) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  %enabled.i = alloca i32, align 4
  %dma_cfg.i = alloca %struct.dma_slave_config, align 4
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enabled, align 4
  %v4l2_mutex = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %v4l2_mutex, i32 noundef 0) #11
  %cur_ch_mask = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 16
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp187 = icmp ult i32 %call1, 2
  br i1 %cmp187, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0188 = phi i32 [ %call4, %if.end.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.0188
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %clk = getelementptr inbounds %struct.rcar_drif, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %error

if.end:                                           ; preds = %if.end.i
  %shl = shl nuw nsw i32 1, %i.0188
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled, align 4
  %or = or i32 %8, %shl
  store i32 %or, ptr %enabled, align 4
  %add = add nuw nsw i32 %i.0188, 1
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add) #11
  %cmp = icmp ult i32 %call4, 2
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @rcar_drif_set_mdr1(ptr noundef %1)
  %call5 = tail call fastcc i32 @rcar_drif_set_format(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %for.end.error_crit_edge

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end8:                                          ; preds = %for.end
  %num_cur_ch = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %num_cur_ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_cur_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp9 = icmp eq i32 %10, 2
  %fmt = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.rcar_drif_format, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffersize, align 4
  %div83 = zext i1 %cmp9 to i32
  %.sink = lshr i32 %14, %div83
  %15 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_start_streaming.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_start_streaming, %if.then19)) #11
          to label %do.end [label %if.then19], !srcloc !226

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v4l2_dev, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_start_streaming.__UNIQUE_ID_ddebug306, ptr noundef %18, ptr noundef nonnull @.str.38, i32 noundef 32, i32 noundef %20) #11
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_cfg.i) #11
  %21 = call ptr @memset(ptr %dma_cfg.i, i32 255, i32 48)
  %call.i85 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i85)
  %cmp61.i = icmp ult i32 %call.i85, 2
  br i1 %cmp61.i, label %for.body.lr.ph.i, label %do.end.rcar_drif_alloc_dmachannels.exit.thread_crit_edge

do.end.rcar_drif_alloc_dmachannels.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_alloc_dmachannels.exit.thread

for.body.lr.ph.i:                                 ; preds = %do.end
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg.i, i32 0, i32 1
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.062.i = phi i32 [ %call.i85, %for.body.lr.ph.i ], [ %call24.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.062.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %pdev.i = getelementptr inbounds %struct.rcar_drif, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %call2.i = call ptr @dma_request_chan(ptr noundef %dev.i, ptr noundef nonnull @.str.45) #11
  %dmach.i = getelementptr inbounds %struct.rcar_drif, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %dmach.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call2.i, ptr %dmach.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %for.body.i
  %27 = ptrtoint ptr %call2.i to i32
  %cmp7.not.i = icmp eq ptr %call2.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp7.not.i, label %if.then.i.if.end.i86_crit_edge, label %do.end.i

if.then.i.if.end.i86_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i86

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v4l2_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.46, i32 noundef %i.062.i, ptr noundef nonnull %call2.i) #14
  br label %if.end.i86

if.end.i86:                                       ; preds = %do.end.i, %if.then.i.if.end.i86_crit_edge
  %30 = ptrtoint ptr %dmach.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %dmach.i, align 4
  br label %dmach_error.i

if.end12.i:                                       ; preds = %for.body.i
  %31 = call ptr @memset(ptr %dma_cfg.i, i32 0, i32 48)
  %start.i = getelementptr inbounds %struct.rcar_drif, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %start.i, align 4
  %add.i = add i32 %33, 96
  %34 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %src_addr.i, align 4
  %35 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %src_addr_width.i, align 4
  %36 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dmach.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end12.i.do.end18.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end12.i.do.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end12.i
  %call.i.i = call i32 %41(ptr noundef %37, ptr noundef nonnull %dma_cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i87 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i87, label %for.inc.i, label %dmaengine_slave_config.exit.i.do.end18.i_crit_edge

dmaengine_slave_config.exit.i.do.end18.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

do.end18.i:                                       ; preds = %dmaengine_slave_config.exit.i.do.end18.i_crit_edge, %if.end12.i.do.end18.i_crit_edge
  %retval.0.i52.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end18.i_crit_edge ], [ -38, %if.end12.i.do.end18.i_crit_edge ]
  %v4l2_dev19.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %v4l2_dev19.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %v4l2_dev19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.49, i32 noundef %i.062.i) #14
  br label %dmach_error.i

for.inc.i:                                        ; preds = %dmaengine_slave_config.exit.i
  %add23.i = add nuw nsw i32 %i.062.i, 1
  %call24.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add23.i) #11
  %cmp.i = icmp ult i32 %call24.i, 2
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rcar_drif_alloc_dmachannels.exit.thread_crit_edge

for.inc.i.rcar_drif_alloc_dmachannels.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_alloc_dmachannels.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

dmach_error.i:                                    ; preds = %do.end18.i, %if.end.i86
  %ret.0.ph.i = phi i32 [ %retval.0.i52.i, %do.end18.i ], [ %27, %if.end.i86 ]
  %call.i46.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i46.i)
  %cmp17.i.i = icmp ult i32 %call.i46.i, 2
  br i1 %cmp17.i.i, label %dmach_error.i.for.body.i.i_crit_edge, label %dmach_error.i.rcar_drif_alloc_dmachannels.exit_crit_edge

dmach_error.i.rcar_drif_alloc_dmachannels.exit_crit_edge: ; preds = %dmach_error.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_alloc_dmachannels.exit

dmach_error.i.for.body.i.i_crit_edge:             ; preds = %dmach_error.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dmach_error.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %call8.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i46.i, %dmach_error.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.018.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %dmach.i.i = getelementptr inbounds %struct.rcar_drif, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %dmach.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dmach.i.i, align 4
  %tobool.not.i47.i = icmp eq ptr %47, null
  br i1 %tobool.not.i47.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i48.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i48.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dma_release_channel(ptr noundef nonnull %47) #11
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %dmach6.i.i = getelementptr inbounds %struct.rcar_drif, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %dmach6.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dmach6.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i48.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %i.018.i.i, 1
  %call8.i.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add.i.i) #11
  %cmp.i49.i = icmp ult i32 %call8.i.i, 2
  br i1 %cmp.i49.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.rcar_drif_alloc_dmachannels.exit_crit_edge

for.inc.i.i.rcar_drif_alloc_dmachannels.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_alloc_dmachannels.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

rcar_drif_alloc_dmachannels.exit.thread:          ; preds = %for.inc.i.rcar_drif_alloc_dmachannels.exit.thread_crit_edge, %do.end.rcar_drif_alloc_dmachannels.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_cfg.i) #11
  br label %if.end25

rcar_drif_alloc_dmachannels.exit:                 ; preds = %for.inc.i.i.rcar_drif_alloc_dmachannels.exit_crit_edge, %dmach_error.i.rcar_drif_alloc_dmachannels.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %tobool23.not = icmp eq i32 %ret.0.ph.i, 0
  br i1 %tobool23.not, label %rcar_drif_alloc_dmachannels.exit.if.end25_crit_edge, label %rcar_drif_alloc_dmachannels.exit.error_crit_edge

rcar_drif_alloc_dmachannels.exit.error_crit_edge: ; preds = %rcar_drif_alloc_dmachannels.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

rcar_drif_alloc_dmachannels.exit.if.end25_crit_edge: ; preds = %rcar_drif_alloc_dmachannels.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %rcar_drif_alloc_dmachannels.exit.if.end25_crit_edge, %rcar_drif_alloc_dmachannels.exit.thread
  %call.i90 = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i90)
  %cmp43.i = icmp ult i32 %call.i90, 2
  br i1 %cmp43.i, label %if.end25.for.body.i97_crit_edge, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end25.for.body.i97_crit_edge:                  ; preds = %if.end25
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc14.i.for.body.i97_crit_edge, %if.end25.for.body.i97_crit_edge
  %i.044.i = phi i32 [ %call16.i, %for.inc14.i.for.body.i97_crit_edge ], [ %call.i90, %if.end25.for.body.i97_crit_edge ]
  %arrayidx.i92 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.044.i
  %51 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i92, align 4
  %pdev.i93 = getelementptr inbounds %struct.rcar_drif, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %pdev.i93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i93, align 4
  %dev.i94 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %15, align 4
  %mul.i = shl i32 %56, 5
  %dma_handle.i = getelementptr inbounds %struct.rcar_drif, ptr %52, i32 0, i32 7
  %call.i.i95 = call ptr @dma_alloc_attrs(ptr noundef %dev.i94, i32 noundef %mul.i, ptr noundef %dma_handle.i, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i96 = icmp eq ptr %call.i.i95, null
  br i1 %tobool.not.i96, label %rcar_drif_request_buf.exit, label %for.body.i97.for.body7.i_crit_edge

for.body.i97.for.body7.i_crit_edge:               ; preds = %for.body.i97
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body.i97.for.body7.i_crit_edge
  %j.042.i = phi i32 [ %inc.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.body.i97.for.body7.i_crit_edge ]
  %57 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %15, align 4
  %mul9.i = mul i32 %58, %j.042.i
  %add.ptr.i = getelementptr i8, ptr %call.i.i95, i32 %mul9.i
  %arrayidx10.i = getelementptr %struct.rcar_drif, ptr %52, i32 0, i32 6, i32 %j.042.i
  %59 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i, ptr %arrayidx10.i, align 4
  %status.i = getelementptr %struct.rcar_drif, ptr %52, i32 0, i32 6, i32 %j.042.i, i32 1
  %60 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %status.i, align 4
  %inc.i = add nuw nsw i32 %j.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc14.i, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7.i

for.inc14.i:                                      ; preds = %for.body7.i
  %add.i99 = add i32 %i.044.i, 1
  %call16.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add.i99) #11
  %cmp.i100 = icmp ult i32 %call16.i, 2
  br i1 %cmp.i100, label %for.inc14.i.for.body.i97_crit_edge, label %for.inc14.i.if.end29_crit_edge

for.inc14.i.if.end29_crit_edge:                   ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.inc14.i.for.body.i97_crit_edge:               ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i97

rcar_drif_request_buf.exit:                       ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev.i98 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %v4l2_dev.i98 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %v4l2_dev.i98, align 4
  %63 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.51, i32 noundef %i.044.i, i32 noundef 32, i32 noundef %64) #14
  br label %error

if.end29:                                         ; preds = %for.inc14.i.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled.i) #11
  %65 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %enabled.i, align 4
  %call.i103 = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i103)
  %cmp71.i = icmp ult i32 %call.i103, 2
  br i1 %cmp71.i, label %if.end29.for.body.i106_crit_edge, label %if.end29.for.end.i_crit_edge

if.end29.for.end.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end29.for.body.i106_crit_edge:                 ; preds = %if.end29
  br label %for.body.i106

for.body.i106:                                    ; preds = %if.end.i110.for.body.i106_crit_edge, %if.end29.for.body.i106_crit_edge
  %i.072.i = phi i32 [ %call3.i, %if.end.i110.for.body.i106_crit_edge ], [ %call.i103, %if.end29.for.body.i106_crit_edge ]
  %arrayidx.i104 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.072.i
  %66 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i104, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @arm_heavy_mb() #11
  %base.i.i.i = getelementptr inbounds %struct.rcar_drif, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %71, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #11, !srcloc !228
  %call.i.i105 = call i64 @ktime_get() #11
  %add.i.i.i = add i64 %call.i.i105, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 718) #11
  %72 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr73.i.i = getelementptr i8, ptr %73, i32 40
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i.i) #11, !srcloc !229
  %75 = call i32 @llvm.bswap.i32(i32 %74) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  %and74.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i)
  %tobool.not75.i.i = icmp eq i32 %and74.i.i, 0
  br i1 %tobool.not75.i.i, label %for.body.i106.for.end.i.i_crit_edge, label %for.body.i106.land.lhs.true.i.i_crit_edge

for.body.i106.land.lhs.true.i.i_crit_edge:        ; preds = %for.body.i106
  br label %land.lhs.true.i.i

for.body.i106.for.end.i.i_crit_edge:              ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then27.i.i.land.lhs.true.i.i_crit_edge, %for.body.i106.land.lhs.true.i.i_crit_edge
  %call14.i.i = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call14.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then17.i.i, label %if.then27.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %77, i32 40
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #11, !srcloc !229
  %79 = call i32 @llvm.bswap.i32(i32 %78) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  br label %for.end.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 2, i32 noundef 7, i32 noundef 2) #11
  %80 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %81, i32 40
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !229
  %83 = call i32 @llvm.bswap.i32(i32 %82) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  %and.i.i = and i32 %83, 1
  %tobool.not.i.i107 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i107, label %if.then27.i.i.for.end.i.i_crit_edge, label %if.then27.i.i.land.lhs.true.i.i_crit_edge

if.then27.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

if.then27.i.i.for.end.i.i_crit_edge:              ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then27.i.i.for.end.i.i_crit_edge, %if.then17.i.i, %for.body.i106.for.end.i.i_crit_edge
  %ctr.0.i.i = phi i32 [ %79, %if.then17.i.i ], [ %75, %for.body.i106.for.end.i.i_crit_edge ], [ %83, %if.then27.i.i.for.end.i.i_crit_edge ]
  %and30.i.i = and i32 %ctr.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end38.i.i, label %do.end36.i.i

do.end36.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev.i.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %69, i32 0, i32 2
  %84 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %v4l2_dev.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.rcar_drif, ptr %67, i32 0, i32 8
  %86 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num.i.i, align 4
  %88 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %89, i32 40
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i.i) #11, !srcloc !229
  %91 = call i32 @llvm.bswap.i32(i32 %90) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.53, i32 noundef %87, i32 noundef %91) #14
  br label %start_error.i

if.end38.i.i:                                     ; preds = %for.end.i.i
  %92 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %67, align 4
  %dma_handle.i.i.i = getelementptr inbounds %struct.rcar_drif, ptr %67, i32 0, i32 7
  %94 = ptrtoint ptr %dma_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_handle.i.i.i, align 4
  %dmach.i.i.i = getelementptr inbounds %struct.rcar_drif, ptr %67, i32 0, i32 4
  %96 = ptrtoint ptr %dmach.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dmach.i.i.i, align 4
  %hwbuf_size.i.i.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %93, i32 0, i32 19
  %98 = ptrtoint ptr %hwbuf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hwbuf_size.i.i.i, align 4
  %mul.i.i.i = shl i32 %99, 5
  %tobool.not.i.i.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i.i.i, label %if.end38.i.i.do.end.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end38.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end38.i.i
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %97, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %101, null
  br i1 %tobool1.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.do.end.i.i.i_crit_edge, label %lor.lhs.false2.i.i.i.i

lor.lhs.false.i.i.i.i.do.end.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

lor.lhs.false2.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %device_prep_dma_cyclic.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %101, i32 0, i32 40
  %102 = ptrtoint ptr %device_prep_dma_cyclic.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device_prep_dma_cyclic.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %103, null
  br i1 %tobool4.not.i.i.i.i, label %lor.lhs.false2.i.i.i.i.do.end.i.i.i_crit_edge, label %dmaengine_prep_dma_cyclic.exit.i.i.i

lor.lhs.false2.i.i.i.i.do.end.i.i.i_crit_edge:    ; preds = %lor.lhs.false2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

dmaengine_prep_dma_cyclic.exit.i.i.i:             ; preds = %lor.lhs.false2.i.i.i.i
  %call.i.i.i.i = call ptr %103(ptr noundef nonnull %97, i32 noundef %95, i32 noundef %mul.i.i.i, i32 noundef %99, i32 noundef 2, i32 noundef 3) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dmaengine_prep_dma_cyclic.exit.i.i.i.do.end.i.i.i_crit_edge, label %if.end.i.i.i

dmaengine_prep_dma_cyclic.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %dmaengine_prep_dma_cyclic.exit.i.i.i.do.end.i.i.i_crit_edge, %lor.lhs.false2.i.i.i.i.do.end.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.do.end.i.i.i_crit_edge, %if.end38.i.i.do.end.i.i.i_crit_edge
  %v4l2_dev.i.i.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %93, i32 0, i32 2
  %104 = ptrtoint ptr %v4l2_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %v4l2_dev.i.i.i, align 4
  %num.i.i.i = getelementptr inbounds %struct.rcar_drif, ptr %67, i32 0, i32 8
  %106 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.55, i32 noundef %107) #14
  br label %start_error.i

if.end.i.i.i:                                     ; preds = %dmaengine_prep_dma_cyclic.exit.i.i.i
  %callback.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i.i, i32 0, i32 6
  %108 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @rcar_drif_dma_complete, ptr %callback.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i.i, i32 0, i32 8
  %109 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %67, ptr %callback_param.i.i.i, align 4
  %tx_submit.i.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i.i, i32 0, i32 4
  %110 = ptrtoint ptr %tx_submit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx_submit.i.i.i.i, align 4
  %call.i32.i.i.i = call i32 %111(ptr noundef nonnull %call.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i32.i.i.i)
  %tobool5.not.i.i.i = icmp sgt i32 %call.i32.i.i.i, -1
  br i1 %tobool5.not.i.i.i, label %if.end.i110, label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev10.i.i.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %93, i32 0, i32 2
  %112 = ptrtoint ptr %v4l2_dev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %v4l2_dev10.i.i.i, align 4
  %num12.i.i.i = getelementptr inbounds %struct.rcar_drif, ptr %67, i32 0, i32 8
  %114 = ptrtoint ptr %num12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num12.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.58, i32 noundef %115) #14
  br label %start_error.i

if.end.i110:                                      ; preds = %if.end.i.i.i
  %116 = ptrtoint ptr %dmach.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dmach.i.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %device_issue_pending.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 50
  %120 = ptrtoint ptr %device_issue_pending.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_issue_pending.i.i.i.i, align 4
  call void %121(ptr noundef %117) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @arm_heavy_mb() #11
  %122 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %123, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 -1205862400) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @arm_heavy_mb() #11
  %124 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %125, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i.i, i32 9437184) #11, !srcloc !228
  %shl.i = shl nuw i32 1, %i.072.i
  %126 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %enabled.i, align 4
  %or.i = or i32 %127, %shl.i
  store i32 %or.i, ptr %enabled.i, align 4
  %add.i108 = add i32 %i.072.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add.i108) #11
  %cmp.i109 = icmp ult i32 %call3.i, 2
  br i1 %cmp.i109, label %if.end.i110.for.body.i106_crit_edge, label %if.end.i110.for.end.i_crit_edge

if.end.i110.for.end.i_crit_edge:                  ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i110.for.body.i106_crit_edge:              ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i106

for.end.i:                                        ; preds = %if.end.i110.for.end.i_crit_edge, %if.end29.for.end.i_crit_edge
  %call.i35.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35.i)
  %cmp99.i.i = icmp ult i32 %call.i35.i, 2
  br i1 %cmp99.i.i, label %for.end.i.for.body.i.i114_crit_edge, label %for.end.i.for.end.i38.i_crit_edge

for.end.i.for.end.i38.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i38.i

for.end.i.for.body.i.i114_crit_edge:              ; preds = %for.end.i
  br label %for.body.i.i114

for.body.i.i114:                                  ; preds = %for.body.i.i114.for.body.i.i114_crit_edge, %for.end.i.for.body.i.i114_crit_edge
  %i.0100.i.i = phi i32 [ %call5.i.i, %for.body.i.i114.for.body.i.i114_crit_edge ], [ %call.i35.i, %for.end.i.for.body.i.i114_crit_edge ]
  %arrayidx.i.i111 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.0100.i.i
  %128 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i111, align 4
  %base.i.i36.i = getelementptr inbounds %struct.rcar_drif, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %base.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i36.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %131, i32 40
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i) #11, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  %133 = or i32 %132, 65540
  %134 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i111, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @arm_heavy_mb() #11
  %base.i90.i.i = getelementptr inbounds %struct.rcar_drif, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %base.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i90.i.i, align 4
  %add.ptr.i91.i.i = getelementptr i8, ptr %137, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i.i, i32 %133) #11, !srcloc !228
  %add.i.i112 = add nuw nsw i32 %i.0100.i.i, 1
  %call5.i.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add.i.i112) #11
  %cmp.i.i113 = icmp ult i32 %call5.i.i, 2
  br i1 %cmp.i.i113, label %for.body.i.i114.for.body.i.i114_crit_edge, label %for.body.i.i114.for.end.i38.i_crit_edge

for.body.i.i114.for.end.i38.i_crit_edge:          ; preds = %for.body.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i38.i

for.body.i.i114.for.body.i.i114_crit_edge:        ; preds = %for.body.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i114

for.end.i38.i:                                    ; preds = %for.body.i.i114.for.end.i38.i_crit_edge, %for.end.i.for.end.i38.i_crit_edge
  %call7.i.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i.i)
  %cmp9106.i.i = icmp ult i32 %call7.i.i, 2
  br i1 %cmp9106.i.i, label %for.end.i38.i.for.body10.i.i_crit_edge, label %for.end.i38.i.enable_error.i_crit_edge

for.end.i38.i.enable_error.i_crit_edge:           ; preds = %for.end.i38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_error.i

for.end.i38.i.for.body10.i.i_crit_edge:           ; preds = %for.end.i38.i
  br label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.inc59.i.i.for.body10.i.i_crit_edge, %for.end.i38.i.for.body10.i.i_crit_edge
  %i.1107.i.i = phi i32 [ %call62.i.i, %for.inc59.i.i.for.body10.i.i_crit_edge ], [ %call7.i.i, %for.end.i38.i.for.body10.i.i_crit_edge ]
  %call11.i.i = call i64 @ktime_get() #11
  %add.i.i39.i = add i64 %call11.i.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 651) #11
  %arrayidx22.i.i = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.1107.i.i
  %138 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx22.i.i, align 4
  %base101.i.i = getelementptr inbounds %struct.rcar_drif, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %base101.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base101.i.i, align 4
  %add.ptr102.i.i = getelementptr i8, ptr %141, i32 40
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102.i.i) #11, !srcloc !229
  %143 = call i32 @llvm.bswap.i32(i32 %142) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  %and103.i.i = and i32 %143, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i.i)
  %tobool.not104.i.i = icmp eq i32 %and103.i.i, 0
  br i1 %tobool.not104.i.i, label %for.body10.i.i.land.lhs.true.i41.i_crit_edge, label %for.body10.i.i.for.end46.i.i_crit_edge

for.body10.i.i.for.end46.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46.i.i

for.body10.i.i.land.lhs.true.i41.i_crit_edge:     ; preds = %for.body10.i.i
  br label %land.lhs.true.i41.i

land.lhs.true.i41.i:                              ; preds = %if.then43.i.i.land.lhs.true.i41.i_crit_edge, %for.body10.i.i.land.lhs.true.i41.i_crit_edge
  %call28.i.i = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call28.i.i, i64 %add.i.i39.i)
  %cmp3.i.i40.i = icmp sgt i64 %call28.i.i, %add.i.i39.i
  br i1 %cmp3.i.i40.i, label %if.then31.i.i, label %if.then43.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx22.i.i, align 4
  %base36.i.i = getelementptr inbounds %struct.rcar_drif, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %base36.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base36.i.i, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %147, i32 40
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i.i) #11, !srcloc !229
  %149 = call i32 @llvm.bswap.i32(i32 %148) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  br label %for.end46.i.i

if.then43.i.i:                                    ; preds = %land.lhs.true.i41.i
  call void @usleep_range_state(i32 noundef 2, i32 noundef 7, i32 noundef 2) #11
  %150 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx22.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.rcar_drif, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %153, i32 40
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #11, !srcloc !229
  %155 = call i32 @llvm.bswap.i32(i32 %154) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  %and.i43.i = and i32 %155, 256
  %tobool.not.i44.i = icmp eq i32 %and.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.then43.i.i.land.lhs.true.i41.i_crit_edge, label %if.then43.i.i.for.end46.i.i_crit_edge

if.then43.i.i.for.end46.i.i_crit_edge:            ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46.i.i

if.then43.i.i.land.lhs.true.i41.i_crit_edge:      ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i41.i

for.end46.i.i:                                    ; preds = %if.then43.i.i.for.end46.i.i_crit_edge, %if.then31.i.i, %for.body10.i.i.for.end46.i.i_crit_edge
  %ctr.0.i45.i = phi i32 [ %149, %if.then31.i.i ], [ %143, %for.body10.i.i.for.end46.i.i_crit_edge ], [ %155, %if.then43.i.i.for.end46.i.i_crit_edge ]
  %and48.i.i = and i32 %ctr.0.i45.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %do.end54.i.i, label %for.inc59.i.i

do.end54.i.i:                                     ; preds = %for.end46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev.i46.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %156 = ptrtoint ptr %v4l2_dev.i46.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %v4l2_dev.i46.i, align 4
  %158 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx22.i.i, align 4
  %base.i92.i.i = getelementptr inbounds %struct.rcar_drif, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %base.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i92.i.i, align 4
  %add.ptr.i93.i.i = getelementptr i8, ptr %161, i32 40
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i.i) #11, !srcloc !229
  %163 = call i32 @llvm.bswap.i32(i32 %162) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.65, i32 noundef %i.1107.i.i, i32 noundef %163) #14
  br label %enable_error.i

for.inc59.i.i:                                    ; preds = %for.end46.i.i
  %add61.i.i = add i32 %i.1107.i.i, 1
  %call62.i.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add61.i.i) #11
  %cmp9.i.i = icmp ult i32 %call62.i.i, 2
  br i1 %cmp9.i.i, label %for.inc59.i.i.for.body10.i.i_crit_edge, label %if.end33

for.inc59.i.i.for.body10.i.i_crit_edge:           ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10.i.i

enable_error.i:                                   ; preds = %do.end54.i.i, %for.end.i38.i.enable_error.i_crit_edge
  %ret.1.i.ph.i = phi i32 [ -22, %for.end.i38.i.enable_error.i_crit_edge ], [ -110, %do.end54.i.i ]
  call fastcc void @rcar_drif_disable_rx(ptr noundef %1) #11
  br label %start_error.i

start_error.i:                                    ; preds = %enable_error.i, %do.end9.i.i.i, %do.end.i.i.i, %do.end36.i.i
  %ret.0.i = phi i32 [ %ret.1.i.ph.i, %enable_error.i ], [ -5, %do.end.i.i.i ], [ -5, %do.end9.i.i.i ], [ -110, %do.end36.i.i ]
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.i)
  %cmp1073.i = icmp ult i32 %call8.i, 2
  br i1 %cmp1073.i, label %start_error.i.for.body11.i_crit_edge, label %start_error.i.rcar_drif_start.exit.thread_crit_edge

start_error.i.rcar_drif_start.exit.thread_crit_edge: ; preds = %start_error.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_start.exit.thread

start_error.i.for.body11.i_crit_edge:             ; preds = %start_error.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %rcar_drif_stop_channel.exit.i.for.body11.i_crit_edge, %start_error.i.for.body11.i_crit_edge
  %i.174.i = phi i32 [ %call16.i116, %rcar_drif_stop_channel.exit.i.for.body11.i_crit_edge ], [ %call8.i, %start_error.i.for.body11.i_crit_edge ]
  %arrayidx13.i = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.174.i
  %164 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx13.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @arm_heavy_mb() #11
  %base.i.i47.i = getelementptr inbounds %struct.rcar_drif, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %base.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i.i47.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %167, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48.i, i32 0) #11, !srcloc !228
  %dmach.i.i115 = getelementptr inbounds %struct.rcar_drif, ptr %165, i32 0, i32 4
  %168 = ptrtoint ptr %dmach.i.i115 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dmach.i.i115, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %device_terminate_all.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %171, i32 0, i32 47
  %172 = ptrtoint ptr %device_terminate_all.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %device_terminate_all.i.i.i.i, align 4
  %tobool.not.i.i.i49.i = icmp eq ptr %173, null
  br i1 %tobool.not.i.i.i49.i, label %for.body11.i.rcar_drif_stop_channel.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i.i

for.body11.i.rcar_drif_stop_channel.exit.i_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop_channel.exit.i

dmaengine_terminate_async.exit.i.i.i:             ; preds = %for.body11.i
  %call.i.i.i50.i = call i32 %173(ptr noundef %169) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i50.i)
  %tobool.not.i.i51.i = icmp eq i32 %call.i.i.i50.i, 0
  br i1 %tobool.not.i.i51.i, label %if.end.i.i52.i, label %dmaengine_terminate_async.exit.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop_channel.exit.i

if.end.i.i52.i:                                   ; preds = %dmaengine_terminate_async.exit.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 1169) #11
  %174 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %169, align 4
  %device_synchronize.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %175, i32 0, i32 48
  %176 = ptrtoint ptr %device_synchronize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %device_synchronize.i.i.i.i, align 4
  %tobool.not.i1.i.i.i = icmp eq ptr %177, null
  br i1 %tobool.not.i1.i.i.i, label %if.end.i.i52.i.rcar_drif_stop_channel.exit.i_crit_edge, label %if.then.i2.i.i.i

if.end.i.i52.i.rcar_drif_stop_channel.exit.i_crit_edge: ; preds = %if.end.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop_channel.exit.i

if.then.i2.i.i.i:                                 ; preds = %if.end.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %177(ptr noundef %169) #11
  br label %rcar_drif_stop_channel.exit.i

rcar_drif_stop_channel.exit.i:                    ; preds = %if.then.i2.i.i.i, %if.end.i.i52.i.rcar_drif_stop_channel.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge, %for.body11.i.rcar_drif_stop_channel.exit.i_crit_edge
  %add15.i = add nuw nsw i32 %i.174.i, 1
  %call16.i116 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled.i, i32 noundef 2, i32 noundef %add15.i) #11
  %cmp10.i = icmp ult i32 %call16.i116, 2
  br i1 %cmp10.i, label %rcar_drif_stop_channel.exit.i.for.body11.i_crit_edge, label %rcar_drif_stop_channel.exit.i.rcar_drif_start.exit.thread_crit_edge

rcar_drif_stop_channel.exit.i.rcar_drif_start.exit.thread_crit_edge: ; preds = %rcar_drif_stop_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_start.exit.thread

rcar_drif_stop_channel.exit.i.for.body11.i_crit_edge: ; preds = %rcar_drif_stop_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11.i

rcar_drif_start.exit.thread:                      ; preds = %rcar_drif_stop_channel.exit.i.rcar_drif_start.exit.thread_crit_edge, %start_error.i.rcar_drif_start.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #11
  br label %error

if.end33:                                         ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %produced.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 20
  %178 = ptrtoint ptr %produced.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %produced.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #11
  br label %cleanup

error:                                            ; preds = %rcar_drif_start.exit.thread, %rcar_drif_request_buf.exit, %rcar_drif_alloc_dmachannels.exit.error_crit_edge, %for.end.error_crit_edge, %if.then3.i, %for.body.error_crit_edge
  %ret.0 = phi i32 [ %call5, %for.end.error_crit_edge ], [ %ret.0.ph.i, %rcar_drif_alloc_dmachannels.exit.error_crit_edge ], [ -12, %rcar_drif_request_buf.exit ], [ %ret.0.i, %rcar_drif_start.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i, %for.body.error_crit_edge ]
  %queued_bufs_lock.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 5
  %call3.i119 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #11
  %queued_bufs.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 4
  %179 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %queued_bufs.i, align 4
  %cmp13.not30.i = icmp eq ptr %180, %queued_bufs.i
  br i1 %cmp13.not30.i, label %error.rcar_drif_release_queued_bufs.exit_crit_edge, label %error.for.body.i120_crit_edge

error.for.body.i120_crit_edge:                    ; preds = %error
  br label %for.body.i120

error.rcar_drif_release_queued_bufs.exit_crit_edge: ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_queued_bufs.exit

for.body.i120:                                    ; preds = %list_del.exit.i.for.body.i120_crit_edge, %error.for.body.i120_crit_edge
  %.pn.in31.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i120_crit_edge ], [ %180, %error.for.body.i120_crit_edge ]
  %fbuf.0.i = getelementptr i8, ptr %.pn.in31.i, i32 -736
  %181 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pn.i = load ptr, ptr %.pn.in31.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i121, label %for.body.i120.list_del.exit.i_crit_edge

for.body.i120.list_del.exit.i_crit_edge:          ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i121:                                  ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31.i, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prev.i.i.i, align 4
  %184 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %.pn.in31.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev1.i.i.i.i, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %185, ptr %183, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i121, %for.body.i120.list_del.exit.i_crit_edge
  %188 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in31.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31.i, i32 0, i32 1
  %189 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @vb2_buffer_done(ptr noundef %fbuf.0.i, i32 noundef 3) #11
  %cmp13.not.i = icmp eq ptr %.pn.i, %queued_bufs.i
  br i1 %cmp13.not.i, label %list_del.exit.i.rcar_drif_release_queued_bufs.exit_crit_edge, label %list_del.exit.i.for.body.i120_crit_edge

list_del.exit.i.for.body.i120_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i120

list_del.exit.i.rcar_drif_release_queued_bufs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_queued_bufs.exit

rcar_drif_release_queued_bufs.exit:               ; preds = %list_del.exit.i.rcar_drif_release_queued_bufs.exit_crit_edge, %error.rcar_drif_release_queued_bufs.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call3.i119) #11
  %call.i124 = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i124)
  %cmp20.i = icmp ult i32 %call.i124, 2
  br i1 %cmp20.i, label %for.body.lr.ph.i126, label %rcar_drif_release_queued_bufs.exit.rcar_drif_release_buf.exit_crit_edge

rcar_drif_release_queued_bufs.exit.rcar_drif_release_buf.exit_crit_edge: ; preds = %rcar_drif_release_queued_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_buf.exit

for.body.lr.ph.i126:                              ; preds = %rcar_drif_release_queued_bufs.exit
  %hwbuf_size.i125 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 19
  br label %for.body.i129

for.body.i129:                                    ; preds = %if.end.i137.for.body.i129_crit_edge, %for.body.lr.ph.i126
  %i.021.i = phi i32 [ %call.i124, %for.body.lr.ph.i126 ], [ %call10.i, %if.end.i137.for.body.i129_crit_edge ]
  %arrayidx.i127 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.021.i
  %190 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i127, align 4
  %buf.i = getelementptr inbounds %struct.rcar_drif, ptr %191, i32 0, i32 6
  %192 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %buf.i, align 4
  %tobool.not.i128 = icmp eq ptr %193, null
  br i1 %tobool.not.i128, label %for.body.i129.if.end.i137_crit_edge, label %if.then.i134

for.body.i129.if.end.i137_crit_edge:              ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i137

if.then.i134:                                     ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i130 = getelementptr inbounds %struct.rcar_drif, ptr %191, i32 0, i32 1
  %194 = ptrtoint ptr %pdev.i130 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdev.i130, align 4
  %dev.i131 = getelementptr inbounds %struct.platform_device, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %hwbuf_size.i125 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %hwbuf_size.i125, align 4
  %mul.i132 = shl i32 %197, 5
  %dma_handle.i133 = getelementptr inbounds %struct.rcar_drif, ptr %191, i32 0, i32 7
  %198 = ptrtoint ptr %dma_handle.i133 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dma_handle.i133, align 4
  call void @dma_free_attrs(ptr noundef %dev.i131, i32 noundef %mul.i132, ptr noundef nonnull %193, i32 noundef %199, i32 noundef 0) #11
  %200 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %buf.i, align 4
  br label %if.end.i137

if.end.i137:                                      ; preds = %if.then.i134, %for.body.i129.if.end.i137_crit_edge
  %add.i135 = add nuw nsw i32 %i.021.i, 1
  %call10.i = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add.i135) #11
  %cmp.i136 = icmp ult i32 %call10.i, 2
  br i1 %cmp.i136, label %if.end.i137.for.body.i129_crit_edge, label %if.end.i137.rcar_drif_release_buf.exit_crit_edge

if.end.i137.rcar_drif_release_buf.exit_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_buf.exit

if.end.i137.for.body.i129_crit_edge:              ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i129

rcar_drif_release_buf.exit:                       ; preds = %if.end.i137.rcar_drif_release_buf.exit_crit_edge, %rcar_drif_release_queued_bufs.exit.rcar_drif_release_buf.exit_crit_edge
  %call.i140 = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i140)
  %cmp17.i = icmp ult i32 %call.i140, 2
  br i1 %cmp17.i, label %rcar_drif_release_buf.exit.for.body.i144_crit_edge, label %rcar_drif_release_buf.exit.rcar_drif_release_dmachannels.exit_crit_edge

rcar_drif_release_buf.exit.rcar_drif_release_dmachannels.exit_crit_edge: ; preds = %rcar_drif_release_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_dmachannels.exit

rcar_drif_release_buf.exit.for.body.i144_crit_edge: ; preds = %rcar_drif_release_buf.exit
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.inc.i149.for.body.i144_crit_edge, %rcar_drif_release_buf.exit.for.body.i144_crit_edge
  %i.018.i = phi i32 [ %call8.i147, %for.inc.i149.for.body.i144_crit_edge ], [ %call.i140, %rcar_drif_release_buf.exit.for.body.i144_crit_edge ]
  %arrayidx.i141 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.018.i
  %201 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i141, align 4
  %dmach.i142 = getelementptr inbounds %struct.rcar_drif, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %dmach.i142 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dmach.i142, align 4
  %tobool.not.i143 = icmp eq ptr %204, null
  br i1 %tobool.not.i143, label %for.body.i144.for.inc.i149_crit_edge, label %if.then.i145

for.body.i144.for.inc.i149_crit_edge:             ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i149

if.then.i145:                                     ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #13
  call void @dma_release_channel(ptr noundef nonnull %204) #11
  %205 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i141, align 4
  %dmach6.i = getelementptr inbounds %struct.rcar_drif, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %dmach6.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr null, ptr %dmach6.i, align 4
  br label %for.inc.i149

for.inc.i149:                                     ; preds = %if.then.i145, %for.body.i144.for.inc.i149_crit_edge
  %add.i146 = add nuw nsw i32 %i.018.i, 1
  %call8.i147 = call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add.i146) #11
  %cmp.i148 = icmp ult i32 %call8.i147, 2
  br i1 %cmp.i148, label %for.inc.i149.for.body.i144_crit_edge, label %for.inc.i149.rcar_drif_release_dmachannels.exit_crit_edge

for.inc.i149.rcar_drif_release_dmachannels.exit_crit_edge: ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_dmachannels.exit

for.inc.i149.for.body.i144_crit_edge:             ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i144

rcar_drif_release_dmachannels.exit:               ; preds = %for.inc.i149.rcar_drif_release_dmachannels.exit_crit_edge, %rcar_drif_release_buf.exit.rcar_drif_release_dmachannels.exit_crit_edge
  %call35 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call35)
  %cmp37189 = icmp ult i32 %call35, 2
  br i1 %cmp37189, label %rcar_drif_release_dmachannels.exit.for.body38_crit_edge, label %rcar_drif_release_dmachannels.exit.cleanup_crit_edge

rcar_drif_release_dmachannels.exit.cleanup_crit_edge: ; preds = %rcar_drif_release_dmachannels.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rcar_drif_release_dmachannels.exit.for.body38_crit_edge: ; preds = %rcar_drif_release_dmachannels.exit
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %rcar_drif_release_dmachannels.exit.for.body38_crit_edge
  %i.1190 = phi i32 [ %call44, %for.body38.for.body38_crit_edge ], [ %call35, %rcar_drif_release_dmachannels.exit.for.body38_crit_edge ]
  %arrayidx40 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.1190
  %208 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx40, align 4
  %clk41 = getelementptr inbounds %struct.rcar_drif, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %clk41 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %clk41, align 4
  call void @clk_disable(ptr noundef %211) #11
  call void @clk_unprepare(ptr noundef %211) #11
  %add43 = add nuw nsw i32 %i.1190, 1
  %call44 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled, i32 noundef 2, i32 noundef %add43) #11
  %cmp37 = icmp ult i32 %call44, 2
  br i1 %cmp37, label %for.body38.for.body38_crit_edge, label %for.body38.cleanup_crit_edge

for.body38.cleanup_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38

cleanup:                                          ; preds = %for.body38.cleanup_crit_edge, %rcar_drif_release_dmachannels.exit.cleanup_crit_edge, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %ret.0, %rcar_drif_release_dmachannels.exit.cleanup_crit_edge ], [ %ret.0, %for.body38.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %v4l2_mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_drif_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l2_mutex = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %v4l2_mutex, i32 noundef 0) #11
  tail call fastcc void @rcar_drif_disable_rx(ptr noundef %1) #11
  %cur_ch_mask.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 16
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp8.i = icmp ult i32 %call.i, 2
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.rcar_drif_stop.exit_crit_edge

entry.rcar_drif_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %rcar_drif_stop_channel.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %call2.i, %rcar_drif_stop_channel.exit.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.09.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %base.i.i.i = getelementptr inbounds %struct.rcar_drif, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #11, !srcloc !228
  %dmach.i.i = getelementptr inbounds %struct.rcar_drif, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dmach.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmach.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.rcar_drif_stop_channel.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i.i

for.body.i.rcar_drif_stop_channel.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop_channel.exit.i

dmaengine_terminate_async.exit.i.i.i:             ; preds = %for.body.i
  %call.i.i.i.i = tail call i32 %11(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %dmaengine_terminate_async.exit.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop_channel.exit.i

if.end.i.i.i:                                     ; preds = %dmaengine_terminate_async.exit.i.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 1169) #11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %device_synchronize.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 48
  %14 = ptrtoint ptr %device_synchronize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_synchronize.i.i.i.i, align 4
  %tobool.not.i1.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i1.i.i.i, label %if.end.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge, label %if.then.i2.i.i.i

if.end.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop_channel.exit.i

if.then.i2.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(ptr noundef %7) #11
  br label %rcar_drif_stop_channel.exit.i

rcar_drif_stop_channel.exit.i:                    ; preds = %if.then.i2.i.i.i, %if.end.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.i.rcar_drif_stop_channel.exit.i_crit_edge, %for.body.i.rcar_drif_stop_channel.exit.i_crit_edge
  %add.i = add nuw nsw i32 %i.09.i, 1
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef %add.i) #11
  %cmp.i = icmp ult i32 %call2.i, 2
  br i1 %cmp.i, label %rcar_drif_stop_channel.exit.i.for.body.i_crit_edge, label %rcar_drif_stop_channel.exit.i.rcar_drif_stop.exit_crit_edge

rcar_drif_stop_channel.exit.i.rcar_drif_stop.exit_crit_edge: ; preds = %rcar_drif_stop_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_stop.exit

rcar_drif_stop_channel.exit.i.for.body.i_crit_edge: ; preds = %rcar_drif_stop_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

rcar_drif_stop.exit:                              ; preds = %rcar_drif_stop_channel.exit.i.rcar_drif_stop.exit_crit_edge, %entry.rcar_drif_stop.exit_crit_edge
  %queued_bufs_lock.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #11
  %queued_bufs.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queued_bufs.i, align 4
  %cmp13.not30.i = icmp eq ptr %17, %queued_bufs.i
  br i1 %cmp13.not30.i, label %rcar_drif_stop.exit.rcar_drif_release_queued_bufs.exit_crit_edge, label %rcar_drif_stop.exit.for.body.i15_crit_edge

rcar_drif_stop.exit.for.body.i15_crit_edge:       ; preds = %rcar_drif_stop.exit
  br label %for.body.i15

rcar_drif_stop.exit.rcar_drif_release_queued_bufs.exit_crit_edge: ; preds = %rcar_drif_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_queued_bufs.exit

for.body.i15:                                     ; preds = %list_del.exit.i.for.body.i15_crit_edge, %rcar_drif_stop.exit.for.body.i15_crit_edge
  %.pn.in31.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i15_crit_edge ], [ %17, %rcar_drif_stop.exit.for.body.i15_crit_edge ]
  %fbuf.0.i = getelementptr i8, ptr %.pn.in31.i, i32 -736
  %18 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in31.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i16, label %for.body.i15.list_del.exit.i_crit_edge

for.body.i15.list_del.exit.i_crit_edge:           ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i16:                                   ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in31.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i16, %for.body.i15.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in31.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %fbuf.0.i, i32 noundef 6) #11
  %cmp13.not.i = icmp eq ptr %.pn.i, %queued_bufs.i
  br i1 %cmp13.not.i, label %list_del.exit.i.rcar_drif_release_queued_bufs.exit_crit_edge, label %list_del.exit.i.for.body.i15_crit_edge

list_del.exit.i.for.body.i15_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i15

list_del.exit.i.rcar_drif_release_queued_bufs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_queued_bufs.exit

rcar_drif_release_queued_bufs.exit:               ; preds = %list_del.exit.i.rcar_drif_release_queued_bufs.exit_crit_edge, %rcar_drif_stop.exit.rcar_drif_release_queued_bufs.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call3.i) #11
  %call.i18 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i18)
  %cmp20.i = icmp ult i32 %call.i18, 2
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %rcar_drif_release_queued_bufs.exit.rcar_drif_release_buf.exit_crit_edge

rcar_drif_release_queued_bufs.exit.rcar_drif_release_buf.exit_crit_edge: ; preds = %rcar_drif_release_queued_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_buf.exit

for.body.lr.ph.i:                                 ; preds = %rcar_drif_release_queued_bufs.exit
  %hwbuf_size.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 19
  br label %for.body.i20

for.body.i20:                                     ; preds = %if.end.i.for.body.i20_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ %call.i18, %for.body.lr.ph.i ], [ %call10.i, %if.end.i.for.body.i20_crit_edge ]
  %arrayidx.i19 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.021.i
  %27 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i19, align 4
  %buf.i = getelementptr inbounds %struct.rcar_drif, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.body.i20.if.end.i_crit_edge, label %if.then.i

for.body.i20.if.end.i_crit_edge:                  ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.rcar_drif, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %hwbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwbuf_size.i, align 4
  %mul.i = shl i32 %34, 5
  %dma_handle.i = getelementptr inbounds %struct.rcar_drif, ptr %28, i32 0, i32 7
  %35 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef nonnull %30, i32 noundef %36, i32 noundef 0) #11
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i20.if.end.i_crit_edge
  %add.i21 = add nuw nsw i32 %i.021.i, 1
  %call10.i = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef %add.i21) #11
  %cmp.i22 = icmp ult i32 %call10.i, 2
  br i1 %cmp.i22, label %if.end.i.for.body.i20_crit_edge, label %if.end.i.rcar_drif_release_buf.exit_crit_edge

if.end.i.rcar_drif_release_buf.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_buf.exit

if.end.i.for.body.i20_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i20

rcar_drif_release_buf.exit:                       ; preds = %if.end.i.rcar_drif_release_buf.exit_crit_edge, %rcar_drif_release_queued_bufs.exit.rcar_drif_release_buf.exit_crit_edge
  %call.i24 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i24)
  %cmp17.i = icmp ult i32 %call.i24, 2
  br i1 %cmp17.i, label %rcar_drif_release_buf.exit.for.body.i27_crit_edge, label %rcar_drif_release_buf.exit.rcar_drif_release_dmachannels.exit_crit_edge

rcar_drif_release_buf.exit.rcar_drif_release_dmachannels.exit_crit_edge: ; preds = %rcar_drif_release_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_dmachannels.exit

rcar_drif_release_buf.exit.for.body.i27_crit_edge: ; preds = %rcar_drif_release_buf.exit
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.inc.i.for.body.i27_crit_edge, %rcar_drif_release_buf.exit.for.body.i27_crit_edge
  %i.018.i = phi i32 [ %call8.i, %for.inc.i.for.body.i27_crit_edge ], [ %call.i24, %rcar_drif_release_buf.exit.for.body.i27_crit_edge ]
  %arrayidx.i25 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.018.i
  %38 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i25, align 4
  %dmach.i = getelementptr inbounds %struct.rcar_drif, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dmach.i, align 4
  %tobool.not.i26 = icmp eq ptr %41, null
  br i1 %tobool.not.i26, label %for.body.i27.for.inc.i_crit_edge, label %if.then.i28

for.body.i27.for.inc.i_crit_edge:                 ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i28:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %41) #11
  %42 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i25, align 4
  %dmach6.i = getelementptr inbounds %struct.rcar_drif, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %dmach6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %dmach6.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i28, %for.body.i27.for.inc.i_crit_edge
  %add.i29 = add nuw nsw i32 %i.018.i, 1
  %call8.i = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef %add.i29) #11
  %cmp.i30 = icmp ult i32 %call8.i, 2
  br i1 %cmp.i30, label %for.inc.i.for.body.i27_crit_edge, label %for.inc.i.rcar_drif_release_dmachannels.exit_crit_edge

for.inc.i.rcar_drif_release_dmachannels.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_release_dmachannels.exit

for.inc.i.for.body.i27_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i27

rcar_drif_release_dmachannels.exit:               ; preds = %for.inc.i.rcar_drif_release_dmachannels.exit_crit_edge, %rcar_drif_release_buf.exit.rcar_drif_release_dmachannels.exit_crit_edge
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp31 = icmp ult i32 %call1, 2
  br i1 %cmp31, label %rcar_drif_release_dmachannels.exit.for.body_crit_edge, label %rcar_drif_release_dmachannels.exit.for.end_crit_edge

rcar_drif_release_dmachannels.exit.for.end_crit_edge: ; preds = %rcar_drif_release_dmachannels.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

rcar_drif_release_dmachannels.exit.for.body_crit_edge: ; preds = %rcar_drif_release_dmachannels.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcar_drif_release_dmachannels.exit.for.body_crit_edge
  %i.032 = phi i32 [ %call3, %for.body.for.body_crit_edge ], [ %call1, %rcar_drif_release_dmachannels.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 %i.032
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %clk = getelementptr inbounds %struct.rcar_drif, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %48) #11
  tail call void @clk_unprepare(ptr noundef %48) #11
  %add = add nuw nsw i32 %i.032, 1
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask.i, i32 noundef 2, i32 noundef %add) #11
  %cmp = icmp ult i32 %call3, 2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcar_drif_release_dmachannels.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_drif_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_buf_queue.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_buf_queue, %if.then)) #11
          to label %do.body9 [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_dev, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_buf_queue.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef %7) #11
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %queued_bufs_lock = getelementptr inbounds %struct.rcar_drif_sdr, ptr %3, i32 0, i32 5
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #11
  %list = getelementptr inbounds %struct.rcar_drif_frame_buf, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.rcar_drif_sdr, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %3, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %queued_bufs) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body9.list_add_tail.exit_crit_edge

do.body9.list_add_tail.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queued_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rcar_drif_frame_buf, ptr %vb, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body9.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call12) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_drif_set_mdr1(ptr noundef %sdr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cur_ch_mask = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 16
  %call = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp26 = icmp ult i32 %call, 2
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mdr1 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ %call, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 14, i32 %i.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %base.i = getelementptr inbounds %struct.rcar_drif, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 64) #11, !srcloc !228
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %mdr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdr1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %base.i22 = getelementptr inbounds %struct.rcar_drif, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i22, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #11, !srcloc !228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_set_mdr1.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_set_mdr1, %if.then)) #11
          to label %for.inc [label %if.then], !srcloc !226

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %base.i23 = getelementptr inbounds %struct.rcar_drif, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #11, !srcloc !229
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_set_mdr1.__UNIQUE_ID_ddebug298, ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %i.027, i32 noundef %18) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %add = add nuw nsw i32 %i.027, 1
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add) #11
  %cmp = icmp ult i32 %call10, 2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_drif_set_format(ptr noundef %sdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_set_format.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_set_format, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 2
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %fmt = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 12
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %bitlen = getelementptr inbounds %struct.rcar_drif_format, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bitlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitlen, align 4
  %wdcnt = getelementptr inbounds %struct.rcar_drif_format, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %wdcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wdcnt, align 4
  %num_ch = getelementptr inbounds %struct.rcar_drif_format, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %num_ch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ch, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_set_format.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fmt5 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 12
  %10 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmt5, align 4
  %num_ch6 = getelementptr inbounds %struct.rcar_drif_format, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %num_ch6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ch6, align 4
  %num_cur_ch = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 18
  %14 = ptrtoint ptr %num_cur_ch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cur_ch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ugt i32 %13, %15
  br i1 %cmp, label %do.end10, label %if.end16

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev11 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 2
  %16 = ptrtoint ptr %v4l2_dev11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.43, i32 noundef %13, i32 noundef %15) #14
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %cur_ch_mask = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 16
  %call17 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp18101 = icmp ult i32 %call17, 2
  br i1 %cmp18101, label %for.body.lr.ph, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %v4l2_dev50 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end60.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ %call17, %for.body.lr.ph ], [ %call62, %do.end60.for.body_crit_edge ]
  %18 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt5, align 4
  %bitlen20 = getelementptr inbounds %struct.rcar_drif_format, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bitlen20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitlen20, align 4
  %sub = shl i32 %21, 24
  %shl = add i32 %sub, -16777216
  %wdcnt22 = getelementptr inbounds %struct.rcar_drif_format, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %wdcnt22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wdcnt22, align 4
  %sub23 = shl i32 %23, 16
  %shl24 = add i32 %sub23, -65536
  %or = or i32 %shl, %shl24
  %or25 = or i32 %or, 1073741824
  %arrayidx = getelementptr %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 14, i32 %i.0102
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %or25) #11
  %base.i = getelementptr inbounds %struct.rcar_drif, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #11, !srcloc !228
  %29 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fmt5, align 4
  %bitlen27 = getelementptr inbounds %struct.rcar_drif_format, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %bitlen27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bitlen27, align 4
  %sub28 = shl i32 %32, 24
  %shl29 = add i32 %sub28, -16777216
  %wdcnt31 = getelementptr inbounds %struct.rcar_drif_format, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %wdcnt31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wdcnt31, align 4
  %sub32 = shl i32 %34, 16
  %shl33 = add i32 %sub32, -65536
  %or34 = or i32 %shl33, %shl29
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %or34) #11
  %base.i93 = getelementptr inbounds %struct.rcar_drif, ptr %36, i32 0, i32 2
  %38 = ptrtoint ptr %base.i93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %37) #11, !srcloc !228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_set_format.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_set_format, %if.then49)) #11
          to label %do.end60 [label %if.then49], !srcloc !226

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %v4l2_dev50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %v4l2_dev50, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %base.i95 = getelementptr inbounds %struct.rcar_drif, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %base.i95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %45, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #11, !srcloc !229
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %base.i97 = getelementptr inbounds %struct.rcar_drif, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %base.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %51, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #11, !srcloc !229
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_set_format.__UNIQUE_ID_ddebug300, ptr noundef %41, ptr noundef nonnull @.str.44, i32 noundef %i.0102, i32 noundef %47, i32 noundef %53) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then49, %for.body
  %add = add nuw nsw i32 %i.0102, 1
  %call62 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add) #11
  %cmp18 = icmp ult i32 %call62, 2
  br i1 %cmp18, label %do.end60.for.body_crit_edge, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end60.for.body_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %do.end60.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %do.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_drif_disable_rx(ptr noundef %sdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_ch_mask = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 16
  %call = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp97 = icmp ult i32 %call, 2
  br i1 %cmp97, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.098 = phi i32 [ %call5, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 14, i32 %i.098
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %base.i = getelementptr inbounds %struct.rcar_drif, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  %5 = and i32 %4, -65537
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %base.i90 = getelementptr inbounds %struct.rcar_drif, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %base.i90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i90, align 4
  %add.ptr.i91 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %5) #11, !srcloc !228
  %add = add nuw nsw i32 %i.098, 1
  %call5 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add) #11
  %cmp = icmp ult i32 %call5, 2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7)
  %cmp9104 = icmp ult i32 %call7, 2
  br i1 %cmp9104, label %for.body10.lr.ph, label %for.end.for.end64_crit_edge

for.end.for.end64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

for.body10.lr.ph:                                 ; preds = %for.end
  %vdev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 1
  br label %for.body10

for.body10:                                       ; preds = %for.inc60.for.body10_crit_edge, %for.body10.lr.ph
  %i.1105 = phi i32 [ %call7, %for.body10.lr.ph ], [ %call63, %for.inc60.for.body10_crit_edge ]
  %call11 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call11, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 678) #11
  %arrayidx22 = getelementptr %struct.rcar_drif_sdr, ptr %sdr, i32 0, i32 14, i32 %i.1105
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx22, align 4
  %base99 = getelementptr inbounds %struct.rcar_drif, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base99 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base99, align 4
  %add.ptr100 = getelementptr i8, ptr %13, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not102 = icmp eq i32 %15, 0
  br i1 %tobool.not102, label %for.body10.for.inc60_crit_edge, label %for.body10.land.lhs.true_crit_edge

for.body10.land.lhs.true_crit_edge:               ; preds = %for.body10
  br label %land.lhs.true

for.body10.for.inc60_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc60

land.lhs.true:                                    ; preds = %if.then44.land.lhs.true_crit_edge, %for.body10.land.lhs.true_crit_edge
  %call29 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call29, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %for.end47, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 7, i32 noundef 2) #11
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx22, align 4
  %base = getelementptr inbounds %struct.rcar_drif, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %21 = and i32 %20, 65536
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then44.for.inc60_crit_edge, label %if.then44.land.lhs.true_crit_edge

if.then44.land.lhs.true_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then44.for.inc60_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc60

for.end47:                                        ; preds = %land.lhs.true
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  %base37 = getelementptr inbounds %struct.rcar_drif, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base37, align 4
  %add.ptr38 = getelementptr i8, ptr %25, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !236
  %27 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool50.not = icmp eq i32 %27, 0
  br i1 %tobool50.not, label %for.end47.for.inc60_crit_edge, label %do.end55

for.end47.for.inc60_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc60

do.end55:                                         ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdev, align 4
  %dev = getelementptr inbounds %struct.video_device, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx22, align 4
  %base.i92 = getelementptr inbounds %struct.rcar_drif, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %base.i92 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %33, i32 40
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #11, !srcloc !229
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %i.1105, i32 noundef %35) #14
  br label %for.inc60

for.inc60:                                        ; preds = %do.end55, %for.end47.for.inc60_crit_edge, %if.then44.for.inc60_crit_edge, %for.body10.for.inc60_crit_edge
  %add62 = add i32 %i.1105, 1
  %call63 = tail call i32 @_find_next_bit_be(ptr noundef %cur_ch_mask, i32 noundef 2, i32 noundef %add62) #11
  %cmp9 = icmp ult i32 %call63, 2
  br i1 %cmp9, label %for.inc60.for.body10_crit_edge, label %for.inc60.for.end64_crit_edge

for.inc60.for.end64_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

for.inc60.for.body10_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

for.end64:                                        ; preds = %for.inc60.for.end64_crit_edge, %for.end.for.end64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_drif_dma_complete(ptr noundef %dma_async_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma_async_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_async_param, align 4
  %dma_lock = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %dma_lock) #11
  %streaming.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %dma_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %produced3 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %produced3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %produced3, align 4
  %rem = and i32 %4, 31
  %status.i = getelementptr %struct.rcar_drif, ptr %dma_async_param, i32 0, i32 6, i32 %rem, i32 1
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %status.i, align 4
  %base.i.i = getelementptr inbounds %struct.rcar_drif, ptr %dma_async_param, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.rcar_drif_channel_complete.exit_crit_edge, label %if.then.i, !prof !237

if.end.rcar_drif_channel_complete.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcar_drif_channel_complete.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %9) #11, !srcloc !228
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  %or6.i = or i32 %14, 2
  store i32 %or6.i, ptr %status.i, align 4
  br label %rcar_drif_channel_complete.exit

rcar_drif_channel_complete.exit:                  ; preds = %if.then.i, %if.end.rcar_drif_channel_complete.exit_crit_edge
  %num_cur_ch = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %num_cur_ch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_cur_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %rcar_drif_channel_complete.exit
  %num = getelementptr inbounds %struct.rcar_drif, ptr %dma_async_param, i32 0, i32 8
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %cond.false18, label %cond.end

cond.end:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %ch5 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %ch5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch5, align 4
  br label %cond.end27

cond.false18:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx24 = getelementptr %struct.rcar_drif_sdr, ptr %1, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx24, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false18, %cond.end
  %23 = phi ptr [ %dma_async_param, %cond.false18 ], [ %20, %cond.end ]
  %dma_async_param.pn = phi ptr [ %22, %cond.false18 ], [ %dma_async_param, %cond.end ]
  %buf.sroa.0.0 = getelementptr %struct.rcar_drif, ptr %23, i32 0, i32 6, i32 %rem
  %cond28 = getelementptr %struct.rcar_drif, ptr %dma_async_param.pn, i32 0, i32 6, i32 %rem
  %status.i128 = getelementptr %struct.rcar_drif, ptr %23, i32 0, i32 6, i32 %rem, i32 1
  %24 = ptrtoint ptr %status.i128 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i128, align 4
  %status2.i = getelementptr %struct.rcar_drif, ptr %dma_async_param.pn, i32 0, i32 6, i32 %rem, i32 1
  %26 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status2.i, align 4
  %and.i = and i32 %25, 1
  %and3.i = and i32 %and.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.i129.not = icmp eq i32 %and3.i, 0
  br i1 %tobool.i129.not, label %if.then31, label %if.end33

if.then31:                                        ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %dma_lock) #11
  br label %cleanup

if.end33:                                         ; preds = %cond.end27
  %and.i131 = and i32 %25, -2
  %28 = ptrtoint ptr %status.i128 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i131, ptr %status.i128, align 4
  %29 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status2.i, align 4
  %and.1.i = and i32 %30, -2
  store i32 %and.1.i, ptr %status2.i, align 4
  %31 = load i32, ptr %status.i128, align 4
  %or.i135 = or i32 %31, %30
  %and.i136 = and i32 %or.i135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.i137.not = icmp eq i32 %and.i136, 0
  br i1 %tobool.i137.not, label %if.end33.if.end50_crit_edge, label %if.then37

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %and.i139 = and i32 %31, -3
  %32 = ptrtoint ptr %status.i128 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i139, ptr %status.i128, align 4
  %33 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status2.i, align 4
  br label %if.end50.sink.split

if.else:                                          ; preds = %rcar_drif_channel_complete.exit
  %arrayidx41 = getelementptr %struct.rcar_drif, ptr %dma_async_param, i32 0, i32 6, i32 %rem
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i, align 4
  %and = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.else.if.end50_crit_edge, label %if.else.if.end50.sink.split_crit_edge

if.else.if.end50.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.sink.split

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50.sink.split:                              ; preds = %if.else.if.end50.sink.split_crit_edge, %if.then37
  %.sink = phi i32 [ %34, %if.then37 ], [ %36, %if.else.if.end50.sink.split_crit_edge ]
  %status.i.sink = phi ptr [ %status2.i, %if.then37 ], [ %status.i, %if.else.if.end50.sink.split_crit_edge ]
  %buf.sroa.7.0.ph = phi ptr [ %cond28, %if.then37 ], [ inttoptr (i32 -1 to ptr), %if.else.if.end50.sink.split_crit_edge ]
  %buf.sroa.0.1.ph = phi ptr [ %buf.sroa.0.0, %if.then37 ], [ %arrayidx41, %if.else.if.end50.sink.split_crit_edge ]
  %and48 = and i32 %.sink, -3
  %37 = ptrtoint ptr %status.i.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and48, ptr %status.i.sink, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.else.if.end50_crit_edge, %if.end33.if.end50_crit_edge
  %buf.sroa.7.0 = phi ptr [ %cond28, %if.end33.if.end50_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.else.if.end50_crit_edge ], [ %buf.sroa.7.0.ph, %if.end50.sink.split ]
  %buf.sroa.0.1 = phi ptr [ %buf.sroa.0.0, %if.end33.if.end50_crit_edge ], [ %arrayidx41, %if.else.if.end50_crit_edge ], [ %buf.sroa.0.1.ph, %if.end50.sink.split ]
  %overflow.0.off0 = phi i32 [ 5, %if.end33.if.end50_crit_edge ], [ 5, %if.else.if.end50_crit_edge ], [ 6, %if.end50.sink.split ]
  %38 = ptrtoint ptr %produced3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %produced3, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %produced3, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dma_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_dma_complete.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_dma_complete, %if.then60)) #11
          to label %do.end [label %if.then60], !srcloc !226

if.then60:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %v4l2_dev, align 4
  %num61 = getelementptr inbounds %struct.rcar_drif, ptr %dma_async_param, i32 0, i32 8
  %42 = ptrtoint ptr %num61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_dma_complete.__UNIQUE_ID_ddebug305, ptr noundef %41, ptr noundef nonnull @.str.61, i32 noundef %43, i32 noundef %39) #11
  br label %do.end

do.end:                                           ; preds = %if.then60, %if.end50
  %queued_bufs_lock.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #11
  %queued_bufs.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp10.not.i = icmp eq ptr %45, %queued_bufs.i
  %add.ptr.i = getelementptr i8, ptr %45, i32 -736
  %tobool.not37.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i143 = or i1 %cmp10.not.i, %tobool.not37.i
  br i1 %tobool.not.i143, label %do.body13.i, label %if.end23.i

do.body13.i:                                      ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_get_fbuf.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_dma_complete, %rcar_drif_get_fbuf.exit.thread)) #11
          to label %rcar_drif_get_fbuf.exit [label %rcar_drif_get_fbuf.exit.thread], !srcloc !226

rcar_drif_get_fbuf.exit.thread:                   ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %v4l2_dev.i, align 4
  %48 = ptrtoint ptr %produced3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %produced3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_get_fbuf.__UNIQUE_ID_ddebug304, ptr noundef %47, ptr noundef nonnull @.str.63, i32 noundef %49) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #11
  br label %cleanup

if.end23.i:                                       ; preds = %do.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end23.i.for.cond.preheader_crit_edge

if.end23.i.for.cond.preheader_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.end.i.i.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %45, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %for.cond.preheader

rcar_drif_get_fbuf.exit:                          ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end.i.i.i, %if.end23.i.for.cond.preheader_crit_edge
  %56 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #11
  %hwbuf_size = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 19
  %call68 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #11
  %58 = ptrtoint ptr %hwbuf_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwbuf_size, align 4
  %60 = ptrtoint ptr %buf.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf.sroa.0.1, align 4
  %62 = call ptr @memcpy(ptr %call68, ptr %61, i32 %59)
  %call68.1 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #11
  %63 = ptrtoint ptr %hwbuf_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hwbuf_size, align 4
  %add.ptr.1 = getelementptr i8, ptr %call68.1, i32 %64
  %65 = ptrtoint ptr %buf.sroa.7.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf.sroa.7.0, align 4
  %67 = call ptr @memcpy(ptr %add.ptr.1, ptr %66, i32 %64)
  %field = getelementptr i8, ptr %45, i32 -292
  %68 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %field, align 4
  %sequence = getelementptr i8, ptr %45, i32 -272
  %69 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %39, ptr %sequence, align 8
  %call.i = tail call i64 @ktime_get() #11
  %timestamp = getelementptr i8, ptr %45, i32 -712
  %70 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i, ptr %timestamp, align 8
  %num_planes.i = getelementptr i8, ptr %45, i32 -720
  %71 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not.i = icmp eq i32 %72, 0
  br i1 %cmp.not.i, label %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge, label %if.then.i145

for.cond.preheader.vb2_set_plane_payload.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i145:                                     ; preds = %for.cond.preheader
  %fmt = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 12
  %73 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.rcar_drif_format, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buffersize, align 4
  %length.i = getelementptr i8, ptr %45, i32 -648
  %77 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp1.i = icmp ult i32 %78, %76
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i145.if.end42.i_crit_edge

if.then.i145.if.end42.i_crit_edge:                ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i145
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !237

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %79 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i145.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %80, %if.then38.i ], [ %76, %if.then.i145.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %45, i32 -652
  %81 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef %overflow.0.off0) #11
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %rcar_drif_get_fbuf.exit, %rcar_drif_get_fbuf.exit.thread, %if.then31, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_notify_bound(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -1112
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 12
  %0 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %host_priv.i, align 4
  %ep = getelementptr i8, ptr %notifier, i32 48
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %subdev, ptr %ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_notify_bound.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_notify_bound, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -1104
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_notify_bound.__UNIQUE_ID_ddebug309, ptr noundef %3, ptr noundef nonnull @.str.79, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_notify_complete(ptr noundef %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -1112
  %ctrl_hdl = getelementptr i8, ptr %notifier, i32 -184
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl, i32 noundef 10, ptr noundef nonnull @rcar_drif_notify_complete._key, ptr noundef nonnull @.str.80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -1104
  %ctrl_handler = getelementptr i8, ptr %notifier, i32 -1004
  %0 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_hdl, ptr %ctrl_handler, align 4
  %call.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v4l2_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.81, i32 noundef %call.i) #14
  br label %error

if.end8:                                          ; preds = %if.end
  %ep = getelementptr i8, ptr %notifier, i32 48
  %3 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ep, align 4
  %ctrl_handler10 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %ctrl_handler10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_handler10, align 4
  %call11 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_hdl, ptr noundef %6, ptr noundef null, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l2_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.84, i32 noundef %call11) #14
  br label %error

if.end19:                                         ; preds = %if.end8
  %call.i42 = tail call ptr @video_device_alloc() #11
  %vdev.i = getelementptr i8, ptr %notifier, i32 -1108
  %9 = ptrtoint ptr %vdev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i42, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i, label %if.end19.error_crit_edge, label %if.end.i

if.end19.error_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %if.end19
  %name.i = getelementptr inbounds %struct.video_device, ptr %call.i42, i32 0, i32 12
  %10 = call ptr @memcpy(ptr %name.i, ptr @.str.86, i32 11)
  %11 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vdev.i, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rcar_drif_fops, ptr %fops.i, align 4
  %14 = load ptr, ptr %vdev.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.video_device, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rcar_drif_ioctl_ops, ptr %ioctl_ops.i, align 4
  %16 = load ptr, ptr %vdev.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @video_device_release, ptr %release.i, align 8
  %v4l2_mutex.i = getelementptr i8, ptr %notifier, i32 -368
  %18 = load ptr, ptr %vdev.i, align 4
  %lock.i = getelementptr inbounds %struct.video_device, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %v4l2_mutex.i, ptr %lock.i, align 8
  %vb_queue.i = getelementptr i8, ptr %notifier, i32 -976
  %20 = load ptr, ptr %vdev.i, align 4
  %queue.i = getelementptr inbounds %struct.video_device, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vb_queue.i, ptr %queue.i, align 8
  %vb_queue_mutex.i = getelementptr i8, ptr %notifier, i32 -276
  %22 = load ptr, ptr %vdev.i, align 4
  %queue10.i = getelementptr inbounds %struct.video_device, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %queue10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue10.i, align 8
  %lock11.i = getelementptr inbounds %struct.vb2_queue, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %lock11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vb_queue_mutex.i, ptr %lock11.i, align 4
  %26 = load ptr, ptr %vdev.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.video_device, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctrl_hdl, ptr %ctrl_handler.i, align 4
  %28 = load ptr, ptr %vdev.i, align 4
  %v4l2_dev14.i = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %v4l2_dev14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %v4l2_dev, ptr %v4l2_dev14.i, align 4
  %30 = load ptr, ptr %vdev.i, align 4
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 85000192, ptr %device_caps.i, align 8
  %32 = load ptr, ptr %vdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %32, i32 0, i32 5, i32 8
  %33 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %driver_data.i.i.i, align 4
  %34 = load ptr, ptr %vdev.i, align 4
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fops.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %34, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not.i, label %if.end.i.cleanup_crit_edge, label %if.then20.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vdev.i, align 4
  tail call void @video_device_release(ptr noundef %40) #11
  %41 = ptrtoint ptr %vdev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %vdev.i, align 4
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.87, i32 noundef %call.i.i) #14
  br label %error

error:                                            ; preds = %if.then20.i, %if.end19.error_crit_edge, %do.end16, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call11, %do.end16 ], [ %call.i.i, %if.then20.i ], [ -12, %if.end19.error_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_drif_notify_unbind(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %cmp.not = icmp eq ptr %1, %subdev
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -1104
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.92, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_hdl = getelementptr i8, ptr %notifier, i32 -184
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #11
  %ctrl_handler = getelementptr i8, ptr %notifier, i32 -1004
  %4 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ctrl_handler, align 4
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ep, align 4
  %vdev.i = getelementptr i8, ptr %notifier, i32 -1108
  %6 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev.i, align 4
  tail call void @video_unregister_device(ptr noundef %7) #11
  %8 = ptrtoint ptr %vdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vdev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_notify_unbind.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_notify_unbind, %if.then9)) #11
          to label %cleanup [label %if.then9], !srcloc !226

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev2 = getelementptr i8, ptr %notifier, i32 -1104
  %9 = ptrtoint ptr %v4l2_dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_dev2, align 4
  %name12 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_notify_unbind.__UNIQUE_ID_ddebug310, ptr noundef %10, ptr noundef nonnull @.str.94, ptr noundef %name12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %vdev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #11
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %name7 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.89, ptr noundef %name7)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_drif_enum_fmt_sdr_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [3 x %struct.rcar_drif_format], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_g_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt1, align 4
  %7 = load ptr, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.rcar_drif_format, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffersize, align 4
  %buffersize5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %buffersize5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buffersize5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_s_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 3, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 942752592, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 942752592
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 808600400, i32 %5)
  %switch.selectcmp64 = icmp eq i32 %5, 808600400
  %switch.select65 = select i1 %switch.selectcmp64, i32 2, i32 %switch.select
  %arrayidx9 = getelementptr [3 x %struct.rcar_drif_format], ptr @formats, i32 0, i32 %switch.select65
  %fmt10 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %fmt10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx9, ptr %fmt10, align 4
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %buffersize = getelementptr [3 x %struct.rcar_drif_format], ptr @formats, i32 0, i32 %switch.select65, i32 1
  %10 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffersize, align 4
  %buffersize17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %buffersize17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buffersize17, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = call ptr @memset(ptr %reserved, i32 0, i32 24)
  %num_ch = getelementptr [3 x %struct.rcar_drif_format], ptr @formats, i32 0, i32 %switch.select65, i32 4
  %14 = ptrtoint ptr %num_ch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ch, align 4
  %num_hw_ch = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %num_hw_ch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_hw_ch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp20 = icmp ult i32 %15, %17
  br i1 %cmp20, label %for.cond.preheader.do.body_crit_edge, label %if.else

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %hw_ch_mask = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %hw_ch_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_ch_mask, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %for.cond.preheader.do.body_crit_edge
  %.sink62 = phi i32 [ %19, %if.else ], [ 1, %for.cond.preheader.do.body_crit_edge ]
  %.sink = phi i32 [ %17, %if.else ], [ %15, %for.cond.preheader.do.body_crit_edge ]
  %20 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink62, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_drif_s_fmt_sdr_cap.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_drif_s_fmt_sdr_cap, %if.then31)) #11
          to label %cleanup [label %if.then31], !srcloc !226

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %v4l2_dev = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_dev, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %20, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_drif_s_fmt_sdr_cap.__UNIQUE_ID_ddebug308, ptr noundef %25, ptr noundef nonnull @.str.91, i32 noundef %switch.select65, i32 noundef %27, i32 noundef %29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_try_fmt_sdr_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.inc.2 [
    i32 909198160, label %entry.if.then_crit_edge
    i32 942752592, label %if.then.fold.split
    i32 808600400, label %if.then.fold.split21
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split21, %if.then.fold.split, %entry.if.then_crit_edge
  %i.019.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split21 ]
  %buffersize = getelementptr [3 x %struct.rcar_drif_format], ptr @formats, i32 0, i32 %i.019.lcssa, i32 1
  %3 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffersize, align 4
  %buffersize5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %buffersize5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buffersize5, align 4
  br label %cleanup

for.inc.2:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 909198160, ptr %fmt, align 4
  %buffersize9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %buffersize9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %buffersize9, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = call ptr @memset(ptr %reserved, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

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
define internal i32 @rcar_drif_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ep = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_tuner, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_tuner9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %g_tuner9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_tuner9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %vt) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ep = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_tuner, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_tuner9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %s_tuner9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_tuner9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %vt) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ep = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_frequency, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_frequency9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %g_frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_frequency9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %f) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ep = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_frequency, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_frequency9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %s_frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_frequency9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %f) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_drif_enum_freq_bands(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ep = getelementptr inbounds %struct.rcar_drif_sdr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %enum_freq_bands = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %enum_freq_bands to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enum_freq_bands, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %enum_freq_bands9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %enum_freq_bands9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enum_freq_bands9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %band) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_drif_suspend(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_drif_resume(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !152, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !168, !169, !171, !173, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !194, !196, !198, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !214}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__initcall__kmod_rcar_drif__312_1487_rcar_drif_driver_init6, !1, !"__initcall__kmod_rcar_drif__312_1487_rcar_drif_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar_drif.c", i32 1487, i32 1}
!2 = !{ptr @__exitcall_rcar_drif_driver_exit, !1, !"__exitcall_rcar_drif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description313, !4, !"__UNIQUE_ID_description313", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rcar_drif.c", i32 1489, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias314, !6, !"__UNIQUE_ID_alias314", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rcar_drif.c", i32 1490, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/rcar_drif.c", i32 1491, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author317, !11, !"__UNIQUE_ID_author317", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rcar_drif.c", i32 1492, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rcar_drif.c", i32 1479, i32 11}
!14 = !{ptr @rcar_drif_driver, !15, !"rcar_drif_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rcar_drif.c", i32 1477, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rcar_drif.c", i32 1390, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/rcar_drif.c", i32 1393, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rcar_drif_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rcar_drif_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/rcar_drif.c", i32 1252, i32 40}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/rcar_drif.c", i32 1244, i32 50}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/rcar_drif.c", i32 1269, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rcar_drif_bond_available._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rcar_drif_bond_available._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/rcar_drif.c", i32 1284, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rcar_drif_bond_available._entry.11, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rcar_drif_bond_available._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/rcar_drif.c", i32 1302, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rcar_drif_sdr_probe._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rcar_drif_sdr_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rcar_drif_sdr_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/rcar_drif.c", i32 1309, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rcar_drif_sdr_probe.__key.18, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/rcar_drif.c", i32 1310, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rcar_drif_sdr_probe.__key.20, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/rcar_drif.c", i32 1311, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rcar_drif_sdr_probe.__key.22, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/rcar_drif.c", i32 1312, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/rcar_drif.c", i32 1327, i32 3}
!59 = !{ptr @rcar_drif_sdr_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rcar_drif_sdr_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/rcar_drif.c", i32 1334, i32 3}
!63 = !{ptr @rcar_drif_sdr_probe._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rcar_drif_sdr_probe._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/rcar_drif.c", i32 1351, i32 3}
!67 = !{ptr @rcar_drif_sdr_probe._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rcar_drif_sdr_probe._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/rcar_drif.c", i32 894, i32 4}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rcar_drif_set_default_format.__UNIQUE_ID_ddebug307, !70, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!73 = !{ptr @formats, !74, !"formats", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/rcar_drif.c", i32 154, i32 38}
!75 = !{ptr @rcar_drif_vb2_ops, !76, !"rcar_drif_vb2_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/rcar_drif.c", i32 862, i32 29}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/rcar_drif.c", i32 438, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rcar_drif_queue_setup.__UNIQUE_ID_ddebug301, !78, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/rcar_drif.c", i32 801, i32 2}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rcar_drif_start_streaming.__UNIQUE_ID_ddebug306, !82, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/rcar_drif.c", i32 334, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rcar_drif_set_mdr1.__UNIQUE_ID_ddebug298, !86, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/rcar_drif.c", i32 344, i32 2}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rcar_drif_set_format.__UNIQUE_ID_ddebug299, !90, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/rcar_drif.c", i32 349, i32 3}
!95 = !{ptr @rcar_drif_set_format._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rcar_drif_set_format._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/rcar_drif.c", i32 368, i32 3}
!99 = !{ptr @rcar_drif_set_format.__UNIQUE_ID_ddebug300, !98, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/rcar_drif.c", i32 277, i32 48}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/rcar_drif.c", i32 281, i32 5}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rcar_drif_alloc_dmachannels._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @rcar_drif_alloc_dmachannels._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/rcar_drif.c", i32 294, i32 4}
!109 = !{ptr @rcar_drif_alloc_dmachannels._entry.48, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rcar_drif_alloc_dmachannels._entry_ptr.50, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/rcar_drif.c", i32 408, i32 4}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rcar_drif_request_buf._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rcar_drif_request_buf._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/rcar_drif.c", i32 720, i32 3}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rcar_drif_start_channel._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rcar_drif_start_channel._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/rcar_drif.c", i32 611, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rcar_drif_qbuf._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rcar_drif_qbuf._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/rcar_drif.c", i32 620, i32 3}
!128 = !{ptr @rcar_drif_qbuf._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @rcar_drif_qbuf._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/rcar_drif.c", i32 576, i32 2}
!132 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @rcar_drif_dma_complete.__UNIQUE_ID_ddebug305, !131, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/rcar_drif.c", i32 473, i32 3}
!136 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @rcar_drif_get_fbuf.__UNIQUE_ID_ddebug304, !135, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!140 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/rcar_drif.c", i32 653, i32 4}
!143 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rcar_drif_enable_rx._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @rcar_drif_enable_rx._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/rcar_drif.c", i32 680, i32 4}
!148 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @rcar_drif_disable_rx._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @rcar_drif_disable_rx._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/rcar_drif.c", i32 452, i32 2}
!156 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @rcar_drif_buf_queue.__UNIQUE_ID_ddebug302, !155, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/rcar_drif.c", i32 1228, i32 3}
!160 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @rcar_drif_parse_subdevs._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @rcar_drif_parse_subdevs._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/rcar_drif.c", i32 1199, i32 40}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/rcar_drif.c", i32 1205, i32 2}
!167 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @rcar_drif_get_ep_properties.__UNIQUE_ID_ddebug311, !166, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!169 = !{ptr @rcar_drif_notify_ops, !170, !"rcar_drif_notify_ops", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/rcar_drif.c", i32 1182, i32 52}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/rcar_drif.c", i32 1112, i32 2}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @rcar_drif_notify_bound.__UNIQUE_ID_ddebug309, !172, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!175 = !{ptr @rcar_drif_notify_complete._key, !176, !"_key", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/rcar_drif.c", i32 1152, i32 8}
!177 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/rcar_drif.c", i32 1159, i32 3}
!180 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @rcar_drif_notify_complete._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @rcar_drif_notify_complete._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/rcar_drif.c", i32 1166, i32 3}
!185 = !{ptr @rcar_drif_notify_complete._entry.83, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @rcar_drif_notify_complete._entry_ptr.85, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/rcar_drif.c", i32 1072, i32 53}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/rcar_drif.c", i32 1090, i32 3}
!191 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @rcar_drif_sdr_register._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @rcar_drif_sdr_register._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @rcar_drif_fops, !195, !"rcar_drif_fops", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/rcar_drif.c", i32 1053, i32 42}
!196 = !{ptr @rcar_drif_ioctl_ops, !197, !"rcar_drif_ioctl_ops", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/rcar_drif.c", i32 1025, i32 36}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/rcar_drif.c", i32 878, i32 49}
!200 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/rcar_drif.c", i32 959, i32 2}
!202 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @rcar_drif_s_fmt_sdr_cap.__UNIQUE_ID_ddebug308, !201, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/rcar_drif.c", i32 1126, i32 3}
!206 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @rcar_drif_notify_unbind._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @rcar_drif_notify_unbind._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/rcar_drif.c", i32 1136, i32 2}
!211 = !{ptr @rcar_drif_notify_unbind.__UNIQUE_ID_ddebug310, !210, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!212 = !{ptr @rcar_drif_of_table, !213, !"rcar_drif_of_table", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/rcar_drif.c", i32 1470, i32 34}
!214 = !{ptr @rcar_drif_pm_ops, !215, !"rcar_drif_pm_ops", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/rcar_drif.c", i32 1467, i32 8}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{!"auto-init"}
!226 = !{i64 2148760470, i64 2148760475, i64 2148760488, i64 2148760532, i64 2148760566, i64 2148760587}
!227 = !{i64 2156595536}
!228 = !{i64 6286870}
!229 = !{i64 6287288}
!230 = !{i64 2156655399}
!231 = !{i64 2156655877}
!232 = !{i64 2156596200}
!233 = !{i64 2156645704}
!234 = !{i64 2156646214}
!235 = !{i64 2156650811}
!236 = !{i64 2156651321}
!237 = !{!"branch_weights", i32 2000, i32 1}
