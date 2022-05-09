; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_drv.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.97, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.anon.97 = type { %struct.spinlock, %struct.anon.98, i32, i32, i8 }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_video = type { %struct.list_head, ptr, ptr, %struct.video_device, i32, %struct.media_pad, %struct.mutex, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head }

@vsp1_reset_wpf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset wpf.%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vsp1_reset_wpf\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_drv.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_reset_wpf._entry_ptr = internal global ptr @vsp1_reset_wpf._entry, section ".printk_index", align 4
@__initcall__kmod_vsp1__301_922_vsp1_platform_driver_init6 = internal global ptr @vsp1_platform_driver_init, section ".initcall6.init", align 4
@vsp1_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vsp1_probe, ptr @vsp1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vsp1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vsp1_platform_driver_exit = internal global ptr @vsp1_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias302 = internal constant [16 x i8] c"vsp1.alias=vsp1\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [65 x i8] c"vsp1.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [37 x i8] c"vsp1.description=Renesas VSP1 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [43 x i8] c"vsp1.file=drivers/media/platform/vsp1/vsp1\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [17 x i8] c"vsp1.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsp1\00", [27 x i8] zeroinitializer }, align 32
@vsp1_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vsp1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vsp2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@vsp1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vsp1_pm_suspend, ptr @vsp1_pm_resume, ptr @vsp1_pm_suspend, ptr @vsp1_pm_resume, ptr @vsp1_pm_suspend, ptr @vsp1_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_pm_runtime_suspend, ptr @vsp1_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@vsp1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 818, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing IRQ\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vsp1_probe\00", [21 x i8] zeroinitializer }, align 32
@vsp1_probe._entry_ptr = internal global ptr @vsp1_probe._entry, section ".printk_index", align 4
@vsp1_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 825, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@vsp1_probe._entry_ptr.10 = internal global ptr @vsp1_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"renesas,fcp\00", [20 x i8] zeroinitializer }, align 32
@vsp1_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.2, ptr @.str.12, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FCP not found (%ld)\0A\00", [43 x i8] zeroinitializer }, align 32
@vsp1_device_infos = internal constant { [14 x %struct.vsp1_device_info], [152 x i8] } { [14 x %struct.vsp1_device_info] [%struct.vsp1_device_info { i32 2304, ptr @.str.20, i32 2, i32 446, i32 0, i32 5, i32 3, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 2560, ptr @.str.21, i32 2, i32 44, i32 0, i32 5, i32 3, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 2816, ptr @.str.22, i32 2, i32 138, i32 1, i32 4, i32 1, i32 0, i32 1, i32 4, i8 1 }, %struct.vsp1_device_info { i32 3072, ptr @.str.20, i32 2, i32 446, i32 0, i32 5, i32 1, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 4608, ptr @.str.23, i32 2, i32 62, i32 0, i32 4, i32 1, i32 0, i32 4, i32 4, i8 1 }, %struct.vsp1_device_info { i32 4864, ptr @.str.24, i32 2, i32 26, i32 1, i32 4, i32 1, i32 0, i32 1, i32 4, i8 1 }, %struct.vsp1_device_info { i32 5120, ptr @.str.25, i32 3, i32 502, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i8 1 }, %struct.vsp1_device_info { i32 5376, ptr @.str.26, i32 3, i32 40, i32 0, i32 5, i32 0, i32 0, i32 1, i32 5, i8 1 }, %struct.vsp1_device_info { i32 5632, ptr @.str.27, i32 3, i32 186, i32 0, i32 5, i32 0, i32 0, i32 1, i32 5, i8 1 }, %struct.vsp1_device_info { i32 6656, ptr @.str.28, i32 3, i32 544, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i8 1 }, %struct.vsp1_device_info { i32 5888, ptr @.str.29, i32 3, i32 1064, i32 1, i32 5, i32 0, i32 1, i32 2, i32 5, i8 0 }, %struct.vsp1_device_info { i32 6144, ptr @.str.29, i32 3, i32 520, i32 1, i32 5, i32 0, i32 1, i32 1, i32 5, i8 0 }, %struct.vsp1_device_info { i32 6400, ptr @.str.30, i32 3, i32 1544, i32 2, i32 5, i32 0, i32 2, i32 2, i32 5, i8 0 }, %struct.vsp1_device_info { i32 7168, ptr @.str.29, i32 3, i32 1032, i32 1, i32 5, i32 0, i32 2, i32 1, i32 5, i8 0 }], [152 x i8] zeroinitializer }, align 32
@vsp1_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 870, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported IP version 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@vsp1_probe._entry_ptr.15 = internal global ptr @vsp1_probe._entry.13, section ".printk_index", align 4
@vsp1_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.2, ptr @.str.16, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IP version 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@vsp1_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 880, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create entities\0A\00", [37 x i8] zeroinitializer }, align 32
@vsp1_probe._entry_ptr.19 = internal global ptr @vsp1_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSP1-S\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSP1-R\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSP1-D\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSP1V-S\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSP1V-D\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSP2-I\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSP2-BD\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSP2-BC\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSP2-BS\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSP2-D\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSP2-DL\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vsp1_create_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"V4L2 device registration failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vsp1_create_entities\00", [43 x i8] zeroinitializer }, align 32
@vsp1_create_entities._entry_ptr = internal global ptr @vsp1_create_entities._entry, section ".printk_index", align 4
@switch.table.vsp1_probe = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @vsp1_device_infos, ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 1), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 2), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 3), ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr @vsp1_device_infos, ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 4), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 5), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 6), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 7), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 8), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 10), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 11), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 12), ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 9), ptr @vsp1_device_infos, ptr getelementptr inbounds ([14 x %struct.vsp1_device_info], ptr @vsp1_device_infos, i32 0, i32 13)], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 7, i64 9, i64 13]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 502, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"vsp1_platform_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 912, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 916, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"vsp1_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 905, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"vsp1_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 635, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 818, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 825, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 830, i32 49 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 835, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"vsp1_device_infos\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 644, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 869, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 875, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 880, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 647, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 659, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 669, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 692, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 703, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 714, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 725, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 734, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 744, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 752, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 772, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 246, i32 51 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_drv.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 262, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"switch.table.vsp1_probe\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_vsp1_platform_driver_exit, ptr @__initcall__kmod_vsp1__301_922_vsp1_platform_driver_init6, ptr @vsp1_create_entities._entry, ptr @vsp1_create_entities._entry_ptr, ptr @vsp1_platform_driver_exit, ptr @vsp1_probe._entry, ptr @vsp1_probe._entry.13, ptr @vsp1_probe._entry.17, ptr @vsp1_probe._entry.8, ptr @vsp1_probe._entry_ptr, ptr @vsp1_probe._entry_ptr.10, ptr @vsp1_probe._entry_ptr.15, ptr @vsp1_probe._entry_ptr.19, ptr @vsp1_reset_wpf._entry, ptr @vsp1_reset_wpf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vsp1_platform_driver, ptr @.str.5, ptr @vsp1_of_match, ptr @vsp1_pm_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @vsp1_device_infos, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @switch.table.vsp1_probe], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_reset_wpf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_device_infos to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_create_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vsp1_probe to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_reset_wpf(ptr nocapture noundef readonly %vsp1, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %add = add i32 %index, 8
  %shl = shl nuw i32 1, %add
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl1 = shl nuw i32 1, %index
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %6) #8, !srcloc !96
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 56
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !93
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5 = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.1 = getelementptr i8, ptr %12, i32 56
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.1) #8, !srcloc !93
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.1 = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1)
  %tobool6.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool6.not.1, label %if.end8.cleanup_crit_edge, label %if.end8.1

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.1:                                        ; preds = %if.end8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.2 = getelementptr i8, ptr %16, i32 56
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.2) #8, !srcloc !93
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.2 = and i32 %18, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2)
  %tobool6.not.2 = icmp eq i32 %and5.2, 0
  br i1 %tobool6.not.2, label %if.end8.1.cleanup_crit_edge, label %if.end8.2

if.end8.1.cleanup_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.2:                                        ; preds = %if.end8.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.3 = getelementptr i8, ptr %20, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.3) #8, !srcloc !93
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.3 = and i32 %22, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3)
  %tobool6.not.3 = icmp eq i32 %and5.3, 0
  br i1 %tobool6.not.3, label %if.end8.2.cleanup_crit_edge, label %if.end8.3

if.end8.2.cleanup_crit_edge:                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.3:                                        ; preds = %if.end8.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.4 = getelementptr i8, ptr %24, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.4) #8, !srcloc !93
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.4 = and i32 %26, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.4)
  %tobool6.not.4 = icmp eq i32 %and5.4, 0
  br i1 %tobool6.not.4, label %if.end8.3.cleanup_crit_edge, label %if.end8.4

if.end8.3.cleanup_crit_edge:                      ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.4:                                        ; preds = %if.end8.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.5 = getelementptr i8, ptr %28, i32 56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.5) #8, !srcloc !93
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.5 = and i32 %30, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.5)
  %tobool6.not.5 = icmp eq i32 %and5.5, 0
  br i1 %tobool6.not.5, label %if.end8.4.cleanup_crit_edge, label %if.end8.5

if.end8.4.cleanup_crit_edge:                      ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.5:                                        ; preds = %if.end8.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.6 = getelementptr i8, ptr %32, i32 56
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.6) #8, !srcloc !93
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.6 = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.6)
  %tobool6.not.6 = icmp eq i32 %and5.6, 0
  br i1 %tobool6.not.6, label %if.end8.5.cleanup_crit_edge, label %if.end8.6

if.end8.5.cleanup_crit_edge:                      ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.6:                                        ; preds = %if.end8.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.7 = getelementptr i8, ptr %36, i32 56
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.7) #8, !srcloc !93
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.7 = and i32 %38, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.7)
  %tobool6.not.7 = icmp eq i32 %and5.7, 0
  br i1 %tobool6.not.7, label %if.end8.6.cleanup_crit_edge, label %if.end8.7

if.end8.6.cleanup_crit_edge:                      ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.7:                                        ; preds = %if.end8.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.8 = getelementptr i8, ptr %40, i32 56
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.8) #8, !srcloc !93
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.8 = and i32 %42, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.8)
  %tobool6.not.8 = icmp eq i32 %and5.8, 0
  br i1 %tobool6.not.8, label %if.end8.7.cleanup_crit_edge, label %if.end8.8

if.end8.7.cleanup_crit_edge:                      ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.8:                                        ; preds = %if.end8.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25.9 = getelementptr i8, ptr %44, i32 56
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.9) #8, !srcloc !93
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and5.9 = and i32 %46, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.9)
  %tobool6.not.9 = icmp eq i32 %and5.9, 0
  br i1 %tobool6.not.9, label %if.end8.8.cleanup_crit_edge, label %if.end8.9

if.end8.8.cleanup_crit_edge:                      ; preds = %if.end8.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.9:                                        ; preds = %if.end8.8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %47 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vsp1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str, i32 noundef %index) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8.9, %if.end8.8.cleanup_crit_edge, %if.end8.7.cleanup_crit_edge, %if.end8.6.cleanup_crit_edge, %if.end8.5.cleanup_crit_edge, %if.end8.4.cleanup_crit_edge, %if.end8.3.cleanup_crit_edge, %if.end8.2.cleanup_crit_edge, %if.end8.1.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end8.9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.8.cleanup_crit_edge ], [ 0, %if.end8.7.cleanup_crit_edge ], [ 0, %if.end8.6.cleanup_crit_edge ], [ 0, %if.end8.5.cleanup_crit_edge ], [ 0, %if.end8.4.cleanup_crit_edge ], [ 0, %if.end8.3.cleanup_crit_edge ], [ 0, %if.end8.2.cleanup_crit_edge ], [ 0, %if.end8.1.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_device_get(ptr nocapture noundef readonly %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !99
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_device_put(ptr nocapture noundef readonly %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_platform_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vsp1_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsp1_platform_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @vsp1_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 896, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %entities = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 20
  %1 = ptrtoint ptr %entities to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entities, ptr %entities, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entities, ptr %prev.i, align 4
  %videos = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 21
  %3 = ptrtoint ptr %videos to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %videos, ptr %videos, align 4
  %prev.i166 = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %videos, ptr %prev.i166, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %mmio = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call10, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i167 = phi ptr [ %13, %if.end.i ], [ %11, %if.end13.dev_name.exit_crit_edge ]
  %call.i168 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @vsp1_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i167, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp18 = icmp slt i32 %call.i168, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end24:                                         ; preds = %dev_name.exit
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %16 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i169 = call i32 @__of_parse_phandle_with_args(ptr noundef %15, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end24
  %17 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then28

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then28:                                        ; preds = %of_parse_phandle.exit
  %call29 = call ptr @rcar_fcp_get(ptr noundef nonnull %18) #8
  %fcp = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %fcp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call29, ptr %fcp, align 8
  call void @of_node_put(ptr noundef nonnull %18) #8
  %20 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcp, align 8
  %cmp.i173 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.body33, label %if.end47

do.body33:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsp1_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsp1_probe, %if.then38)) #8
          to label %do.end44 [label %if.then38], !srcloc !100

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcp, align 8
  %24 = ptrtoint ptr %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsp1_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %24) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %do.body33
  %25 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcp, align 8
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = call ptr @rcar_fcp_get_device(ptr noundef %21) #8
  br label %if.end52

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end47
  %.sink = phi ptr [ %29, %if.else ], [ %call49, %if.end47 ]
  %bus_master51 = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %bus_master51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink, ptr %bus_master51, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end57

if.then.i.i:                                      ; preds = %if.end52
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then102_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then102_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !99
  br label %if.then102

if.end57:                                         ; preds = %if.end52
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 16128
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !93
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %version = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %version, align 8
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 8
  %call.i.i174 = call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 4) #8
  %41 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %version, align 8
  %and = and i32 %42, 65280
  %43 = add nsw i32 %and, -2304
  %44 = lshr exact i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %43)
  %45 = icmp ult i32 %43, 5120
  br i1 %45, label %switch.hole_check, label %if.end57.for.end_crit_edge

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

switch.hole_check:                                ; preds = %if.end57
  %switch.shifted = lshr i32 785935, %44
  %46 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %switch.lobit.not = icmp eq i32 %46, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.end_crit_edge, label %switch.lookup

switch.hole_check.for.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.vsp1_probe, i32 0, i32 %44
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %info = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %switch.load, ptr %info, align 4
  br label %for.end

for.end:                                          ; preds = %switch.lookup, %switch.hole_check.for.end_crit_edge, %if.end57.for.end_crit_edge
  %info66 = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info66, align 4
  %tobool67.not = icmp eq ptr %50, null
  br i1 %tobool67.not, label %do.end71, label %do.body75

do.end71:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %version, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %52) #11
  br label %if.then102

do.body75:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsp1_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsp1_probe, %if.then87)) #8
          to label %do.end92 [label %if.then87], !srcloc !100

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %version, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsp1_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %54) #8
  br label %do.end92

do.end92:                                         ; preds = %if.then87, %do.body75
  %media_dev.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 23
  %v4l2_dev.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 22
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 8
  %57 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %media_dev.i, align 8
  %58 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %version, align 8
  %hw_revision.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 23, i32 6
  %60 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %hw_revision.i, align 8
  %model.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 23, i32 2
  %61 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info66, align 4
  %model2.i = getelementptr inbounds %struct.vsp1_device_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %model2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %model2.i, align 4
  %call.i175 = call i32 @strscpy(ptr noundef %model.i, ptr noundef %64, i32 noundef 32) #8
  %bus_info.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 23, i32 5
  %65 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %media_dev.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end92.dev_name.exit.i_crit_edge

do.end92.dev_name.exit.i_crit_edge:               ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end92.dev_name.exit.i_crit_edge
  %retval.0.i.i176 = phi ptr [ %70, %if.end.i.i ], [ %68, %do.end92.dev_name.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info.i, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i176) #8
  call void @media_device_init(ptr noundef %media_dev.i) #8
  %link_setup.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 24, i32 1
  %71 = ptrtoint ptr %link_setup.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @vsp1_entity_link_setup, ptr %link_setup.i, align 4
  %72 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info66, align 4
  %uapi.i = getelementptr inbounds %struct.vsp1_device_info, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %uapi.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %uapi.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i177 = icmp eq i8 %75, 0
  br i1 %tobool.not.i177, label %dev_name.exit.i.if.end.i179_crit_edge, label %if.then.i

dev_name.exit.i.if.end.i179_crit_edge:            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i179

if.then.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %link_validate.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 24, i32 2
  %76 = ptrtoint ptr %link_validate.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @v4l2_subdev_link_validate, ptr %link_validate.i, align 8
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.then.i, %dev_name.exit.i.if.end.i179_crit_edge
  %mdev9.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 22, i32 1
  %77 = ptrtoint ptr %mdev9.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %media_dev.i, ptr %mdev9.i, align 4
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 8
  %call11.i = call i32 @v4l2_device_register(ptr noundef %79, ptr noundef %v4l2_dev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i178 = icmp slt i32 %call11.i, 0
  br i1 %cmp.i178, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.32, i32 noundef %call11.i) #11
  br label %do.end98

if.end14.i:                                       ; preds = %if.end.i179
  %82 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %info66, align 4
  %features.i = getelementptr inbounds %struct.vsp1_device_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %features.i, align 4
  %and.i = and i32 %85, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end27.i_crit_edge, label %if.then17.i

if.end14.i.if.end27.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then17.i:                                      ; preds = %if.end14.i
  %call18.i = call ptr @vsp1_brx_create(ptr noundef nonnull %call.i, i32 noundef 0) #8
  %brs.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 6
  %86 = ptrtoint ptr %brs.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call18.i, ptr %brs.i, align 8
  %cmp.i.i180 = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i180, label %if.then21.i, label %if.end24.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %call18.i to i32
  br label %done.i

if.end24.i:                                       ; preds = %if.then17.i
  %list_dev.i = getelementptr inbounds %struct.vsp1_entity, ptr %call18.i, i32 0, i32 6
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev.i, ptr noundef %89, ptr noundef %entities) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.i.if.end27.i_crit_edge

if.end24.i.if.end27.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %list_dev.i, ptr %prev.i, align 4
  %91 = ptrtoint ptr %list_dev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %entities, ptr %list_dev.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vsp1_entity, ptr %call18.i, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %list_dev.i, ptr %89, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i.i.i, %if.end24.i.if.end27.i_crit_edge, %if.end14.i.if.end27.i_crit_edge
  %94 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %info66, align 4
  %features29.i = getelementptr inbounds %struct.vsp1_device_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %features29.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %features29.i, align 4
  %and30.i = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end27.i.if.end44.i_crit_edge, label %if.then32.i

if.end27.i.if.end44.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then32.i:                                      ; preds = %if.end27.i
  %call33.i = call ptr @vsp1_brx_create(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %bru.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 7
  %98 = ptrtoint ptr %bru.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call33.i, ptr %bru.i, align 4
  %cmp.i502.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i502.i, label %if.then36.i, label %if.end39.i

if.then36.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %call33.i to i32
  br label %done.i

if.end39.i:                                       ; preds = %if.then32.i
  %list_dev42.i = getelementptr inbounds %struct.vsp1_entity, ptr %call33.i, i32 0, i32 6
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i, align 4
  %call.i.i504.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev42.i, ptr noundef %101, ptr noundef %entities) #8
  br i1 %call.i.i504.i, label %if.end.i.i506.i, label %if.end39.i.if.end44.i_crit_edge

if.end39.i.if.end44.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.end.i.i506.i:                                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %list_dev42.i, ptr %prev.i, align 4
  %103 = ptrtoint ptr %list_dev42.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %entities, ptr %list_dev42.i, align 4
  %prev3.i.i505.i = getelementptr inbounds %struct.vsp1_entity, ptr %call33.i, i32 0, i32 6, i32 1
  %104 = ptrtoint ptr %prev3.i.i505.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i505.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %list_dev42.i, ptr %101, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end.i.i506.i, %if.end39.i.if.end44.i_crit_edge, %if.end27.i.if.end44.i_crit_edge
  %106 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info66, align 4
  %features46.i = getelementptr inbounds %struct.vsp1_device_info, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %features46.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %features46.i, align 4
  %and47.i = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end44.i.if.end61.i_crit_edge, label %if.then49.i

if.end44.i.if.end61.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then49.i:                                      ; preds = %if.end44.i
  %call50.i = call ptr @vsp1_clu_create(ptr noundef nonnull %call.i) #8
  %clu.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 8
  %110 = ptrtoint ptr %clu.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call50.i, ptr %clu.i, align 8
  %cmp.i508.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i508.i, label %if.then53.i, label %if.end56.i

if.then53.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %call50.i to i32
  br label %done.i

if.end56.i:                                       ; preds = %if.then49.i
  %list_dev59.i = getelementptr inbounds %struct.vsp1_entity, ptr %call50.i, i32 0, i32 6
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i, align 4
  %call.i.i510.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev59.i, ptr noundef %113, ptr noundef %entities) #8
  br i1 %call.i.i510.i, label %if.end.i.i512.i, label %if.end56.i.if.end61.i_crit_edge

if.end56.i.if.end61.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.end.i.i512.i:                                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %list_dev59.i, ptr %prev.i, align 4
  %115 = ptrtoint ptr %list_dev59.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %entities, ptr %list_dev59.i, align 4
  %prev3.i.i511.i = getelementptr inbounds %struct.vsp1_entity, ptr %call50.i, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %prev3.i.i511.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i511.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %list_dev59.i, ptr %113, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end.i.i512.i, %if.end56.i.if.end61.i_crit_edge, %if.end44.i.if.end61.i_crit_edge
  %call62.i = call ptr @vsp1_hsit_create(ptr noundef nonnull %call.i, i1 noundef zeroext true) #8
  %hsi.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 11
  %118 = ptrtoint ptr %hsi.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call62.i, ptr %hsi.i, align 4
  %cmp.i514.i = icmp ugt ptr %call62.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i514.i, label %if.then65.i, label %if.end68.i

if.then65.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %call62.i to i32
  br label %done.i

if.end68.i:                                       ; preds = %if.end61.i
  %list_dev71.i = getelementptr inbounds %struct.vsp1_entity, ptr %call62.i, i32 0, i32 6
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i, align 4
  %call.i.i516.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev71.i, ptr noundef %121, ptr noundef %entities) #8
  br i1 %call.i.i516.i, label %if.end.i.i518.i, label %if.end68.i.list_add_tail.exit519.i_crit_edge

if.end68.i.list_add_tail.exit519.i_crit_edge:     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit519.i

if.end.i.i518.i:                                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %list_dev71.i, ptr %prev.i, align 4
  %123 = ptrtoint ptr %list_dev71.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %entities, ptr %list_dev71.i, align 4
  %prev3.i.i517.i = getelementptr inbounds %struct.vsp1_entity, ptr %call62.i, i32 0, i32 6, i32 1
  %124 = ptrtoint ptr %prev3.i.i517.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i517.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list_dev71.i, ptr %121, align 4
  br label %list_add_tail.exit519.i

list_add_tail.exit519.i:                          ; preds = %if.end.i.i518.i, %if.end68.i.list_add_tail.exit519.i_crit_edge
  %call73.i = call ptr @vsp1_hsit_create(ptr noundef nonnull %call.i, i1 noundef zeroext false) #8
  %hst.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 12
  %126 = ptrtoint ptr %hst.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call73.i, ptr %hst.i, align 8
  %cmp.i520.i = icmp ugt ptr %call73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i520.i, label %if.then76.i, label %if.end79.i

if.then76.i:                                      ; preds = %list_add_tail.exit519.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %call73.i to i32
  br label %done.i

if.end79.i:                                       ; preds = %list_add_tail.exit519.i
  %list_dev82.i = getelementptr inbounds %struct.vsp1_entity, ptr %call73.i, i32 0, i32 6
  %128 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i, align 4
  %call.i.i522.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev82.i, ptr noundef %129, ptr noundef %entities) #8
  br i1 %call.i.i522.i, label %if.end.i.i524.i, label %if.end79.i.list_add_tail.exit525.i_crit_edge

if.end79.i.list_add_tail.exit525.i_crit_edge:     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit525.i

if.end.i.i524.i:                                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %list_dev82.i, ptr %prev.i, align 4
  %131 = ptrtoint ptr %list_dev82.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %entities, ptr %list_dev82.i, align 4
  %prev3.i.i523.i = getelementptr inbounds %struct.vsp1_entity, ptr %call73.i, i32 0, i32 6, i32 1
  %132 = ptrtoint ptr %prev3.i.i523.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev3.i.i523.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %list_dev82.i, ptr %129, align 4
  br label %list_add_tail.exit525.i

list_add_tail.exit525.i:                          ; preds = %if.end.i.i524.i, %if.end79.i.list_add_tail.exit525.i_crit_edge
  %134 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %info66, align 4
  %features85.i = getelementptr inbounds %struct.vsp1_device_info, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %features85.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %features85.i, align 4
  %and86.i = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %list_add_tail.exit525.i.if.end103.i_crit_edge, label %land.lhs.true.i

list_add_tail.exit525.i.if.end103.i_crit_edge:    ; preds = %list_add_tail.exit525.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

land.lhs.true.i:                                  ; preds = %list_add_tail.exit525.i
  %uapi89.i = getelementptr inbounds %struct.vsp1_device_info, ptr %135, i32 0, i32 10
  %138 = ptrtoint ptr %uapi89.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %uapi89.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool90.not.i = icmp eq i8 %139, 0
  br i1 %tobool90.not.i, label %land.lhs.true.i.if.end103.i_crit_edge, label %if.then91.i

land.lhs.true.i.if.end103.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then91.i:                                      ; preds = %land.lhs.true.i
  %call92.i = call ptr @vsp1_hgo_create(ptr noundef nonnull %call.i) #8
  %hgo.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 9
  %140 = ptrtoint ptr %hgo.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call92.i, ptr %hgo.i, align 4
  %cmp.i526.i = icmp ugt ptr %call92.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i526.i, label %if.then95.i, label %if.end98.i

if.then95.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %call92.i to i32
  br label %done.i

if.end98.i:                                       ; preds = %if.then91.i
  %list_dev101.i = getelementptr inbounds %struct.vsp1_entity, ptr %call92.i, i32 0, i32 6
  %142 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i, align 4
  %call.i.i528.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev101.i, ptr noundef %143, ptr noundef %entities) #8
  br i1 %call.i.i528.i, label %if.end.i.i530.i, label %if.end98.i.if.end103.i_crit_edge

if.end98.i.if.end103.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.end.i.i530.i:                                  ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %list_dev101.i, ptr %prev.i, align 4
  %145 = ptrtoint ptr %list_dev101.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %entities, ptr %list_dev101.i, align 4
  %prev3.i.i529.i = getelementptr inbounds %struct.vsp1_entity, ptr %call92.i, i32 0, i32 6, i32 1
  %146 = ptrtoint ptr %prev3.i.i529.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev3.i.i529.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %list_dev101.i, ptr %143, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.end.i.i530.i, %if.end98.i.if.end103.i_crit_edge, %land.lhs.true.i.if.end103.i_crit_edge, %list_add_tail.exit525.i.if.end103.i_crit_edge
  %148 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %info66, align 4
  %features105.i = getelementptr inbounds %struct.vsp1_device_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %features105.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %features105.i, align 4
  %and106.i = and i32 %151, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.end103.i.if.end125.i_crit_edge, label %land.lhs.true108.i

if.end103.i.if.end125.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

land.lhs.true108.i:                               ; preds = %if.end103.i
  %uapi110.i = getelementptr inbounds %struct.vsp1_device_info, ptr %149, i32 0, i32 10
  %152 = ptrtoint ptr %uapi110.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %uapi110.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool111.not.i = icmp eq i8 %153, 0
  br i1 %tobool111.not.i, label %land.lhs.true108.i.if.end125.i_crit_edge, label %if.then112.i

land.lhs.true108.i.if.end125.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then112.i:                                     ; preds = %land.lhs.true108.i
  %call113.i = call ptr @vsp1_hgt_create(ptr noundef nonnull %call.i) #8
  %hgt.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 10
  %154 = ptrtoint ptr %hgt.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call113.i, ptr %hgt.i, align 8
  %cmp.i532.i = icmp ugt ptr %call113.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i532.i, label %if.then116.i, label %if.end119.i

if.then116.i:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %call113.i to i32
  br label %done.i

if.end119.i:                                      ; preds = %if.then112.i
  %list_dev123.i = getelementptr inbounds %struct.vsp1_entity, ptr %call113.i, i32 0, i32 6
  %156 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i, align 4
  %call.i.i534.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev123.i, ptr noundef %157, ptr noundef %entities) #8
  br i1 %call.i.i534.i, label %if.end.i.i536.i, label %if.end119.i.if.end125.i_crit_edge

if.end119.i.if.end125.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.end.i.i536.i:                                  ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %list_dev123.i, ptr %prev.i, align 4
  %159 = ptrtoint ptr %list_dev123.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %entities, ptr %list_dev123.i, align 4
  %prev3.i.i535.i = getelementptr inbounds %struct.vsp1_entity, ptr %call113.i, i32 0, i32 6, i32 1
  %160 = ptrtoint ptr %prev3.i.i535.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev3.i.i535.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %list_dev123.i, ptr %157, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.end.i.i536.i, %if.end119.i.if.end125.i_crit_edge, %land.lhs.true108.i.if.end125.i_crit_edge, %if.end103.i.if.end125.i_crit_edge
  %162 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %info66, align 4
  %uapi127.i = getelementptr inbounds %struct.vsp1_device_info, ptr %163, i32 0, i32 10
  %164 = ptrtoint ptr %uapi127.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %uapi127.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool128.not.i = icmp eq i8 %165, 0
  br i1 %tobool128.not.i, label %for.cond.preheader.i, label %if.end125.i.if.end141.i_crit_edge

if.end125.i.if.end141.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

for.cond.preheader.i:                             ; preds = %if.end125.i
  %lif_count622.i = getelementptr inbounds %struct.vsp1_device_info, ptr %163, i32 0, i32 4
  %166 = ptrtoint ptr %lif_count622.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %lif_count622.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp131623.not.i = icmp eq i32 %167, 0
  br i1 %cmp131623.not.i, label %for.cond.preheader.i.if.end141.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end141.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0624.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call132.i = call ptr @vsp1_lif_create(ptr noundef %call.i, i32 noundef %i.0624.i) #8
  %cmp.i538.i = icmp ugt ptr %call132.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i538.i, label %cleanup.i, label %if.end136.i

if.end136.i:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.vsp1_device, ptr %call.i, i32 0, i32 13, i32 %i.0624.i
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call132.i, ptr %arrayidx.i, align 4
  %list_dev139.i = getelementptr inbounds %struct.vsp1_entity, ptr %call132.i, i32 0, i32 6
  %169 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev.i, align 4
  %call.i.i540.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev139.i, ptr noundef %170, ptr noundef %entities) #8
  br i1 %call.i.i540.i, label %if.end.i.i542.i, label %if.end136.i.for.inc.i_crit_edge

if.end136.i.for.inc.i_crit_edge:                  ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i542.i:                                  ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %list_dev139.i, ptr %prev.i, align 4
  %172 = ptrtoint ptr %list_dev139.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %entities, ptr %list_dev139.i, align 4
  %prev3.i.i541.i = getelementptr inbounds %struct.vsp1_entity, ptr %call132.i, i32 0, i32 6, i32 1
  %173 = ptrtoint ptr %prev3.i.i541.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %170, ptr %prev3.i.i541.i, align 4
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %list_dev139.i, ptr %170, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %call132.i to i32
  br label %done.i

for.inc.i:                                        ; preds = %if.end.i.i542.i, %if.end136.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0624.i, 1
  %176 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %info66, align 4
  %lif_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %lif_count.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %lif_count.i, align 4
  %cmp131.i = icmp ult i32 %inc.i, %179
  br i1 %cmp131.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end141.i_crit_edge

for.inc.i.if.end141.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end141.i:                                      ; preds = %for.inc.i.if.end141.i_crit_edge, %for.cond.preheader.i.if.end141.i_crit_edge, %if.end125.i.if.end141.i_crit_edge
  %180 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %info66, align 4
  %features143.i = getelementptr inbounds %struct.vsp1_device_info, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %features143.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %features143.i, align 4
  %and144.i = and i32 %183, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i)
  %tobool145.not.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.not.i, label %if.end141.i.if.end158.i_crit_edge, label %if.then146.i

if.end141.i.if.end158.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158.i

if.then146.i:                                     ; preds = %if.end141.i
  %call147.i = call ptr @vsp1_lut_create(ptr noundef %call.i) #8
  %lut.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 14
  %184 = ptrtoint ptr %lut.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call147.i, ptr %lut.i, align 4
  %cmp.i544.i = icmp ugt ptr %call147.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i544.i, label %if.then150.i, label %if.end153.i

if.then150.i:                                     ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %call147.i to i32
  br label %done.i

if.end153.i:                                      ; preds = %if.then146.i
  %list_dev156.i = getelementptr inbounds %struct.vsp1_entity, ptr %call147.i, i32 0, i32 6
  %186 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i, align 4
  %call.i.i546.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev156.i, ptr noundef %187, ptr noundef %entities) #8
  br i1 %call.i.i546.i, label %if.end.i.i548.i, label %if.end153.i.if.end158.i_crit_edge

if.end153.i.if.end158.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158.i

if.end.i.i548.i:                                  ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %list_dev156.i, ptr %prev.i, align 4
  %189 = ptrtoint ptr %list_dev156.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %entities, ptr %list_dev156.i, align 4
  %prev3.i.i547.i = getelementptr inbounds %struct.vsp1_entity, ptr %call147.i, i32 0, i32 6, i32 1
  %190 = ptrtoint ptr %prev3.i.i547.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev3.i.i547.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %list_dev156.i, ptr %187, align 4
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.end.i.i548.i, %if.end153.i.if.end158.i_crit_edge, %if.end141.i.if.end158.i_crit_edge
  %192 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %info66, align 4
  %rpf_count625.i = getelementptr inbounds %struct.vsp1_device_info, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %rpf_count625.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rpf_count625.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp161626.not.i = icmp eq i32 %195, 0
  br i1 %cmp161626.not.i, label %if.end158.i.for.end191.i_crit_edge, label %if.end158.i.for.body162.i_crit_edge

if.end158.i.for.body162.i_crit_edge:              ; preds = %if.end158.i
  br label %for.body162.i

if.end158.i.for.end191.i_crit_edge:               ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end191.i

for.body162.i:                                    ; preds = %for.inc189.i.for.body162.i_crit_edge, %if.end158.i.for.body162.i_crit_edge
  %i.1627.i = phi i32 [ %inc190.i, %for.inc189.i.for.body162.i_crit_edge ], [ 0, %if.end158.i.for.body162.i_crit_edge ]
  %call163.i = call ptr @vsp1_rpf_create(ptr noundef %call.i, i32 noundef %i.1627.i) #8
  %cmp.i550.i = icmp ugt ptr %call163.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i550.i, label %if.then165.i, label %if.end167.i

if.then165.i:                                     ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %call163.i to i32
  br label %done.i

if.end167.i:                                      ; preds = %for.body162.i
  %arrayidx169.i = getelementptr %struct.vsp1_device, ptr %call.i, i32 0, i32 15, i32 %i.1627.i
  %197 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call163.i, ptr %arrayidx169.i, align 4
  %list_dev171.i = getelementptr inbounds %struct.vsp1_entity, ptr %call163.i, i32 0, i32 6
  %198 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %prev.i, align 4
  %call.i.i552.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev171.i, ptr noundef %199, ptr noundef %entities) #8
  br i1 %call.i.i552.i, label %if.end.i.i554.i, label %if.end167.i.list_add_tail.exit555.i_crit_edge

if.end167.i.list_add_tail.exit555.i_crit_edge:    ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit555.i

if.end.i.i554.i:                                  ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %list_dev171.i, ptr %prev.i, align 4
  %201 = ptrtoint ptr %list_dev171.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %entities, ptr %list_dev171.i, align 4
  %prev3.i.i553.i = getelementptr inbounds %struct.vsp1_entity, ptr %call163.i, i32 0, i32 6, i32 1
  %202 = ptrtoint ptr %prev3.i.i553.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %199, ptr %prev3.i.i553.i, align 4
  %203 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %list_dev171.i, ptr %199, align 4
  br label %list_add_tail.exit555.i

list_add_tail.exit555.i:                          ; preds = %if.end.i.i554.i, %if.end167.i.list_add_tail.exit555.i_crit_edge
  %204 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %info66, align 4
  %uapi174.i = getelementptr inbounds %struct.vsp1_device_info, ptr %205, i32 0, i32 10
  %206 = ptrtoint ptr %uapi174.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %uapi174.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool175.not.i = icmp eq i8 %207, 0
  br i1 %tobool175.not.i, label %list_add_tail.exit555.i.for.inc189.i_crit_edge, label %if.then176.i

list_add_tail.exit555.i.for.inc189.i_crit_edge:   ; preds = %list_add_tail.exit555.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc189.i

if.then176.i:                                     ; preds = %list_add_tail.exit555.i
  %call177.i = call ptr @vsp1_video_create(ptr noundef %call.i, ptr noundef %call163.i) #8
  %cmp.i556.i = icmp ugt ptr %call177.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i556.i, label %cleanup182.i, label %if.end181.i

if.end181.i:                                      ; preds = %if.then176.i
  %208 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prev.i166, align 4
  %call.i.i558.i = call zeroext i1 @__list_add_valid(ptr noundef %call177.i, ptr noundef %209, ptr noundef %videos) #8
  br i1 %call.i.i558.i, label %if.end.i.i560.i, label %if.end181.i.for.inc189.i_crit_edge

if.end181.i.for.inc189.i_crit_edge:               ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc189.i

if.end.i.i560.i:                                  ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call177.i, ptr %prev.i166, align 4
  %211 = ptrtoint ptr %call177.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %videos, ptr %call177.i, align 4
  %prev3.i.i559.i = getelementptr inbounds %struct.list_head, ptr %call177.i, i32 0, i32 1
  %212 = ptrtoint ptr %prev3.i.i559.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %209, ptr %prev3.i.i559.i, align 4
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %call177.i, ptr %209, align 4
  br label %for.inc189.i

cleanup182.i:                                     ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %call177.i to i32
  br label %done.i

for.inc189.i:                                     ; preds = %if.end.i.i560.i, %if.end181.i.for.inc189.i_crit_edge, %list_add_tail.exit555.i.for.inc189.i_crit_edge
  %inc190.i = add nuw i32 %i.1627.i, 1
  %215 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %info66, align 4
  %rpf_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %216, i32 0, i32 5
  %217 = ptrtoint ptr %rpf_count.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rpf_count.i, align 4
  %cmp161.i = icmp ult i32 %inc190.i, %218
  br i1 %cmp161.i, label %for.inc189.i.for.body162.i_crit_edge, label %for.inc189.i.for.end191.i_crit_edge

for.inc189.i.for.end191.i_crit_edge:              ; preds = %for.inc189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end191.i

for.inc189.i.for.body162.i_crit_edge:             ; preds = %for.inc189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body162.i

for.end191.i:                                     ; preds = %for.inc189.i.for.end191.i_crit_edge, %if.end158.i.for.end191.i_crit_edge
  %.lcssa.i = phi ptr [ %193, %if.end158.i.for.end191.i_crit_edge ], [ %216, %for.inc189.i.for.end191.i_crit_edge ]
  %features193.i = getelementptr inbounds %struct.vsp1_device_info, ptr %.lcssa.i, i32 0, i32 3
  %219 = ptrtoint ptr %features193.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %features193.i, align 4
  %and194.i = and i32 %220, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  br i1 %tobool195.not.i, label %for.end191.i.if.end208.i_crit_edge, label %if.then196.i

for.end191.i.if.end208.i_crit_edge:               ; preds = %for.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208.i

if.then196.i:                                     ; preds = %for.end191.i
  %call197.i = call ptr @vsp1_sru_create(ptr noundef %call.i) #8
  %sru.i = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 16
  %221 = ptrtoint ptr %sru.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call197.i, ptr %sru.i, align 4
  %cmp.i562.i = icmp ugt ptr %call197.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i562.i, label %if.then200.i, label %if.end203.i

if.then200.i:                                     ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #10
  %222 = ptrtoint ptr %call197.i to i32
  br label %done.i

if.end203.i:                                      ; preds = %if.then196.i
  %list_dev206.i = getelementptr inbounds %struct.vsp1_entity, ptr %call197.i, i32 0, i32 6
  %223 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %prev.i, align 4
  %call.i.i564.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev206.i, ptr noundef %224, ptr noundef %entities) #8
  br i1 %call.i.i564.i, label %if.end.i.i566.i, label %if.end203.i.if.end208.i_crit_edge

if.end203.i.if.end208.i_crit_edge:                ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208.i

if.end.i.i566.i:                                  ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  %225 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %list_dev206.i, ptr %prev.i, align 4
  %226 = ptrtoint ptr %list_dev206.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %entities, ptr %list_dev206.i, align 4
  %prev3.i.i565.i = getelementptr inbounds %struct.vsp1_entity, ptr %call197.i, i32 0, i32 6, i32 1
  %227 = ptrtoint ptr %prev3.i.i565.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %224, ptr %prev3.i.i565.i, align 4
  %228 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile ptr %list_dev206.i, ptr %224, align 4
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.end.i.i566.i, %if.end203.i.if.end208.i_crit_edge, %for.end191.i.if.end208.i_crit_edge
  %229 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %info66, align 4
  %uds_count628.i = getelementptr inbounds %struct.vsp1_device_info, ptr %230, i32 0, i32 6
  %231 = ptrtoint ptr %uds_count628.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %uds_count628.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp211629.not.i = icmp eq i32 %232, 0
  br i1 %cmp211629.not.i, label %if.end208.i.for.cond229.preheader.i_crit_edge, label %if.end208.i.for.body212.i_crit_edge

if.end208.i.for.body212.i_crit_edge:              ; preds = %if.end208.i
  br label %for.body212.i

if.end208.i.for.cond229.preheader.i_crit_edge:    ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond229.preheader.i

for.cond229.preheader.i:                          ; preds = %for.inc226.i.for.cond229.preheader.i_crit_edge, %if.end208.i.for.cond229.preheader.i_crit_edge
  %233 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %info66, align 4
  %uif_count631.i = getelementptr inbounds %struct.vsp1_device_info, ptr %234, i32 0, i32 7
  %235 = ptrtoint ptr %uif_count631.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %uif_count631.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp231632.not.i = icmp eq i32 %236, 0
  br i1 %cmp231632.not.i, label %for.cond229.preheader.i.for.cond249.preheader.i_crit_edge, label %for.cond229.preheader.i.for.body232.i_crit_edge

for.cond229.preheader.i.for.body232.i_crit_edge:  ; preds = %for.cond229.preheader.i
  br label %for.body232.i

for.cond229.preheader.i.for.cond249.preheader.i_crit_edge: ; preds = %for.cond229.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond249.preheader.i

for.body212.i:                                    ; preds = %for.inc226.i.for.body212.i_crit_edge, %if.end208.i.for.body212.i_crit_edge
  %i.2630.i = phi i32 [ %inc227.i, %for.inc226.i.for.body212.i_crit_edge ], [ 0, %if.end208.i.for.body212.i_crit_edge ]
  %call213.i = call ptr @vsp1_uds_create(ptr noundef %call.i, i32 noundef %i.2630.i) #8
  %cmp.i568.i = icmp ugt ptr %call213.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i568.i, label %cleanup223.i, label %if.end217.i

if.end217.i:                                      ; preds = %for.body212.i
  %arrayidx219.i = getelementptr %struct.vsp1_device, ptr %call.i, i32 0, i32 17, i32 %i.2630.i
  %237 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call213.i, ptr %arrayidx219.i, align 4
  %list_dev221.i = getelementptr inbounds %struct.vsp1_entity, ptr %call213.i, i32 0, i32 6
  %238 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %prev.i, align 4
  %call.i.i570.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev221.i, ptr noundef %239, ptr noundef %entities) #8
  br i1 %call.i.i570.i, label %if.end.i.i572.i, label %if.end217.i.for.inc226.i_crit_edge

if.end217.i.for.inc226.i_crit_edge:               ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc226.i

if.end.i.i572.i:                                  ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %list_dev221.i, ptr %prev.i, align 4
  %241 = ptrtoint ptr %list_dev221.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %entities, ptr %list_dev221.i, align 4
  %prev3.i.i571.i = getelementptr inbounds %struct.vsp1_entity, ptr %call213.i, i32 0, i32 6, i32 1
  %242 = ptrtoint ptr %prev3.i.i571.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %239, ptr %prev3.i.i571.i, align 4
  %243 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %243)
  store volatile ptr %list_dev221.i, ptr %239, align 4
  br label %for.inc226.i

cleanup223.i:                                     ; preds = %for.body212.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = ptrtoint ptr %call213.i to i32
  br label %done.i

for.inc226.i:                                     ; preds = %if.end.i.i572.i, %if.end217.i.for.inc226.i_crit_edge
  %inc227.i = add nuw i32 %i.2630.i, 1
  %245 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %info66, align 4
  %uds_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %246, i32 0, i32 6
  %247 = ptrtoint ptr %uds_count.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %uds_count.i, align 4
  %cmp211.i = icmp ult i32 %inc227.i, %248
  br i1 %cmp211.i, label %for.inc226.i.for.body212.i_crit_edge, label %for.inc226.i.for.cond229.preheader.i_crit_edge

for.inc226.i.for.cond229.preheader.i_crit_edge:   ; preds = %for.inc226.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond229.preheader.i

for.inc226.i.for.body212.i_crit_edge:             ; preds = %for.inc226.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212.i

for.cond249.preheader.i:                          ; preds = %for.inc246.i.for.cond249.preheader.i_crit_edge, %for.cond229.preheader.i.for.cond249.preheader.i_crit_edge
  %249 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %info66, align 4
  %wpf_count634.i = getelementptr inbounds %struct.vsp1_device_info, ptr %250, i32 0, i32 8
  %251 = ptrtoint ptr %wpf_count634.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %wpf_count634.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp251635.not.i = icmp eq i32 %252, 0
  br i1 %cmp251635.not.i, label %for.cond249.preheader.i.for.cond286.i.preheader_crit_edge, label %for.cond249.preheader.i.for.body252.i_crit_edge

for.cond249.preheader.i.for.body252.i_crit_edge:  ; preds = %for.cond249.preheader.i
  br label %for.body252.i

for.cond249.preheader.i.for.cond286.i.preheader_crit_edge: ; preds = %for.cond249.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond286.i.preheader

for.body232.i:                                    ; preds = %for.inc246.i.for.body232.i_crit_edge, %for.cond229.preheader.i.for.body232.i_crit_edge
  %i.3633.i = phi i32 [ %inc247.i, %for.inc246.i.for.body232.i_crit_edge ], [ 0, %for.cond229.preheader.i.for.body232.i_crit_edge ]
  %call233.i = call ptr @vsp1_uif_create(ptr noundef %call.i, i32 noundef %i.3633.i) #8
  %cmp.i574.i = icmp ugt ptr %call233.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i574.i, label %cleanup243.i, label %if.end237.i

if.end237.i:                                      ; preds = %for.body232.i
  %arrayidx239.i = getelementptr %struct.vsp1_device, ptr %call.i, i32 0, i32 18, i32 %i.3633.i
  %253 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call233.i, ptr %arrayidx239.i, align 4
  %list_dev241.i = getelementptr inbounds %struct.vsp1_entity, ptr %call233.i, i32 0, i32 6
  %254 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %prev.i, align 4
  %call.i.i576.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev241.i, ptr noundef %255, ptr noundef %entities) #8
  br i1 %call.i.i576.i, label %if.end.i.i578.i, label %if.end237.i.for.inc246.i_crit_edge

if.end237.i.for.inc246.i_crit_edge:               ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc246.i

if.end.i.i578.i:                                  ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #10
  %256 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %list_dev241.i, ptr %prev.i, align 4
  %257 = ptrtoint ptr %list_dev241.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %entities, ptr %list_dev241.i, align 4
  %prev3.i.i577.i = getelementptr inbounds %struct.vsp1_entity, ptr %call233.i, i32 0, i32 6, i32 1
  %258 = ptrtoint ptr %prev3.i.i577.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %255, ptr %prev3.i.i577.i, align 4
  %259 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %259)
  store volatile ptr %list_dev241.i, ptr %255, align 4
  br label %for.inc246.i

cleanup243.i:                                     ; preds = %for.body232.i
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %call233.i to i32
  br label %done.i

for.inc246.i:                                     ; preds = %if.end.i.i578.i, %if.end237.i.for.inc246.i_crit_edge
  %inc247.i = add nuw i32 %i.3633.i, 1
  %261 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %info66, align 4
  %uif_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %262, i32 0, i32 7
  %263 = ptrtoint ptr %uif_count.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %uif_count.i, align 4
  %cmp231.i = icmp ult i32 %inc247.i, %264
  br i1 %cmp231.i, label %for.inc246.i.for.body232.i_crit_edge, label %for.inc246.i.for.cond249.preheader.i_crit_edge

for.inc246.i.for.cond249.preheader.i_crit_edge:   ; preds = %for.inc246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond249.preheader.i

for.inc246.i.for.body232.i_crit_edge:             ; preds = %for.inc246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body232.i

for.body252.i:                                    ; preds = %for.inc282.i.for.body252.i_crit_edge, %for.cond249.preheader.i.for.body252.i_crit_edge
  %i.4636.i = phi i32 [ %inc283.i, %for.inc282.i.for.body252.i_crit_edge ], [ 0, %for.cond249.preheader.i.for.body252.i_crit_edge ]
  %call253.i = call ptr @vsp1_wpf_create(ptr noundef %call.i, i32 noundef %i.4636.i) #8
  %cmp.i580.i = icmp ugt ptr %call253.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i580.i, label %if.then255.i, label %if.end257.i

if.then255.i:                                     ; preds = %for.body252.i
  call void @__sanitizer_cov_trace_pc() #10
  %265 = ptrtoint ptr %call253.i to i32
  br label %done.i

if.end257.i:                                      ; preds = %for.body252.i
  %arrayidx259.i = getelementptr %struct.vsp1_device, ptr %call.i, i32 0, i32 19, i32 %i.4636.i
  %266 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call253.i, ptr %arrayidx259.i, align 4
  %list_dev261.i = getelementptr inbounds %struct.vsp1_entity, ptr %call253.i, i32 0, i32 6
  %267 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %prev.i, align 4
  %call.i.i582.i = call zeroext i1 @__list_add_valid(ptr noundef %list_dev261.i, ptr noundef %268, ptr noundef %entities) #8
  br i1 %call.i.i582.i, label %if.end.i.i584.i, label %if.end257.i.list_add_tail.exit585.i_crit_edge

if.end257.i.list_add_tail.exit585.i_crit_edge:    ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit585.i

if.end.i.i584.i:                                  ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  %269 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %list_dev261.i, ptr %prev.i, align 4
  %270 = ptrtoint ptr %list_dev261.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %entities, ptr %list_dev261.i, align 4
  %prev3.i.i583.i = getelementptr inbounds %struct.vsp1_entity, ptr %call253.i, i32 0, i32 6, i32 1
  %271 = ptrtoint ptr %prev3.i.i583.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %268, ptr %prev3.i.i583.i, align 4
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile ptr %list_dev261.i, ptr %268, align 4
  br label %list_add_tail.exit585.i

list_add_tail.exit585.i:                          ; preds = %if.end.i.i584.i, %if.end257.i.list_add_tail.exit585.i_crit_edge
  %273 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %info66, align 4
  %uapi264.i = getelementptr inbounds %struct.vsp1_device_info, ptr %274, i32 0, i32 10
  %275 = ptrtoint ptr %uapi264.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %uapi264.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool265.not.i = icmp eq i8 %276, 0
  br i1 %tobool265.not.i, label %list_add_tail.exit585.i.for.inc282.i_crit_edge, label %if.then266.i

list_add_tail.exit585.i.for.inc282.i_crit_edge:   ; preds = %list_add_tail.exit585.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc282.i

if.then266.i:                                     ; preds = %list_add_tail.exit585.i
  %call268.i = call ptr @vsp1_video_create(ptr noundef %call.i, ptr noundef %call253.i) #8
  %cmp.i586.i = icmp ugt ptr %call268.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i586.i, label %cleanup275.i, label %if.end272.i

if.end272.i:                                      ; preds = %if.then266.i
  %277 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %prev.i166, align 4
  %call.i.i588.i = call zeroext i1 @__list_add_valid(ptr noundef %call268.i, ptr noundef %278, ptr noundef %videos) #8
  br i1 %call.i.i588.i, label %if.end.i.i590.i, label %if.end272.i.for.inc282.i_crit_edge

if.end272.i.for.inc282.i_crit_edge:               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc282.i

if.end.i.i590.i:                                  ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #10
  %279 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call268.i, ptr %prev.i166, align 4
  %280 = ptrtoint ptr %call268.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %videos, ptr %call268.i, align 4
  %prev3.i.i589.i = getelementptr inbounds %struct.list_head, ptr %call268.i, i32 0, i32 1
  %281 = ptrtoint ptr %prev3.i.i589.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %278, ptr %prev3.i.i589.i, align 4
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %282)
  store volatile ptr %call268.i, ptr %278, align 4
  br label %for.inc282.i

cleanup275.i:                                     ; preds = %if.then266.i
  call void @__sanitizer_cov_trace_pc() #10
  %283 = ptrtoint ptr %call268.i to i32
  br label %done.i

for.inc282.i:                                     ; preds = %if.end.i.i590.i, %if.end272.i.for.inc282.i_crit_edge, %list_add_tail.exit585.i.for.inc282.i_crit_edge
  %inc283.i = add nuw i32 %i.4636.i, 1
  %284 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %info66, align 4
  %wpf_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %285, i32 0, i32 8
  %286 = ptrtoint ptr %wpf_count.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %wpf_count.i, align 4
  %cmp251.i = icmp ult i32 %inc283.i, %287
  br i1 %cmp251.i, label %for.inc282.i.for.body252.i_crit_edge, label %for.inc282.i.for.cond286.i.preheader_crit_edge

for.inc282.i.for.cond286.i.preheader_crit_edge:   ; preds = %for.inc282.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond286.i.preheader

for.inc282.i.for.body252.i_crit_edge:             ; preds = %for.inc282.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body252.i

for.cond286.i.preheader:                          ; preds = %for.inc282.i.for.cond286.i.preheader_crit_edge, %for.cond249.preheader.i.for.cond286.i.preheader_crit_edge
  br label %for.cond286.i

for.cond286.i:                                    ; preds = %for.body290.i.for.cond286.i_crit_edge, %for.cond286.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body290.i.for.cond286.i_crit_edge ], [ %entities, %for.cond286.i.preheader ]
  %288 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp289.not.i = icmp eq ptr %.pn.i, %entities
  br i1 %cmp289.not.i, label %for.end302.i, label %for.body290.i

for.body290.i:                                    ; preds = %for.cond286.i
  %subdev.i = getelementptr i8, ptr %.pn.i, i32 36
  %call292.i = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev.i, ptr noundef %subdev.i) #8
  %cmp293.i = icmp slt i32 %call292.i, 0
  br i1 %cmp293.i, label %for.body290.i.do.end98_crit_edge, label %for.body290.i.for.cond286.i_crit_edge

for.body290.i.for.cond286.i_crit_edge:            ; preds = %for.body290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond286.i

for.body290.i.do.end98_crit_edge:                 ; preds = %for.body290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

for.end302.i:                                     ; preds = %for.cond286.i
  %289 = ptrtoint ptr %info66 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %info66, align 4
  %uapi304.i = getelementptr inbounds %struct.vsp1_device_info, ptr %290, i32 0, i32 10
  %291 = ptrtoint ptr %uapi304.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %uapi304.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool305.not.i = icmp eq i8 %292, 0
  br i1 %tobool305.not.i, label %if.else.i, label %if.then306.i

if.then306.i:                                     ; preds = %for.end302.i
  %call307.i = call fastcc i32 @vsp1_uapi_create_links(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307.i)
  %cmp308.i = icmp slt i32 %call307.i, 0
  br i1 %cmp308.i, label %if.then306.i.do.end98_crit_edge, label %if.end310.i

if.then306.i.do.end98_crit_edge:                  ; preds = %if.then306.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

if.end310.i:                                      ; preds = %if.then306.i
  %call.i.i181 = call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %cmp313.i = icmp slt i32 %call.i.i181, 0
  br i1 %cmp313.i, label %if.end310.i.do.end98_crit_edge, label %if.end315.i

if.end310.i.do.end98_crit_edge:                   ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

if.end315.i:                                      ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #10
  %call316.i = call i32 @__media_device_register(ptr noundef %media_dev.i, ptr noundef null) #8
  br label %done.i

if.else.i:                                        ; preds = %for.end302.i
  call void @__sanitizer_cov_trace_pc() #10
  %call317.i = call i32 @vsp1_drm_init(ptr noundef %call.i) #8
  br label %done.i

done.i:                                           ; preds = %if.else.i, %if.end315.i, %cleanup275.i, %if.then255.i, %cleanup243.i, %cleanup223.i, %if.then200.i, %cleanup182.i, %if.then165.i, %if.then150.i, %cleanup.i, %if.then116.i, %if.then95.i, %if.then76.i, %if.then65.i, %if.then53.i, %if.then36.i, %if.then21.i
  %ret.15.i = phi i32 [ %87, %if.then21.i ], [ %99, %if.then36.i ], [ %111, %if.then53.i ], [ %119, %if.then65.i ], [ %127, %if.then76.i ], [ %141, %if.then95.i ], [ %155, %if.then116.i ], [ %185, %if.then150.i ], [ %222, %if.then200.i ], [ %244, %cleanup223.i ], [ %260, %cleanup243.i ], [ %call316.i, %if.end315.i ], [ %call317.i, %if.else.i ], [ %175, %cleanup.i ], [ %196, %if.then165.i ], [ %214, %cleanup182.i ], [ %265, %if.then255.i ], [ %283, %cleanup275.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.15.i)
  %cmp319.i = icmp slt i32 %ret.15.i, 0
  br i1 %cmp319.i, label %done.i.do.end98_crit_edge, label %done

done.i.do.end98_crit_edge:                        ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end98:                                         ; preds = %done.i.do.end98_crit_edge, %if.end310.i.do.end98_crit_edge, %if.then306.i.do.end98_crit_edge, %for.body290.i.do.end98_crit_edge, %do.end.i
  %ret.15617.i = phi i32 [ %ret.15.i, %done.i.do.end98_crit_edge ], [ %call.i.i181, %if.end310.i.do.end98_crit_edge ], [ %call307.i, %if.then306.i.do.end98_crit_edge ], [ %call11.i, %do.end.i ], [ %call292.i, %for.body290.i.do.end98_crit_edge ]
  call fastcc void @vsp1_destroy_entities(ptr noundef %call.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %if.then102

done:                                             ; preds = %done.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.15.i)
  %tobool101.not = icmp eq i32 %ret.15.i, 0
  br i1 %tobool101.not, label %done.cleanup_crit_edge, label %done.if.then102_crit_edge

done.if.then102_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then102:                                       ; preds = %done.if.then102_crit_edge, %do.end98, %do.end71, %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then102_crit_edge
  %ret.0193 = phi i32 [ %ret.15.i, %done.if.then102_crit_edge ], [ -6, %do.end71 ], [ %ret.15617.i, %do.end98 ], [ %call.i.i, %if.then.i.i.if.then102_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %fcp104 = getelementptr inbounds %struct.vsp1_device, ptr %call.i, i32 0, i32 4
  %293 = ptrtoint ptr %fcp104 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %fcp104, align 8
  call void @rcar_fcp_put(ptr noundef %294) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %done.cleanup_crit_edge, %do.end44, %do.end22, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then6 ], [ %call.i168, %do.end22 ], [ %27, %do.end44 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0193, %if.then102 ], [ 0, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @vsp1_destroy_entities(ptr noundef %1)
  %fcp = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcp, align 8
  tail call void @rcar_fcp_put(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.vsp1_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %wpf_count24 = getelementptr inbounds %struct.vsp1_device_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %wpf_count24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wpf_count24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %data, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %ret.026 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsp1_device, ptr %data, i32 0, i32 19, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %mul = mul i32 %i.027, 12
  %add = add i32 %mul, 76
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !93
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %neg = shl i32 %9, 24
  %and = and i32 %neg, 50331648
  %12 = xor i32 %and, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %12) #8, !srcloc !96
  %and5 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pipe = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe, align 4
  tail call void @vsp1_pipeline_frame_end(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.026, %for.body.cleanup_crit_edge ], [ 1, %if.then6 ], [ %ret.026, %if.end.cleanup_crit_edge ]
  %inc = add nuw i32 %i.027, 1
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %wpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %wpf_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wpf_count, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.2, %cleanup.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_fcp_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_fcp_get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_fcp_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_frame_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_link_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_brx_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_clu_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_hsit_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_hgo_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_hgt_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_lif_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_lut_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_rpf_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_video_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_sru_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_uds_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_uif_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_wpf_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsp1_uapi_create_links(ptr noundef readonly %vsp1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 20
  %0 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn161 = load ptr, ptr %entities, align 4
  %cmp.not163 = icmp eq ptr %.pn161, %entities
  br i1 %cmp.not163, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn164 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn161, %entry.for.body_crit_edge ]
  %entity.0165 = getelementptr i8, ptr %.pn164, i32 -24
  %type = getelementptr i8, ptr %.pn164, i32 -16
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end [
    i32 7, label %for.body.for.inc_crit_edge
    i32 9, label %for.body.for.inc_crit_edge194
  ]

for.body.for.inc_crit_edge194:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %subdev.i = getelementptr i8, ptr %.pn164, i32 36
  %4 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn86.i = load ptr, ptr %entities, align 4
  %cmp.not87.i = icmp eq ptr %.pn86.i, %entities
  br i1 %cmp.not87.i, label %if.end.for.inc_crit_edge, label %for.body.lr.ph.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end
  %index21.i = getelementptr i8, ptr %.pn164, i32 -12
  %num_pads.i = getelementptr i8, ptr %.pn164, i32 68
  %pads.i = getelementptr i8, ptr %.pn164, i32 80
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc43.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn88.i = phi ptr [ %.pn86.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc43.i.for.body.i_crit_edge ]
  %type.i = getelementptr i8, ptr %.pn88.i, i32 -16
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.i = icmp eq i32 %6, %8
  br i1 %cmp4.i, label %for.body.i.for.inc43.i_crit_edge, label %if.end.i

for.body.i.for.inc43.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

if.end.i:                                         ; preds = %for.body.i
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %6, label %if.end.i.land.end.i_crit_edge [
    i32 3, label %if.end.i.for.inc43.i_crit_edge
    i32 4, label %if.end.i.for.inc43.i_crit_edge195
    i32 7, label %if.end.i.for.inc43.i_crit_edge196
    i32 13, label %if.end.i.for.inc43.i_crit_edge197
    i32 9, label %land.lhs.true.i
  ]

if.end.i.for.inc43.i_crit_edge197:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

if.end.i.for.inc43.i_crit_edge196:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

if.end.i.for.inc43.i_crit_edge195:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

if.end.i.for.inc43.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %cmp20.i = icmp eq i32 %8, 13
  br i1 %cmp20.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr i8, ptr %.pn88.i, i32 -12
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %12 = ptrtoint ptr %index21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp22.i = icmp eq i32 %11, %13
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.end.i.land.end.i_crit_edge
  %14 = phi i1 [ false, %land.lhs.true.i.land.end.i_crit_edge ], [ %cmp22.i, %land.rhs.i ], [ false, %if.end.i.land.end.i_crit_edge ]
  %cond.i = zext i1 %14 to i32
  %15 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp2483.not.i = icmp eq i16 %16, 0
  br i1 %cmp2483.not.i, label %land.end.i.for.inc43.i_crit_edge, label %for.body26.lr.ph.i

land.end.i.for.inc43.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

for.body26.lr.ph.i:                               ; preds = %land.end.i
  %subdev30.i = getelementptr i8, ptr %.pn88.i, i32 36
  %source_pad.i = getelementptr i8, ptr %.pn88.i, i32 20
  %sink41.i = getelementptr i8, ptr %.pn88.i, i32 28
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %for.body26.lr.ph.i
  %pad.084.i = phi i32 [ 0, %for.body26.lr.ph.i ], [ %inc.i, %for.inc.i.for.body26.i_crit_edge ]
  %17 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pads.i, align 4
  %flags27.i = getelementptr %struct.media_pad, ptr %18, i32 %pad.084.i, i32 4
  %19 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags27.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body26.i.for.inc.i_crit_edge, label %if.end29.i

for.body26.i.for.inc.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end29.i:                                       ; preds = %for.body26.i
  %21 = ptrtoint ptr %source_pad.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %source_pad.i, align 4
  %conv32.i = trunc i32 %22 to i16
  %conv33.i = trunc i32 %pad.084.i to i16
  %call.i = tail call i32 @media_create_pad_link(ptr noundef %subdev30.i, i16 noundef zeroext %conv32.i, ptr noundef %subdev.i, i16 noundef zeroext %conv33.i, i32 noundef %cond.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34.i = icmp slt i32 %call.i, 0
  br i1 %cmp34.i, label %if.end29.i.cleanup104_crit_edge, label %if.end37.i

if.end29.i.cleanup104_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end37.i:                                       ; preds = %if.end29.i
  br i1 %14, label %if.then40.i, label %if.end37.i.for.inc.i_crit_edge

if.end37.i.for.inc.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %sink41.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entity.0165, ptr %sink41.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then40.i, %if.end37.i.for.inc.i_crit_edge, %for.body26.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pad.084.i, 1
  %24 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %25 to i32
  %cmp24.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp24.i, label %for.inc.i.for.body26.i_crit_edge, label %for.inc.i.for.inc43.i_crit_edge

for.inc.i.for.inc43.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.i

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i

for.inc43.i:                                      ; preds = %for.inc.i.for.inc43.i_crit_edge, %land.end.i.for.inc43.i_crit_edge, %if.end.i.for.inc43.i_crit_edge, %if.end.i.for.inc43.i_crit_edge195, %if.end.i.for.inc43.i_crit_edge196, %if.end.i.for.inc43.i_crit_edge197, %for.body.i.for.inc43.i_crit_edge
  %26 = ptrtoint ptr %.pn88.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn88.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entities
  br i1 %cmp.not.i, label %for.inc43.i.for.inc_crit_edge, label %for.inc43.i.for.body.i_crit_edge

for.inc43.i.for.body.i_crit_edge:                 ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc43.i.for.inc_crit_edge:                    ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc43.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge194
  %27 = ptrtoint ptr %.pn164 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn164, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hgo = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 9
  %28 = ptrtoint ptr %hgo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hgo, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %for.end.if.end24_crit_edge, label %if.then13

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then13:                                        ; preds = %for.end
  %subdev = getelementptr inbounds %struct.vsp1_entity, ptr %29, i32 0, i32 13
  %video = getelementptr inbounds %struct.vsp1_histogram, ptr %29, i32 0, i32 1
  %call20 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %video, i16 noundef zeroext 0, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then13.cleanup104_crit_edge, label %if.then13.if.end24_crit_edge

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then13.cleanup104_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end24:                                         ; preds = %if.then13.if.end24_crit_edge, %for.end.if.end24_crit_edge
  %hgt = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 10
  %30 = ptrtoint ptr %hgt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hgt, align 8
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.end24.if.end40_crit_edge, label %if.then26

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then26:                                        ; preds = %if.end24
  %subdev30 = getelementptr inbounds %struct.vsp1_entity, ptr %31, i32 0, i32 13
  %video34 = getelementptr inbounds %struct.vsp1_histogram, ptr %31, i32 0, i32 1
  %call36 = tail call i32 @media_create_pad_link(ptr noundef %subdev30, i16 noundef zeroext 1, ptr noundef %video34, i16 noundef zeroext 0, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then26.cleanup104_crit_edge, label %if.then26.if.end40_crit_edge

if.then26.if.end40_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then26.cleanup104_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end40:                                         ; preds = %if.then26.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  %lif_count166 = getelementptr inbounds %struct.vsp1_device_info, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %lif_count166 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lif_count166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp42167.not = icmp eq i32 %35, 0
  br i1 %cmp42167.not, label %if.end40.for.cond62.preheader_crit_edge, label %if.end40.for.body43_crit_edge

if.end40.for.body43_crit_edge:                    ; preds = %if.end40
  br label %for.body43

if.end40.for.cond62.preheader_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.inc60.for.cond62.preheader_crit_edge, %if.end40.for.cond62.preheader_crit_edge
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  %rpf_count170 = getelementptr inbounds %struct.vsp1_device_info, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %rpf_count170 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rpf_count170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp64171.not = icmp eq i32 %39, 0
  br i1 %cmp64171.not, label %for.cond62.preheader.for.cond81.preheader_crit_edge, label %for.cond62.preheader.for.body65_crit_edge

for.cond62.preheader.for.body65_crit_edge:        ; preds = %for.cond62.preheader
  br label %for.body65

for.cond62.preheader.for.cond81.preheader_crit_edge: ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond81.preheader

for.body43:                                       ; preds = %for.inc60.for.body43_crit_edge, %if.end40.for.body43_crit_edge
  %i.0168 = phi i32 [ %inc, %for.inc60.for.body43_crit_edge ], [ 0, %if.end40.for.body43_crit_edge ]
  %arrayidx = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 13, i32 %i.0168
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %tobool44.not = icmp eq ptr %41, null
  br i1 %tobool44.not, label %for.body43.for.inc60_crit_edge, label %if.end46

for.body43.for.inc60_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60

if.end46:                                         ; preds = %for.body43
  %arrayidx47 = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 19, i32 %i.0168
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx47, align 4
  %subdev49 = getelementptr inbounds %struct.vsp1_entity, ptr %43, i32 0, i32 13
  %subdev54 = getelementptr inbounds %struct.vsp1_entity, ptr %41, i32 0, i32 13
  %call56 = tail call i32 @media_create_pad_link(ptr noundef %subdev49, i16 noundef zeroext 1, ptr noundef %subdev54, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end46.cleanup104_crit_edge, label %if.end46.for.inc60_crit_edge

if.end46.for.inc60_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60

if.end46.cleanup104_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

for.inc60:                                        ; preds = %if.end46.for.inc60_crit_edge, %for.body43.for.inc60_crit_edge
  %inc = add nuw i32 %i.0168, 1
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 4
  %lif_count = getelementptr inbounds %struct.vsp1_device_info, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %lif_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lif_count, align 4
  %cmp42 = icmp ult i32 %inc, %47
  br i1 %cmp42, label %for.inc60.for.body43_crit_edge, label %for.inc60.for.cond62.preheader_crit_edge

for.inc60.for.cond62.preheader_crit_edge:         ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond62.preheader

for.inc60.for.body43_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.cond62:                                       ; preds = %for.body65
  %inc79 = add nuw i32 %i.1172, 1
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %rpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %rpf_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rpf_count, align 4
  %cmp64 = icmp ult i32 %inc79, %51
  br i1 %cmp64, label %for.cond62.for.body65_crit_edge, label %for.cond62.for.cond81.preheader_crit_edge

for.cond62.for.cond81.preheader_crit_edge:        ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond81.preheader

for.cond62.for.body65_crit_edge:                  ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body65

for.cond81.preheader:                             ; preds = %for.cond62.for.cond81.preheader_crit_edge, %for.cond62.preheader.for.cond81.preheader_crit_edge
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 4
  %wpf_count173 = getelementptr inbounds %struct.vsp1_device_info, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %wpf_count173 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wpf_count173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp83174.not = icmp eq i32 %55, 0
  br i1 %cmp83174.not, label %for.cond81.preheader.cleanup104_crit_edge, label %for.cond81.preheader.for.body84_crit_edge

for.cond81.preheader.for.body84_crit_edge:        ; preds = %for.cond81.preheader
  br label %for.body84

for.cond81.preheader.cleanup104_crit_edge:        ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

for.body65:                                       ; preds = %for.cond62.for.body65_crit_edge, %for.cond62.preheader.for.body65_crit_edge
  %i.1172 = phi i32 [ %inc79, %for.cond62.for.body65_crit_edge ], [ 0, %for.cond62.preheader.for.body65_crit_edge ]
  %arrayidx67 = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 15, i32 %i.1172
  %56 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx67, align 4
  %video68 = getelementptr inbounds %struct.vsp1_rwpf, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %video68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %video68, align 4
  %video69 = getelementptr inbounds %struct.vsp1_video, ptr %59, i32 0, i32 3
  %subdev72 = getelementptr inbounds %struct.vsp1_entity, ptr %57, i32 0, i32 13
  %call74 = tail call i32 @media_create_pad_link(ptr noundef %video69, i16 noundef zeroext 0, ptr noundef %subdev72, i16 noundef zeroext 0, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %for.body65.cleanup104_crit_edge, label %for.cond62

for.body65.cleanup104_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

for.cond81:                                       ; preds = %for.body84
  %inc102 = add nuw i32 %i.2175, 1
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info, align 4
  %wpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %wpf_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wpf_count, align 4
  %cmp83 = icmp ult i32 %inc102, %63
  br i1 %cmp83, label %for.cond81.for.body84_crit_edge, label %for.cond81.cleanup104_crit_edge

for.cond81.cleanup104_crit_edge:                  ; preds = %for.cond81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

for.cond81.for.body84_crit_edge:                  ; preds = %for.cond81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body84

for.body84:                                       ; preds = %for.cond81.for.body84_crit_edge, %for.cond81.preheader.for.body84_crit_edge
  %i.2175 = phi i32 [ %inc102, %for.cond81.for.body84_crit_edge ], [ 0, %for.cond81.preheader.for.body84_crit_edge ]
  %arrayidx87 = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 19, i32 %i.2175
  %64 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx87, align 4
  %subdev89 = getelementptr inbounds %struct.vsp1_entity, ptr %65, i32 0, i32 13
  %video91 = getelementptr inbounds %struct.vsp1_rwpf, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %video91 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %video91, align 4
  %video92 = getelementptr inbounds %struct.vsp1_video, ptr %67, i32 0, i32 3
  %call94 = tail call i32 @media_create_pad_link(ptr noundef %subdev89, i16 noundef zeroext 1, ptr noundef %video92, i16 noundef zeroext 0, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %for.body84.cleanup104_crit_edge, label %for.cond81

for.body84.cleanup104_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

cleanup104:                                       ; preds = %for.body84.cleanup104_crit_edge, %for.cond81.cleanup104_crit_edge, %for.body65.cleanup104_crit_edge, %for.cond81.preheader.cleanup104_crit_edge, %if.end46.cleanup104_crit_edge, %if.then26.cleanup104_crit_edge, %if.then13.cleanup104_crit_edge, %if.end29.i.cleanup104_crit_edge
  %retval.4 = phi i32 [ %call20, %if.then13.cleanup104_crit_edge ], [ %call36, %if.then26.cleanup104_crit_edge ], [ 0, %for.cond81.preheader.cleanup104_crit_edge ], [ %call94, %for.body84.cleanup104_crit_edge ], [ 0, %for.cond81.cleanup104_crit_edge ], [ %call74, %for.body65.cleanup104_crit_edge ], [ %call56, %if.end46.cleanup104_crit_edge ], [ %call.i, %if.end29.i.cleanup104_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_drm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsp1_destroy_entities(ptr noundef %vsp1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 20
  %0 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entities, align 4
  %cmp.not65 = icmp eq ptr %1, %entities
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in66 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %entity.0 = getelementptr i8, ptr %.pn.in66, i32 -24
  %2 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in66, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in66) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in66, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in66, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in66, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in66, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vsp1_entity_destroy(ptr noundef %entity.0) #8
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %videos = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 21
  %11 = ptrtoint ptr %videos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %videos, align 4
  %cmp24.not68 = icmp eq ptr %12, %videos
  br i1 %cmp24.not68, label %for.end.for.end34_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body26:                                       ; preds = %list_del.exit64.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %video.069 = phi ptr [ %_video.0, %list_del.exit64.for.body26_crit_edge ], [ %12, %for.end.for.body26_crit_edge ]
  %13 = ptrtoint ptr %video.069 to i32
  call void @__asan_load4_noabort(i32 %13)
  %_video.0 = load ptr, ptr %video.069, align 8
  %call.i.i59 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %video.069) #8
  br i1 %call.i.i59, label %if.end.i.i62, label %for.body26.list_del.exit64_crit_edge

for.body26.list_del.exit64_crit_edge:             ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit64

if.end.i.i62:                                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i60 = getelementptr inbounds %struct.list_head, ptr %video.069, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i60, align 4
  %16 = ptrtoint ptr %video.069 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video.069, align 4
  %prev1.i.i.i61 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i61, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit64

list_del.exit64:                                  ; preds = %if.end.i.i62, %for.body26.list_del.exit64_crit_edge
  %20 = ptrtoint ptr %video.069 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %video.069, align 4
  %prev.i63 = getelementptr inbounds %struct.list_head, ptr %video.069, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i63, align 4
  tail call void @vsp1_video_cleanup(ptr noundef %video.069) #8
  %cmp24.not = icmp eq ptr %_video.0, %videos
  br i1 %cmp24.not, label %list_del.exit64.for.end34_crit_edge, label %list_del.exit64.for.body26_crit_edge

list_del.exit64.for.body26_crit_edge:             ; preds = %list_del.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

list_del.exit64.for.end34_crit_edge:              ; preds = %list_del.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.end34:                                        ; preds = %list_del.exit64.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %v4l2_dev = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 22
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 4
  %uapi = getelementptr inbounds %struct.vsp1_device_info, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %uapi to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %uapi, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %for.end34.if.end_crit_edge, label %if.then

for.end34.if.end_crit_edge:                       ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  %media_dev = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 23
  tail call void @media_device_unregister(ptr noundef %media_dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end34.if.end_crit_edge
  %media_dev35 = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 23
  tail call void @media_device_cleanup(ptr noundef %media_dev35) #8
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %uapi37 = getelementptr inbounds %struct.vsp1_device_info, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %uapi37 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %uapi37, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38.not = icmp eq i8 %29, 0
  br i1 %tobool38.not, label %if.then39, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vsp1_drm_cleanup(ptr noundef %vsp1) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_video_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_drm_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vsp1_video_suspend(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %3) #8
  %drm = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vsp1_video_resume(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fcp = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcp, align 8
  tail call void @rcar_fcp_disable(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_pm_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %wpf_count87.i = getelementptr inbounds %struct.vsp1_device_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %wpf_count87.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wpf_count87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp88.not.i = icmp eq i32 %5, 0
  br i1 %cmp88.not.i, label %if.then.for.end.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.089.i, 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %wpf_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %wpf_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wpf_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.089.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i = tail call i32 @vsp1_reset_wpf(ptr noundef %1, i32 noundef %i.089.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134742016) #8, !srcloc !96
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %rpf_count90.i = getelementptr inbounds %struct.vsp1_device_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %rpf_count90.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rpf_count90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp491.not.i = icmp eq i32 %15, 0
  br i1 %cmp491.not.i, label %for.end.i.for.cond9.preheader.i_crit_edge, label %for.end.i.for.body5.i_crit_edge

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.end.i.for.cond9.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.body5.i.for.cond9.preheader.i_crit_edge, %for.end.i.for.cond9.preheader.i_crit_edge
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %uds_count93.i = getelementptr inbounds %struct.vsp1_device_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %uds_count93.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uds_count93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1194.not.i = icmp eq i32 %19, 0
  br i1 %cmp1194.not.i, label %for.cond9.preheader.i.for.cond18.preheader.i_crit_edge, label %for.cond9.preheader.i.for.body12.i_crit_edge

for.cond9.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body12.i

for.cond9.preheader.i.for.cond18.preheader.i_crit_edge: ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond18.preheader.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.192.i = phi i32 [ %inc7.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %mul.i = shl i32 %i.192.i, 2
  %add.i = add i32 %mul.i, 8192
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %21, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 1056964608) #8, !srcloc !96
  %inc7.i = add nuw i32 %i.192.i, 1
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 4
  %rpf_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %rpf_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rpf_count.i, align 4
  %cmp4.i = icmp ult i32 %inc7.i, %25
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.cond9.preheader.i_crit_edge

for.body5.i.for.cond9.preheader.i_crit_edge:      ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.cond18.preheader.i:                           ; preds = %for.body12.i.for.cond18.preheader.i_crit_edge, %for.cond9.preheader.i.for.cond18.preheader.i_crit_edge
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %uif_count96.i = getelementptr inbounds %struct.vsp1_device_info, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %uif_count96.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uif_count96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2097.not.i = icmp eq i32 %29, 0
  br i1 %cmp2097.not.i, label %for.cond18.preheader.i.for.end26.i_crit_edge, label %for.cond18.preheader.i.for.body21.i_crit_edge

for.cond18.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond18.preheader.i
  br label %for.body21.i

for.cond18.preheader.i.for.end26.i_crit_edge:     ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.cond9.preheader.i.for.body12.i_crit_edge
  %i.295.i = phi i32 [ %inc16.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %mul13.i = shl i32 %i.295.i, 2
  %add14.i = add i32 %mul13.i, 8232
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %31, i32 %add14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 1056964608) #8, !srcloc !96
  %inc16.i = add nuw i32 %i.295.i, 1
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  %uds_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %uds_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %uds_count.i, align 4
  %cmp11.i = icmp ult i32 %inc16.i, %35
  br i1 %cmp11.i, label %for.body12.i.for.body12.i_crit_edge, label %for.body12.i.for.cond18.preheader.i_crit_edge

for.body12.i.for.cond18.preheader.i_crit_edge:    ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond18.preheader.i

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.cond18.preheader.i.for.body21.i_crit_edge
  %i.398.i = phi i32 [ %inc25.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.cond18.preheader.i.for.body21.i_crit_edge ]
  %mul22.i = shl i32 %i.398.i, 2
  %add23.i = add i32 %mul22.i, 8308
  %36 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %37, i32 %add23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 1056964608) #8, !srcloc !96
  %inc25.i = add nuw i32 %i.398.i, 1
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %uif_count.i = getelementptr inbounds %struct.vsp1_device_info, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %uif_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uif_count.i, align 4
  %cmp20.i = icmp ult i32 %inc25.i, %41
  br i1 %cmp20.i, label %for.body21.i.for.body21.i_crit_edge, label %for.body21.i.for.end26.i_crit_edge

for.body21.i.for.end26.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26.i

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i

for.end26.i:                                      ; preds = %for.body21.i.for.end26.i_crit_edge, %for.cond18.preheader.i.for.end26.i_crit_edge
  %42 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %43, i32 8228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 1056964608) #8, !srcloc !96
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %45, i32 8252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 1056964608) #8, !srcloc !96
  %46 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %47, i32 8256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 1056964608) #8, !srcloc !96
  %48 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %49, i32 8260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 1056964608) #8, !srcloc !96
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %51, i32 8264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 1056964608) #8, !srcloc !96
  %52 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %53, i32 8268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 1056964608) #8, !srcloc !96
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %features.i = getelementptr inbounds %struct.vsp1_device_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %features.i, align 4
  %and.i = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end26.i.vsp1_device_init.exit_crit_edge, label %if.then28.i

for.end26.i.vsp1_device_init.exit_crit_edge:      ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_device_init.exit

if.then28.i:                                      ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %59, i32 8272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 1056964608) #8, !srcloc !96
  br label %vsp1_device_init.exit

vsp1_device_init.exit:                            ; preds = %if.then28.i, %for.end26.i.vsp1_device_init.exit_crit_edge
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %61, i32 8276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 1057423360) #8, !srcloc !96
  %62 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %63, i32 8280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 1057423360) #8, !srcloc !96
  tail call void @vsp1_dlm_setup(ptr noundef %1) #8
  br label %if.end3

if.end3:                                          ; preds = %vsp1_device_init.exit, %entry.if.end3_crit_edge
  %fcp = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fcp, align 8
  %call4 = tail call i32 @rcar_fcp_enable(ptr noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_video_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_video_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_fcp_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_fcp_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dlm_setup(ptr noundef) local_unnamed_addr #4

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 502, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vsp1_reset_wpf._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vsp1_reset_wpf._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_vsp1__301_922_vsp1_platform_driver_init6, !9, !"__initcall__kmod_vsp1__301_922_vsp1_platform_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 922, i32 1}
!10 = !{ptr @__exitcall_vsp1_platform_driver_exit, !9, !"__exitcall_vsp1_platform_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias302, !12, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 924, i32 1}
!13 = !{ptr @__UNIQUE_ID_author303, !14, !"__UNIQUE_ID_author303", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 925, i32 1}
!15 = !{ptr @__UNIQUE_ID_description304, !16, !"__UNIQUE_ID_description304", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 926, i32 1}
!17 = !{ptr @__UNIQUE_ID_file305, !18, !"__UNIQUE_ID_file305", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 927, i32 1}
!19 = !{ptr @__UNIQUE_ID_license306, !18, !"__UNIQUE_ID_license306", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 916, i32 11}
!22 = !{ptr @vsp1_platform_driver, !23, !"vsp1_platform_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 912, i32 31}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 818, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vsp1_probe._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @vsp1_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 825, i32 3}
!31 = !{ptr @vsp1_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vsp1_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 830, i32 49}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 835, i32 4}
!37 = !{ptr @vsp1_probe.__UNIQUE_ID_ddebug299, !36, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 869, i32 3}
!40 = !{ptr @vsp1_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vsp1_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 875, i32 2}
!44 = !{ptr @vsp1_probe.__UNIQUE_ID_ddebug300, !43, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 880, i32 3}
!47 = !{ptr @vsp1_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vsp1_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 647, i32 12}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 659, i32 12}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 669, i32 12}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 692, i32 12}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 703, i32 12}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 714, i32 12}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 725, i32 12}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 734, i32 12}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 744, i32 12}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 752, i32 12}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 772, i32 12}
!71 = !{ptr @vsp1_device_infos, !72, !"vsp1_device_infos", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 644, i32 38}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 246, i32 51}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 262, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vsp1_create_entities._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @vsp1_create_entities._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @vsp1_of_match, !81, !"vsp1_of_match", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 905, i32 34}
!82 = !{ptr @vsp1_pm_ops, !83, !"vsp1_pm_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/vsp1/vsp1_drv.c", i32 635, i32 32}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 4918447}
!94 = !{i64 2152458796}
!95 = !{i64 2152460151}
!96 = !{i64 4918029}
!97 = !{i64 2148259504}
!98 = !{i64 744327, i64 744352, i64 744374, i64 744390, i64 744402, i64 744422, i64 744446, i64 744462, i64 744474}
!99 = !{i64 2148259692}
!100 = !{i64 2148741900, i64 2148741905, i64 2148741918, i64 2148741962, i64 2148741996, i64 2148742017}
!101 = !{i8 0, i8 2}
