; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-csiphy.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-csiphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.csiphy_hw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.csiphy_format = type { i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.csiphy_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, ptr, i32, [30 x i8], ptr, ptr, i32, i32, %struct.csiphy_config, [2 x %struct.v4l2_mbus_framefmt], ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.csiphy_config = type { i8, i8, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.resources = type { [17 x ptr], [17 x ptr], [17 x [17 x i32]], [17 x ptr], [17 x ptr] }
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
%struct.camss_clock = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.csiphy_lanes_cfg = type { i32, ptr, %struct.csiphy_lane }
%struct.csiphy_lane = type { i8, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.csid_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, i32, [30 x i8], ptr, i32, ptr, %struct.completion, %struct.csid_testgen_config, %struct.csid_phy_config, [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_ctrl_handler, ptr, ptr, i32, ptr }
%struct.csid_testgen_config = type { i32, ptr, i8, i8 }
%struct.csid_phy_config = type { i8, i8, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }

@csiphy_ops_2ph_1_0 = external dso_local constant %struct.csiphy_hw_ops, align 4
@csiphy_formats_8x16 = internal constant { [17 x %struct.csiphy_format], [56 x i8] } { [17 x %struct.csiphy_format] [%struct.csiphy_format { i32 8198, i8 8 }, %struct.csiphy_format { i32 8199, i8 8 }, %struct.csiphy_format { i32 8200, i8 8 }, %struct.csiphy_format { i32 8201, i8 8 }, %struct.csiphy_format { i32 12289, i8 8 }, %struct.csiphy_format { i32 12307, i8 8 }, %struct.csiphy_format { i32 12290, i8 8 }, %struct.csiphy_format { i32 12308, i8 8 }, %struct.csiphy_format { i32 12295, i8 10 }, %struct.csiphy_format { i32 12302, i8 10 }, %struct.csiphy_format { i32 12298, i8 10 }, %struct.csiphy_format { i32 12303, i8 10 }, %struct.csiphy_format { i32 12296, i8 12 }, %struct.csiphy_format { i32 12304, i8 12 }, %struct.csiphy_format { i32 12305, i8 12 }, %struct.csiphy_format { i32 12306, i8 12 }, %struct.csiphy_format { i32 8202, i8 10 }], [56 x i8] zeroinitializer }, align 32
@csiphy_ops_3ph_1_0 = external dso_local constant %struct.csiphy_hw_ops, align 4
@csiphy_formats_8x96 = internal constant { [21 x %struct.csiphy_format], [56 x i8] } { [21 x %struct.csiphy_format] [%struct.csiphy_format { i32 8198, i8 8 }, %struct.csiphy_format { i32 8199, i8 8 }, %struct.csiphy_format { i32 8200, i8 8 }, %struct.csiphy_format { i32 8201, i8 8 }, %struct.csiphy_format { i32 12289, i8 8 }, %struct.csiphy_format { i32 12307, i8 8 }, %struct.csiphy_format { i32 12290, i8 8 }, %struct.csiphy_format { i32 12308, i8 8 }, %struct.csiphy_format { i32 12295, i8 10 }, %struct.csiphy_format { i32 12302, i8 10 }, %struct.csiphy_format { i32 12298, i8 10 }, %struct.csiphy_format { i32 12303, i8 10 }, %struct.csiphy_format { i32 12296, i8 12 }, %struct.csiphy_format { i32 12304, i8 12 }, %struct.csiphy_format { i32 12305, i8 12 }, %struct.csiphy_format { i32 12306, i8 12 }, %struct.csiphy_format { i32 12313, i8 14 }, %struct.csiphy_format { i32 12314, i8 14 }, %struct.csiphy_format { i32 12315, i8 14 }, %struct.csiphy_format { i32 12316, i8 14 }, %struct.csiphy_format { i32 8202, i8 10 }], [56 x i8] zeroinitializer }, align 32
@csiphy_formats_sdm845 = internal constant { [21 x %struct.csiphy_format], [56 x i8] } { [21 x %struct.csiphy_format] [%struct.csiphy_format { i32 8198, i8 8 }, %struct.csiphy_format { i32 8199, i8 8 }, %struct.csiphy_format { i32 8200, i8 8 }, %struct.csiphy_format { i32 8201, i8 8 }, %struct.csiphy_format { i32 12289, i8 8 }, %struct.csiphy_format { i32 12307, i8 8 }, %struct.csiphy_format { i32 12290, i8 8 }, %struct.csiphy_format { i32 12308, i8 8 }, %struct.csiphy_format { i32 12295, i8 10 }, %struct.csiphy_format { i32 12302, i8 10 }, %struct.csiphy_format { i32 12298, i8 10 }, %struct.csiphy_format { i32 12303, i8 10 }, %struct.csiphy_format { i32 12296, i8 12 }, %struct.csiphy_format { i32 12304, i8 12 }, %struct.csiphy_format { i32 12305, i8 12 }, %struct.csiphy_format { i32 12306, i8 12 }, %struct.csiphy_format { i32 12313, i8 14 }, %struct.csiphy_format { i32 12314, i8 14 }, %struct.csiphy_format { i32 12315, i8 14 }, %struct.csiphy_format { i32 12316, i8 14 }, %struct.csiphy_format { i32 8202, i8 10 }], [56 x i8] zeroinitializer }, align 32
@msm_csiphy_subdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing IRQ\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msm_csiphy_subdev_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/platform/qcom/camss/camss-csiphy.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_csiphy_subdev_init._entry_ptr = internal global ptr @msm_csiphy_subdev_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_%s%d\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msm_csiphy\00", [21 x i8] zeroinitializer }, align 32
@msm_csiphy_subdev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_csiphy_subdev_init._entry_ptr.9 = internal global ptr @msm_csiphy_subdev_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy0_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy1_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csiphy2_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_phy\00", [23 x i8] zeroinitializer }, align 32
@csiphy_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @csiphy_core_ops, ptr null, ptr null, ptr @csiphy_video_ops, ptr null, ptr null, ptr null, ptr @csiphy_pad_ops }, [32 x i8] zeroinitializer }, align 32
@csiphy_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @csiphy_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@msm_csiphy_register_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init format: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msm_csiphy_register_entity\00", [37 x i8] zeroinitializer }, align 32
@msm_csiphy_register_entity._entry_ptr = internal global ptr @msm_csiphy_register_entity._entry, section ".printk_index", align 4
@csiphy_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @csiphy_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@msm_csiphy_register_entity._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 794, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init media entity: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@msm_csiphy_register_entity._entry_ptr.21 = internal global ptr @msm_csiphy_register_entity._entry.19, section ".printk_index", align 4
@msm_csiphy_register_entity._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register subdev: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_csiphy_register_entity._entry_ptr.24 = internal global ptr @msm_csiphy_register_entity._entry.22, section ".printk_index", align 4
@csiphy_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csiphy_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@csiphy_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csiphy_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csiphy_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @csiphy_enum_mbus_code, ptr @csiphy_enum_frame_size, ptr null, ptr @csiphy_get_format, ptr @csiphy_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@csiphy_set_clock_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Pixel clock is too high for CSIPHY\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csiphy_set_clock_rates\00", [41 x i8] zeroinitializer }, align 32
@csiphy_set_clock_rates._entry_ptr = internal global ptr @csiphy_set_clock_rates._entry, section ".printk_index", align 4
@csiphy_set_clock_rates._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clk round rate failed: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@csiphy_set_clock_rates._entry_ptr.29 = internal global ptr @csiphy_set_clock_rates._entry.27, section ".printk_index", align 4
@csiphy_set_clock_rates._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk set rate failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@csiphy_set_clock_rates._entry_ptr.32 = internal global ptr @csiphy_set_clock_rates._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown format\0A\00", [16 x i8] zeroinitializer }, align 32
@csiphy_stream_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot get CSI2 transmitter's link frequency\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csiphy_stream_on\00", [47 x i8] zeroinitializer }, align 32
@csiphy_stream_on._entry_ptr = internal global ptr @csiphy_stream_on._entry, section ".printk_index", align 4
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@switch.table.msm_csiphy_subdev_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @csiphy_ops_2ph_1_0, ptr @csiphy_ops_3ph_1_0, ptr @csiphy_ops_3ph_1_0, ptr @csiphy_ops_3ph_1_0], [16 x i8] zeroinitializer }, align 32
@switch.table.msm_csiphy_subdev_init.37 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @csiphy_formats_8x16, ptr @csiphy_formats_8x96, ptr @csiphy_formats_8x96, ptr @csiphy_formats_sdm845], [16 x i8] zeroinitializer }, align 32
@switch.table.msm_csiphy_subdev_init.38 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 17, i32 21, i32 21, i32 21], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"csiphy_formats_8x16\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 32, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"csiphy_formats_8x96\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 52, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"csiphy_formats_sdm845\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 76, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 617, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 622, i32 55 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 623, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 629, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 680, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 681, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 682, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 686, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 687, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 688, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"csiphy_v4l2_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 744, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"csiphy_v4l2_internal_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 750, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 777, i32 43 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 783, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"csiphy_media_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 754, i32 45 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 794, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 800, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"csiphy_core_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 729, i32 42 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"csiphy_video_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 733, i32 43 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"csiphy_pad_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 737, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 155, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 167, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 176, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 117, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private constant [52 x i8] c"../drivers/media/platform/qcom/camss/camss-csiphy.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 273, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 998, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [36 x i8] c"switch.table.msm_csiphy_subdev_init\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [39 x i8] c"switch.table.msm_csiphy_subdev_init.37\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [39 x i8] c"switch.table.msm_csiphy_subdev_init.38\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @csiphy_set_clock_rates._entry, ptr @csiphy_set_clock_rates._entry.27, ptr @csiphy_set_clock_rates._entry.30, ptr @csiphy_set_clock_rates._entry_ptr, ptr @csiphy_set_clock_rates._entry_ptr.29, ptr @csiphy_set_clock_rates._entry_ptr.32, ptr @csiphy_stream_on._entry, ptr @csiphy_stream_on._entry_ptr, ptr @msm_csiphy_register_entity._entry, ptr @msm_csiphy_register_entity._entry.19, ptr @msm_csiphy_register_entity._entry.22, ptr @msm_csiphy_register_entity._entry_ptr, ptr @msm_csiphy_register_entity._entry_ptr.21, ptr @msm_csiphy_register_entity._entry_ptr.24, ptr @msm_csiphy_subdev_init._entry, ptr @msm_csiphy_subdev_init._entry.7, ptr @msm_csiphy_subdev_init._entry_ptr, ptr @msm_csiphy_subdev_init._entry_ptr.9, ptr @csiphy_formats_8x16, ptr @csiphy_formats_8x96, ptr @csiphy_formats_sdm845, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @csiphy_v4l2_ops, ptr @csiphy_v4l2_internal_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @csiphy_media_ops, ptr @.str.20, ptr @.str.23, ptr @csiphy_core_ops, ptr @csiphy_video_ops, ptr @csiphy_pad_ops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.msm_csiphy_subdev_init, ptr @switch.table.msm_csiphy_subdev_init.37, ptr @switch.table.msm_csiphy_subdev_init.38], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_formats_8x16 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_formats_8x96 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_formats_sdm845 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csiphy_subdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csiphy_subdev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csiphy_register_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csiphy_register_entity._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_csiphy_register_entity._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_set_clock_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_set_clock_rates._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_set_clock_rates._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_stream_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_csiphy_subdev_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_csiphy_subdev_init.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_csiphy_subdev_init.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_csiphy_subdev_init(ptr noundef %camss, ptr noundef %csiphy, ptr nocapture noundef readonly %res, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %csiphy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %camss, ptr %csiphy, align 4
  %id3 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 1
  %3 = ptrtoint ptr %id3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %id, ptr %id3, align 4
  %cfg = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 12
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cfg, align 4
  %5 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %switch.lookup, label %entry.cleanup166_crit_edge

entry.cleanup166_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.msm_csiphy_subdev_init, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep322 = getelementptr inbounds [4 x ptr], ptr @switch.table.msm_csiphy_subdev_init.37, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep322 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load323 = load ptr, ptr %switch.gep322, align 4
  %switch.gep324 = getelementptr inbounds [4 x i32], ptr @switch.table.msm_csiphy_subdev_init.38, i32 0, i32 %6
  %10 = ptrtoint ptr %switch.gep324 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load325 = load i32, ptr %switch.gep324, align 4
  %ops9 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 14
  %11 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load, ptr %ops9, align 4
  %formats10 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 15
  %12 = ptrtoint ptr %formats10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %switch.load323, ptr %formats10, align 4
  %nformats11 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 16
  %13 = ptrtoint ptr %nformats11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.load325, ptr %nformats11, align 4
  %reg = getelementptr inbounds %struct.resources, ptr %res, i32 0, i32 3
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %15) #8
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call to i32
  br label %cleanup166

if.end27:                                         ; preds = %switch.lookup
  %18 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch = icmp ult i32 %19, 2
  br i1 %switch, label %if.then33, label %if.else43

if.then33:                                        ; preds = %if.end27
  %arrayidx35 = getelementptr %struct.resources, ptr %res, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx35, align 4
  %call36 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %21) #8
  %base_clk_mux = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 5
  %22 = ptrtoint ptr %base_clk_mux to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call36, ptr %base_clk_mux, align 4
  %cmp.i271 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then39, label %if.then33.if.end45_crit_edge

if.then33.if.end45_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call36 to i32
  br label %cleanup166

if.else43:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %base_clk_mux44 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 5
  %24 = ptrtoint ptr %base_clk_mux44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %base_clk_mux44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then33.if.end45_crit_edge
  %interrupt = getelementptr inbounds %struct.resources, ptr %res, i32 0, i32 4
  %25 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interrupt, align 4
  %call47 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 1024, ptr noundef %26) #8
  %tobool.not = icmp eq ptr %call47, null
  br i1 %tobool.not, label %do.end, label %if.end49

do.end:                                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #11
  br label %cleanup166

if.end49:                                         ; preds = %if.end45
  %27 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call47, align 4
  %irq = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 6
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %irq, align 4
  %irq_name = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 7
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end49.dev_name.exit_crit_edge

if.end49.dev_name.exit_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end49.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %33, %if.end.i ], [ %31, %if.end49.dev_name.exit_crit_edge ]
  %34 = ptrtoint ptr %id3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id3, align 4
  %conv = zext i8 %35 to i32
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name, i32 noundef 30, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, ptr noundef nonnull @.str.6, i32 noundef %conv)
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %ops54 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 14
  %38 = ptrtoint ptr %ops54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops54, align 4
  %isr = getelementptr inbounds %struct.csiphy_hw_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %isr, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %37, ptr noundef %41, ptr noundef null, i32 noundef 524289, ptr noundef %irq_name, ptr noundef %csiphy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp58 = icmp slt i32 %call.i, 0
  br i1 %cmp58, label %do.end63, label %if.end64

do.end63:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %call.i) #11
  br label %cleanup166

if.end64:                                         ; preds = %dev_name.exit
  %nclocks = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end64
  %storemerge = phi i32 [ 0, %if.end64 ], [ %inc, %while.cond.while.cond_crit_edge ]
  %42 = ptrtoint ptr %nclocks to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %nclocks, align 4
  %arrayidx66 = getelementptr %struct.resources, ptr %res, i32 0, i32 1, i32 %storemerge
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx66, align 4
  %tobool67.not = icmp eq ptr %44, null
  %inc = add i32 %storemerge, 1
  br i1 %tobool67.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge, i32 16) #8
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !92

devm_kcalloc.exit.thread:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %clock71282 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 8
  %47 = ptrtoint ptr %clock71282 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %clock71282, align 4
  br label %cleanup166

devm_kcalloc.exit:                                ; preds = %while.end
  %48 = extractvalue { i32, i1 } %45, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %48, i32 noundef 3520) #8
  %clock71 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 8
  %49 = ptrtoint ptr %clock71 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i, ptr %clock71, align 4
  %tobool73.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool73.not, label %devm_kcalloc.exit.cleanup166_crit_edge, label %devm_kcalloc.exit275

devm_kcalloc.exit.cleanup166_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

devm_kcalloc.exit275:                             ; preds = %devm_kcalloc.exit
  %50 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nclocks, align 4
  %call5.i.i272 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %51, i32 noundef 3520) #8
  %rate_set = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 9
  %52 = ptrtoint ptr %rate_set to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i272, ptr %rate_set, align 4
  %tobool79.not = icmp eq ptr %call5.i.i272, null
  br i1 %tobool79.not, label %devm_kcalloc.exit275.cleanup166_crit_edge, label %for.cond.preheader

devm_kcalloc.exit275.cleanup166_crit_edge:        ; preds = %devm_kcalloc.exit275
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

for.cond.preheader:                               ; preds = %devm_kcalloc.exit275
  %53 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp83299 = icmp sgt i32 %54, 0
  br i1 %cmp83299, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup166_crit_edge

for.cond.preheader.cleanup166_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc163.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0300 = phi i32 [ %inc164, %for.inc163.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %55 = ptrtoint ptr %clock71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clock71, align 4
  %arrayidx87 = getelementptr %struct.camss_clock, ptr %56, i32 %i.0300
  %arrayidx89 = getelementptr %struct.resources, ptr %res, i32 0, i32 1, i32 %i.0300
  %57 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx89, align 4
  %call90 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %58) #8
  %59 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call90, ptr %arrayidx87, align 4
  %cmp.i276 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.then93, label %if.end96

if.then93:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call90 to i32
  br label %cleanup166

if.end96:                                         ; preds = %for.body
  %61 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx89, align 4
  %name = getelementptr %struct.camss_clock, ptr %56, i32 %i.0300, i32 1
  %63 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %name, align 4
  %nfreqs = getelementptr %struct.camss_clock, ptr %56, i32 %i.0300, i32 3
  br label %while.cond99

while.cond99:                                     ; preds = %while.cond99.while.cond99_crit_edge, %if.end96
  %storemerge270 = phi i32 [ 0, %if.end96 ], [ %inc106, %while.cond99.while.cond99_crit_edge ]
  %64 = ptrtoint ptr %nfreqs to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge270, ptr %nfreqs, align 4
  %arrayidx102 = getelementptr %struct.resources, ptr %res, i32 0, i32 2, i32 %i.0300, i32 %storemerge270
  %65 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq i32 %66, 0
  %inc106 = add i32 %storemerge270, 1
  br i1 %tobool103.not, label %while.end107, label %while.cond99.while.cond99_crit_edge

while.cond99.while.cond99_crit_edge:              ; preds = %while.cond99
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond99

while.end107:                                     ; preds = %while.cond99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge270)
  %tobool109.not = icmp eq i32 %storemerge270, 0
  br i1 %tobool109.not, label %if.then110, label %if.end111

if.then110:                                       ; preds = %while.end107
  call void @__sanitizer_cov_trace_pc() #10
  %freq = getelementptr %struct.camss_clock, ptr %56, i32 %i.0300, i32 2
  %67 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %freq, align 4
  br label %for.inc163

if.end111:                                        ; preds = %while.end107
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge270, i32 4) #8
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %devm_kcalloc.exit280.thread, label %devm_kcalloc.exit280, !prof !92

devm_kcalloc.exit280.thread:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %freq114288 = getelementptr %struct.camss_clock, ptr %56, i32 %i.0300, i32 2
  %70 = ptrtoint ptr %freq114288 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %freq114288, align 4
  br label %cleanup166

devm_kcalloc.exit280:                             ; preds = %if.end111
  %71 = extractvalue { i32, i1 } %68, 0
  %call5.i.i277 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %71, i32 noundef 3520) #8
  %freq114 = getelementptr %struct.camss_clock, ptr %56, i32 %i.0300, i32 2
  %72 = ptrtoint ptr %freq114 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call5.i.i277, ptr %freq114, align 4
  %tobool116.not = icmp eq ptr %call5.i.i277, null
  br i1 %tobool116.not, label %devm_kcalloc.exit280.cleanup166_crit_edge, label %for.cond119.preheader

devm_kcalloc.exit280.cleanup166_crit_edge:        ; preds = %devm_kcalloc.exit280
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

for.cond119.preheader:                            ; preds = %devm_kcalloc.exit280
  %73 = ptrtoint ptr %nfreqs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nfreqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp121297.not = icmp eq i32 %74, 0
  br i1 %cmp121297.not, label %for.cond119.preheader.for.end_crit_edge, label %for.cond119.preheader.for.body123_crit_edge

for.cond119.preheader.for.body123_crit_edge:      ; preds = %for.cond119.preheader
  br label %for.body123

for.cond119.preheader.for.end_crit_edge:          ; preds = %for.cond119.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body123:                                      ; preds = %for.body123.for.body123_crit_edge, %for.cond119.preheader.for.body123_crit_edge
  %j.0298 = phi i32 [ %inc129, %for.body123.for.body123_crit_edge ], [ 0, %for.cond119.preheader.for.body123_crit_edge ]
  %arrayidx126 = getelementptr %struct.resources, ptr %res, i32 0, i32 2, i32 %i.0300, i32 %j.0298
  %75 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx126, align 4
  %77 = ptrtoint ptr %freq114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %freq114, align 4
  %arrayidx128 = getelementptr i32, ptr %78, i32 %j.0298
  %79 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %76, ptr %arrayidx128, align 4
  %inc129 = add nuw i32 %j.0298, 1
  %80 = ptrtoint ptr %nfreqs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nfreqs, align 4
  %cmp121 = icmp ult i32 %inc129, %81
  br i1 %cmp121, label %for.body123.for.body123_crit_edge, label %for.body123.for.end_crit_edge

for.body123.for.end_crit_edge:                    ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body123.for.body123_crit_edge:                ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.end:                                          ; preds = %for.body123.for.end_crit_edge, %for.cond119.preheader.for.end_crit_edge
  %82 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name, align 4
  %call131 = tail call i32 @strcmp(ptr noundef %83, ptr noundef nonnull dereferenceable(14) @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %for.end.if.then141_crit_edge, label %lor.lhs.false133

for.end.if.then141_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

lor.lhs.false133:                                 ; preds = %for.end
  %call135 = tail call i32 @strcmp(ptr noundef %83, ptr noundef nonnull dereferenceable(14) @.str.11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %lor.lhs.false133.if.then141_crit_edge, label %lor.lhs.false137

lor.lhs.false133.if.then141_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

lor.lhs.false137:                                 ; preds = %lor.lhs.false133
  %call139 = tail call i32 @strcmp(ptr noundef %83, ptr noundef nonnull dereferenceable(14) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %lor.lhs.false137.if.then141_crit_edge, label %lor.lhs.false137.if.end144_crit_edge

lor.lhs.false137.if.end144_crit_edge:             ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

lor.lhs.false137.if.then141_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

if.then141:                                       ; preds = %lor.lhs.false137.if.then141_crit_edge, %lor.lhs.false133.if.then141_crit_edge, %for.end.if.then141_crit_edge
  %84 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rate_set, align 4
  %arrayidx143 = getelementptr i8, ptr %85, i32 %i.0300
  %86 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %arrayidx143, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %lor.lhs.false137.if.end144_crit_edge
  %87 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp146 = icmp eq i32 %88, 2
  br i1 %cmp146, label %land.lhs.true, label %if.end144.for.inc163_crit_edge

if.end144.for.inc163_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc163

land.lhs.true:                                    ; preds = %if.end144
  %89 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name, align 4
  %call149 = tail call i32 @strcmp(ptr noundef %90, ptr noundef nonnull dereferenceable(9) @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true.if.then159_crit_edge, label %lor.lhs.false151

land.lhs.true.if.then159_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then159

lor.lhs.false151:                                 ; preds = %land.lhs.true
  %call153 = tail call i32 @strcmp(ptr noundef %90, ptr noundef nonnull dereferenceable(9) @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %lor.lhs.false151.if.then159_crit_edge, label %lor.lhs.false155

lor.lhs.false151.if.then159_crit_edge:            ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then159

lor.lhs.false155:                                 ; preds = %lor.lhs.false151
  %call157 = tail call i32 @strcmp(ptr noundef %90, ptr noundef nonnull dereferenceable(9) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %lor.lhs.false155.if.then159_crit_edge, label %lor.lhs.false155.for.inc163_crit_edge

lor.lhs.false155.for.inc163_crit_edge:            ; preds = %lor.lhs.false155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc163

lor.lhs.false155.if.then159_crit_edge:            ; preds = %lor.lhs.false155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then159

if.then159:                                       ; preds = %lor.lhs.false155.if.then159_crit_edge, %lor.lhs.false151.if.then159_crit_edge, %land.lhs.true.if.then159_crit_edge
  %91 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rate_set, align 4
  %arrayidx161 = getelementptr i8, ptr %92, i32 %i.0300
  %93 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %arrayidx161, align 1
  br label %for.inc163

for.inc163:                                       ; preds = %if.then159, %lor.lhs.false155.for.inc163_crit_edge, %if.end144.for.inc163_crit_edge, %if.then110
  %inc164 = add nuw nsw i32 %i.0300, 1
  %94 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nclocks, align 4
  %cmp83 = icmp slt i32 %inc164, %95
  br i1 %cmp83, label %for.inc163.for.body_crit_edge, label %for.inc163.cleanup166_crit_edge

for.inc163.cleanup166_crit_edge:                  ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

for.inc163.for.body_crit_edge:                    ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup166:                                       ; preds = %for.inc163.cleanup166_crit_edge, %devm_kcalloc.exit280.cleanup166_crit_edge, %devm_kcalloc.exit280.thread, %if.then93, %for.cond.preheader.cleanup166_crit_edge, %devm_kcalloc.exit275.cleanup166_crit_edge, %devm_kcalloc.exit.cleanup166_crit_edge, %devm_kcalloc.exit.thread, %do.end63, %do.end, %if.then39, %if.then24, %entry.cleanup166_crit_edge
  %retval.2 = phi i32 [ %17, %if.then24 ], [ %23, %if.then39 ], [ %call.i, %do.end63 ], [ -22, %do.end ], [ -22, %entry.cleanup166_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup166_crit_edge ], [ -12, %devm_kcalloc.exit275.cleanup166_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %60, %if.then93 ], [ -12, %devm_kcalloc.exit280.thread ], [ 0, %for.cond.preheader.cleanup166_crit_edge ], [ 0, %for.inc163.cleanup166_crit_edge ], [ -12, %devm_kcalloc.exit280.cleanup166_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_csiphy_register_entity(ptr noundef %csiphy, ptr noundef %v4l2_dev) local_unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2
  %0 = ptrtoint ptr %csiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csiphy, align 4
  %dev2 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @csiphy_v4l2_ops) #8
  %internal_ops = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @csiphy_v4l2_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2, i32 9
  %id = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %conv = zext i8 %8 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6, i32 noundef %conv)
  %dev_priv.i = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2, i32 11
  %9 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %csiphy, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #8
  %10 = getelementptr inbounds i8, ptr %format.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 84)
  %12 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %format.i, align 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %13 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1920, ptr %format1.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1080, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8198, ptr %code.i, align 4
  %call.i = call i32 @csiphy_set_format(ptr noundef %subdev, ptr noundef null, ptr noundef nonnull %format.i) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pads1 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 3
  %flags6 = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 3, i32 0, i32 4
  %16 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags6, align 4
  %flags8 = getelementptr %struct.csiphy_device, ptr %csiphy, i32 0, i32 3, i32 1, i32 4
  %17 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %flags8, align 4
  %function = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16386, ptr %function, align 4
  %ops = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2, i32 0, i32 11
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @csiphy_media_ops, ptr %ops, align 4
  %call11 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 2, ptr noundef %pads1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %call11) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %subdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end18.cleanup_crit_edge, %do.end17, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call11, %do.end17 ], [ %call19, %do.end25 ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond3 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @csiphy_set_format(ptr noundef %sd, ptr noundef %cond3, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_csiphy_unregister_entity(ptr noundef %csiphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 2
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_set_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #0 align 64 {
entry:
  %min_rate.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup20_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup20_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  br label %cleanup20

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.camss, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %formats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %formats.i, align 4
  %nformats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nformats.i, align 4
  %code.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0, i32 2
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp28.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp28.not.i.i, label %if.end.do.end.i.i_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.do.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %14
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.do.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.csiphy_format, ptr %12, i32 %i.029.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp2.i.i = icmp eq i32 %18, %16
  br i1 %cmp2.i.i, label %for.body.i.i.csiphy_get_bpp.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.csiphy_get_bpp.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_get_bpp.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i.do.end.i.i_crit_edge, %if.end.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 117, i32 noundef 9, ptr noundef nonnull @.str.33) #8
  br label %csiphy_get_bpp.exit.i

csiphy_get_bpp.exit.i:                            ; preds = %do.end.i.i, %for.body.i.i.csiphy_get_bpp.exit.i_crit_edge
  %arrayidx.pn.i.i = phi ptr [ %12, %do.end.i.i ], [ %arrayidx.i.i, %for.body.i.i.csiphy_get_bpp.exit.i_crit_edge ]
  %retval.0.in.i.i = getelementptr inbounds %struct.csiphy_format, ptr %arrayidx.pn.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %retval.0.i.i = load i8, ptr %retval.0.in.i.i, align 4
  %csi2.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %csi2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csi2.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %subdev.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2
  %conv2.i = zext i8 %retval.0.i.i to i32
  %conv3.i = and i32 %23, 255
  %call4.i = tail call i64 @camss_get_link_freq(ptr noundef %subdev.i, i32 noundef %conv2.i, i32 noundef %conv3.i) #8
  %nclocks.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nclocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp6112.i = icmp sgt i32 %25, 0
  br i1 %cmp6112.i, label %for.body.lr.ph.i, label %csiphy_get_bpp.exit.i.if.end8_crit_edge

csiphy_get_bpp.exit.i.if.end8_crit_edge:          ; preds = %csiphy_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %csiphy_get_bpp.exit.i
  %26 = tail call i64 @llvm.smax.i64(i64 %call4.i, i64 0) #8
  %clock8.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 8
  %rate_set.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 9
  %div99.i = lshr i64 %26, 2
  %timer_clk_rate.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0113.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc58.i, %for.inc57.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %clock8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clock8.i, align 4
  %arrayidx9.i = getelementptr %struct.camss_clock, ptr %28, i32 %i.0113.i
  %29 = ptrtoint ptr %rate_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rate_set.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %30, i32 %i.0113.i
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10.i, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc57.i_crit_edge, label %if.then11.i

for.body.i.for.inc57.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc57.i

if.then11.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_rate.i) #8
  %33 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %div99.i, ptr %min_rate.i, align 8
  call void @camss_add_clock_margin(ptr noundef nonnull %min_rate.i) #8
  %nfreqs.i = getelementptr %struct.camss_clock, ptr %28, i32 %i.0113.i, i32 3
  %34 = ptrtoint ptr %nfreqs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nfreqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp13107.not.i = icmp eq i32 %35, 0
  br i1 %cmp13107.not.i, label %if.then11.i.for.end.i_crit_edge, label %for.body15.lr.ph.i

if.then11.i.for.end.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body15.lr.ph.i:                               ; preds = %if.then11.i
  %36 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %min_rate.i, align 8
  %freq.i = getelementptr %struct.camss_clock, ptr %28, i32 %i.0113.i, i32 2
  %38 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %freq.i, align 4
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %j.0108.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %inc.i, %for.inc.i.for.body15.i_crit_edge ]
  %arrayidx16.i = getelementptr i32, ptr %39, i32 %j.0108.i
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx16.i, align 4
  %conv17.i = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %conv17.i)
  %cmp18.i = icmp ult i64 %37, %conv17.i
  br i1 %cmp18.i, label %for.body15.i.for.end.i_crit_edge, label %for.inc.i

for.body15.i.for.end.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body15.i
  %inc.i = add nuw i32 %j.0108.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.end.i:                                        ; preds = %for.body15.i.for.end.i_crit_edge, %if.then11.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.then11.i.for.end.i_crit_edge ], [ %j.0108.i, %for.body15.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %35)
  %cmp23.i = icmp eq i32 %j.0.lcssa.i, %35
  br i1 %cmp23.i, label %for.end.i.do.end.i_crit_edge, label %if.end26.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25) #11
  br label %if.then6

if.end26.i:                                       ; preds = %for.end.i
  %42 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %min_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp27.i = icmp eq i64 %43, 0
  %sub.i = add i32 %35, -1
  %spec.select.i = select i1 %cmp27.i, i32 %sub.i, i32 %j.0.lcssa.i
  %44 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx9.i, align 4
  %freq32.i = getelementptr %struct.camss_clock, ptr %28, i32 %i.0113.i, i32 2
  %46 = ptrtoint ptr %freq32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %freq32.i, align 4
  %arrayidx33.i = getelementptr i32, ptr %47, i32 %spec.select.i
  %48 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx33.i, align 4
  %call34.i = call i32 @clk_round_rate(ptr noundef %45, i32 noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %do.end40.i, label %if.end41.i

do.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %call34.i) #11
  br label %if.then6

if.end41.i:                                       ; preds = %if.end26.i
  %50 = ptrtoint ptr %timer_clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call34.i, ptr %timer_clk_rate.i, align 4
  %51 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx9.i, align 4
  %call44.i = call i32 @clk_set_rate(ptr noundef %52, i32 noundef %call34.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %do.end50.i, label %cleanup.i

do.end50.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.31, i32 noundef %call44.i) #11
  br label %if.then6

cleanup.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i) #8
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %cleanup.i, %for.body.i.for.inc57.i_crit_edge
  %inc58.i = add nuw nsw i32 %i.0113.i, 1
  %53 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nclocks.i, align 4
  %cmp6.i = icmp slt i32 %inc58.i, %54
  br i1 %cmp6.i, label %for.inc57.i.for.body.i_crit_edge, label %for.inc57.i.if.end8_crit_edge

for.inc57.i.if.end8_crit_edge:                    ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then6:                                         ; preds = %do.end50.i, %do.end40.i, %do.end.i
  %retval.1.ph.i = phi i32 [ %call44.i, %do.end50.i ], [ -22, %do.end40.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i) #8
  %call.i43 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  br label %cleanup20

if.end8:                                          ; preds = %for.inc57.i.if.end8_crit_edge, %csiphy_get_bpp.exit.i.if.end8_crit_edge
  %55 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nclocks.i, align 4
  %clock = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clock, align 4
  %call9 = call i32 @camss_enable_clocks(i32 noundef %56, ptr noundef %58, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  br label %cleanup20

cleanup:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %60) #8
  %ops = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 14
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %reset = getelementptr inbounds %struct.csiphy_hw_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reset, align 4
  call void %64(ptr noundef %1) #8
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  call void %68(ptr noundef %1, ptr noundef %5) #8
  br label %cleanup20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq15 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %irq15 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq15, align 4
  tail call void @disable_irq(i32 noundef %70) #8
  %nclocks16 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 10
  %71 = ptrtoint ptr %nclocks16 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nclocks16, align 4
  %clock17 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 8
  %73 = ptrtoint ptr %clock17 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clock17, align 4
  tail call void @camss_disable_clocks(i32 noundef %72, ptr noundef %74) #8
  %call.i45 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.else, %cleanup, %if.then11, %if.then6, %do.end11.i.i.i.i.i, %if.then.i.cleanup20_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.else ], [ %call9, %if.then11 ], [ %retval.1.ph.i, %if.then6 ], [ %call.i, %if.then.i.cleanup20_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @camss_enable_clocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_disable_clocks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @camss_get_link_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_add_clock_margin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_set_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cfg1.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 12
  %csi2.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %csi2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csi2.i, align 4
  %clk.i.i = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clk.i.i, align 4
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.i.i = icmp sgt i32 %7, 0
  br i1 %cmp13.i.i, label %for.body.lr.ph.i.i, label %if.then.csiphy_get_lane_mask.exit.i_crit_edge

if.then.csiphy_get_lane_mask.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_get_lane_mask.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.015.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %lane_mask.0.in14.i.i = phi i32 [ %shl.i.i, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.csiphy_lane, ptr %9, i32 %i.015.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv4.i.i = zext i8 %11 to i32
  %shl5.i.i = shl nuw i32 1, %conv4.i.i
  %conv6.i.i = and i32 %lane_mask.0.in14.i.i, 255
  %or.i.i = or i32 %shl5.i.i, %conv6.i.i
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.body.i.i.csiphy_get_lane_mask.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.csiphy_get_lane_mask.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_get_lane_mask.exit.i

csiphy_get_lane_mask.exit.i:                      ; preds = %for.body.i.i.csiphy_get_lane_mask.exit.i_crit_edge, %if.then.csiphy_get_lane_mask.exit.i_crit_edge
  %lane_mask.0.in.lcssa.i.i = phi i32 [ %shl.i.i, %if.then.csiphy_get_lane_mask.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.csiphy_get_lane_mask.exit.i_crit_edge ]
  %lane_mask.0.i.i = trunc i32 %lane_mask.0.in.lcssa.i.i to i8
  %formats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %formats.i, align 4
  %nformats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nformats.i, align 4
  %code.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0, i32 2
  %16 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp28.not.i.i, label %csiphy_get_lane_mask.exit.i.do.end.i.i_crit_edge, label %csiphy_get_lane_mask.exit.i.for.body.i70.i_crit_edge

csiphy_get_lane_mask.exit.i.for.body.i70.i_crit_edge: ; preds = %csiphy_get_lane_mask.exit.i
  br label %for.body.i70.i

csiphy_get_lane_mask.exit.i.do.end.i.i_crit_edge: ; preds = %csiphy_get_lane_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i70.i
  %inc.i67.i = add nuw i32 %i.029.i.i, 1
  %exitcond.not.i68.i = icmp eq i32 %inc.i67.i, %15
  br i1 %exitcond.not.i68.i, label %for.cond.i.i.do.end.i.i_crit_edge, label %for.cond.i.i.for.body.i70.i_crit_edge

for.cond.i.i.for.body.i70.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i70.i

for.cond.i.i.do.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

for.body.i70.i:                                   ; preds = %for.cond.i.i.for.body.i70.i_crit_edge, %csiphy_get_lane_mask.exit.i.for.body.i70.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i67.i, %for.cond.i.i.for.body.i70.i_crit_edge ], [ 0, %csiphy_get_lane_mask.exit.i.for.body.i70.i_crit_edge ]
  %arrayidx.i69.i = getelementptr %struct.csiphy_format, ptr %13, i32 %i.029.i.i
  %18 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i69.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp2.i.i = icmp eq i32 %19, %17
  br i1 %cmp2.i.i, label %for.body.i70.i.csiphy_get_bpp.exit.i_crit_edge, label %for.cond.i.i

for.body.i70.i.csiphy_get_bpp.exit.i_crit_edge:   ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_get_bpp.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i.do.end.i.i_crit_edge, %csiphy_get_lane_mask.exit.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 117, i32 noundef 9, ptr noundef nonnull @.str.33) #8
  br label %csiphy_get_bpp.exit.i

csiphy_get_bpp.exit.i:                            ; preds = %do.end.i.i, %for.body.i70.i.csiphy_get_bpp.exit.i_crit_edge
  %arrayidx.pn.i.i = phi ptr [ %13, %do.end.i.i ], [ %arrayidx.i69.i, %for.body.i70.i.csiphy_get_bpp.exit.i_crit_edge ]
  %retval.0.in.i.i = getelementptr inbounds %struct.csiphy_format, ptr %arrayidx.pn.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %retval.0.i.i = load i8, ptr %retval.0.in.i.i, align 4
  %21 = ptrtoint ptr %csi2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csi2.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %subdev.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2
  %conv6.i = zext i8 %retval.0.i.i to i32
  %conv7.i = and i32 %24, 255
  %call8.i = tail call i64 @camss_get_link_freq(ptr noundef %subdev.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8.i)
  %cmp.i = icmp slt i64 %call8.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %csiphy_get_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.camss, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.34) #11
  br label %if.end

if.end.i:                                         ; preds = %csiphy_get_bpp.exit.i
  %base_clk_mux.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %base_clk_mux.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_clk_mux.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i.if.end40.i_crit_edge, label %if.then10.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then10.i:                                      ; preds = %if.end.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #8, !srcloc !97
  %32 = lshr i32 %31, 24
  %33 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cfg1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.not.i = icmp ne i8 %34, 0
  %35 = and i8 %lane_mask.0.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %35)
  %cmp17.i = icmp eq i8 %35, 24
  %or.cond.i = select i1 %tobool15.not.i, i1 %cmp17.i, i1 false
  br i1 %or.cond.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.i = and i32 %32, 15
  %csid_id.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %csid_id.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %csid_id.i, align 1
  %conv23.i = zext i8 %37 to i32
  %shl.i = shl nuw nsw i32 %conv23.i, 4
  %or.i = or i32 %shl.i, %conv22.i
  %conv25.i = trunc i32 %or.i to i8
  br label %if.end34.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %csid_id29.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %csid_id29.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %csid_id29.i, align 1
  %40 = trunc i32 %32 to i8
  %41 = and i8 %40, -16
  %conv33.i = or i8 %39, %41
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then19.i
  %val.0.i = phi i8 [ %conv25.i, %if.then19.i ], [ %conv33.i, %if.else.i ]
  %conv35.i = zext i8 %val.0.i to i32
  %42 = shl nuw i32 %conv35.i, 24
  %43 = ptrtoint ptr %base_clk_mux.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_clk_mux.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end34.i, %if.end.i.if.end40.i_crit_edge
  %ops.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %lanes_enable.i = getelementptr inbounds %struct.csiphy_hw_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %lanes_enable.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lanes_enable.i, align 4
  tail call void %48(ptr noundef %1, ptr noundef %cfg1.i, i64 noundef %call8.i, i8 noundef zeroext %lane_mask.0.i.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i3 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %ops.i3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i3, align 4
  %lanes_disable.i = getelementptr inbounds %struct.csiphy_hw_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %lanes_disable.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lanes_disable.i, align 4
  %cfg.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 12
  tail call void %52(ptr noundef %1, ptr noundef %cfg.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end40.i, %do.end.i
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %do.end.i ], [ 0, %if.end40.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %nformats = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %formats = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %formats, align 4
  %arrayidx = getelementptr %struct.csiphy_format, ptr %9, i32 %5
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %if.end9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %10 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  %num_pads.i.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !92

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  br label %__csiphy_get_format.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0
  br label %__csiphy_get_format.exit

__csiphy_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %15, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %code11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__csiphy_get_format.exit, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %code11, %__csiphy_get_format.exit ]
  %16 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.sink, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %18 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %code5, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.csiphy_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb29.i
  ]

if.end.csiphy_try_format.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %nformats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp53.not.i = icmp eq i32 %10, 0
  br i1 %cmp53.not.i, label %for.cond.preheader.i.csiphy_try_format.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.csiphy_try_format.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %formats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.cond.i.csiphy_try_format.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.csiphy_try_format.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.csiphy_format, ptr %12, i32 %i.054.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp2.i = icmp eq i32 %5, %14
  br i1 %cmp2.i, label %for.body.i.csiphy_try_format.exit_crit_edge, label %for.cond.i

for.body.i.csiphy_try_format.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit

sw.bb29.i:                                        ; preds = %if.end
  %15 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb29.i
  %num_pads.i.i.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.i.not.i = icmp eq i16 %18, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !92

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  br label %__csiphy_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0
  br label %__csiphy_get_format.exit.i

__csiphy_get_format.exit.i:                       ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %20, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %21 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %format.sroa.0.0.copyload = load i32, ptr %retval.0.i.i, align 4
  %format.sroa.13.0.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 4
  %22 = ptrtoint ptr %format.sroa.13.0.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %format.sroa.13.0.copyload = load i32, ptr %format.sroa.13.0.retval.0.i.i.sroa_idx, align 4
  %format.sroa.21.0.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 8
  %23 = ptrtoint ptr %format.sroa.21.0.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %format.sroa.21.0.copyload = load i32, ptr %format.sroa.21.0.retval.0.i.i.sroa_idx, align 4
  br label %csiphy_try_format.exit

csiphy_try_format.exit:                           ; preds = %__csiphy_get_format.exit.i, %for.body.i.csiphy_try_format.exit_crit_edge, %for.cond.i.csiphy_try_format.exit_crit_edge, %for.cond.preheader.i.csiphy_try_format.exit_crit_edge, %if.end.csiphy_try_format.exit_crit_edge
  %format.sroa.0.0 = phi i32 [ 1, %if.end.csiphy_try_format.exit_crit_edge ], [ %format.sroa.0.0.copyload, %__csiphy_get_format.exit.i ], [ 1, %for.cond.preheader.i.csiphy_try_format.exit_crit_edge ], [ 1, %for.cond.i.csiphy_try_format.exit_crit_edge ], [ 1, %for.body.i.csiphy_try_format.exit_crit_edge ]
  %format.sroa.13.0 = phi i32 [ 1, %if.end.csiphy_try_format.exit_crit_edge ], [ %format.sroa.13.0.copyload, %__csiphy_get_format.exit.i ], [ 1, %for.cond.preheader.i.csiphy_try_format.exit_crit_edge ], [ 1, %for.cond.i.csiphy_try_format.exit_crit_edge ], [ 1, %for.body.i.csiphy_try_format.exit_crit_edge ]
  %format.sroa.21.1 = phi i32 [ %5, %if.end.csiphy_try_format.exit_crit_edge ], [ %format.sroa.21.0.copyload, %__csiphy_get_format.exit.i ], [ 8198, %for.cond.preheader.i.csiphy_try_format.exit_crit_edge ], [ %5, %for.body.i.csiphy_try_format.exit_crit_edge ], [ 8198, %for.cond.i.csiphy_try_format.exit_crit_edge ]
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %24 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %format.sroa.0.0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %25 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %format.sroa.13.0, ptr %min_height, align 4
  %26 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %format.sroa.21.1, i32 %27)
  %cmp6.not = icmp eq i32 %format.sroa.21.1, %27
  br i1 %cmp6.not, label %if.end8, label %csiphy_try_format.exit.cleanup_crit_edge

csiphy_try_format.exit.cleanup_crit_edge:         ; preds = %csiphy_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %csiphy_try_format.exit
  %28 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pad, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %29, label %if.end8.csiphy_try_format.exit61_crit_edge [
    i32 0, label %for.cond.preheader.i33
    i32 1, label %sw.bb29.i51
  ]

if.end8.csiphy_try_format.exit61_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit61

for.cond.preheader.i33:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit61

sw.bb29.i51:                                      ; preds = %if.end8
  %31 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i50 = icmp eq i32 %32, 0
  br i1 %cmp.i.i50, label %if.then.i.i54, label %if.end.i.i58

if.then.i.i54:                                    ; preds = %sw.bb29.i51
  %num_pads.i.i.i52 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %33 = ptrtoint ptr %num_pads.i.i.i52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.not.i.i.not.i53 = icmp eq i16 %34, 0
  br i1 %cmp.not.i.i.not.i53, label %do.end.i.i.i55, label %if.then.i.i54.v4l2_subdev_get_try_format.exit.i.i56_crit_edge, !prof !92

if.then.i.i54.v4l2_subdev_get_try_format.exit.i.i56_crit_edge: ; preds = %if.then.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i56

do.end.i.i.i55:                                   ; preds = %if.then.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i56

v4l2_subdev_get_try_format.exit.i.i56:            ; preds = %do.end.i.i.i55, %if.then.i.i54.v4l2_subdev_get_try_format.exit.i.i56_crit_edge
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  br label %__csiphy_get_format.exit.i60

if.end.i.i58:                                     ; preds = %sw.bb29.i51
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i57 = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0
  br label %__csiphy_get_format.exit.i60

__csiphy_get_format.exit.i60:                     ; preds = %if.end.i.i58, %v4l2_subdev_get_try_format.exit.i.i56
  %retval.0.i.i59 = phi ptr [ %36, %v4l2_subdev_get_try_format.exit.i.i56 ], [ %arrayidx.i.i57, %if.end.i.i58 ]
  %37 = ptrtoint ptr %retval.0.i.i59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %format.sroa.0.0.copyload65 = load i32, ptr %retval.0.i.i59, align 4
  %format.sroa.13.0.retval.0.i.i59.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i59, i32 4
  %38 = ptrtoint ptr %format.sroa.13.0.retval.0.i.i59.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %format.sroa.13.0.copyload66 = load i32, ptr %format.sroa.13.0.retval.0.i.i59.sroa_idx, align 4
  br label %csiphy_try_format.exit61

csiphy_try_format.exit61:                         ; preds = %__csiphy_get_format.exit.i60, %for.cond.preheader.i33, %if.end8.csiphy_try_format.exit61_crit_edge
  %format.sroa.0.1 = phi i32 [ -1, %if.end8.csiphy_try_format.exit61_crit_edge ], [ %format.sroa.0.0.copyload65, %__csiphy_get_format.exit.i60 ], [ 8191, %for.cond.preheader.i33 ]
  %format.sroa.13.1 = phi i32 [ -1, %if.end8.csiphy_try_format.exit61_crit_edge ], [ %format.sroa.13.0.copyload66, %__csiphy_get_format.exit.i60 ], [ 8191, %for.cond.preheader.i33 ]
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %39 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %format.sroa.0.1, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %40 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %format.sroa.13.1, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %csiphy_try_format.exit61, %csiphy_try_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %csiphy_try_format.exit61 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %csiphy_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %num_pads.i.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !100

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csiphy_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 %3
  br label %__csiphy_get_format.exit

__csiphy_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__csiphy_get_format.exit.cleanup_crit_edge, label %if.end

__csiphy_get_format.exit.cleanup_crit_edge:       ; preds = %__csiphy_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__csiphy_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__csiphy_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__csiphy_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %num_pads.i.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !100

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csiphy_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 %3
  br label %__csiphy_get_format.exit

__csiphy_get_format.exit:                         ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__csiphy_get_format.exit.cleanup_crit_edge, label %if.end

__csiphy_get_format.exit.cleanup_crit_edge:       ; preds = %__csiphy_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__csiphy_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %11, label %if.end.csiphy_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb29.i
  ]

if.end.csiphy_try_format.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %csiphy_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %nformats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp53.not.i = icmp eq i32 %14, 0
  br i1 %cmp53.not.i, label %for.cond.preheader.i.if.then5.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then5.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code.i, align 4
  %formats.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.if.then5.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.then5.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i33 = getelementptr %struct.csiphy_format, ptr %18, i32 %i.054.i
  %19 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp2.i = icmp eq i32 %16, %20
  br i1 %cmp2.i, label %for.body.i.if.end7.i_crit_edge, label %for.cond.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %for.cond.i.if.then5.i_crit_edge, %for.cond.preheader.i.if.then5.i_crit_edge
  %code6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8198, ptr %code6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %for.body.i.if.end7.i_crit_edge
  %22 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %format3, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 1) #8
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 8191) #8
  %26 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %format3, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 1) #8
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 8191) #8
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %colorspace.i, align 4
  br label %csiphy_try_format.exit

sw.bb29.i:                                        ; preds = %if.end
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb29.i
  %num_pads.i.i.i = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %36 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.not.i.i.not.i = icmp eq i16 %37, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !92

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %38 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_state, align 4
  br label %__csiphy_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i34 = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0
  br label %__csiphy_get_format.exit.i

__csiphy_get_format.exit.i:                       ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %39, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i34, %if.end.i.i ]
  %40 = call ptr @memcpy(ptr %format3, ptr %retval.0.i.i, i32 48)
  br label %csiphy_try_format.exit

csiphy_try_format.exit:                           ; preds = %__csiphy_get_format.exit.i, %if.end7.i, %if.end.csiphy_try_format.exit_crit_edge
  %41 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %42 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp7 = icmp eq i32 %43, 0
  br i1 %cmp7, label %if.then8, label %csiphy_try_format.exit.cleanup_crit_edge

csiphy_try_format.exit.cleanup_crit_edge:         ; preds = %csiphy_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %csiphy_try_format.exit
  %44 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i35 = icmp eq i32 %45, 0
  br i1 %cmp.i35, label %if.then.i39, label %if.end.i45

if.then.i39:                                      ; preds = %if.then8
  %num_pads.i.i36 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %46 = ptrtoint ptr %num_pads.i.i36 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_pads.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %47)
  %cmp.not.i.i38 = icmp ugt i16 %47, 1
  br i1 %cmp.not.i.i38, label %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge, label %do.end.i.i40, !prof !100

if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge: ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i43

do.end.i.i40:                                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i43

v4l2_subdev_get_try_format.exit.i43:              ; preds = %do.end.i.i40, %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge
  %spec.select.i.i41 = phi i32 [ 0, %do.end.i.i40 ], [ 1, %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge ]
  %48 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i42 = getelementptr %struct.v4l2_subdev_pad_config, ptr %49, i32 %spec.select.i.i41
  br label %__csiphy_get_format.exit47

if.end.i45:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i44 = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 1
  br label %__csiphy_get_format.exit47

__csiphy_get_format.exit47:                       ; preds = %if.end.i45, %v4l2_subdev_get_try_format.exit.i43
  %retval.0.i46 = phi ptr [ %arrayidx.i.i42, %v4l2_subdev_get_try_format.exit.i43 ], [ %arrayidx.i44, %if.end.i45 ]
  %50 = call ptr @memcpy(ptr %retval.0.i46, ptr %format3, i32 48)
  %51 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i48 = icmp eq i32 %52, 0
  br i1 %cmp.i.i48, label %if.then.i.i52, label %if.end.i.i56

if.then.i.i52:                                    ; preds = %__csiphy_get_format.exit47
  %num_pads.i.i.i50 = getelementptr inbounds %struct.csiphy_device, ptr %1, i32 0, i32 2, i32 0, i32 5
  %53 = ptrtoint ptr %num_pads.i.i.i50 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_pads.i.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.not.i.i.not.i51 = icmp eq i16 %54, 0
  br i1 %cmp.not.i.i.not.i51, label %do.end.i.i.i53, label %if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge, !prof !92

if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge: ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i54

do.end.i.i.i53:                                   ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i54

v4l2_subdev_get_try_format.exit.i.i54:            ; preds = %do.end.i.i.i53, %if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge
  %55 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd_state, align 4
  br label %csiphy_try_format.exit59

if.end.i.i56:                                     ; preds = %__csiphy_get_format.exit47
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i55 = getelementptr %struct.csiphy_device, ptr %1, i32 0, i32 13, i32 0
  br label %csiphy_try_format.exit59

csiphy_try_format.exit59:                         ; preds = %if.end.i.i56, %v4l2_subdev_get_try_format.exit.i.i54
  %retval.0.i.i57 = phi ptr [ %56, %v4l2_subdev_get_try_format.exit.i.i54 ], [ %arrayidx.i.i55, %if.end.i.i56 ]
  %57 = call ptr @memcpy(ptr %retval.0.i46, ptr %retval.0.i.i57, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %csiphy_try_format.exit59, %csiphy_try_format.exit.cleanup_crit_edge, %__csiphy_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__csiphy_get_format.exit.cleanup_crit_edge ], [ 0, %csiphy_try_format.exit59 ], [ 0, %csiphy_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_link_setup(ptr noundef readonly %entity, ptr noundef %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %local) #8
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %cleanup.thread, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %entity10 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity10, align 4
  %dev_priv.i28 = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i28, align 4
  %id = getelementptr inbounds %struct.csid_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %csid_id = getelementptr inbounds %struct.csiphy_device, ptr %3, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %csid_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %csid_id, align 1
  br label %return

return:                                           ; preds = %cleanup.thread, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ -16, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 617, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @msm_csiphy_subdev_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @msm_csiphy_subdev_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 622, i32 55}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 623, i32 19}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 629, i32 3}
!14 = !{ptr @msm_csiphy_subdev_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @msm_csiphy_subdev_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 680, i32 28}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 681, i32 28}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 682, i32 28}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 686, i32 29}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 687, i32 29}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 688, i32 29}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 777, i32 43}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 783, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @msm_csiphy_register_entity._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @msm_csiphy_register_entity._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 794, i32 3}
!37 = !{ptr @msm_csiphy_register_entity._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @msm_csiphy_register_entity._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 800, i32 3}
!41 = !{ptr @msm_csiphy_register_entity._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @msm_csiphy_register_entity._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @csiphy_formats_8x16, !44, !"csiphy_formats_8x16", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 32, i32 35}
!45 = !{ptr @csiphy_formats_8x96, !46, !"csiphy_formats_8x96", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 52, i32 35}
!47 = !{ptr @csiphy_formats_sdm845, !48, !"csiphy_formats_sdm845", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 76, i32 35}
!49 = !{ptr @csiphy_v4l2_ops, !50, !"csiphy_v4l2_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 744, i32 37}
!51 = !{ptr @csiphy_core_ops, !52, !"csiphy_core_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 729, i32 42}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 155, i32 5}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @csiphy_set_clock_rates._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @csiphy_set_clock_rates._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 167, i32 5}
!60 = !{ptr @csiphy_set_clock_rates._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @csiphy_set_clock_rates._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 176, i32 5}
!64 = !{ptr @csiphy_set_clock_rates._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @csiphy_set_clock_rates._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 117, i32 2}
!68 = !{ptr @csiphy_video_ops, !69, !"csiphy_video_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 733, i32 43}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 273, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @csiphy_stream_on._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @csiphy_stream_on._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @csiphy_pad_ops, !76, !"csiphy_pad_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 737, i32 41}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!79 = !{ptr @csiphy_v4l2_internal_ops, !80, !"csiphy_v4l2_internal_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 750, i32 46}
!81 = !{ptr @csiphy_media_ops, !82, !"csiphy_media_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy.c", i32 754, i32 45}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2148258254}
!94 = !{i64 743077, i64 743102, i64 743124, i64 743140, i64 743152, i64 743172, i64 743196, i64 743212, i64 743224}
!95 = !{i64 2148258442}
!96 = !{i8 0, i8 2}
!97 = !{i64 4256529}
!98 = !{i64 4256111}
!99 = !{i64 2156479985}
!100 = !{!"branch_weights", i32 2000, i32 1}
