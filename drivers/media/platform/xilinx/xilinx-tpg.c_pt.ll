; ModuleID = '/llk/IR_all_yes/drivers/media/platform/xilinx/xilinx-tpg.c_pt.bc'
source_filename = "../drivers/media/platform/xilinx/xilinx-tpg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xvip_device = type { %struct.v4l2_subdev, ptr, ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.xtpg_device = type { %struct.xvip_device, [2 x %struct.media_pad], i32, i8, [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_mbus_framefmt, ptr, i8, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, i8, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.xvip_video_format = type { i32, i32, ptr, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.xvtc_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_xilinx_tpg__296_929_xtpg_driver_init6 = internal global ptr @xtpg_driver_init, section ".initcall6.init", align 4
@xtpg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xtpg_probe, ptr @xtpg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xtpg_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xtpg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xtpg_driver_exit = internal global ptr @xtpg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [71 x i8] c"xilinx_tpg.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [60 x i8] c"xilinx_tpg.description=Xilinx Test Pattern Generator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [57 x i8] c"xilinx_tpg.file=drivers/media/platform/xilinx/xilinx-tpg\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [26 x i8] c"xilinx_tpg.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx-tpg\00", [21 x i8] zeroinitializer }, align 32
@xtpg_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,v-tpg-5.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xtpg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xtpg_pm_suspend, ptr @xtpg_pm_resume, ptr @xtpg_pm_suspend, ptr @xtpg_pm_resume, ptr @xtpg_pm_suspend, ptr @xtpg_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timing\00", [25 x i8] zeroinitializer }, align 32
@xtpg_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @xtpg_core_ops, ptr null, ptr null, ptr @xtpg_video_ops, ptr null, ptr null, ptr null, ptr @xtpg_pad_ops }, [32 x i8] zeroinitializer }, align 32
@xtpg_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @xtpg_open, ptr @xtpg_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@xtpg_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@xtpg_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"xilinx_tpg:845:(&xtpg->ctrl_handler)->_lock\00", [52 x i8] zeroinitializer }, align 32
@xtpg_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @xtpg_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@xtpg_pattern_strings = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [32 x i8] zeroinitializer }, align 32
@xtpg_ctrls = internal global { [17 x %struct.v4l2_ctrl_config], [464 x i8] } { [17 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012929, ptr @.str.41, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012930, ptr @.str.42, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012931, ptr @.str.43, i32 8, i64 0, i64 15, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012932, ptr @.str.44, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012933, ptr @.str.45, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012934, ptr @.str.46, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012935, ptr @.str.47, i32 1, i64 0, i64 255, i64 1, i64 4, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012936, ptr @.str.48, i32 1, i64 0, i64 4095, i64 1, i64 100, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012937, ptr @.str.49, i32 1, i64 0, i64 4095, i64 1, i64 100, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012938, ptr @.str.50, i32 1, i64 0, i64 65535, i64 1, i64 30, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012939, ptr @.str.51, i32 1, i64 0, i64 65535, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012940, ptr @.str.52, i32 1, i64 0, i64 65535, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012941, ptr @.str.53, i32 1, i64 0, i64 65535, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012942, ptr @.str.54, i32 1, i64 0, i64 4095, i64 1, i64 50, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012943, ptr @.str.55, i32 1, i64 0, i64 16777215, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012944, ptr @.str.56, i32 1, i64 0, i64 65535, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @xtpg_ctrl_ops, ptr null, i32 10012945, ptr @.str.57, i32 1, i64 0, i64 255, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }], [464 x i8] zeroinitializer }, align 32
@xtpg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 862, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add controls\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xtpg_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/xilinx/xilinx-tpg.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xtpg_probe._entry_ptr = internal global ptr @xtpg_probe._entry, section ".printk_index", align 4
@xtpg_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 872, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set controls\0A\00", [40 x i8] zeroinitializer }, align 32
@xtpg_probe._entry_ptr.10 = internal global ptr @xtpg_probe._entry.8, section ".printk_index", align 4
@xtpg_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 882, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register subdev\0A\00", [37 x i8] zeroinitializer }, align 32
@xtpg_probe._entry_ptr.13 = internal global ptr @xtpg_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@xtpg_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 733, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid format in DT\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xtpg_parse_of\00", [18 x i8] zeroinitializer }, align 32
@xtpg_parse_of._entry_ptr = internal global ptr @xtpg_parse_of._entry, section ".printk_index", align 4
@xtpg_parse_of._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 742, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in/out format mismatch in DT\00", [35 x i8] zeroinitializer }, align 32
@xtpg_parse_of._entry_ptr.20 = internal global ptr @xtpg_parse_of._entry.18, section ".printk_index", align 4
@xtpg_parse_of._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 759, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid number of ports %u\0A\00", [36 x i8] zeroinitializer }, align 32
@xtpg_parse_of._entry_ptr.23 = internal global ptr @xtpg_parse_of._entry.21, section ".printk_index", align 4
@xtpg_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } zeroinitializer, align 32
@xtpg_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xtpg_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@xtpg_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @xvip_enum_mbus_code, ptr @xtpg_enum_frame_size, ptr null, ptr @xtpg_get_format, ptr @xtpg_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Passthrough\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Horizontal Ramp\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Vertical Ramp\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Temporal Ramp\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Solid Red\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Solid Green\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Solid Blue\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Solid Black\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Solid White\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color Bars\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Zone Plate\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tartan Color Bars\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Cross Hatch\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vertical/Horizontal Ramps\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Black/White Checker Board\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Test Pattern: Cross Hairs\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Test Pattern: Moving Box\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Test Pattern: Color Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Test Pattern: Stuck Pixel\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Test Pattern: Noise\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Test Pattern: Motion\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Test Pattern: Motion Speed\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Test Pattern: Cross Hairs Row\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Test Pattern: Cross Hairs Column\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Test Pattern: Zplate Horizontal Start Pos\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Test Pattern: Zplate Horizontal Speed\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Test Pattern: Zplate Vertical Start Pos\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Test Pattern: Zplate Vertical Speed\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Test Pattern: Box Size\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Test Pattern: Box Color(RGB)\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Test Pattern: Stuck Pixel threshold\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Test Pattern: Noise Gain\00", [39 x i8] zeroinitializer }, align 32
@xvip_print_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.60, i32 231, ptr @.str.61, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"device found, version %u.%02x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xvip_print_version\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/xilinx/xilinx-vip.h\00", [53 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xvip_print_version._entry_ptr = internal global ptr @xvip_print_version._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [20 x i64] [i64 18, i64 32, i64 10012929, i64 10012930, i64 10012931, i64 10012932, i64 10012933, i64 10012934, i64 10012935, i64 10012936, i64 10012937, i64 10012938, i64 10012939, i64 10012940, i64 10012941, i64 10012942, i64 10012943, i64 10012944, i64 10012945, i64 10422531]
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"xtpg_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 919, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 921, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"xtpg_of_id_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 913, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"xtpg_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 911, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 791, i32 57 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"xtpg_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 477, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"xtpg_internal_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 483, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"xtpg_media_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 681, i32 45 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 845, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"xtpg_ctrl_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 459, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"xtpg_pattern_strings\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 492, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"xtpg_ctrls\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 511, i32 32 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 862, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 872, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 882, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 720, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 728, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 733, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 742, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 759, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"xtpg_core_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 463, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"xtpg_video_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 466, i32 43 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"xtpg_pad_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 470, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 998, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 493, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 494, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 495, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 496, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 497, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 498, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 499, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 500, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 501, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 502, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 503, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 504, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 505, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 506, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 507, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 508, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 515, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 524, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 533, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 541, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 550, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 559, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 568, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 578, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 588, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 598, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 608, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 618, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 628, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 638, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 648, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 657, i32 11 }
@___asan_gen_.273 = private constant [46 x i8] c"../drivers/media/platform/xilinx/xilinx-tpg.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 667, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [46 x i8] c"../drivers/media/platform/xilinx/xilinx-vip.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 225, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_xtpg_driver_exit, ptr @__initcall__kmod_xilinx_tpg__296_929_xtpg_driver_init6, ptr @xtpg_driver_exit, ptr @xtpg_parse_of._entry, ptr @xtpg_parse_of._entry.18, ptr @xtpg_parse_of._entry.21, ptr @xtpg_parse_of._entry_ptr, ptr @xtpg_parse_of._entry_ptr.20, ptr @xtpg_parse_of._entry_ptr.23, ptr @xtpg_probe._entry, ptr @xtpg_probe._entry.11, ptr @xtpg_probe._entry.8, ptr @xtpg_probe._entry_ptr, ptr @xtpg_probe._entry_ptr.10, ptr @xtpg_probe._entry_ptr.13, ptr @xvip_print_version._entry, ptr @xvip_print_version._entry_ptr, ptr @xtpg_driver, ptr @.str, ptr @xtpg_of_id_table, ptr @xtpg_pm_ops, ptr @.str.1, ptr @xtpg_ops, ptr @xtpg_internal_ops, ptr @xtpg_media_ops, ptr @xtpg_probe._key, ptr @.str.2, ptr @xtpg_ctrl_ops, ptr @xtpg_pattern_strings, ptr @xtpg_ctrls, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @xtpg_core_ops, ptr @xtpg_video_ops, ptr @xtpg_pad_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_pattern_strings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_ctrls to i32), i32 1904, i32 2368, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_parse_of._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_parse_of._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtpg_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_print_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xtpg_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xtpg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xtpg_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 644, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.xvip_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %call.i201 = tail call ptr @of_get_child_by_name(ptr noundef %2, ptr noundef nonnull @.str.14) #7
  %cmp.i = icmp eq ptr %call.i201, null
  %spec.select.i = select i1 %cmp.i, ptr %2, ptr %call.i201
  %call4.i = tail call ptr @of_get_next_child(ptr noundef %spec.select.i, ptr noundef null) #7
  %cmp5.not97.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.not97.i, label %if.end.do.end38.i_crit_edge, label %for.body.lr.ph.i

if.end.do.end38.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %vip_format.i = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %has_endpoint.0.off0103.i = phi i1 [ false, %for.body.lr.ph.i ], [ %has_endpoint.3.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %nports.0102.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nports.1.i, %for.inc.i.for.body.i_crit_edge ]
  %port.098.i = phi ptr [ %call4.i, %for.body.lr.ph.i ], [ %call32.i, %for.inc.i.for.body.i_crit_edge ]
  %call6.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %port.098.i, ptr noundef nonnull @.str.15) #7
  br i1 %call6.i, label %if.end8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %call9.i = tail call ptr @xvip_of_get_format(ptr noundef nonnull %port.098.i) #7
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xtpg_parse_of.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end8.i
  %3 = ptrtoint ptr %vip_format.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vip_format.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %vip_format.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %vip_format.i, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end13.i
  %cmp17.not.i = icmp eq ptr %4, %call9.i
  br i1 %cmp17.not.i, label %if.else.i.if.end23.i_crit_edge, label %do.end21.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

do.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  tail call void @of_node_put(ptr noundef nonnull %port.098.i) #7
  br label %cleanup

if.end23.i:                                       ; preds = %if.else.i.if.end23.i_crit_edge, %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nports.0102.i)
  %cmp24.i = icmp eq i32 %nports.0102.i, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end23.i.if.end30.i_crit_edge

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = tail call ptr @of_get_next_child(ptr noundef nonnull %port.098.i, ptr noundef null) #7
  %tobool27.not.i = icmp ne ptr %call26.i, null
  %spec.select85.i = select i1 %tobool27.not.i, i1 true, i1 %has_endpoint.0.off0103.i
  tail call void @of_node_put(ptr noundef %call26.i) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end30.i_crit_edge
  %has_endpoint.2.off0.i = phi i1 [ %spec.select85.i, %if.then25.i ], [ %has_endpoint.0.off0103.i, %if.end23.i.if.end30.i_crit_edge ]
  %inc.i = add i32 %nports.0102.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end30.i, %for.body.i.for.inc.i_crit_edge
  %nports.1.i = phi i32 [ %inc.i, %if.end30.i ], [ %nports.0102.i, %for.body.i.for.inc.i_crit_edge ]
  %has_endpoint.3.off0.i = phi i1 [ %has_endpoint.2.off0.i, %if.end30.i ], [ %has_endpoint.0.off0103.i, %for.body.i.for.inc.i_crit_edge ]
  %call32.i = tail call ptr @of_get_next_child(ptr noundef %spec.select.i, ptr noundef nonnull %port.098.i) #7
  %cmp5.not.i = icmp eq ptr %call32.i, null
  br i1 %cmp5.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %nports.0.off.i = add i32 %nports.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nports.0.off.i)
  %switch.i = icmp ult i32 %nports.0.off.i, 2
  br i1 %switch.i, label %if.end39.i, label %for.end.i.do.end38.i_crit_edge

for.end.i.do.end38.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38.i

do.end38.i:                                       ; preds = %for.end.i.do.end38.i_crit_edge, %if.end.do.end38.i_crit_edge
  %nports.0.lcssa112.i = phi i32 [ %nports.1.i, %for.end.i.do.end38.i_crit_edge ], [ 0, %if.end.do.end38.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %nports.0.lcssa112.i) #10
  br label %cleanup

if.end39.i:                                       ; preds = %for.end.i
  %npads.i = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %npads.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nports.1.i, ptr %npads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nports.1.i)
  %cmp40.i = icmp ne i32 %nports.1.i, 2
  %has_endpoint.0.off0.not.i = xor i1 %has_endpoint.3.off0.i, true
  %brmerge.i = select i1 %cmp40.i, i1 true, i1 %has_endpoint.0.off0.not.i
  br i1 %brmerge.i, label %if.end39.i.if.end5_crit_edge, label %if.then43.i

if.end39.i.if.end5_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %has_input.i = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %has_input.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %has_input.i, align 4
  br label %if.end5

xtpg_parse_of.exit:                               ; preds = %if.end8.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  tail call void @of_node_put(ptr noundef nonnull %port.098.i) #7
  %8 = ptrtoint ptr %call9.i to i32
  %cmp = icmp slt ptr %call9.i, null
  br i1 %cmp, label %xtpg_parse_of.exit.cleanup_crit_edge, label %xtpg_parse_of.exit.if.end5_crit_edge

xtpg_parse_of.exit.if.end5_crit_edge:             ; preds = %xtpg_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

xtpg_parse_of.exit.cleanup_crit_edge:             ; preds = %xtpg_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %xtpg_parse_of.exit.if.end5_crit_edge, %if.then43.i, %if.end39.i.if.end5_crit_edge
  %call7 = tail call i32 @xvip_init_resources(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call12 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #7
  %vtmux_gpio = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 14
  %9 = ptrtoint ptr %vtmux_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %vtmux_gpio, align 4
  %cmp.i202 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call12 to i32
  br label %error_resource

if.end18:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call20 = tail call ptr @xvtc_of_get(ptr noundef %12) #7
  %vtc = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 13
  %13 = ptrtoint ptr %vtc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %vtc, align 4
  %cmp.i203 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call20 to i32
  br label %error_resource

if.end26:                                         ; preds = %if.end18
  %iomem.i.i = getelementptr inbounds %struct.xvip_device, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 128) #7, !srcloc !159
  %npads = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp28 = icmp eq i32 %18, 2
  br i1 %cmp28, label %if.then29, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %flags32 = getelementptr %struct.xtpg_device, ptr %call.i, i32 0, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %flags32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %flags32, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end26.if.end36_crit_edge
  %.sink = phi i32 [ 1, %if.then29 ], [ 2, %if.end26.if.end36_crit_edge ]
  %20 = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %22 = ptrtoint ptr %vip_format.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vip_format.i, align 4
  %code = getelementptr inbounds %struct.xvip_video_format, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code, align 4
  %default_format = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 5
  %code37 = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %code37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code37, align 4
  %field = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %colorspace, align 4
  %29 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !160
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %and.i = and i32 %32, 2047
  %33 = ptrtoint ptr %default_format to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %default_format, align 4
  %and1.i = lshr i32 %32, 16
  %shr2.i = and i32 %and1.i, 2047
  %height.i = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr2.i, ptr %height.i, align 4
  %35 = ptrtoint ptr %vip_format.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vip_format.i, align 4
  %code43 = getelementptr inbounds %struct.xvip_video_format, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %code43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code43, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.end36.if.end47_crit_edge [
    i32 12308, label %if.end36.if.then46_crit_edge
    i32 12290, label %if.end36.if.then46_crit_edge240
    i32 12307, label %if.end36.if.then46_crit_edge241
    i32 12289, label %if.end36.if.then46_crit_edge242
  ]

if.end36.if.then46_crit_edge242:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end36.if.then46_crit_edge241:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end36.if.then46_crit_edge240:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end36.if.then46_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %if.end36.if.then46_crit_edge, %if.end36.if.then46_crit_edge240, %if.end36.if.then46_crit_edge241, %if.end36.if.then46_crit_edge242
  %bayer = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 7
  %40 = ptrtoint ptr %bayer to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %bayer, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end36.if.end47_crit_edge
  %formats = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 4
  %41 = call ptr @memcpy(ptr %formats, ptr %default_format, i32 48)
  %42 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp51 = icmp eq i32 %43, 2
  br i1 %cmp51, label %if.then52, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx54 = getelementptr %struct.xtpg_device, ptr %call.i, i32 0, i32 4, i32 1
  %44 = call ptr @memcpy(ptr %arrayidx54, ptr %default_format, i32 48)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47.if.end56_crit_edge
  tail call void @v4l2_subdev_init(ptr noundef nonnull %call.i, ptr noundef nonnull @xtpg_ops) #7
  %dev60 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 14
  %45 = ptrtoint ptr %dev60 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %dev60, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xtpg_internal_ops, ptr %internal_ops, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i205 = icmp eq ptr %48, null
  br i1 %tobool.not.i205, label %if.end.i, label %if.end56.dev_name.exit_crit_edge

if.end56.dev_name.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end56.dev_name.exit_crit_edge
  %retval.0.i206 = phi ptr [ %50, %if.end.i ], [ %48, %if.end56.dev_name.exit_crit_edge ]
  %call63 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %retval.0.i206, i32 noundef 32) #7
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %51 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %flags64 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags64, align 4
  %or = or i32 %53, 4
  store i32 %or, ptr %flags64, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 11
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @xtpg_media_ops, ptr %ops, align 4
  %55 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %npads, align 4
  %conv = trunc i32 %56 to i16
  %pads67 = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 1
  %call69 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext %conv, ptr noundef %pads67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %dev_name.exit.error115_crit_edge, label %if.end73

dev_name.exit.error115_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error115

if.end73:                                         ; preds = %dev_name.exit
  %ctrl_handler = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 8
  %call74 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 20, ptr noundef nonnull @xtpg_probe._key, ptr noundef nonnull @.str.2) #7
  %call76 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @xtpg_ctrl_ops, i32 noundef 10356993, i64 noundef 3, i64 noundef 8159, i64 noundef 1, i64 noundef 100) #7
  %vblank = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 10
  %57 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call76, ptr %vblank, align 4
  %call78 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @xtpg_ctrl_ops, i32 noundef 10356994, i64 noundef 3, i64 noundef 8159, i64 noundef 1, i64 noundef 100) #7
  %hblank = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 9
  %58 = ptrtoint ptr %hblank to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call78, ptr %hblank, align 4
  %call80 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler, ptr noundef nonnull @xtpg_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 15, i64 noundef 1, i8 noundef zeroext 9, ptr noundef nonnull @xtpg_pattern_strings) #7
  %pattern = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 11
  %59 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call80, ptr %pattern, align 4
  %call85 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @xtpg_ctrls, ptr noundef null) #7
  %call85.1 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 1), ptr noundef null) #7
  %call85.2 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 2), ptr noundef null) #7
  %call85.3 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 3), ptr noundef null) #7
  %call85.4 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 4), ptr noundef null) #7
  %call85.5 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 5), ptr noundef null) #7
  %call85.6 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 6), ptr noundef null) #7
  %call85.7 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 7), ptr noundef null) #7
  %call85.8 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 8), ptr noundef null) #7
  %call85.9 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 9), ptr noundef null) #7
  %call85.10 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 10), ptr noundef null) #7
  %call85.11 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 11), ptr noundef null) #7
  %call85.12 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 12), ptr noundef null) #7
  %call85.13 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 13), ptr noundef null) #7
  %call85.14 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 14), ptr noundef null) #7
  %call85.15 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 15), ptr noundef null) #7
  %call85.16 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef getelementptr inbounds ([17 x %struct.v4l2_ctrl_config], ptr @xtpg_ctrls, i32 0, i32 16), ptr noundef null) #7
  %error = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 8, i32 9
  %60 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool87.not = icmp eq i32 %61, 0
  br i1 %tobool87.not, label %if.end92, label %do.end

do.end:                                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %62 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error, align 4
  br label %error115

if.end92:                                         ; preds = %if.end73
  %ctrl_handler94 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %ctrl_handler94 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ctrl_handler, ptr %ctrl_handler94, align 4
  %lock.i = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %66, i32 noundef 0) #7
  %67 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pattern, align 4
  %maximum.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %maximum.i.i, align 8
  %71 = trunc i64 %70 to i32
  %sh_prom.i.i = add i32 %71, 1
  %notmask.i.i = shl nsw i32 -1, %sh_prom.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %72 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i.i207 = icmp eq i32 %73, 1
  br i1 %cmp.i.i207, label %if.end92.xtpg_update_pattern_control.exit_crit_edge, label %lor.lhs.false.i.i

if.end92.xtpg_update_pattern_control.exit_crit_edge: ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %xtpg_update_pattern_control.exit

lor.lhs.false.i.i:                                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %has_input.i.i = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 3
  %74 = ptrtoint ptr %has_input.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %has_input.i.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i = icmp eq i8 %75, 0
  %spec.select.i208 = select i1 %tobool.not.i.i, i32 %sub.i.i, i32 0
  br label %xtpg_update_pattern_control.exit

xtpg_update_pattern_control.exit:                 ; preds = %lor.lhs.false.i.i, %if.end92.xtpg_update_pattern_control.exit_crit_edge
  %76 = phi i32 [ %sub.i.i, %if.end92.xtpg_update_pattern_control.exit_crit_edge ], [ %spec.select.i208, %lor.lhs.false.i.i ]
  %and8.i.i = and i32 %76, 1
  %conv.i.i = zext i32 %and8.i.i to i64
  %call.i.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %68, i64 noundef 0, i64 noundef %70, i64 noundef %conv.i.i, i64 noundef 9) #7
  %77 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_unlock(ptr noundef %78) #7
  %call96 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end102, label %if.end104

do.end102:                                        ; preds = %xtpg_update_pattern_control.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %error115

if.end104:                                        ; preds = %xtpg_update_pattern_control.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %80 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i210 = getelementptr i8, ptr %81, i32 16
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210) #7, !srcloc !160
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %84 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev2, align 4
  %shr.i = lshr i32 %83, 24
  %and1.i211 = lshr i32 %83, 16
  %shr2.i212 = and i32 %and1.i211, 255
  %and3.i = lshr i32 %83, 12
  %shr4.i = and i32 %and3.i, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.58, i32 noundef %shr.i, i32 noundef %shr2.i212, i32 noundef %shr4.i) #10
  %call106 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %do.end112, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end112:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %error115

error115:                                         ; preds = %do.end112, %do.end102, %do.end, %dev_name.exit.error115_crit_edge
  %ret.0 = phi i32 [ %call69, %dev_name.exit.error115_crit_edge ], [ %63, %do.end ], [ %call96, %do.end102 ], [ %call106, %do.end112 ]
  %ctrl_handler116 = getelementptr inbounds %struct.xtpg_device, ptr %call.i, i32 0, i32 8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler116) #7
  %86 = ptrtoint ptr %vtc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vtc, align 4
  tail call void @xvtc_put(ptr noundef %87) #7
  br label %error_resource

error_resource:                                   ; preds = %error115, %if.then23, %if.then15
  %ret.1 = phi i32 [ %10, %if.then15 ], [ %14, %if.then23 ], [ %ret.0, %error115 ]
  tail call void @xvip_cleanup_resources(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_resource, %if.end104.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %xtpg_parse_of.exit.cleanup_crit_edge, %do.end38.i, %do.end21.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_resource ], [ -12, %entry.cleanup_crit_edge ], [ %8, %xtpg_parse_of.exit.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ -22, %do.end38.i ], [ -22, %do.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.xtpg_device, ptr %1, i32 0, i32 8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @xvip_cleanup_resources(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xvip_init_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xvtc_of_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvtc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvip_cleanup_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xvip_of_get_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  %config = alloca %struct.xvtc_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %formats = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 4
  %0 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %formats, align 4
  %height4 = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %iomem.i.i.i = getelementptr inbounds %struct.xvip_device, ptr %subdev, i32 0, i32 2
  %4 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !159
  %vtc = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 13
  %10 = ptrtoint ptr %vtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vtc, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @xvtc_generator_stop(ptr noundef nonnull %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %lock.i = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %13, i32 noundef 0) #7
  %pattern2.i.i = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 11
  %14 = ptrtoint ptr %pattern2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pattern2.i.i, align 4
  %maximum.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %maximum.i.i, align 8
  %18 = trunc i64 %17 to i32
  %sh_prom.i.i = add i32 %18, 1
  %notmask.i.i = shl nsw i32 -1, %sh_prom.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %npads.i.i = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 2
  %19 = ptrtoint ptr %npads.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 1
  br i1 %cmp.i.i, label %if.end.xtpg_update_pattern_control.exit_crit_edge, label %lor.lhs.false.i.i

if.end.xtpg_update_pattern_control.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xtpg_update_pattern_control.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %has_input.i.i = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 3
  %21 = ptrtoint ptr %has_input.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_input.i.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %spec.select.i = select i1 %tobool.not.i.i, i32 %sub.i.i, i32 0
  br label %xtpg_update_pattern_control.exit

xtpg_update_pattern_control.exit:                 ; preds = %lor.lhs.false.i.i, %if.end.xtpg_update_pattern_control.exit_crit_edge
  %23 = phi i32 [ %sub.i.i, %if.end.xtpg_update_pattern_control.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  %and8.i.i = and i32 %23, 1
  %conv.i.i = zext i32 %and8.i.i to i64
  %call.i.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %15, i64 noundef 0, i64 noundef %17, i64 noundef %conv.i.i, i64 noundef 9) #7
  %24 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_unlock(ptr noundef %25) #7
  %streaming = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 12
  %26 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %streaming, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %27 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height4, align 4
  %shl.i = shl i32 %28, 16
  %or.i = or i32 %shl.i, %1
  %iomem.i.i = getelementptr inbounds %struct.xvip_device, ptr %subdev, i32 0, i32 2
  %29 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #7, !srcloc !159
  %vtc13 = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 13
  %32 = ptrtoint ptr %vtc13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vtc13, align 4
  %tobool14.not = icmp eq ptr %33, null
  br i1 %tobool14.not, label %if.end9.if.end34_crit_edge, label %if.then15

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config) #7
  %34 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 1
  %35 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 2
  %36 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 3
  %37 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 4
  %38 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 5
  %39 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 6
  %40 = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 7
  %41 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %1, ptr %config, align 4
  %add = add i32 %1, 1
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %34, align 4
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %3, ptr %37, align 4
  %add16 = add i32 %3, 1
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add16, ptr %38, align 4
  %hblank = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 9
  %45 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hblank, align 4
  %call17 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %46) #7
  %add18 = add i32 %call17, %1
  %47 = tail call i32 @llvm.umin.i32(i32 %add18, i32 8191)
  %vblank = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 10
  %48 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vblank, align 4
  %call19 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %49) #7
  %add20 = add i32 %call19, %3
  %50 = tail call i32 @llvm.umin.i32(i32 %add20, i32 8191)
  %sub = add nsw i32 %47, -1
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %35, align 4
  %52 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %47, ptr %36, align 4
  %sub29 = add nsw i32 %50, -1
  %53 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub29, ptr %39, align 4
  %54 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %50, ptr %40, align 4
  %55 = ptrtoint ptr %vtc13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vtc13, align 4
  %call33 = call i32 @xvtc_generator_start(ptr noundef %56, ptr noundef nonnull %config) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then15, %if.end9.if.end34_crit_edge
  %lock = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock, align 4
  call void @mutex_lock_nested(ptr noundef %58, i32 noundef 0) #7
  %pattern = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 11
  %59 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pattern, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 23
  %61 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur, align 8
  call void @xvip_clr_and_set(ptr noundef %subdev, i32 noundef 256, i32 noundef 15, i32 noundef %62) #7
  %63 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pattern, align 4
  %cur37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %cur37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cur37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp39 = icmp eq i32 %66, 0
  %lnot = xor i1 %cmp39, true
  %maximum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %64, i32 0, i32 12
  %67 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %maximum.i, align 8
  %69 = trunc i64 %68 to i32
  %sh_prom.i = add i32 %69, 1
  %notmask.i = shl nsw i32 -1, %sh_prom.i
  %sub.i = xor i32 %notmask.i, -1
  %npads.i = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 2
  %70 = ptrtoint ptr %npads.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %npads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i = icmp eq i32 %71, 1
  br i1 %cmp.i, label %if.end34.__xtpg_update_pattern_control.exit_crit_edge, label %lor.lhs.false.i

if.end34.__xtpg_update_pattern_control.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xtpg_update_pattern_control.exit

lor.lhs.false.i:                                  ; preds = %if.end34
  %has_input.i = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 3
  %72 = ptrtoint ptr %has_input.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %has_input.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.__xtpg_update_pattern_control.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__xtpg_update_pattern_control.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xtpg_update_pattern_control.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %sub.i, -2
  %spec.select.i103 = select i1 %cmp39, i32 %and.i, i32 %sub.i
  br label %__xtpg_update_pattern_control.exit

__xtpg_update_pattern_control.exit:               ; preds = %if.end.i, %lor.lhs.false.i.__xtpg_update_pattern_control.exit_crit_edge, %if.end34.__xtpg_update_pattern_control.exit_crit_edge
  %74 = phi i32 [ %sub.i, %if.end34.__xtpg_update_pattern_control.exit_crit_edge ], [ %sub.i, %lor.lhs.false.i.__xtpg_update_pattern_control.exit_crit_edge ], [ %spec.select.i103, %if.end.i ]
  %and8.i = and i32 %74, 1
  %pattern_mask.1.i = select i1 %cmp39, i32 %74, i32 %and8.i
  %conv.i = zext i32 %pattern_mask.1.i to i64
  %75 = select i1 %cmp39, i64 0, i64 9
  %call.i = call i32 @__v4l2_ctrl_modify_range(ptr noundef %64, i64 noundef 0, i64 noundef %68, i64 noundef %conv.i, i64 noundef %75) #7
  %streaming42 = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 12
  %76 = ptrtoint ptr %streaming42 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %streaming42, align 4
  %77 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %78) #7
  br i1 %cmp39, label %__xtpg_update_pattern_control.exit.cond.end51_crit_edge, label %cond.false47

__xtpg_update_pattern_control.exit.cond.end51_crit_edge: ; preds = %__xtpg_update_pattern_control.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51

cond.false47:                                     ; preds = %__xtpg_update_pattern_control.exit
  %code = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 4, i32 0, i32 2
  %79 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %code, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %80, label %sw.default.i [
    i32 12308, label %cond.false47.cond.end51_crit_edge
    i32 12290, label %sw.bb1.i
    i32 12307, label %sw.bb2.i
    i32 12289, label %sw.bb3.i
  ]

cond.false47.cond.end51_crit_edge:                ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51

sw.bb1.i:                                         ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51

sw.bb2.i:                                         ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51

sw.bb3.i:                                         ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51

sw.default.i:                                     ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51

cond.end51:                                       ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %cond.false47.cond.end51_crit_edge, %__xtpg_update_pattern_control.exit.cond.end51_crit_edge
  %cond52 = phi i32 [ 67108864, %__xtpg_update_pattern_control.exit.cond.end51_crit_edge ], [ 67108864, %sw.default.i ], [ 50331648, %sw.bb3.i ], [ 33554432, %sw.bb2.i ], [ 16777216, %sw.bb1.i ], [ 0, %cond.false47.cond.end51_crit_edge ]
  %82 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %83, i32 292
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond52) #7, !srcloc !159
  %vtmux_gpio = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 14
  %84 = ptrtoint ptr %vtmux_gpio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vtmux_gpio, align 4
  %tobool54.not = icmp eq ptr %85, null
  br i1 %tobool54.not, label %cond.end51.if.end59_crit_edge, label %if.then55

cond.end51.if.end59_crit_edge:                    ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then55:                                        ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext = zext i1 %lnot to i32
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %85, i32 noundef %lnot.ext) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %cond.end51.if.end59_crit_edge
  %86 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iomem.i.i, align 4
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %89 = or i32 %88, 50331648
  %90 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iomem.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #7, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %xtpg_update_pattern_control.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xvtc_generator_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xvtc_generator_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvip_clr_and_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xvip_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_enum_frame_size(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %1, %conv.i
  br i1 %cmp.not.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !163

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %1, %entry.v4l2_subdev_get_try_format.exit_crit_edge ]
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %5, i32 %spec.select.i
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %v4l2_subdev_get_try_format.exit.cleanup_crit_edge

v4l2_subdev_get_try_format.exit.cleanup_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %v4l2_subdev_get_try_format.exit
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %10 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %14 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %15 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7680, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %min_height, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %min_width5 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %19 = ptrtoint ptr %min_width5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %min_width5, align 4
  %20 = load i32, ptr %arrayidx.i, align 4
  %max_width7 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %21 = ptrtoint ptr %max_width7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max_width7, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %min_height8 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %24 = ptrtoint ptr %min_height8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %min_height8, align 4
  %25 = load i32, ptr %height, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then4
  %.sink = phi i32 [ 7680, %if.then4 ], [ %25, %if.else ]
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %26 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %v4l2_subdev_get_try_format.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_get_format(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %entry.__xtpg_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__xtpg_get_pad_format.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xtpg_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !163

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__xtpg_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.xtpg_device, ptr %subdev, i32 0, i32 4, i32 %1
  br label %__xtpg_get_pad_format.exit

__xtpg_get_pad_format.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__xtpg_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__xtpg_get_pad_format.exit_crit_edge ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_set_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %entry.__xtpg_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__xtpg_get_pad_format.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xtpg_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !163

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__xtpg_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.xtpg_device, ptr %subdev, i32 0, i32 4, i32 %1
  br label %__xtpg_get_pad_format.exit

__xtpg_get_pad_format.exit:                       ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__xtpg_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__xtpg_get_pad_format.exit_crit_edge ]
  %npads = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 2
  %9 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.lhs.true, label %__xtpg_get_pad_format.exit.if.end_crit_edge

__xtpg_get_pad_format.exit.if.end_crit_edge:      ; preds = %__xtpg_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %__xtpg_get_pad_format.exit
  %11 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp3 = icmp eq i32 %12, 1
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %__xtpg_get_pad_format.exit.if.end_crit_edge
  %bayer = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 7
  %14 = ptrtoint ptr %bayer to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bayer, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %17, label %if.then4.if.end13_crit_edge [
    i32 12308, label %if.then4.if.then8_crit_edge
    i32 12290, label %if.then4.if.then8_crit_edge58
    i32 12307, label %if.then4.if.then8_crit_edge59
    i32 12289, label %if.then4.if.then8_crit_edge60
  ]

if.then4.if.then8_crit_edge60:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.then8_crit_edge59:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.then8_crit_edge58:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %if.then4.if.then8_crit_edge, %if.then4.if.then8_crit_edge58, %if.then4.if.then8_crit_edge59, %if.then4.if.then8_crit_edge60
  %code11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %code11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %code11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then4.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @xvip_set_format_size(ptr noundef %retval.0.i, ptr noundef %fmt) #7
  %format14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %format14, ptr %retval.0.i, i32 48)
  %21 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp16 = icmp eq i32 %22, 2
  br i1 %cmp16, label %if.then17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %24, label %if.then17.__xtpg_get_pad_format.exit55_crit_edge [
    i32 0, label %sw.bb.i47
    i32 1, label %sw.bb1.i53
  ]

if.then17.__xtpg_get_pad_format.exit55_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xtpg_get_pad_format.exit55

sw.bb.i47:                                        ; preds = %if.then17
  %num_pads.i.i44 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %26 = ptrtoint ptr %num_pads.i.i44 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp.not.i.i46 = icmp ugt i16 %27, 1
  br i1 %cmp.not.i.i46, label %sw.bb.i47.v4l2_subdev_get_try_format.exit.i51_crit_edge, label %do.end.i.i48, !prof !163

sw.bb.i47.v4l2_subdev_get_try_format.exit.i51_crit_edge: ; preds = %sw.bb.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i51

do.end.i.i48:                                     ; preds = %sw.bb.i47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i51

v4l2_subdev_get_try_format.exit.i51:              ; preds = %do.end.i.i48, %sw.bb.i47.v4l2_subdev_get_try_format.exit.i51_crit_edge
  %spec.select.i.i49 = phi i32 [ 0, %do.end.i.i48 ], [ 1, %sw.bb.i47.v4l2_subdev_get_try_format.exit.i51_crit_edge ]
  %28 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i50 = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i.i49
  br label %__xtpg_get_pad_format.exit55

sw.bb1.i53:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i52 = getelementptr %struct.xtpg_device, ptr %subdev, i32 0, i32 4, i32 1
  br label %__xtpg_get_pad_format.exit55

__xtpg_get_pad_format.exit55:                     ; preds = %sw.bb1.i53, %v4l2_subdev_get_try_format.exit.i51, %if.then17.__xtpg_get_pad_format.exit55_crit_edge
  %retval.0.i54 = phi ptr [ %arrayidx.i52, %sw.bb1.i53 ], [ %arrayidx.i.i50, %v4l2_subdev_get_try_format.exit.i51 ], [ null, %if.then17.__xtpg_get_pad_format.exit55_crit_edge ]
  %30 = call ptr @memcpy(ptr %retval.0.i54, ptr %format14, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %__xtpg_get_pad_format.exit55, %if.end13.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvip_set_format_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_open(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !164

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %default_format = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %5, ptr %default_format, i32 48)
  %npads = getelementptr inbounds %struct.xtpg_device, ptr %subdev, i32 0, i32 2
  %7 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %v4l2_subdev_get_try_format.exit.if.end_crit_edge

v4l2_subdev_get_try_format.exit.if.end_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %v4l2_subdev_get_try_format.exit
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %11 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.not.i13 = icmp ugt i16 %12, 1
  br i1 %cmp.not.i13, label %if.then.v4l2_subdev_get_try_format.exit15_crit_edge, label %do.end.i14, !prof !163

if.then.v4l2_subdev_get_try_format.exit15_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit15

do.end.i14:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit15

v4l2_subdev_get_try_format.exit15:                ; preds = %do.end.i14, %if.then.v4l2_subdev_get_try_format.exit15_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i14 ], [ 1, %if.then.v4l2_subdev_get_try_format.exit15_crit_edge ]
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %14, i32 %spec.select.i
  %15 = call ptr @memcpy(ptr %arrayidx.i, ptr %default_format, i32 48)
  br label %if.end

if.end:                                           ; preds = %v4l2_subdev_get_try_format.exit15, %v4l2_subdev_get_try_format.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xtpg_close(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %fh) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -436
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10422531, label %sw.bb
    i32 10012929, label %sw.bb1
    i32 10012930, label %sw.bb4
    i32 10012931, label %sw.bb8
    i32 10012932, label %sw.bb11
    i32 10012933, label %sw.bb15
    i32 10012934, label %sw.bb19
    i32 10012935, label %sw.bb23
    i32 10012936, label %sw.bb26
    i32 10012937, label %sw.bb30
    i32 10012938, label %sw.bb34
    i32 10012939, label %sw.bb38
    i32 10012940, label %sw.bb42
    i32 10012941, label %sw.bb46
    i32 10012942, label %sw.bb50
    i32 10012943, label %sw.bb53
    i32 10012944, label %sw.bb56
    i32 10012945, label %sw.bb59
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 15, i32 noundef %6) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  tail call void @xvip_clr_or_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 16, i1 noundef zeroext %tobool) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7 = icmp ne i32 %10, 0
  tail call void @xvip_clr_or_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 32, i1 noundef zeroext %tobool7) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val10, align 4
  %shl = shl i32 %12, 6
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 960, i32 noundef %shl) #7
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14 = icmp ne i32 %14, 0
  tail call void @xvip_clr_or_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 512, i1 noundef zeroext %tobool14) #7
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18 = icmp ne i32 %16, 0
  tail call void @xvip_clr_or_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 1024, i1 noundef zeroext %tobool18) #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22 = icmp ne i32 %18, 0
  tail call void @xvip_clr_or_set(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 4096, i1 noundef zeroext %tobool22) #7
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val25, align 4
  %iomem.i = getelementptr i8, ptr %1, i32 -236
  %21 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #7, !srcloc !159
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val28, align 4
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 264, i32 noundef 4095, i32 noundef %25) #7
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val32, align 4
  %shl33 = shl i32 %27, 16
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 264, i32 noundef 268369920, i32 noundef %shl33) #7
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val36, align 4
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 268, i32 noundef 65535, i32 noundef %29) #7
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val40, align 4
  %shl41 = shl i32 %31, 16
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 268, i32 noundef -65536, i32 noundef %shl41) #7
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val44, align 4
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 272, i32 noundef 65535, i32 noundef %33) #7
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val48, align 4
  %shl49 = shl i32 %35, 16
  tail call void @xvip_clr_and_set(ptr noundef %add.ptr, i32 noundef 272, i32 noundef -65536, i32 noundef %shl49) #7
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val52, align 4
  %iomem.i98 = getelementptr i8, ptr %1, i32 -236
  %38 = ptrtoint ptr %iomem.i98 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %39, i32 276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %40) #7, !srcloc !159
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val55, align 4
  %iomem.i100 = getelementptr i8, ptr %1, i32 -236
  %43 = ptrtoint ptr %iomem.i100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %44, i32 280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %45) #7, !srcloc !159
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %46 = ptrtoint ptr %val58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val58, align 4
  %iomem.i102 = getelementptr i8, ptr %1, i32 -236
  %48 = ptrtoint ptr %iomem.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iomem.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %49, i32 284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %50) #7, !srcloc !159
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val61, align 4
  %iomem.i104 = getelementptr i8, ptr %1, i32 -236
  %53 = ptrtoint ptr %iomem.i104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iomem.i104, align 4
  %add.ptr.i105 = getelementptr i8, ptr %54, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %55) #7, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %sw.bb59, %sw.bb56, %sw.bb53, %sw.bb50, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb8, %sw.bb4, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvip_clr_or_set(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iomem.i.i = getelementptr inbounds %struct.xvip_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !160
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %saved_ctrl.i = getelementptr inbounds %struct.xvip_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %saved_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved_ctrl.i, align 4
  %and.i = and i32 %5, -2
  %7 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomem.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %9) #7, !srcloc !159
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xtpg_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %saved_ctrl.i = getelementptr inbounds %struct.xvip_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %saved_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved_ctrl.i, align 4
  %or.i = or i32 %3, 1
  %iomem.i.i = getelementptr inbounds %struct.xvip_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #7, !srcloc !159
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !144, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_xilinx_tpg__296_929_xtpg_driver_init6, !1, !"__initcall__kmod_xilinx_tpg__296_929_xtpg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 929, i32 1}
!2 = !{ptr @__exitcall_xtpg_driver_exit, !1, !"__exitcall_xtpg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 931, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 932, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 933, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 921, i32 12}
!12 = !{ptr @xtpg_driver, !13, !"xtpg_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 919, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 791, i32 57}
!16 = !{ptr @xtpg_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 845, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 862, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xtpg_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @xtpg_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 872, i32 3}
!29 = !{ptr @xtpg_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @xtpg_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 882, i32 3}
!33 = !{ptr @xtpg_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @xtpg_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 720, i32 37}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 728, i32 30}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 733, i32 4}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xtpg_parse_of._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @xtpg_parse_of._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 742, i32 4}
!46 = !{ptr @xtpg_parse_of._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xtpg_parse_of._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 759, i32 3}
!50 = !{ptr @xtpg_parse_of._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xtpg_parse_of._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @xtpg_ops, !53, !"xtpg_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 477, i32 37}
!54 = !{ptr @xtpg_core_ops, !55, !"xtpg_core_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 463, i32 42}
!56 = !{ptr @xtpg_video_ops, !57, !"xtpg_video_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 466, i32 43}
!58 = !{ptr @xtpg_pad_ops, !59, !"xtpg_pad_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 470, i32 41}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!62 = !{ptr @xtpg_internal_ops, !63, !"xtpg_internal_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 483, i32 46}
!64 = !{ptr @xtpg_media_ops, !65, !"xtpg_media_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 681, i32 45}
!66 = !{ptr @xtpg_ctrl_ops, !67, !"xtpg_ctrl_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 459, i32 35}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 493, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 494, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 495, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 496, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 497, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 498, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 499, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 500, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 501, i32 2}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 502, i32 2}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 503, i32 2}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 504, i32 2}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 505, i32 2}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 506, i32 2}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 507, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 508, i32 2}
!100 = !{ptr @xtpg_pattern_strings, !101, !"xtpg_pattern_strings", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 492, i32 26}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 515, i32 11}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 524, i32 11}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 533, i32 11}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 541, i32 11}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 550, i32 11}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 559, i32 11}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 568, i32 11}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 578, i32 11}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 588, i32 11}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 598, i32 11}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 608, i32 11}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 618, i32 11}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 628, i32 11}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 638, i32 11}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 648, i32 11}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 657, i32 11}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 667, i32 11}
!136 = !{ptr @xtpg_ctrls, !137, !"xtpg_ctrls", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 511, i32 32}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/xilinx/xilinx-vip.h", i32 225, i32 2}
!140 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @xvip_print_version._entry, !139, !"_entry", i1 false, i1 false}
!144 = !{ptr @xvip_print_version._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @xtpg_of_id_table, !146, !"xtpg_of_id_table", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 913, i32 34}
!147 = !{ptr @xtpg_pm_ops, !148, !"xtpg_pm_ops", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/xilinx/xilinx-tpg.c", i32 911, i32 8}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 2154921514}
!159 = !{i64 7386882}
!160 = !{i64 7387300}
!161 = !{i64 2154920159}
!162 = !{i8 0, i8 2}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{!"branch_weights", i32 1, i32 2000}
