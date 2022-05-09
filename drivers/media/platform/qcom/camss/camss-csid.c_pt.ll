; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-csid.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-csid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.csid_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.csid_format = type { i32, i8, i8, i8, i8 }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.csid_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, i32, [30 x i8], ptr, i32, ptr, %struct.completion, %struct.csid_testgen_config, %struct.csid_phy_config, [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_ctrl_handler, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.csid_testgen_config = type { i32, ptr, i8, i8 }
%struct.csid_phy_config = type { i8, i8, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.resources = type { [17 x ptr], [17 x ptr], [17 x [17 x i32]], [17 x ptr], [17 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.camss_clock = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.csiphy_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, ptr, i32, [30 x i8], ptr, ptr, i32, i32, %struct.csiphy_config, [2 x %struct.v4l2_mbus_framefmt], ptr, ptr, i32 }
%struct.csiphy_config = type { i8, i8, ptr }
%struct.csiphy_lanes_cfg = type { i32, ptr, %struct.csiphy_lane }
%struct.csiphy_lane = type { i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Incrementing\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Alternating 0x55/0xAA\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"All Zeros 0x00\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"All Ones 0xFF\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pseudo-random Data\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"User Specified\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Complex pattern\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Color box\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color bars\00", [21 x i8] zeroinitializer }, align 32
@csid_testgen_modes = dso_local constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null], [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/platform/qcom/camss/camss-csid.c\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown format\0A\00", [16 x i8] zeroinitializer }, align 32
@csid_ops_4_1 = external dso_local constant %struct.csid_hw_ops, align 4
@csid_ops_4_7 = external dso_local constant %struct.csid_hw_ops, align 4
@csid_ops_170 = external dso_local constant %struct.csid_hw_ops, align 4
@msm_csid_subdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 577, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing IRQ\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_csid_subdev_init\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_csid_subdev_init._entry_ptr = internal global ptr @msm_csid_subdev_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_%s%d\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msm_csid\00", [23 x i8] zeroinitializer }, align 32
@msm_csid_subdev_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 588, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_csid_subdev_init._entry_ptr.20 = internal global ptr @msm_csid_subdev_init._entry.18, section ".printk_index", align 4
@msm_csid_subdev_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.10, i32 636, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_csid_subdev_init._entry_ptr.23 = internal global ptr @msm_csid_subdev_init._entry.21, section ".printk_index", align 4
@csid_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @csid_core_ops, ptr null, ptr null, ptr @csid_video_ops, ptr null, ptr null, ptr null, ptr @csid_pad_ops }, [32 x i8] zeroinitializer }, align 32
@csid_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @csid_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"camss_csid:786:(&csid->ctrls)->_lock\00", [59 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.10, i32 788, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init ctrl handler: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msm_csid_register_entity\00", [39 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry_ptr = internal global ptr @msm_csid_register_entity._entry, section ".printk_index", align 4
@csid_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @csid_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.10, i32 798, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init ctrl: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry_ptr.30 = internal global ptr @msm_csid_register_entity._entry.28, section ".printk_index", align 4
@msm_csid_register_entity._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.10, i32 807, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init format: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry_ptr.33 = internal global ptr @msm_csid_register_entity._entry.31, section ".printk_index", align 4
@csid_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @csid_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.10, i32 818, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init media entity: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry_ptr.36 = internal global ptr @msm_csid_register_entity._entry.34, section ".printk_index", align 4
@msm_csid_register_entity._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.10, i32 824, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register subdev: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_csid_register_entity._entry_ptr.39 = internal global ptr @msm_csid_register_entity._entry.37, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@csid_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csid_set_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@csid_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csid_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csid_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @csid_enum_mbus_code, ptr @csid_enum_frame_size, ptr null, ptr @csid_get_format, ptr @csid_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi0\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi2\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi3\00", [27 x i8] zeroinitializer }, align 32
@csid_set_clock_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.10, i32 116, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Pixel clock is too high for CSID\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csid_set_clock_rates\00", [43 x i8] zeroinitializer }, align 32
@csid_set_clock_rates._entry_ptr = internal global ptr @csid_set_clock_rates._entry, section ".printk_index", align 4
@csid_set_clock_rates._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.10, i32 128, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clk round rate failed: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@csid_set_clock_rates._entry_ptr.49 = internal global ptr @csid_set_clock_rates._entry.47, section ".printk_index", align 4
@csid_set_clock_rates._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.10, i32 134, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk set rate failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@csid_set_clock_rates._entry_ptr.52 = internal global ptr @csid_set_clock_rates._entry.50, section ".printk_index", align 4
@csid_set_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.10, i32 223, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not sync v4l2 controls: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csid_set_stream\00", [16 x i8] zeroinitializer }, align 32
@csid_set_stream._entry_ptr = internal global ptr @csid_set_stream._entry, section ".printk_index", align 4
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@switch.table.msm_csid_subdev_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @csid_ops_4_1, ptr @csid_ops_4_7, ptr @csid_ops_4_7, ptr @csid_ops_170], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 31, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 32, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 33, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 34, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 35, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 36, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 37, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 38, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 39, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 40, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"csid_testgen_modes\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 30, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 74, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 577, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 582, i32 51 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 583, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 588, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 636, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"csid_v4l2_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 748, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"csid_v4l2_internal_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 754, i32 46 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 782, i32 43 }
@___asan_gen_.137 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 786, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 788, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"csid_ctrl_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 530, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 798, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 807, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"csid_media_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 758, i32 45 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 818, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 824, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 87, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"csid_core_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 731, i32 42 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"csid_video_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 737, i32 43 }
@___asan_gen_.194 = private unnamed_addr constant [13 x i8] c"csid_pad_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 741, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 101, i32 28 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 102, i32 28 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 103, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 104, i32 28 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 115, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 127, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 134, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private constant [50 x i8] c"../drivers/media/platform/qcom/camss/camss-csid.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 222, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 998, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant [34 x i8] c"switch.table.msm_csid_subdev_init\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @csid_set_clock_rates._entry, ptr @csid_set_clock_rates._entry.47, ptr @csid_set_clock_rates._entry.50, ptr @csid_set_clock_rates._entry_ptr, ptr @csid_set_clock_rates._entry_ptr.49, ptr @csid_set_clock_rates._entry_ptr.52, ptr @csid_set_stream._entry, ptr @csid_set_stream._entry_ptr, ptr @msm_csid_register_entity._entry, ptr @msm_csid_register_entity._entry.28, ptr @msm_csid_register_entity._entry.31, ptr @msm_csid_register_entity._entry.34, ptr @msm_csid_register_entity._entry.37, ptr @msm_csid_register_entity._entry_ptr, ptr @msm_csid_register_entity._entry_ptr.30, ptr @msm_csid_register_entity._entry_ptr.33, ptr @msm_csid_register_entity._entry_ptr.36, ptr @msm_csid_register_entity._entry_ptr.39, ptr @msm_csid_subdev_init._entry, ptr @msm_csid_subdev_init._entry.18, ptr @msm_csid_subdev_init._entry.21, ptr @msm_csid_subdev_init._entry_ptr, ptr @msm_csid_subdev_init._entry_ptr.20, ptr @msm_csid_subdev_init._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @csid_testgen_modes, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @csid_v4l2_ops, ptr @csid_v4l2_internal_ops, ptr @.str.24, ptr @msm_csid_register_entity._key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @csid_ctrl_ops, ptr @.str.29, ptr @.str.32, ptr @csid_media_ops, ptr @.str.35, ptr @.str.38, ptr @init_completion.__key, ptr @.str.40, ptr @csid_core_ops, ptr @csid_video_ops, ptr @csid_pad_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @switch.table.msm_csid_subdev_init], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_testgen_modes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_subdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_subdev_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_subdev_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_register_entity._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_register_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_register_entity._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_register_entity._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_register_entity._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csid_register_entity._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_set_clock_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_set_clock_rates._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_set_clock_rates._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csid_set_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_csid_subdev_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csid_find_code(ptr nocapture noundef readonly %codes, i32 noundef %ncodes, i32 noundef %match_format_idx, i32 noundef %match_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_code)
  %tobool.not = icmp eq i32 %match_code, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %match_format_idx, i32 %ncodes)
  %cmp.not = icmp uge i32 %match_format_idx, %ncodes
  %0 = and i1 %cmp.not, %tobool.not
  br i1 %0, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncodes)
  %cmp126.not = icmp eq i32 %ncodes, 0
  br i1 %cmp126.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %codes, i32 %i.027
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %match_code)
  %cmp4 = icmp eq i32 %2, %match_code
  br i1 %cmp4, label %if.then3.cleanup_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027, i32 %match_format_idx)
  %cmp7 = icmp eq i32 %i.027, %match_format_idx
  br i1 %cmp7, label %if.then8, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9 = getelementptr i32, ptr %codes, i32 %match_format_idx
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then3.for.inc_crit_edge
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %ncodes
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then8, %for.cond.preheader.cleanup.sink.split_crit_edge
  %codes.sink = phi ptr [ %arrayidx9, %if.then8 ], [ %codes, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %codes, %for.inc.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %codes.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %codes.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %4, %cleanup.sink.split ], [ %match_code, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csid_get_fmt_entry(ptr noundef readonly %formats, i32 noundef %nformats, i32 noundef %code) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nformats)
  %cmp27.not = icmp eq i32 %nformats, 0
  br i1 %cmp27.not, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %nformats
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.csid_format, ptr %formats, i32 %i.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %code)
  %cmp2 = icmp eq i32 %1, %code
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %formats, %do.end ], [ %arrayidx, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_csid_subdev_init(ptr noundef %camss, ptr noundef %csid, ptr nocapture noundef readonly %res, i8 noundef zeroext %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %csid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %camss, ptr %csid, align 4
  %id3 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 1
  %3 = ptrtoint ptr %id3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %id, ptr %id3, align 4
  %4 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %entry.cleanup117_crit_edge

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.msm_csid_subdev_init, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ops9 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 18
  %8 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %switch.load, ptr %ops9, align 4
  %ops18 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 18
  %subdev_init = getelementptr inbounds %struct.csid_hw_ops, ptr %switch.load, i32 0, i32 6
  %9 = ptrtoint ptr %subdev_init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subdev_init, align 4
  tail call void %10(ptr noundef %csid) #10
  %reg = getelementptr inbounds %struct.resources, ptr %res, i32 0, i32 3
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %12) #10
  %base = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call to i32
  br label %cleanup117

if.end24:                                         ; preds = %switch.lookup
  %interrupt = getelementptr inbounds %struct.resources, ptr %res, i32 0, i32 4
  %15 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt, align 4
  %call26 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 1024, ptr noundef %16) #10
  %tobool.not = icmp eq ptr %call26, null
  br i1 %tobool.not, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #13
  br label %cleanup117

if.end28:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call26, align 4
  %irq = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 5
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq, align 4
  %irq_name = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end28.dev_name.exit_crit_edge

if.end28.dev_name.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end28.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end28.dev_name.exit_crit_edge ]
  %24 = ptrtoint ptr %id3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id3, align 4
  %conv = zext i8 %25 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name, i32 noundef 30, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i, ptr noundef nonnull @.str.17, i32 noundef %conv)
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %28 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops18, align 4
  %isr = getelementptr inbounds %struct.csid_hw_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %isr, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %27, ptr noundef %31, ptr noundef null, i32 noundef 524289, ptr noundef %irq_name, ptr noundef %csid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37 = icmp slt i32 %call.i, 0
  br i1 %cmp37, label %do.end42, label %if.end43

do.end42:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %call.i) #13
  br label %cleanup117

if.end43:                                         ; preds = %dev_name.exit
  %nclocks = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end43
  %storemerge = phi i32 [ 0, %if.end43 ], [ %inc, %while.cond.while.cond_crit_edge ]
  %32 = ptrtoint ptr %nclocks to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %nclocks, align 4
  %arrayidx45 = getelementptr %struct.resources, ptr %res, i32 0, i32 1, i32 %storemerge
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %34, null
  %inc = add i32 %storemerge, 1
  br i1 %tobool46.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge, i32 16) #10
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !124

devm_kcalloc.exit.thread:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %clock50207 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 7
  %37 = ptrtoint ptr %clock50207 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %clock50207, align 4
  br label %cleanup117

devm_kcalloc.exit:                                ; preds = %while.end
  %38 = extractvalue { i32, i1 } %35, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %38, i32 noundef 3520) #10
  %clock50 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 7
  %39 = ptrtoint ptr %clock50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i, ptr %clock50, align 4
  %tobool52.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool52.not, label %devm_kcalloc.exit.cleanup117_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup117_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %40 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp56223 = icmp sgt i32 %41, 0
  br i1 %cmp56223, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end105_crit_edge

for.cond.preheader.for.end105_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc103.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0224 = phi i32 [ %inc104, %for.inc103.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %42 = ptrtoint ptr %clock50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clock50, align 4
  %arrayidx60 = getelementptr %struct.camss_clock, ptr %43, i32 %i.0224
  %arrayidx62 = getelementptr %struct.resources, ptr %res, i32 0, i32 1, i32 %i.0224
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx62, align 4
  %call63 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %45) #10
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call63, ptr %arrayidx60, align 4
  %cmp.i200 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then66, label %if.end69

if.then66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %call63 to i32
  br label %cleanup117

if.end69:                                         ; preds = %for.body
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx62, align 4
  %name = getelementptr %struct.camss_clock, ptr %43, i32 %i.0224, i32 1
  %50 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %name, align 4
  %nfreqs = getelementptr %struct.camss_clock, ptr %43, i32 %i.0224, i32 3
  br label %while.cond72

while.cond72:                                     ; preds = %while.cond72.while.cond72_crit_edge, %if.end69
  %storemerge199 = phi i32 [ 0, %if.end69 ], [ %inc79, %while.cond72.while.cond72_crit_edge ]
  %51 = ptrtoint ptr %nfreqs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge199, ptr %nfreqs, align 4
  %arrayidx75 = getelementptr %struct.resources, ptr %res, i32 0, i32 2, i32 %i.0224, i32 %storemerge199
  %52 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx75, align 4
  %tobool76.not = icmp eq i32 %53, 0
  %inc79 = add i32 %storemerge199, 1
  br i1 %tobool76.not, label %while.end80, label %while.cond72.while.cond72_crit_edge

while.cond72.while.cond72_crit_edge:              ; preds = %while.cond72
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond72

while.end80:                                      ; preds = %while.cond72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge199)
  %tobool82.not = icmp eq i32 %storemerge199, 0
  br i1 %tobool82.not, label %if.then83, label %if.end84

if.then83:                                        ; preds = %while.end80
  call void @__sanitizer_cov_trace_pc() #12
  %freq = getelementptr %struct.camss_clock, ptr %43, i32 %i.0224, i32 2
  %54 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %freq, align 4
  br label %for.inc103

if.end84:                                         ; preds = %while.end80
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge199, i32 4) #10
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %devm_kcalloc.exit204.thread, label %devm_kcalloc.exit204, !prof !124

devm_kcalloc.exit204.thread:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %freq87210 = getelementptr %struct.camss_clock, ptr %43, i32 %i.0224, i32 2
  %57 = ptrtoint ptr %freq87210 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %freq87210, align 4
  br label %cleanup117

devm_kcalloc.exit204:                             ; preds = %if.end84
  %58 = extractvalue { i32, i1 } %55, 0
  %call5.i.i201 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %58, i32 noundef 3520) #10
  %freq87 = getelementptr %struct.camss_clock, ptr %43, i32 %i.0224, i32 2
  %59 = ptrtoint ptr %freq87 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i.i201, ptr %freq87, align 4
  %tobool89.not = icmp eq ptr %call5.i.i201, null
  br i1 %tobool89.not, label %devm_kcalloc.exit204.cleanup117_crit_edge, label %for.cond92.preheader

devm_kcalloc.exit204.cleanup117_crit_edge:        ; preds = %devm_kcalloc.exit204
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

for.cond92.preheader:                             ; preds = %devm_kcalloc.exit204
  %60 = ptrtoint ptr %nfreqs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nfreqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp94221.not = icmp eq i32 %61, 0
  br i1 %cmp94221.not, label %for.cond92.preheader.for.inc103_crit_edge, label %for.cond92.preheader.for.body96_crit_edge

for.cond92.preheader.for.body96_crit_edge:        ; preds = %for.cond92.preheader
  br label %for.body96

for.cond92.preheader.for.inc103_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %for.cond92.preheader.for.body96_crit_edge
  %j.0222 = phi i32 [ %inc102, %for.body96.for.body96_crit_edge ], [ 0, %for.cond92.preheader.for.body96_crit_edge ]
  %arrayidx99 = getelementptr %struct.resources, ptr %res, i32 0, i32 2, i32 %i.0224, i32 %j.0222
  %62 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx99, align 4
  %64 = ptrtoint ptr %freq87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %freq87, align 4
  %arrayidx101 = getelementptr i32, ptr %65, i32 %j.0222
  %66 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %arrayidx101, align 4
  %inc102 = add nuw i32 %j.0222, 1
  %67 = ptrtoint ptr %nfreqs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nfreqs, align 4
  %cmp94 = icmp ult i32 %inc102, %68
  br i1 %cmp94, label %for.body96.for.body96_crit_edge, label %for.body96.for.inc103_crit_edge

for.body96.for.inc103_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body96

for.inc103:                                       ; preds = %for.body96.for.inc103_crit_edge, %for.cond92.preheader.for.inc103_crit_edge, %if.then83
  %inc104 = add nuw nsw i32 %i.0224, 1
  %69 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nclocks, align 4
  %cmp56 = icmp slt i32 %inc104, %70
  br i1 %cmp56, label %for.inc103.for.body_crit_edge, label %for.inc103.for.end105_crit_edge

for.inc103.for.end105_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

for.inc103.for.body_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end105:                                       ; preds = %for.inc103.for.end105_crit_edge, %for.cond.preheader.for.end105_crit_edge
  %71 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %res, align 4
  %call107 = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef %72) #10
  %vdda = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 9
  %73 = ptrtoint ptr %vdda to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call107, ptr %vdda, align 4
  %cmp.i205 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end113, label %if.end116

do.end113:                                        ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #13
  %74 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vdda, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %cleanup117

if.end116:                                        ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #12
  %reset_complete = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 10
  %77 = ptrtoint ptr %reset_complete to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %reset_complete, align 4
  %wait.i = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #10
  br label %cleanup117

cleanup117:                                       ; preds = %if.end116, %do.end113, %devm_kcalloc.exit204.cleanup117_crit_edge, %devm_kcalloc.exit204.thread, %if.then66, %devm_kcalloc.exit.cleanup117_crit_edge, %devm_kcalloc.exit.thread, %do.end42, %do.end, %if.then21, %entry.cleanup117_crit_edge
  %retval.2 = phi i32 [ %14, %if.then21 ], [ %call.i, %do.end42 ], [ %76, %do.end113 ], [ 0, %if.end116 ], [ -22, %do.end ], [ -22, %entry.cleanup117_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup117_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit204.thread ], [ %47, %if.then66 ], [ -12, %devm_kcalloc.exit204.cleanup117_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msm_csid_get_csid_id(ptr noundef readonly %entity, ptr nocapture noundef writeonly %id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %id2 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id2, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %id, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_csid_register_entity(ptr noundef %csid, ptr noundef %v4l2_dev) local_unnamed_addr #2 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2
  %pads1 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 3
  %0 = ptrtoint ptr %csid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csid, align 4
  %dev2 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @csid_v4l2_ops) #10
  %internal_ops = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @csid_v4l2_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 12
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 9
  %id = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %conv = zext i8 %8 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, i32 noundef %conv)
  %dev_priv.i = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 11
  %9 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %csid, ptr %dev_priv.i, align 4
  %ctrls = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 14
  %call4 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @msm_csid_register_entity._key, ptr noundef nonnull @.str.25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %call4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nmodes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %nmodes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nmodes, align 4
  %modes = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %modes, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @csid_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext %11, i64 noundef 0, i8 noundef zeroext 0, ptr noundef %13) #10
  %testgen_mode = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 15
  %14 = ptrtoint ptr %testgen_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %testgen_mode, align 4
  %error = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 14, i32 9
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %16) #13
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  br label %free_ctrl

if.end18:                                         ; preds = %if.end
  %ctrl_handler = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #10
  %20 = getelementptr inbounds i8, ptr %format.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 84)
  %22 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %format.i, align 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %23 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1920, ptr %format1.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1080, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8198, ptr %code.i, align 4
  %call.i = call i32 @csid_set_format(ptr noundef %subdev, ptr noundef null, ptr noundef nonnull %format.i) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %call.i) #13
  br label %free_ctrl

if.end28:                                         ; preds = %if.end18
  %flags29 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 3, i32 0, i32 4
  %26 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %flags29, align 4
  %flags31 = getelementptr %struct.csid_device, ptr %csid, i32 0, i32 3, i32 1, i32 4
  %27 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %flags31, align 4
  %function = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 0, i32 3
  %28 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16386, ptr %function, align 4
  %ops = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 0, i32 11
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @csid_media_ops, ptr %ops, align 4
  %call34 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 2, ptr noundef %pads1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef %call34) #13
  br label %free_ctrl

if.end41:                                         ; preds = %if.end28
  %call42 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %subdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end48, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %call42) #13
  br label %free_ctrl

free_ctrl:                                        ; preds = %do.end48, %do.end40, %do.end27, %do.end13
  %ret.0 = phi i32 [ %18, %do.end13 ], [ %call.i, %do.end27 ], [ %call34, %do.end40 ], [ %call42, %do.end48 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #10
  br label %cleanup

cleanup:                                          ; preds = %free_ctrl, %if.end41.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %ret.0, %free_ctrl ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #10
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %tobool.not = icmp eq ptr %fh, null
  %cond = zext i1 %tobool.not to i32
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %3 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1920, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1080, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8198, ptr %code, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond3 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @csid_set_format(ptr noundef %sd, ptr noundef %cond3, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_csid_unregister_entity(ptr noundef %csid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #10
  %ctrls = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_set_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  %min_rate.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.camss, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !126
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !127
  br label %cleanup

if.end:                                           ; preds = %if.then
  %vdda = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdda, align 4
  %call4 = tail call i32 @regulator_enable(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i79 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.camss, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 8
  %formats.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %formats.i, align 4
  %nformats.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nformats.i, align 4
  %code.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 13, i32 0, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp27.not.i.i, label %if.end8.do.end.i.i_crit_edge, label %if.end8.for.body.i.i_crit_edge

if.end8.for.body.i.i_crit_edge:                   ; preds = %if.end8
  br label %for.body.i.i

if.end8.do.end.i.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.do.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end8.for.body.i.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.csid_format, ptr %14, i32 %i.028.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp2.i.i = icmp eq i32 %20, %18
  br i1 %cmp2.i.i, label %for.body.i.i.csid_get_fmt_entry.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.csid_get_fmt_entry.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csid_get_fmt_entry.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i.do.end.i.i_crit_edge, %if.end8.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.11) #10
  br label %csid_get_fmt_entry.exit.i

csid_get_fmt_entry.exit.i:                        ; preds = %do.end.i.i, %for.body.i.i.csid_get_fmt_entry.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %do.end.i.i ], [ %arrayidx.i.i, %for.body.i.i.csid_get_fmt_entry.exit.i_crit_edge ]
  %subdev.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 2
  %bpp.i = getelementptr inbounds %struct.csid_format, ptr %retval.0.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bpp.i, align 2
  %conv.i = zext i8 %22 to i32
  %lane_cnt.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %lane_cnt.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lane_cnt.i, align 1
  %conv3.i = zext i8 %24 to i32
  %call4.i = tail call i64 @camss_get_link_freq(ptr noundef %subdev.i, i32 noundef %conv.i, i32 noundef %conv3.i) #10
  %nclocks.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nclocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp6132.i = icmp sgt i32 %26, 0
  br i1 %cmp6132.i, label %for.body.lr.ph.i, label %csid_get_fmt_entry.exit.i.if.end15_crit_edge

csid_get_fmt_entry.exit.i.if.end15_crit_edge:     ; preds = %csid_get_fmt_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.body.lr.ph.i:                                 ; preds = %csid_get_fmt_entry.exit.i
  %27 = tail call i64 @llvm.smax.i64(i64 %call4.i, i64 0) #10
  %clock8.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 7
  %div119.i = lshr i64 %27, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc75.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0133.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc76.i, %for.inc75.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %clock8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clock8.i, align 4
  %arrayidx9.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i
  %name.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i, i32 1
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %call10.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.then22.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call12.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i.if.then22.i_crit_edge, label %lor.lhs.false14.i

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %call16.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false14.i.if.then22.i_crit_edge, label %lor.lhs.false18.i

lor.lhs.false14.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false14.i
  %call20.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false18.i.if.then22.i_crit_edge, label %if.else.i

lor.lhs.false18.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false18.i.if.then22.i_crit_edge, %lor.lhs.false14.i.if.then22.i_crit_edge, %lor.lhs.false.i.if.then22.i_crit_edge, %for.body.i.if.then22.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_rate.i) #10
  %32 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %div119.i, ptr %min_rate.i, align 8
  call void @camss_add_clock_margin(ptr noundef nonnull %min_rate.i) #10
  %nfreqs.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i, i32 3
  %33 = ptrtoint ptr %nfreqs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nfreqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp24127.not.i = icmp eq i32 %34, 0
  br i1 %cmp24127.not.i, label %if.then22.i.for.end.i_crit_edge, label %for.body26.lr.ph.i

if.then22.i.for.end.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body26.lr.ph.i:                               ; preds = %if.then22.i
  %35 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %min_rate.i, align 8
  %freq.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i, i32 2
  %37 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %freq.i, align 4
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %for.body26.lr.ph.i
  %j.0128.i = phi i32 [ 0, %for.body26.lr.ph.i ], [ %inc.i, %for.inc.i.for.body26.i_crit_edge ]
  %arrayidx27.i = getelementptr i32, ptr %38, i32 %j.0128.i
  %39 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx27.i, align 4
  %conv28.i = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv28.i)
  %cmp29.i = icmp ult i64 %36, %conv28.i
  br i1 %cmp29.i, label %for.body26.i.for.end.i_crit_edge, label %for.inc.i

for.body26.i.for.end.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body26.i
  %inc.i = add nuw i32 %j.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body26.i_crit_edge

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.end.i:                                        ; preds = %for.body26.i.for.end.i_crit_edge, %if.then22.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.then22.i.for.end.i_crit_edge ], [ %j.0128.i, %for.body26.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %34)
  %cmp34.i = icmp eq i32 %j.0.lcssa.i, %34
  br i1 %cmp34.i, label %for.end.i.do.end.i_crit_edge, label %if.end37.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.45) #13
  br label %if.then11

if.end37.i:                                       ; preds = %for.end.i
  %41 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %min_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp38.i = icmp eq i64 %42, 0
  %sub.i = add i32 %34, -1
  %spec.select.i = select i1 %cmp38.i, i32 %sub.i, i32 %j.0.lcssa.i
  %43 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx9.i, align 4
  %freq43.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i, i32 2
  %45 = ptrtoint ptr %freq43.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %freq43.i, align 4
  %arrayidx44.i = getelementptr i32, ptr %46, i32 %spec.select.i
  %47 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx44.i, align 4
  %call45.i = call i32 @clk_round_rate(ptr noundef %44, i32 noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %do.end51.i, label %if.end52.i

do.end51.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.48, i32 noundef %call45.i) #13
  br label %if.then11

if.end52.i:                                       ; preds = %if.end37.i
  %49 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx9.i, align 4
  %call54.i = call i32 @clk_set_rate(ptr noundef %50, i32 noundef %call45.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %do.end60.i, label %cleanup.i

do.end60.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.51, i32 noundef %call54.i) #13
  br label %if.then11

cleanup.i:                                        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i) #10
  br label %for.inc75.i

if.else.i:                                        ; preds = %lor.lhs.false18.i
  %nfreqs63.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i, i32 3
  %51 = ptrtoint ptr %nfreqs63.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nfreqs63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool64.not.i = icmp eq i32 %52, 0
  br i1 %tobool64.not.i, label %if.else.i.for.inc75.i_crit_edge, label %if.then65.i

if.else.i.for.inc75.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc75.i

if.then65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx9.i, align 4
  %freq67.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.0133.i, i32 2
  %55 = ptrtoint ptr %freq67.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %freq67.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %call69.i = call i32 @clk_set_rate(ptr noundef %54, i32 noundef %58) #10
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %if.then65.i, %if.else.i.for.inc75.i_crit_edge, %cleanup.i
  %inc76.i = add nuw nsw i32 %i.0133.i, 1
  %59 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nclocks.i, align 4
  %cmp6.i = icmp slt i32 %inc76.i, %60
  br i1 %cmp6.i, label %for.inc75.i.for.body.i_crit_edge, label %for.inc75.i.if.end15_crit_edge

for.inc75.i.if.end15_crit_edge:                   ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.inc75.i.for.body.i_crit_edge:                 ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then11:                                        ; preds = %do.end60.i, %do.end51.i, %do.end.i
  %retval.1.ph.i = phi i32 [ %call54.i, %do.end60.i ], [ -22, %do.end51.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i) #10
  %61 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vdda, align 4
  %call13 = call i32 @regulator_disable(ptr noundef %62) #10
  %call.i80 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  br label %cleanup

if.end15:                                         ; preds = %for.inc75.i.if.end15_crit_edge, %csid_get_fmt_entry.exit.i.if.end15_crit_edge
  %63 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nclocks.i, align 4
  %clock = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clock, align 4
  %call16 = call i32 @camss_enable_clocks(i32 noundef %64, ptr noundef %66, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdda, align 4
  %call20 = call i32 @regulator_disable(ptr noundef %68) #10
  %call.i81 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %irq = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %70) #10
  %ops = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 18
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %reset = getelementptr inbounds %struct.csid_hw_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reset, align 4
  %call23 = call i32 %74(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %76) #10
  %77 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nclocks.i, align 4
  %79 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clock, align 4
  call void @camss_disable_clocks(i32 noundef %78, ptr noundef %80) #10
  %81 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vdda, align 4
  %call30 = call i32 @regulator_disable(ptr noundef %82) #10
  %call.i82 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops, align 4
  %hw_version = getelementptr inbounds %struct.csid_hw_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_version, align 4
  %call34 = call i32 %86(ptr noundef %1) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq35 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 5
  %87 = ptrtoint ptr %irq35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq35, align 4
  tail call void @disable_irq(i32 noundef %88) #10
  %nclocks36 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 8
  %89 = ptrtoint ptr %nclocks36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nclocks36, align 4
  %clock37 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 7
  %91 = ptrtoint ptr %clock37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clock37, align 4
  tail call void @camss_disable_clocks(i32 noundef %90, ptr noundef %92) #10
  %vdda38 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 9
  %93 = ptrtoint ptr %vdda38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vdda38, align 4
  %call39 = tail call i32 @regulator_disable(ptr noundef %94) #10
  %call.i83 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end32, %if.then25, %if.then18, %if.then11, %if.then6, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %retval.1.ph.i, %if.then11 ], [ %call16, %if.then18 ], [ %call23, %if.then25 ], [ %call23, %if.end32 ], [ %call39, %if.else ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @camss_enable_clocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_disable_clocks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @camss_get_link_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_add_clock_margin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_set_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %ctrls = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %enabled = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %pads = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 3
  %call4 = tail call ptr @media_entity_remote_pad(ptr noundef %pads) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ops = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %conv = trunc i32 %enable to i8
  tail call void %11(ptr noundef %1, i8 noundef zeroext %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end8 ], [ -67, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %nformats = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.then.if.end28.sink.split_crit_edge, label %if.then.cleanup29_crit_edge

if.then.cleanup29_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.then.if.end28.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.sink.split

if.else:                                          ; preds = %entry
  %testgen_mode = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %testgen_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %testgen_mode, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.else
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %12 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  %num_pads.i.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %14 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not.i.i.not = icmp eq i16 %15, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !124

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %16 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_state, align 4
  br label %__csid_get_format.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.csid_device, ptr %1, i32 0, i32 13, i32 0
  br label %__csid_get_format.exit

__csid_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %17, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %ops = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %src_pad_code = getelementptr inbounds %struct.csid_hw_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %src_pad_code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src_pad_code, align 4
  %code9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %code9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code9, align 4
  %index10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %24 = ptrtoint ptr %index10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index10, align 4
  %call11 = tail call i32 %21(ptr noundef %1, i32 noundef %23, i32 noundef %25, i32 noundef 0) #10
  %code12 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %26 = ptrtoint ptr %code12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call11, ptr %code12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %__csid_get_format.exit.cleanup29_crit_edge, label %__csid_get_format.exit.if.end28_crit_edge

__csid_get_format.exit.if.end28_crit_edge:        ; preds = %__csid_get_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

__csid_get_format.exit.cleanup29_crit_edge:       ; preds = %__csid_get_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.else16:                                        ; preds = %if.else
  %index17 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %27 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index17, align 4
  %nformats18 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %nformats18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nformats18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp19.not = icmp ult i32 %28, %30
  br i1 %cmp19.not, label %if.else16.if.end28.sink.split_crit_edge, label %if.else16.cleanup29_crit_edge

if.else16.cleanup29_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.else16.if.end28.sink.split_crit_edge:          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else16.if.end28.sink.split_crit_edge, %if.then.if.end28.sink.split_crit_edge
  %.sink48 = phi i32 [ %5, %if.then.if.end28.sink.split_crit_edge ], [ %28, %if.else16.if.end28.sink.split_crit_edge ]
  %formats22 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %formats22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %formats22, align 4
  %arrayidx24 = getelementptr %struct.csid_format, ptr %32, i32 %.sink48
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24, align 4
  %code26 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %35 = ptrtoint ptr %code26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %code26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %__csid_get_format.exit.if.end28_crit_edge
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %if.else16.cleanup29_crit_edge, %__csid_get_format.exit.cleanup29_crit_edge, %if.then.cleanup29_crit_edge
  %retval.1 = phi i32 [ 0, %if.end28 ], [ -22, %__csid_get_format.exit.cleanup29_crit_edge ], [ -22, %if.then.cleanup29_crit_edge ], [ -22, %if.else16.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #10
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 2
  %8 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %code1, align 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %height, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %11 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %13 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %which, align 4
  call fastcc void @csid_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %17 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %min_width, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %min_height, align 4
  %21 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code1, align 4
  %23 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp6.not = icmp eq i32 %22, %24
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %format, align 4
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %height, align 4
  %27 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pad, align 4
  %29 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %which, align 4
  call fastcc void @csid_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
  %31 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %format, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %33 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_width, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %36 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !128

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csid_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.csid_device, ptr %1, i32 0, i32 13, i32 %3
  br label %__csid_get_format.exit

__csid_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__csid_get_format.exit.cleanup_crit_edge, label %if.end

__csid_get_format.exit.cleanup_crit_edge:         ; preds = %__csid_get_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__csid_get_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__csid_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__csid_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !128

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csid_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.csid_device, ptr %1, i32 0, i32 13, i32 %3
  br label %__csid_get_format.exit

__csid_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__csid_get_format.exit.cleanup_crit_edge, label %if.end

__csid_get_format.exit.cleanup_crit_edge:         ; preds = %__csid_get_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__csid_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @csid_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i33 = icmp eq i32 %18, 0
  br i1 %cmp.i33, label %if.then.i37, label %if.end.i43

if.then.i37:                                      ; preds = %if.then8
  %num_pads.i.i34 = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i34 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %cmp.not.i.i36 = icmp ugt i16 %20, 1
  br i1 %cmp.not.i.i36, label %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge, label %do.end.i.i38, !prof !128

if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge: ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i41

do.end.i.i38:                                     ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i41

v4l2_subdev_get_try_format.exit.i41:              ; preds = %do.end.i.i38, %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge
  %spec.select.i.i39 = phi i32 [ 0, %do.end.i.i38 ], [ 1, %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i40 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i.i39
  br label %__csid_get_format.exit45

if.end.i43:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i42 = getelementptr %struct.csid_device, ptr %1, i32 0, i32 13, i32 1
  br label %__csid_get_format.exit45

__csid_get_format.exit45:                         ; preds = %if.end.i43, %v4l2_subdev_get_try_format.exit.i41
  %retval.0.i44 = phi ptr [ %arrayidx.i.i40, %v4l2_subdev_get_try_format.exit.i41 ], [ %arrayidx.i42, %if.end.i43 ]
  %23 = call ptr @memcpy(ptr %retval.0.i44, ptr %format3, i32 48)
  %testgen_mode.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %testgen_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %testgen_mode.i, align 4
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp30.i = icmp eq i32 %27, 0
  br i1 %cmp30.i, label %if.then31.i, label %for.cond37.preheader.i

for.cond37.preheader.i:                           ; preds = %__csid_get_format.exit45
  %nformats38.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %nformats38.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nformats38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp39142.not.i = icmp eq i32 %29, 0
  br i1 %cmp39142.not.i, label %for.cond37.preheader.i.if.then53.i_crit_edge, label %for.body40.lr.ph.i

for.cond37.preheader.i.if.then53.i_crit_edge:     ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53.i

for.body40.lr.ph.i:                               ; preds = %for.cond37.preheader.i
  %formats41.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %formats41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %formats41.i, align 4
  %code44.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 2
  %32 = ptrtoint ptr %code44.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code44.i, align 4
  br label %for.body40.i

if.then31.i:                                      ; preds = %__csid_get_format.exit45
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  %code33.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 2
  %36 = ptrtoint ptr %code33.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then31.i
  %num_pads.i.i.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %38 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.not.i.i.not.i = icmp eq i16 %39, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !124

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %40 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_state, align 4
  br label %__csid_get_format.exit.i

if.end.i.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i46 = getelementptr %struct.csid_device, ptr %1, i32 0, i32 13, i32 0
  br label %__csid_get_format.exit.i

__csid_get_format.exit.i:                         ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %41, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i46, %if.end.i.i ]
  %42 = call ptr @memcpy(ptr %retval.0.i44, ptr %retval.0.i.i, i32 48)
  %ops.i = getelementptr inbounds %struct.csid_device, ptr %1, i32 0, i32 18
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %src_pad_code.i = getelementptr inbounds %struct.csid_hw_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %src_pad_code.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %src_pad_code.i, align 4
  %47 = ptrtoint ptr %code33.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %code33.i, align 4
  %call35.i = tail call i32 %46(ptr noundef %1, i32 noundef %48, i32 noundef 0, i32 noundef %37) #10
  %49 = ptrtoint ptr %code33.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call35.i, ptr %code33.i, align 4
  br label %csid_try_format.exit

for.cond37.i:                                     ; preds = %for.body40.i
  %inc49.i = add nuw i32 %i.1143.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %29
  br i1 %exitcond.not.i, label %for.cond37.i.if.then53.i_crit_edge, label %for.cond37.i.for.body40.i_crit_edge

for.cond37.i.for.body40.i_crit_edge:              ; preds = %for.cond37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40.i

for.cond37.i.if.then53.i_crit_edge:               ; preds = %for.cond37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53.i

for.body40.i:                                     ; preds = %for.cond37.i.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %i.1143.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %inc49.i, %for.cond37.i.for.body40.i_crit_edge ]
  %arrayidx42.i = getelementptr %struct.csid_format, ptr %31, i32 %i.1143.i
  %50 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %33)
  %cmp45.i = icmp eq i32 %51, %33
  br i1 %cmp45.i, label %for.body40.i.if.end55.i_crit_edge, label %for.cond37.i

for.body40.i.if.end55.i_crit_edge:                ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then53.i:                                      ; preds = %for.cond37.i.if.then53.i_crit_edge, %for.cond37.preheader.i.if.then53.i_crit_edge
  %code54.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 2
  %52 = ptrtoint ptr %code54.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8198, ptr %code54.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %for.body40.i.if.end55.i_crit_edge
  %53 = ptrtoint ptr %retval.0.i44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %retval.0.i44, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 1) #10
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 8191) #10
  %57 = ptrtoint ptr %retval.0.i44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %retval.0.i44, align 4
  %height70.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 1
  %58 = ptrtoint ptr %height70.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height70.i, align 4
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 1) #10
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 8191) #10
  %62 = ptrtoint ptr %height70.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %height70.i, align 4
  %field84.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 3
  %63 = ptrtoint ptr %field84.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %field84.i, align 4
  br label %csid_try_format.exit

csid_try_format.exit:                             ; preds = %if.end55.i, %__csid_get_format.exit.i
  %colorspace86.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 4
  %64 = ptrtoint ptr %colorspace86.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %colorspace86.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %csid_try_format.exit, %if.end.cleanup_crit_edge, %__csid_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__csid_get_format.exit.cleanup_crit_edge ], [ 0, %csid_try_format.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csid_try_format(ptr noundef %csid, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb29
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %nformats = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 17
  %1 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp144.not = icmp eq i32 %2, 0
  br i1 %cmp144.not, label %for.cond.preheader.if.then5_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then5_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %3 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code, align 4
  %formats = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 16
  %5 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %formats, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0145, 1
  %exitcond146.not = icmp eq i32 %inc, %2
  br i1 %exitcond146.not, label %for.cond.if.then5_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.then5_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.csid_format, ptr %6, i32 %i.0145
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp2 = icmp eq i32 %4, %8
  br i1 %cmp2, label %for.body.if.end7_crit_edge, label %for.cond

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %for.cond.if.then5_crit_edge, %for.cond.preheader.if.then5_crit_edge
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %9 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8198, ptr %code6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.if.end7_crit_edge
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8191)
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 8191)
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %testgen_mode = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 15
  %21 = ptrtoint ptr %testgen_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %testgen_mode, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp30 = icmp eq i32 %24, 0
  br i1 %cmp30, label %if.then31, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %sw.bb29
  %nformats38 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 17
  %25 = ptrtoint ptr %nformats38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nformats38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp39142.not = icmp eq i32 %26, 0
  br i1 %cmp39142.not, label %for.cond37.preheader.if.then53_crit_edge, label %for.body40.lr.ph

for.cond37.preheader.if.then53_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %formats41 = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 16
  %27 = ptrtoint ptr %formats41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %formats41, align 4
  %code44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %29 = ptrtoint ptr %code44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code44, align 4
  br label %for.body40

if.then31:                                        ; preds = %sw.bb29
  %code33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %31 = ptrtoint ptr %code33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then31
  %num_pads.i.i = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 2, i32 0, i32 5
  %33 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.not.i.i.not = icmp eq i16 %34, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !124

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  br label %__csid_get_format.exit

if.end.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.csid_device, ptr %csid, i32 0, i32 13, i32 0
  br label %__csid_get_format.exit

__csid_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %36, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %37 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  %ops = getelementptr inbounds %struct.csid_device, ptr %csid, i32 0, i32 18
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %src_pad_code = getelementptr inbounds %struct.csid_hw_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %src_pad_code to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src_pad_code, align 4
  %42 = ptrtoint ptr %code33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %code33, align 4
  %call35 = tail call i32 %41(ptr noundef %csid, i32 noundef %43, i32 noundef 0, i32 noundef %32) #10
  %44 = ptrtoint ptr %code33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call35, ptr %code33, align 4
  br label %sw.epilog

for.cond37:                                       ; preds = %for.body40
  %inc49 = add nuw i32 %i.1143, 1
  %exitcond.not = icmp eq i32 %inc49, %26
  br i1 %exitcond.not, label %for.cond37.if.then53_crit_edge, label %for.cond37.for.body40_crit_edge

for.cond37.for.body40_crit_edge:                  ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

for.cond37.if.then53_crit_edge:                   ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

for.body40:                                       ; preds = %for.cond37.for.body40_crit_edge, %for.body40.lr.ph
  %i.1143 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc49, %for.cond37.for.body40_crit_edge ]
  %arrayidx42 = getelementptr %struct.csid_format, ptr %28, i32 %i.1143
  %45 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %30)
  %cmp45 = icmp eq i32 %46, %30
  br i1 %cmp45, label %for.body40.if.end55_crit_edge, label %for.cond37

for.body40.if.end55_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %for.cond37.if.then53_crit_edge, %for.cond37.preheader.if.then53_crit_edge
  %code54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %47 = ptrtoint ptr %code54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8198, ptr %code54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %for.body40.if.end55_crit_edge
  %48 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fmt, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 1)
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 8191)
  %52 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %fmt, align 4
  %height70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %53 = ptrtoint ptr %height70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height70, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 1)
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 8191)
  %57 = ptrtoint ptr %height70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %height70, align 4
  %field84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %58 = ptrtoint ptr %field84 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %field84, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end55, %__csid_get_format.exit, %if.end7, %entry.sw.epilog_crit_edge
  %colorspace86 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %59 = ptrtoint ptr %colorspace86 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %colorspace86, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10422531, i32 %1)
  %cond = icmp eq i32 %1, 10422531
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -492
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i = icmp ne i32 %5, 0
  br i1 %tobool.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %pads.i = getelementptr i8, ptr %3, i32 -288
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pads.i) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %conv.i = zext i1 %tobool.i to i8
  %enabled.i = getelementptr i8, ptr %3, i32 -107
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %enabled.i, align 1
  %ops.i = getelementptr i8, ptr %3, i32 196
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %configure_testgen_pattern.i = getelementptr inbounds %struct.csid_hw_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %configure_testgen_pattern.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %configure_testgen_pattern.i, align 4
  %call4.i = tail call i32 %10(ptr noundef %add.ptr, i32 noundef %5) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %land.lhs.true.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call4.i, %if.end.i ], [ -16, %land.lhs.true.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csid_link_setup(ptr noundef readonly %entity, ptr noundef %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %local) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end3, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.then
  %flags4 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags4, align 4
  %2 = and i32 %and, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not.not = icmp eq i32 %2, 0
  br i1 %.not.not, label %if.end3.return_crit_edge, label %if.then9

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then9:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #10
  %3 = getelementptr inbounds i8, ptr %format, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 80)
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i, align 4
  %testgen_mode = getelementptr inbounds %struct.csid_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %testgen_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %testgen_mode, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end14, label %if.then9.cleanup.thread_crit_edge

if.then9.cleanup.thread_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end14:                                         ; preds = %if.then9
  %entity16 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %11 = ptrtoint ptr %entity16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity16, align 4
  %dev_priv.i55 = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %dev_priv.i55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i55, align 4
  %csi2 = getelementptr inbounds %struct.csiphy_device, ptr %14, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csi2, align 4
  %tobool27.not = icmp eq ptr %16, null
  br i1 %tobool27.not, label %if.end14.cleanup.thread_crit_edge, label %if.end29

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end29:                                         ; preds = %if.end14
  %id = getelementptr inbounds %struct.csiphy_device, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id, align 4
  %phy = getelementptr inbounds %struct.csid_device, ptr %6, i32 0, i32 12
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %phy, align 4
  %20 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csi2, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %conv = trunc i32 %23 to i8
  %lane_cnt = getelementptr inbounds %struct.csid_device, ptr %6, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %lane_cnt, align 1
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp6.i = icmp sgt i32 %25, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end29
  %data.i = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lane_assign.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.csiphy_lane, ptr %27, i32 %i.08.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %29 to i32
  %mul.i = shl i32 %i.08.i, 2
  %shl.i = shl i32 %conv.i, %mul.i
  %or.i = or i32 %shl.i, %lane_assign.07.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end14.cleanup.thread_crit_edge, %if.then9.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -1, %if.end14.cleanup.thread_crit_edge ], [ -16, %if.then9.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #10
  br label %return

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %lane_assign.0.lcssa.i = phi i32 [ 0, %if.end29.cleanup_crit_edge ], [ %or.i, %for.body.i.cleanup_crit_edge ]
  %lane_assign = getelementptr inbounds %struct.csid_device, ptr %6, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %lane_assign to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %lane_assign.0.lcssa.i, ptr %lane_assign, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %31 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %pad, align 4
  %32 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %format, align 4
  %subdev = getelementptr inbounds %struct.csid_device, ptr %6, i32 0, i32 2
  %call36 = call i32 @csid_set_format(ptr noundef %subdev, ptr noundef null, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #10
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %if.end3.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -16, %if.then.return_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end3.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 31, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 32, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 33, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 34, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 35, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 36, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 37, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 38, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 39, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 40, i32 2}
!20 = !{ptr @csid_testgen_modes, !21, !"csid_testgen_modes", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 30, i32 20}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 74, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 577, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @msm_csid_subdev_init._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @msm_csid_subdev_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 582, i32 51}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 583, i32 19}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 588, i32 3}
!38 = !{ptr @msm_csid_subdev_init._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @msm_csid_subdev_init._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 636, i32 3}
!42 = !{ptr @msm_csid_subdev_init._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @msm_csid_subdev_init._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 782, i32 43}
!46 = !{ptr @msm_csid_register_entity._key, !47, !"_key", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 786, i32 8}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 788, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @msm_csid_register_entity._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @msm_csid_register_entity._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 798, i32 3}
!56 = !{ptr @msm_csid_register_entity._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @msm_csid_register_entity._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 807, i32 3}
!60 = !{ptr @msm_csid_register_entity._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @msm_csid_register_entity._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 818, i32 3}
!64 = !{ptr @msm_csid_register_entity._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @msm_csid_register_entity._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 824, i32 3}
!68 = !{ptr @msm_csid_register_entity._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @msm_csid_register_entity._entry_ptr.39, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @init_completion.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/completion.h", i32 87, i32 2}
!72 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @csid_v4l2_ops, !74, !"csid_v4l2_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 748, i32 37}
!75 = !{ptr @csid_core_ops, !76, !"csid_core_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 731, i32 42}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 101, i32 28}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 102, i32 28}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 103, i32 28}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 104, i32 28}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 115, i32 5}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @csid_set_clock_rates._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @csid_set_clock_rates._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 127, i32 5}
!92 = !{ptr @csid_set_clock_rates._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @csid_set_clock_rates._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 134, i32 5}
!96 = !{ptr @csid_set_clock_rates._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @csid_set_clock_rates._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @csid_video_ops, !99, !"csid_video_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 737, i32 43}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 222, i32 4}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @csid_set_stream._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @csid_set_stream._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @csid_pad_ops, !106, !"csid_pad_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 741, i32 41}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!109 = !{ptr @csid_v4l2_internal_ops, !110, !"csid_v4l2_internal_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 754, i32 46}
!111 = !{ptr @csid_ctrl_ops, !112, !"csid_ctrl_ops", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 530, i32 35}
!113 = !{ptr @csid_media_ops, !114, !"csid_media_ops", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/qcom/camss/camss-csid.c", i32 758, i32 45}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2148258196}
!126 = !{i64 743019, i64 743044, i64 743066, i64 743082, i64 743094, i64 743114, i64 743138, i64 743154, i64 743166}
!127 = !{i64 2148258384}
!128 = !{!"branch_weights", i32 2000, i32 1}
