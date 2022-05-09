; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-ispif.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-ispif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.ispif_device = type { ptr, ptr, i32, [30 x i8], ptr, i32, ptr, i32, [2 x %struct.completion], i32, %struct.mutex, [2 x %struct.ispif_intf_cmd_reg], %struct.mutex, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ispif_intf_cmd_reg = type { i32, i32 }
%struct.ispif_line = type { ptr, i8, i8, i8, i32, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.resources_ispif = type { [17 x ptr], [17 x ptr], [17 x ptr], ptr }
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
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@ispif_formats_8x16 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 8198, i32 8199, i32 8200, i32 8201, i32 12289, i32 12307, i32 12290, i32 12308, i32 12295, i32 12302, i32 12298, i32 12303, i32 12296, i32 12304, i32 12305, i32 12306, i32 8202], [60 x i8] zeroinitializer }, align 32
@ispif_formats_8x96 = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 8198, i32 8199, i32 8200, i32 8201, i32 12289, i32 12307, i32 12290, i32 12308, i32 12295, i32 12302, i32 12298, i32 12303, i32 12292, i32 12296, i32 12304, i32 12305, i32 12306, i32 12313, i32 12314, i32 12315, i32 12316, i32 8202, i32 8236], [36 x i8] zeroinitializer }, align 32
@msm_ispif_subdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing IRQ\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msm_ispif_subdev_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/qcom/camss/camss-ispif.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_ispif_subdev_init._entry_ptr = internal global ptr @msm_ispif_subdev_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm_ispif\00", [22 x i8] zeroinitializer }, align 32
@msm_ispif_subdev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_ispif_subdev_init._entry_ptr.9 = internal global ptr @msm_ispif_subdev_init._entry.7, section ".printk_index", align 4
@msm_ispif_subdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ispif->power_lock\00", [45 x i8] zeroinitializer }, align 32
@msm_ispif_subdev_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ispif->config_lock\00", [44 x i8] zeroinitializer }, align 32
@ispif_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ispif_core_ops, ptr null, ptr null, ptr @ispif_video_ops, ptr null, ptr null, ptr null, ptr @ispif_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ispif_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ispif_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@msm_ispif_register_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init format: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"msm_ispif_register_entities\00", [36 x i8] zeroinitializer }, align 32
@msm_ispif_register_entities._entry_ptr = internal global ptr @msm_ispif_register_entities._entry, section ".printk_index", align 4
@ispif_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @ispif_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@msm_ispif_register_entities._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init media entity: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@msm_ispif_register_entities._entry_ptr.18 = internal global ptr @msm_ispif_register_entities._entry.16, section ".printk_index", align 4
@msm_ispif_register_entities._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register subdev: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_ispif_register_entities._entry_ptr.21 = internal global ptr @msm_ispif_register_entities._entry.19, section ".printk_index", align 4
@ispif_isr_8x16._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ispif_isr_8x16 = private unnamed_addr constant [15 x i8] c"ispif_isr_8x16\00", align 1
@ispif_isr_8x16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ispif_isr_8x16, ptr @.str.2, i32 249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE0 pix0 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry_ptr = internal global ptr @ispif_isr_8x16._entry, section ".printk_index", align 4
@ispif_isr_8x16._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.ispif_isr_8x16, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE0 rdi0 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry_ptr.27 = internal global ptr @ispif_isr_8x16._entry.25, section ".printk_index", align 4
@ispif_isr_8x16._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.ispif_isr_8x16, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE0 pix1 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry_ptr.31 = internal global ptr @ispif_isr_8x16._entry.29, section ".printk_index", align 4
@ispif_isr_8x16._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.ispif_isr_8x16, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE0 rdi1 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry_ptr.35 = internal global ptr @ispif_isr_8x16._entry.33, section ".printk_index", align 4
@ispif_isr_8x16._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.ispif_isr_8x16, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE0 rdi2 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x16._entry_ptr.39 = internal global ptr @ispif_isr_8x16._entry.37, section ".printk_index", align 4
@ispif_isr_8x96._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ispif_isr_8x96 = private unnamed_addr constant [15 x i8] c"ispif_isr_8x96\00", align 1
@ispif_isr_8x96._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr = internal global ptr @ispif_isr_8x96._entry, section ".printk_index", align 4
@ispif_isr_8x96._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.42 = internal global ptr @ispif_isr_8x96._entry.41, section ".printk_index", align 4
@ispif_isr_8x96._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.45 = internal global ptr @ispif_isr_8x96._entry.44, section ".printk_index", align 4
@ispif_isr_8x96._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.48 = internal global ptr @ispif_isr_8x96._entry.47, section ".printk_index", align 4
@ispif_isr_8x96._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.51 = internal global ptr @ispif_isr_8x96._entry.50, section ".printk_index", align 4
@ispif_isr_8x96._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE1 pix0 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.55 = internal global ptr @ispif_isr_8x96._entry.53, section ".printk_index", align 4
@ispif_isr_8x96._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE1 rdi0 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.59 = internal global ptr @ispif_isr_8x96._entry.57, section ".printk_index", align 4
@ispif_isr_8x96._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE1 pix1 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.63 = internal global ptr @ispif_isr_8x96._entry.61, section ".printk_index", align 4
@ispif_isr_8x96._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE1 rdi1 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.67 = internal global ptr @ispif_isr_8x96._entry.65, section ".printk_index", align 4
@ispif_isr_8x96._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.ispif_isr_8x96, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VFE1 rdi2 overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_isr_8x96._entry_ptr.71 = internal global ptr @ispif_isr_8x96._entry.69, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ispif_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ispif_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ispif_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ispif_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ispif_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ispif_enum_mbus_code, ptr @ispif_enum_frame_size, ptr null, ptr @ispif_get_format, ptr @ispif_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ispif_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ispif power off on power_count == 0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ispif_set_power\00", [16 x i8] zeroinitializer }, align 32
@ispif_set_power._entry_ptr = internal global ptr @ispif_set_power._entry, section ".printk_index", align 4
@ispif_reset.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.75, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ispif_reset\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ISPIF Reset failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ispif_vfe_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 275, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: asked reset for invalid VFE%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ispif_vfe_reset\00", [16 x i8] zeroinitializer }, align 32
@ispif_vfe_reset._entry_ptr = internal global ptr @ispif_vfe_reset._entry, section ".printk_index", align 4
@ispif_vfe_reset._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ISPIF for VFE%d reset timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@ispif_vfe_reset._entry_ptr.82 = internal global ptr @ispif_vfe_reset._entry.80, section ".printk_index", align 4
@ispif_validate_intf_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 512, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: ispif is busy: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ispif_validate_intf_status\00", [37 x i8] zeroinitializer }, align 32
@ispif_validate_intf_status._entry_ptr = internal global ptr @ispif_validate_intf_status._entry, section ".printk_index", align 4
@ispif_wait_for_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 559, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: ispif stop timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ispif_wait_for_stop\00", [44 x i8] zeroinitializer }, align 32
@ispif_wait_for_stop._entry_ptr = internal global ptr @ispif_wait_for_stop._entry, section ".printk_index", align 4
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@switch.table.msm_ispif_subdev_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.msm_ispif_subdev_init.88 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ispif_formats_8x16, ptr @ispif_formats_8x96, ptr @ispif_formats_8x96], [20 x i8] zeroinitializer }, align 32
@switch.table.msm_ispif_subdev_init.89 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 17, i32 23, i32 23], [20 x i8] zeroinitializer }, align 32
@switch.table.msm_ispif_subdev_init.90 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ispif_isr_8x16, ptr @ispif_isr_8x96, ptr @ispif_isr_8x96], [20 x i8] zeroinitializer }, align 32
@switch.table.ispif_link_setup = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 4, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 8236, i64 12292]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 8236, i64 12292]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"ispif_formats_8x16\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 108, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"ispif_formats_8x96\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 128, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1159, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1164, i32 53 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1165, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1177, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1226, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1229, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"ispif_v4l2_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1316, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"ispif_v4l2_internal_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1322, i32 46 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1357, i32 44 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1363, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [16 x i8] c"ispif_media_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1326, i32 45 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1375, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1382, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 249, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 252, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 255, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 258, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 261, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 190, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 193, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 196, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 199, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 202, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 205, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 208, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 211, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 214, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 217, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 87, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [15 x i8] c"ispif_core_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1301, i32 42 }
@___asan_gen_.319 = private unnamed_addr constant [16 x i8] c"ispif_video_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1305, i32 43 }
@___asan_gen_.322 = private unnamed_addr constant [14 x i8] c"ispif_pad_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1309, i32 41 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 398, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 342, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 274, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 307, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 511, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private constant [51 x i8] c"../drivers/media/platform/qcom/camss/camss-ispif.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 558, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 998, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant [35 x i8] c"switch.table.msm_ispif_subdev_init\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [38 x i8] c"switch.table.msm_ispif_subdev_init.88\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [38 x i8] c"switch.table.msm_ispif_subdev_init.89\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [38 x i8] c"switch.table.msm_ispif_subdev_init.90\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [30 x i8] c"switch.table.ispif_link_setup\00", align 1
@llvm.compiler.used = appending global [121 x ptr] [ptr @ispif_isr_8x16._entry, ptr @ispif_isr_8x16._entry.25, ptr @ispif_isr_8x16._entry.29, ptr @ispif_isr_8x16._entry.33, ptr @ispif_isr_8x16._entry.37, ptr @ispif_isr_8x16._entry_ptr, ptr @ispif_isr_8x16._entry_ptr.27, ptr @ispif_isr_8x16._entry_ptr.31, ptr @ispif_isr_8x16._entry_ptr.35, ptr @ispif_isr_8x16._entry_ptr.39, ptr @ispif_isr_8x96._entry, ptr @ispif_isr_8x96._entry.41, ptr @ispif_isr_8x96._entry.44, ptr @ispif_isr_8x96._entry.47, ptr @ispif_isr_8x96._entry.50, ptr @ispif_isr_8x96._entry.53, ptr @ispif_isr_8x96._entry.57, ptr @ispif_isr_8x96._entry.61, ptr @ispif_isr_8x96._entry.65, ptr @ispif_isr_8x96._entry.69, ptr @ispif_isr_8x96._entry_ptr, ptr @ispif_isr_8x96._entry_ptr.42, ptr @ispif_isr_8x96._entry_ptr.45, ptr @ispif_isr_8x96._entry_ptr.48, ptr @ispif_isr_8x96._entry_ptr.51, ptr @ispif_isr_8x96._entry_ptr.55, ptr @ispif_isr_8x96._entry_ptr.59, ptr @ispif_isr_8x96._entry_ptr.63, ptr @ispif_isr_8x96._entry_ptr.67, ptr @ispif_isr_8x96._entry_ptr.71, ptr @ispif_set_power._entry, ptr @ispif_set_power._entry_ptr, ptr @ispif_validate_intf_status._entry, ptr @ispif_validate_intf_status._entry_ptr, ptr @ispif_vfe_reset._entry, ptr @ispif_vfe_reset._entry.80, ptr @ispif_vfe_reset._entry_ptr, ptr @ispif_vfe_reset._entry_ptr.82, ptr @ispif_wait_for_stop._entry, ptr @ispif_wait_for_stop._entry_ptr, ptr @msm_ispif_register_entities._entry, ptr @msm_ispif_register_entities._entry.16, ptr @msm_ispif_register_entities._entry.19, ptr @msm_ispif_register_entities._entry_ptr, ptr @msm_ispif_register_entities._entry_ptr.18, ptr @msm_ispif_register_entities._entry_ptr.21, ptr @msm_ispif_subdev_init._entry, ptr @msm_ispif_subdev_init._entry.7, ptr @msm_ispif_subdev_init._entry_ptr, ptr @msm_ispif_subdev_init._entry_ptr.9, ptr @ispif_formats_8x16, ptr @ispif_formats_8x96, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @msm_ispif_subdev_init.__key, ptr @.str.10, ptr @msm_ispif_subdev_init.__key.11, ptr @.str.12, ptr @ispif_v4l2_ops, ptr @ispif_v4l2_internal_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ispif_media_ops, ptr @.str.17, ptr @.str.20, ptr @ispif_isr_8x16._rs, ptr @.str.22, ptr @.str.23, ptr @ispif_isr_8x16._rs.24, ptr @.str.26, ptr @ispif_isr_8x16._rs.28, ptr @.str.30, ptr @ispif_isr_8x16._rs.32, ptr @.str.34, ptr @ispif_isr_8x16._rs.36, ptr @.str.38, ptr @ispif_isr_8x96._rs, ptr @ispif_isr_8x96._rs.40, ptr @ispif_isr_8x96._rs.43, ptr @ispif_isr_8x96._rs.46, ptr @ispif_isr_8x96._rs.49, ptr @ispif_isr_8x96._rs.52, ptr @.str.54, ptr @ispif_isr_8x96._rs.56, ptr @.str.58, ptr @ispif_isr_8x96._rs.60, ptr @.str.62, ptr @ispif_isr_8x96._rs.64, ptr @.str.66, ptr @ispif_isr_8x96._rs.68, ptr @.str.70, ptr @init_completion.__key, ptr @.str.72, ptr @ispif_core_ops, ptr @ispif_video_ops, ptr @ispif_pad_ops, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @switch.table.msm_ispif_subdev_init, ptr @switch.table.msm_ispif_subdev_init.88, ptr @switch.table.msm_ispif_subdev_init.89, ptr @switch.table.msm_ispif_subdev_init.90, ptr @switch.table.ispif_link_setup], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_formats_8x16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_formats_8x96 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_subdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_subdev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_subdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_subdev_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_register_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_register_entities._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ispif_register_entities._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x16._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_isr_8x96._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_vfe_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_vfe_reset._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_validate_intf_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ispif_wait_for_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_ispif_subdev_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_ispif_subdev_init.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_ispif_subdev_init.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_ispif_subdev_init.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ispif_link_setup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_ispif_subdev_init(ptr noundef %camss, ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %ispif2 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 9
  %2 = ptrtoint ptr %ispif2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ispif2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup193_crit_edge, label %if.end

entry.cleanup193_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

if.end:                                           ; preds = %entry
  %camss4 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %camss4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %camss, ptr %camss4, align 4
  %5 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %switch.lookup, label %if.end.cleanup193_crit_edge

if.end.cleanup193_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.msm_ispif_subdev_init, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %line_num11 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %line_num11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %line_num11, align 4
  %line_num15 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 13
  %10 = mul nuw nsw i32 %switch.load, 376
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %10, i32 noundef 3520) #7
  %line = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %line, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %switch.lookup.cleanup193_crit_edge, label %for.cond.preheader

switch.lookup.cleanup193_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

for.cond.preheader:                               ; preds = %switch.lookup
  %12 = ptrtoint ptr %line_num15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line_num15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21339.not = icmp eq i32 %13, 0
  br i1 %cmp21339.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %switch.lookup358.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0340 = phi i32 [ %inc, %switch.lookup358.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %line, align 4
  %arrayidx = getelementptr %struct.ispif_line, ptr %15, i32 %i.0340
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %arrayidx, align 4
  %conv = trunc i32 %i.0340 to i8
  %17 = load ptr, ptr %line, align 4
  %id = getelementptr %struct.ispif_line, ptr %17, i32 %i.0340, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %id, align 4
  %19 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %switch.lookup358, label %for.body.cleanup193_crit_edge

for.body.cleanup193_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

switch.lookup358:                                 ; preds = %for.body
  %switch.gep359 = getelementptr inbounds [3 x ptr], ptr @switch.table.msm_ispif_subdev_init.88, i32 0, i32 %20
  %22 = ptrtoint ptr %switch.gep359 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load360 = load ptr, ptr %switch.gep359, align 4
  %switch.gep361 = getelementptr inbounds [3 x i32], ptr @switch.table.msm_ispif_subdev_init.89, i32 0, i32 %20
  %23 = ptrtoint ptr %switch.gep361 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load362 = load i32, ptr %switch.gep361, align 4
  %24 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %line, align 4
  %formats = getelementptr %struct.ispif_line, ptr %25, i32 %i.0340, i32 8
  %26 = ptrtoint ptr %formats to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %switch.load360, ptr %formats, align 4
  %27 = load ptr, ptr %line, align 4
  %nformats = getelementptr %struct.ispif_line, ptr %27, i32 %i.0340, i32 9
  %28 = ptrtoint ptr %nformats to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %switch.load362, ptr %nformats, align 4
  %inc = add nuw i32 %i.0340, 1
  %29 = ptrtoint ptr %line_num15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line_num15, align 4
  %cmp21 = icmp ult i32 %inc, %30
  br i1 %cmp21, label %switch.lookup358.for.body_crit_edge, label %switch.lookup358.for.end_crit_edge

switch.lookup358.for.end_crit_edge:               ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

switch.lookup358.for.body_crit_edge:              ; preds = %switch.lookup358
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %switch.lookup358.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %reg = getelementptr inbounds %struct.resources_ispif, ptr %res, i32 0, i32 2
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %call53 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %32) #7
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call53, ptr %3, align 4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end59

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call53 to i32
  br label %cleanup193

if.end59:                                         ; preds = %for.end
  %arrayidx61 = getelementptr %struct.resources_ispif, ptr %res, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx61, align 4
  %call62 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %36) #7
  %base_clk_mux = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %base_clk_mux to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call62, ptr %base_clk_mux, align 4
  %cmp.i312 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call62 to i32
  br label %cleanup193

if.end68:                                         ; preds = %if.end59
  %interrupt = getelementptr inbounds %struct.resources_ispif, ptr %res, i32 0, i32 3
  %39 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interrupt, align 4
  %call69 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 1024, ptr noundef %40) #7
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %do.end, label %if.end72

do.end:                                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #10
  br label %cleanup193

if.end72:                                         ; preds = %if.end68
  %41 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call69, align 4
  %irq = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %irq, align 4
  %irq_name = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end72.dev_name.exit_crit_edge

if.end72.dev_name.exit_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end72.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %47, %if.end.i ], [ %45, %if.end72.dev_name.exit_crit_edge ]
  %call74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name, i32 noundef 30, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, ptr noundef nonnull @.str.6)
  %48 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %switch.lookup363, label %dev_name.exit.do.end104_crit_edge

dev_name.exit.do.end104_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

switch.lookup363:                                 ; preds = %dev_name.exit
  %switch.gep364 = getelementptr inbounds [3 x ptr], ptr @switch.table.msm_ispif_subdev_init.90, i32 0, i32 %49
  %51 = ptrtoint ptr %switch.gep364 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load365 = load ptr, ptr %switch.gep364, align 4
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call.i313 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %53, ptr noundef nonnull %switch.load365, ptr noundef null, i32 noundef 1, ptr noundef %irq_name, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %cmp99 = icmp slt i32 %call.i313, 0
  br i1 %cmp99, label %switch.lookup363.do.end104_crit_edge, label %if.end105

switch.lookup363.do.end104_crit_edge:             ; preds = %switch.lookup363
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

do.end104:                                        ; preds = %switch.lookup363.do.end104_crit_edge, %dev_name.exit.do.end104_crit_edge
  %ret.0329 = phi i32 [ %call.i313, %switch.lookup363.do.end104_crit_edge ], [ -22, %dev_name.exit.do.end104_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %ret.0329) #10
  br label %cleanup193

if.end105:                                        ; preds = %switch.lookup363
  %nclocks = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end105
  %storemerge = phi i32 [ 0, %if.end105 ], [ %inc110, %while.cond.while.cond_crit_edge ]
  %54 = ptrtoint ptr %nclocks to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %storemerge, ptr %nclocks, align 4
  %arrayidx107 = getelementptr [17 x ptr], ptr %res, i32 0, i32 %storemerge
  %55 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %56, null
  %inc110 = add i32 %storemerge, 1
  br i1 %tobool108.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge, i32 16) #7
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %devm_kcalloc.exit317.thread, label %devm_kcalloc.exit317, !prof !169

devm_kcalloc.exit317.thread:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %clock113331 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 4
  %59 = ptrtoint ptr %clock113331 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %clock113331, align 4
  br label %cleanup193

devm_kcalloc.exit317:                             ; preds = %while.end
  %60 = extractvalue { i32, i1 } %57, 0
  %call5.i.i314 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %60, i32 noundef 3520) #7
  %clock113 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 4
  %61 = ptrtoint ptr %clock113 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i314, ptr %clock113, align 4
  %tobool115.not = icmp eq ptr %call5.i.i314, null
  br i1 %tobool115.not, label %devm_kcalloc.exit317.cleanup193_crit_edge, label %for.cond118.preheader

devm_kcalloc.exit317.cleanup193_crit_edge:        ; preds = %devm_kcalloc.exit317
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

for.cond118.preheader:                            ; preds = %devm_kcalloc.exit317
  %62 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp120342 = icmp sgt i32 %63, 0
  br i1 %cmp120342, label %for.cond118.preheader.for.body122_crit_edge, label %for.cond118.preheader.for.end137_crit_edge

for.cond118.preheader.for.end137_crit_edge:       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

for.cond118.preheader.for.body122_crit_edge:      ; preds = %for.cond118.preheader
  br label %for.body122

for.body122:                                      ; preds = %for.inc135.for.body122_crit_edge, %for.cond118.preheader.for.body122_crit_edge
  %i.1343 = phi i32 [ %inc136, %for.inc135.for.body122_crit_edge ], [ 0, %for.cond118.preheader.for.body122_crit_edge ]
  %64 = ptrtoint ptr %clock113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clock113, align 4
  %arrayidx125 = getelementptr %struct.camss_clock, ptr %65, i32 %i.1343
  %arrayidx127 = getelementptr [17 x ptr], ptr %res, i32 0, i32 %i.1343
  %66 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx127, align 4
  %call128 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %67) #7
  %68 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call128, ptr %arrayidx125, align 4
  %cmp.i318 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318, label %cleanup.thread, label %for.inc135

cleanup.thread:                                   ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %call128 to i32
  br label %cleanup193

for.inc135:                                       ; preds = %for.body122
  %freq = getelementptr %struct.camss_clock, ptr %65, i32 %i.1343, i32 2
  %70 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %freq, align 4
  %nfreqs = getelementptr %struct.camss_clock, ptr %65, i32 %i.1343, i32 3
  %71 = ptrtoint ptr %nfreqs to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %nfreqs, align 4
  %inc136 = add nuw nsw i32 %i.1343, 1
  %72 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nclocks, align 4
  %cmp120 = icmp slt i32 %inc136, %73
  br i1 %cmp120, label %for.inc135.for.body122_crit_edge, label %for.inc135.for.end137_crit_edge

for.inc135.for.end137_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

for.inc135.for.body122_crit_edge:                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body122

for.end137:                                       ; preds = %for.inc135.for.end137_crit_edge, %for.cond118.preheader.for.end137_crit_edge
  %nclocks_for_reset = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 7
  br label %while.cond138

while.cond138:                                    ; preds = %while.cond138.while.cond138_crit_edge, %for.end137
  %storemerge311 = phi i32 [ 0, %for.end137 ], [ %inc144, %while.cond138.while.cond138_crit_edge ]
  %74 = ptrtoint ptr %nclocks_for_reset to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %storemerge311, ptr %nclocks_for_reset, align 4
  %arrayidx140 = getelementptr %struct.resources_ispif, ptr %res, i32 0, i32 1, i32 %storemerge311
  %75 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx140, align 4
  %tobool141.not = icmp eq ptr %76, null
  %inc144 = add i32 %storemerge311, 1
  br i1 %tobool141.not, label %while.end145, label %while.cond138.while.cond138_crit_edge

while.cond138.while.cond138_crit_edge:            ; preds = %while.cond138
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond138

while.end145:                                     ; preds = %while.cond138
  %77 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge311, i32 16) #7
  %78 = extractvalue { i32, i1 } %77, 1
  br i1 %78, label %devm_kcalloc.exit322.thread, label %devm_kcalloc.exit322, !prof !169

devm_kcalloc.exit322.thread:                      ; preds = %while.end145
  call void @__sanitizer_cov_trace_pc() #9
  %clock_for_reset148335 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 6
  %79 = ptrtoint ptr %clock_for_reset148335 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %clock_for_reset148335, align 4
  br label %cleanup193

devm_kcalloc.exit322:                             ; preds = %while.end145
  %80 = extractvalue { i32, i1 } %77, 0
  %call5.i.i319 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %80, i32 noundef 3520) #7
  %clock_for_reset148 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 6
  %81 = ptrtoint ptr %clock_for_reset148 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call5.i.i319, ptr %clock_for_reset148, align 4
  %tobool150.not = icmp eq ptr %call5.i.i319, null
  br i1 %tobool150.not, label %devm_kcalloc.exit322.cleanup193_crit_edge, label %for.cond153.preheader

devm_kcalloc.exit322.cleanup193_crit_edge:        ; preds = %devm_kcalloc.exit322
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

for.cond153.preheader:                            ; preds = %devm_kcalloc.exit322
  %82 = ptrtoint ptr %nclocks_for_reset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nclocks_for_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp155344 = icmp sgt i32 %83, 0
  br i1 %cmp155344, label %for.cond153.preheader.for.body157_crit_edge, label %for.cond153.preheader.do.body179_crit_edge

for.cond153.preheader.do.body179_crit_edge:       ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body179

for.cond153.preheader.for.body157_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body157

for.body157:                                      ; preds = %for.inc176.for.body157_crit_edge, %for.cond153.preheader.for.body157_crit_edge
  %i.2345 = phi i32 [ %inc177, %for.inc176.for.body157_crit_edge ], [ 0, %for.cond153.preheader.for.body157_crit_edge ]
  %84 = ptrtoint ptr %clock_for_reset148 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clock_for_reset148, align 4
  %arrayidx160 = getelementptr %struct.camss_clock, ptr %85, i32 %i.2345
  %arrayidx162 = getelementptr %struct.resources_ispif, ptr %res, i32 0, i32 1, i32 %i.2345
  %86 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx162, align 4
  %call163 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %87) #7
  %88 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call163, ptr %arrayidx160, align 4
  %cmp.i323 = icmp ugt ptr %call163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %cleanup173.thread, label %for.inc176

cleanup173.thread:                                ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %call163 to i32
  br label %cleanup193

for.inc176:                                       ; preds = %for.body157
  %freq171 = getelementptr %struct.camss_clock, ptr %85, i32 %i.2345, i32 2
  %90 = ptrtoint ptr %freq171 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %freq171, align 4
  %nfreqs172 = getelementptr %struct.camss_clock, ptr %85, i32 %i.2345, i32 3
  %91 = ptrtoint ptr %nfreqs172 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %nfreqs172, align 4
  %inc177 = add nuw nsw i32 %i.2345, 1
  %92 = ptrtoint ptr %nclocks_for_reset to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nclocks_for_reset, align 4
  %cmp155 = icmp slt i32 %inc177, %93
  br i1 %cmp155, label %for.inc176.for.body157_crit_edge, label %for.inc176.do.body179_crit_edge

for.inc176.do.body179_crit_edge:                  ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body179

for.inc176.for.body157_crit_edge:                 ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body157

do.body179:                                       ; preds = %for.inc176.do.body179_crit_edge, %for.cond153.preheader.do.body179_crit_edge
  %power_lock = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @msm_ispif_subdev_init.__key) #7
  %power_count = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 9
  %94 = ptrtoint ptr %power_count to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %power_count, align 4
  %config_lock = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %config_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @msm_ispif_subdev_init.__key.11) #7
  %arrayidx189 = getelementptr %struct.ispif_device, ptr %3, i32 0, i32 8, i32 0
  %95 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx189, align 4
  %wait.i = getelementptr %struct.ispif_device, ptr %3, i32 0, i32 8, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #7
  %arrayidx189.1 = getelementptr %struct.ispif_device, ptr %3, i32 0, i32 8, i32 1
  %96 = ptrtoint ptr %arrayidx189.1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %arrayidx189.1, align 4
  %wait.i.1 = getelementptr %struct.ispif_device, ptr %3, i32 0, i32 8, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #7
  br label %cleanup193

cleanup193:                                       ; preds = %do.body179, %cleanup173.thread, %devm_kcalloc.exit322.cleanup193_crit_edge, %devm_kcalloc.exit322.thread, %cleanup.thread, %devm_kcalloc.exit317.cleanup193_crit_edge, %devm_kcalloc.exit317.thread, %do.end104, %do.end, %if.then65, %if.then56, %for.body.cleanup193_crit_edge, %switch.lookup.cleanup193_crit_edge, %if.end.cleanup193_crit_edge, %entry.cleanup193_crit_edge
  %retval.4 = phi i32 [ %34, %if.then56 ], [ %38, %if.then65 ], [ %ret.0329, %do.end104 ], [ -22, %do.end ], [ 0, %entry.cleanup193_crit_edge ], [ -22, %if.end.cleanup193_crit_edge ], [ -12, %switch.lookup.cleanup193_crit_edge ], [ -12, %devm_kcalloc.exit317.cleanup193_crit_edge ], [ -12, %devm_kcalloc.exit322.cleanup193_crit_edge ], [ -12, %devm_kcalloc.exit317.thread ], [ %69, %cleanup.thread ], [ -12, %devm_kcalloc.exit322.thread ], [ %89, %cleanup173.thread ], [ 0, %do.body179 ], [ -22, %for.body.cleanup193_crit_edge ]
  ret i32 %retval.4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_isr_8x16(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %camss1 = getelementptr inbounds %struct.ispif_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %camss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camss1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 544
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 548
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !170
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %4) #7, !srcloc !171
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #7, !srcloc !171
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %add.ptr19 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 16777216) #7, !srcloc !171
  %21 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reset_complete = getelementptr inbounds %struct.ispif_device, ptr %dev, i32 0, i32 8
  tail call void @complete(ptr noundef %reset_complete) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and20 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end.if.end36_crit_edge, label %do.body25, !prof !173

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.body25:                                        ; preds = %if.end
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x16._rs, ptr noundef nonnull @__func__.ispif_isr_8x16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body25.if.end36_crit_edge, label %do.end31

do.body25.if.end36_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.23) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %do.body25.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %and37 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end57_crit_edge, label %do.body46, !prof !173

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.body46:                                        ; preds = %if.end36
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x16._rs.24, ptr noundef nonnull @__func__.ispif_isr_8x16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body46.if.end57_crit_edge, label %do.end52

do.body46.if.end57_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.26) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end52, %do.body46.if.end57_crit_edge, %if.end36.if.end57_crit_edge
  %and58 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end78_crit_edge, label %do.body67, !prof !173

if.end57.if.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.body67:                                        ; preds = %if.end57
  %call68 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x16._rs.28, ptr noundef nonnull @__func__.ispif_isr_8x16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body67.if.end78_crit_edge, label %do.end73

do.body67.if.end78_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %dev74 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30) #10
  br label %if.end78

if.end78:                                         ; preds = %do.end73, %do.body67.if.end78_crit_edge, %if.end57.if.end78_crit_edge
  %and79 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end99_crit_edge, label %do.body88, !prof !173

if.end78.if.end99_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.body88:                                        ; preds = %if.end78
  %call89 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x16._rs.32, ptr noundef nonnull @__func__.ispif_isr_8x16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.body88.if.end99_crit_edge, label %do.end94

do.body88.if.end99_crit_edge:                     ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  %dev95 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev95, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.34) #10
  br label %if.end99

if.end99:                                         ; preds = %do.end94, %do.body88.if.end99_crit_edge, %if.end78.if.end99_crit_edge
  %30 = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool101.not = icmp eq i32 %30, 0
  br i1 %tobool101.not, label %if.end99.if.end120_crit_edge, label %do.body109, !prof !173

if.end99.if.end120_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.body109:                                       ; preds = %if.end99
  %call110 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x16._rs.36, ptr noundef nonnull @__func__.ispif_isr_8x16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.body109.if.end120_crit_edge, label %do.end115

do.body109.if.end120_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end115:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #9
  %dev116 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev116, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.38) #10
  br label %if.end120

if.end120:                                        ; preds = %do.end115, %do.body109.if.end120_crit_edge, %if.end99.if.end120_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_isr_8x96(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %camss1 = getelementptr inbounds %struct.ispif_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %camss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camss1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 544
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !170
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 548
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !170
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 1052
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !170
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 1056
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !170
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %add.ptr24 = getelementptr i8, ptr %22, i32 1060
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !170
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %4) #7, !srcloc !171
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %add.ptr30 = getelementptr i8, ptr %27, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %8) #7, !srcloc !171
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %add.ptr32 = getelementptr i8, ptr %29, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %12) #7, !srcloc !171
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %add.ptr34 = getelementptr i8, ptr %31, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %15) #7, !srcloc !171
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %add.ptr36 = getelementptr i8, ptr %33, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %19) #7, !srcloc !171
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %add.ptr38 = getelementptr i8, ptr %35, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %23) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %add.ptr40 = getelementptr i8, ptr %37, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #7, !srcloc !171
  %38 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reset_complete = getelementptr inbounds %struct.ispif_device, ptr %dev, i32 0, i32 8
  tail call void @complete(ptr noundef %reset_complete) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %39 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool43.not = icmp eq i32 %39, 0
  br i1 %tobool43.not, label %if.end.if.end47_crit_edge, label %if.then44

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx46 = getelementptr %struct.ispif_device, ptr %dev, i32 0, i32 8, i32 1
  tail call void @complete(ptr noundef %arrayidx46) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end.if.end47_crit_edge
  %and48 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end64_crit_edge, label %do.body53, !prof !173

if.end47.if.end64_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.body53:                                        ; preds = %if.end47
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body53.if.end64_crit_edge, label %do.end59

do.body53.if.end64_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %dev60 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.23) #10
  br label %if.end64

if.end64:                                         ; preds = %do.end59, %do.body53.if.end64_crit_edge, %if.end47.if.end64_crit_edge
  %and65 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end85_crit_edge, label %do.body74, !prof !173

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.body74:                                        ; preds = %if.end64
  %call75 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.40, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body74.if.end85_crit_edge, label %do.end80

do.body74.if.end85_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %dev81 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev81, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.26) #10
  br label %if.end85

if.end85:                                         ; preds = %do.end80, %do.body74.if.end85_crit_edge, %if.end64.if.end85_crit_edge
  %and86 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end106_crit_edge, label %do.body95, !prof !173

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

do.body95:                                        ; preds = %if.end85
  %call96 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.43, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %do.body95.if.end106_crit_edge, label %do.end101

do.body95.if.end106_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %dev102 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev102, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.30) #10
  br label %if.end106

if.end106:                                        ; preds = %do.end101, %do.body95.if.end106_crit_edge, %if.end85.if.end106_crit_edge
  %and107 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end127_crit_edge, label %do.body116, !prof !173

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.body116:                                       ; preds = %if.end106
  %call117 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.46, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.body116.if.end127_crit_edge, label %do.end122

do.body116.if.end127_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %dev123 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev123, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.34) #10
  br label %if.end127

if.end127:                                        ; preds = %do.end122, %do.body116.if.end127_crit_edge, %if.end106.if.end127_crit_edge
  %48 = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool129.not = icmp eq i32 %48, 0
  br i1 %tobool129.not, label %if.end127.if.end148_crit_edge, label %do.body137, !prof !173

if.end127.if.end148_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

do.body137:                                       ; preds = %if.end127
  %call138 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.49, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.body137.if.end148_crit_edge, label %do.end143

do.body137.if.end148_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %dev144 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev144, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.38) #10
  br label %if.end148

if.end148:                                        ; preds = %do.end143, %do.body137.if.end148_crit_edge, %if.end127.if.end148_crit_edge
  %and149 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end169_crit_edge, label %do.body158, !prof !173

if.end148.if.end169_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

do.body158:                                       ; preds = %if.end148
  %call159 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.52, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %do.body158.if.end169_crit_edge, label %do.end164

do.body158.if.end169_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  %dev165 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %dev165 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev165, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.54) #10
  br label %if.end169

if.end169:                                        ; preds = %do.end164, %do.body158.if.end169_crit_edge, %if.end148.if.end169_crit_edge
  %and170 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end169.if.end190_crit_edge, label %do.body179, !prof !173

if.end169.if.end190_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

do.body179:                                       ; preds = %if.end169
  %call180 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.56, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %do.body179.if.end190_crit_edge, label %do.end185

do.body179.if.end190_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

do.end185:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  %dev186 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev186, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.58) #10
  br label %if.end190

if.end190:                                        ; preds = %do.end185, %do.body179.if.end190_crit_edge, %if.end169.if.end190_crit_edge
  %and191 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end190.if.end211_crit_edge, label %do.body200, !prof !173

if.end190.if.end211_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

do.body200:                                       ; preds = %if.end190
  %call201 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.60, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.body200.if.end211_crit_edge, label %do.end206

do.body200.if.end211_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

do.end206:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #9
  %dev207 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev207, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.62) #10
  br label %if.end211

if.end211:                                        ; preds = %do.end206, %do.body200.if.end211_crit_edge, %if.end190.if.end211_crit_edge
  %and212 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end211.if.end232_crit_edge, label %do.body221, !prof !173

if.end211.if.end232_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

do.body221:                                       ; preds = %if.end211
  %call222 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.64, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.body221.if.end232_crit_edge, label %do.end227

do.body221.if.end232_crit_edge:                   ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

do.end227:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  %dev228 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %dev228 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev228, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.66) #10
  br label %if.end232

if.end232:                                        ; preds = %do.end227, %do.body221.if.end232_crit_edge, %if.end211.if.end232_crit_edge
  %59 = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool234.not = icmp eq i32 %59, 0
  br i1 %tobool234.not, label %if.end232.if.end253_crit_edge, label %do.body242, !prof !173

if.end232.if.end253_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

do.body242:                                       ; preds = %if.end232
  %call243 = tail call i32 @___ratelimit(ptr noundef nonnull @ispif_isr_8x96._rs.68, ptr noundef nonnull @__func__.ispif_isr_8x96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %do.body242.if.end253_crit_edge, label %do.end248

do.body242.if.end253_crit_edge:                   ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

do.end248:                                        ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  %dev249 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %dev249 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev249, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.70) #10
  br label %if.end253

if.end253:                                        ; preds = %do.end248, %do.body242.if.end253_crit_edge, %if.end232.if.end253_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_ispif_register_entities(ptr noundef readonly %ispif, ptr noundef %v4l2_dev) local_unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ispif, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end:                                           ; preds = %entry
  %camss1 = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 15
  %0 = ptrtoint ptr %camss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camss1, align 4
  %line_num = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 13
  %2 = ptrtoint ptr %line_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp101.not = icmp eq i32 %3, 0
  br i1 %cmp101.not, label %if.end.cleanup47_crit_edge, label %for.body.lr.ph

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.body.lr.ph:                                   ; preds = %if.end
  %line = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 14
  %4 = getelementptr inbounds i8, ptr %format.i, i32 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %line, align 4
  %subdev = getelementptr %struct.ispif_line, ptr %6, i32 %i.0102, i32 5
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @ispif_v4l2_ops) #7
  %internal_ops = getelementptr %struct.ispif_line, ptr %6, i32 %i.0102, i32 5, i32 7
  %7 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ispif_v4l2_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr %struct.ispif_line, ptr %6, i32 %i.0102, i32 5, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr %struct.ispif_line, ptr %6, i32 %i.0102, i32 5, i32 9
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef %i.0102)
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %line, align 4
  %arrayidx7 = getelementptr %struct.ispif_line, ptr %11, i32 %i.0102
  %dev_priv.i = getelementptr %struct.ispif_line, ptr %6, i32 %i.0102, i32 5, i32 11
  %12 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx7, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #7
  %13 = call ptr @memset(ptr %4, i32 0, i32 84)
  %14 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %format.i, align 4
  %15 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1920, ptr %format1.i, align 4
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1080, ptr %height.i, align 4
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8198, ptr %code.i, align 4
  %call.i = call i32 @ispif_set_format(ptr noundef %subdev, ptr noundef null, ptr noundef nonnull %format.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %do.end, label %if.end11

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef %call.i) #10
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %pads4 = getelementptr %struct.ispif_line, ptr %6, i32 %i.0102, i32 6
  %flags13 = getelementptr inbounds %struct.media_pad, ptr %pads4, i32 0, i32 4
  %20 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags13, align 4
  %flags15 = getelementptr %struct.media_pad, ptr %pads4, i32 1, i32 4
  %21 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %flags15, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 3
  %22 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16386, ptr %function, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 11
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ispif_media_ops, ptr %ops, align 4
  %call18 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 2, ptr noundef %pads4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %call18) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  %call26 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %for.inc

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20, i32 noundef %call26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end23, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call18, %do.end23 ], [ %call26, %do.end31 ]
  %i.1103 = add i32 %i.0102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1103)
  %cmp37104 = icmp sgt i32 %i.1103, -1
  br i1 %cmp37104, label %cleanup.for.body38_crit_edge, label %cleanup.cleanup47_crit_edge

cleanup.cleanup47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

cleanup.for.body38_crit_edge:                     ; preds = %cleanup
  br label %for.body38

for.inc:                                          ; preds = %if.end25
  %inc = add nuw i32 %i.0102, 1
  %28 = ptrtoint ptr %line_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line_num, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup47_crit_edge

for.inc.cleanup47_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %cleanup.for.body38_crit_edge
  %i.1105 = phi i32 [ %i.1, %for.body38.for.body38_crit_edge ], [ %i.1103, %cleanup.for.body38_crit_edge ]
  %30 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %line, align 4
  %subdev42 = getelementptr %struct.ispif_line, ptr %31, i32 %i.1105, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev42) #7
  %i.1 = add nsw i32 %i.1105, -1
  %cmp37 = icmp sgt i32 %i.1105, 0
  br i1 %cmp37, label %for.body38.for.body38_crit_edge, label %for.body38.cleanup47_crit_edge

for.body38.cleanup47_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38

cleanup47:                                        ; preds = %for.body38.cleanup47_crit_edge, %for.inc.cleanup47_crit_edge, %cleanup.cleanup47_crit_edge, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup47_crit_edge ], [ %ret.0, %cleanup.cleanup47_crit_edge ], [ 0, %if.end.cleanup47_crit_edge ], [ %ret.0, %for.body38.cleanup47_crit_edge ], [ 0, %for.inc.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond3 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @ispif_set_format(ptr noundef %sd, ptr noundef %cond3, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_ispif_unregister_entities(ptr noundef %ispif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ispif, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_lock = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %power_lock) #7
  %config_lock = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 12
  tail call void @mutex_destroy(ptr noundef %config_lock) #7
  %line_num = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 13
  %0 = ptrtoint ptr %line_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %line = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %line, align 4
  %subdev = getelementptr %struct.ispif_line, ptr %3, i32 %i.09, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #7
  %inc = add nuw i32 %i.09, 1
  %4 = ptrtoint ptr %line_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_num, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_set_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %camss = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %camss, align 4
  %dev2 = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 8
  %power_lock = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %power_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %power_count28 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %power_count28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_count28, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %9, 1
  %10 = ptrtoint ptr %power_count28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %power_count28, align 4
  br label %exit

if.end:                                           ; preds = %if.then
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.exit_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !177
  br label %exit

if.end8:                                          ; preds = %if.end
  %nclocks = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nclocks, align 4
  %clock = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock, align 4
  %call9 = tail call i32 @camss_enable_clocks(i32 noundef %13, ptr noundef %15, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call.i72 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #7
  br label %exit

if.end13:                                         ; preds = %if.end8
  %vfe_id = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %vfe_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vfe_id, align 2
  %call14 = tail call fastcc i32 @ispif_reset(ptr noundef %3, i8 noundef zeroext %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call.i73 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #7
  %18 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nclocks, align 4
  %20 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clock, align 4
  tail call void @camss_disable_clocks(i32 noundef %19, ptr noundef %21) #7
  br label %exit

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %vfe_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vfe_id, align 2
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr %struct.ispif_device, ptr %3, i32 0, i32 11, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %arrayidx, align 4
  %25 = load i8, ptr %vfe_id, align 2
  %idxprom24 = zext i8 %25 to i32
  %cmd_1 = getelementptr %struct.ispif_device, ptr %3, i32 0, i32 11, i32 %idxprom24, i32 1
  %26 = ptrtoint ptr %cmd_1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %cmd_1, align 4
  %27 = ptrtoint ptr %power_count28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %power_count28, align 4
  %inc27 = add i32 %28, 1
  store i32 %inc27, ptr %power_count28, align 4
  br label %exit

if.else:                                          ; preds = %entry
  %29 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.else.if.end39_crit_edge [
    i32 0, label %do.end
    i32 1, label %if.then34
  ]

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.73) #10
  br label %exit

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %nclocks35 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %nclocks35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nclocks35, align 4
  %clock36 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %clock36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clock36, align 4
  tail call void @camss_disable_clocks(i32 noundef %31, ptr noundef %33) #7
  %call.i74 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.else.if.end39_crit_edge
  %34 = ptrtoint ptr %power_count28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %power_count28, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %power_count28, align 4
  br label %exit

exit:                                             ; preds = %if.end39, %do.end, %if.end20, %if.then16, %if.then11, %do.end11.i.i.i.i.i, %if.then.i.exit_crit_edge, %if.then4
  %ret.0 = phi i32 [ 0, %if.then4 ], [ %call9, %if.then11 ], [ %call14, %if.then16 ], [ %call14, %if.end20 ], [ 0, %do.end ], [ 0, %if.end39 ], [ %call.i, %if.then.i.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %power_lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @camss_enable_clocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ispif_reset(ptr noundef %ispif, i8 noundef zeroext %vfe_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %camss1 = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 15
  %0 = ptrtoint ptr %camss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camss1, align 4
  %call = tail call i32 @camss_pm_domain_on(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @camss_pm_domain_on(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nclocks_for_reset = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 7
  %2 = ptrtoint ptr %nclocks_for_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks_for_reset, align 4
  %clock_for_reset = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 6
  %4 = ptrtoint ptr %clock_for_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock_for_reset, align 4
  %dev = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call6 = tail call i32 @camss_enable_clocks(i32 noundef %3, ptr noundef %5, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %camss1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %camss1, align 4
  %conv.i = zext i8 %vfe_id to i32
  %vfe_num.i = getelementptr inbounds %struct.camss, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %vfe_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vfe_num.i, align 8
  %sub.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp.i = icmp slt i32 %sub.i, %conv.i
  br i1 %cmp.i, label %if.end9.do.body_crit_edge, label %if.end.i

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %if.end9
  %arrayidx.i = getelementptr %struct.ispif_device, ptr %ispif, i32 0, i32 8, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vfe_id)
  %cmp5.i = icmp eq i8 %vfe_id, 1
  %13 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ispif, align 4
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -14741760) #7, !srcloc !171
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -14741760) #7, !srcloc !171
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then7.i
  %call14.i = tail call i32 @wait_for_completion_timeout(ptr noundef %arrayidx.i, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end10.i.do.body_crit_edge, label %if.end10.i.if.end19_crit_edge

if.end10.i.if.end19_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end10.i.do.body_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end10.i.do.body_crit_edge, %if.end9.do.body_crit_edge
  %.str.81.sink.i = phi ptr [ @.str.78, %if.end9.do.body_crit_edge ], [ @.str.81, %if.end10.i.do.body_crit_edge ]
  %retval.0.ph.i = phi i32 [ -2, %if.end9.do.body_crit_edge ], [ -5, %if.end10.i.do.body_crit_edge ]
  %dev19.i = getelementptr inbounds %struct.camss, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.81.sink.i, i32 noundef %conv.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ispif_reset.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ispif_reset, %if.then16)) #7
          to label %if.end19 [label %if.then16], !srcloc !178

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ispif_reset.__UNIQUE_ID_ddebug299, ptr noundef %18, ptr noundef nonnull @.str.77) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %do.body, %if.end10.i.if.end19_crit_edge
  %retval.0.i4043 = phi i32 [ %retval.0.ph.i, %if.then16 ], [ %retval.0.ph.i, %do.body ], [ 0, %if.end10.i.if.end19_crit_edge ]
  %19 = ptrtoint ptr %nclocks_for_reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nclocks_for_reset, align 4
  %21 = ptrtoint ptr %clock_for_reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clock_for_reset, align 4
  tail call void @camss_disable_clocks(i32 noundef %20, ptr noundef %22) #7
  tail call void @camss_pm_domain_off(ptr noundef %1, i32 noundef 0) #7
  tail call void @camss_pm_domain_off(ptr noundef %1, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i4043, %if.end19 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_disable_clocks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @camss_pm_domain_on(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_pm_domain_off(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_set_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %camss2 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %camss2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %camss2, align 4
  %interface = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface, align 4
  %csid_id = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %csid_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %csid_id, align 1
  %vfe_id = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %vfe_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vfe_id, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pads = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 6
  %call4 = tail call ptr @media_entity_remote_pad(ptr noundef %pads) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %config_lock = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #7
  tail call fastcc void @ispif_select_clk_mux(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext 1)
  %12 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %7, label %if.end.if.then9_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb32.i
  ]

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %conv.i = zext i8 %11 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 9
  %add.i = add nuw nsw i32 %mul.i, 704
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %conv5.i = zext i8 %11 to i32
  %mul6.i = shl nuw nsw i32 %conv5.i, 9
  %add7.i = add nuw nsw i32 %mul6.i, 720
  %add.ptr9.i = getelementptr i8, ptr %17, i32 %add7.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !170
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %conv15.i = zext i8 %11 to i32
  %mul16.i = shl nuw nsw i32 %conv15.i, 9
  %add18.i = add nuw nsw i32 %mul16.i, 708
  %add.ptr19.i = getelementptr i8, ptr %20, i32 %add18.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #7, !srcloc !170
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %conv25.i = zext i8 %11 to i32
  %mul26.i = shl nuw nsw i32 %conv25.i, 9
  %add28.i = add nuw nsw i32 %mul26.i, 724
  %add.ptr29.i = getelementptr i8, ptr %23, i32 %add28.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #7, !srcloc !170
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %conv35.i = zext i8 %11 to i32
  %mul36.i = shl nuw nsw i32 %conv35.i, 9
  %add38.i = add nuw nsw i32 %mul36.i, 728
  %add.ptr39.i = getelementptr i8, ptr %26, i32 %add38.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #7, !srcloc !170
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb32.i, %sw.bb22.i, %sw.bb12.i, %sw.bb2.i, %sw.bb.i
  %.sink.i = phi i32 [ %27, %sw.bb32.i ], [ %24, %sw.bb22.i ], [ %21, %sw.bb12.i ], [ %18, %sw.bb2.i ], [ %15, %sw.bb.i ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %.sink.i) #7
  %and.i = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 15
  br i1 %cmp.not.i, label %if.end11, label %sw.epilog.i.if.then9_crit_edge

sw.epilog.i.if.then9_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %sw.epilog.i.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %val.056.i = phi i32 [ %28, %sw.epilog.i.if.then9_crit_edge ], [ 0, %if.end.if.then9_crit_edge ]
  %29 = ptrtoint ptr %camss2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %camss2, align 4
  %dev.i = getelementptr inbounds %struct.camss, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %val.056.i) #10
  tail call void @mutex_unlock(ptr noundef %config_lock) #7
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog.i
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %conv.i119 = zext i8 %11 to i32
  %mul.i120 = shl nuw nsw i32 %conv.i119, 9
  %add.i121 = add nuw nsw i32 %mul.i120, 580
  %add.ptr.i122 = getelementptr i8, ptr %34, i32 %add.i121
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #7, !srcloc !170
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %7, label %if.end11.ispif_select_csid.exit_crit_edge [
    i32 0, label %sw.bb.i124
    i32 1, label %sw.bb2.i125
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb17.i
    i32 4, label %sw.bb25.i
  ]

if.end11.ispif_select_csid.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_select_csid.exit

sw.bb.i124:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and.i123 = and i32 %36, -4
  %conv1.i = zext i8 %9 to i32
  %or.i = or i32 %and.i123, %conv1.i
  br label %ispif_select_csid.exit

sw.bb2.i125:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %36, -49
  %conv6.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 4
  %or7.i = or i32 %and3.i, %shl.i
  br label %ispif_select_csid.exit

sw.bb9.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i = and i32 %36, -769
  %conv13.i = zext i8 %9 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %or15.i = or i32 %and10.i, %shl14.i
  br label %ispif_select_csid.exit

sw.bb17.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i = and i32 %36, -12289
  %conv21.i = zext i8 %9 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 12
  %or23.i = or i32 %and18.i, %shl22.i
  br label %ispif_select_csid.exit

sw.bb25.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and26.i = and i32 %36, -3145729
  %conv29.i = zext i8 %9 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 20
  %or31.i = or i32 %and26.i, %shl30.i
  br label %ispif_select_csid.exit

ispif_select_csid.exit:                           ; preds = %sw.bb25.i, %sw.bb17.i, %sw.bb9.i, %sw.bb2.i125, %sw.bb.i124, %if.end11.ispif_select_csid.exit_crit_edge
  %val.0.i = phi i32 [ %36, %if.end11.ispif_select_csid.exit_crit_edge ], [ %or31.i, %sw.bb25.i ], [ %or23.i, %sw.bb17.i ], [ %or15.i, %sw.bb9.i ], [ %or7.i, %sw.bb2.i125 ], [ %or.i, %sw.bb.i124 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %add.ptr37.i = getelementptr i8, ptr %40, i32 %add.i121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %38) #7, !srcloc !171
  %41 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %7, label %ispif_select_csid.exit.ispif_select_cid.exit_crit_edge [
    i32 0, label %sw.bb.i129
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb13.i
    i32 4, label %sw.bb18.i
  ]

ispif_select_csid.exit.ispif_select_cid.exit_crit_edge: ; preds = %ispif_select_csid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_select_cid.exit

sw.bb.i129:                                       ; preds = %ispif_select_csid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.i128 = add nuw nsw i32 %mul.i120, 596
  br label %ispif_select_cid.exit

sw.bb3.i:                                         ; preds = %ispif_select_csid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add6.i = add nuw nsw i32 %mul.i120, 612
  br label %ispif_select_cid.exit

sw.bb8.i:                                         ; preds = %ispif_select_csid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add12.i = add nuw nsw i32 %mul.i120, 600
  br label %ispif_select_cid.exit

sw.bb13.i:                                        ; preds = %ispif_select_csid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add17.i = add nuw nsw i32 %mul.i120, 616
  br label %ispif_select_cid.exit

sw.bb18.i:                                        ; preds = %ispif_select_csid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add22.i = add nuw nsw i32 %mul.i120, 620
  br label %ispif_select_cid.exit

ispif_select_cid.exit:                            ; preds = %sw.bb18.i, %sw.bb13.i, %sw.bb8.i, %sw.bb3.i, %sw.bb.i129, %ispif_select_csid.exit.ispif_select_cid.exit_crit_edge
  %addr.0.i = phi i32 [ 0, %ispif_select_csid.exit.ispif_select_cid.exit_crit_edge ], [ %add22.i, %sw.bb18.i ], [ %add17.i, %sw.bb13.i ], [ %add12.i, %sw.bb8.i ], [ %add6.i, %sw.bb3.i ], [ %add.i128, %sw.bb.i129 ]
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add.ptr.i130 = getelementptr i8, ptr %43, i32 %addr.0.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #7, !srcloc !170
  %45 = or i32 %44, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %add.ptr24.i = getelementptr i8, ptr %47, i32 %addr.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %45) #7, !srcloc !171
  tail call fastcc void @ispif_config_irq(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %11, i8 noundef zeroext 1)
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 8
  %.off = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then17, label %ispif_select_cid.exit.if.end19_crit_edge

ispif_select_cid.exit.if.end19_crit_edge:         ; preds = %ispif_select_cid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %ispif_select_cid.exit
  %code = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0, i32 2
  %50 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %code, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %51, label %if.then17.if.end19_crit_edge [
    i32 12292, label %if.then17.if.end.i_crit_edge
    i32 8236, label %if.then17.if.end.i_crit_edge207
  ]

if.then17.if.end.i_crit_edge207:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then17.if.end.i_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then17.if.end19_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end.i:                                         ; preds = %if.then17.if.end.i_crit_edge, %if.then17.if.end.i_crit_edge207
  %53 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %7, label %if.end.i.if.end19_crit_edge [
    i32 1, label %if.end.i.sw.epilog.i135_crit_edge
    i32 3, label %if.then16.i
    i32 4, label %if.then31.i
  ]

if.end.i.sw.epilog.i135_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i135

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i135

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i135

sw.epilog.i135:                                   ; preds = %if.then31.i, %if.then16.i, %if.end.i.sw.epilog.i135_crit_edge
  %.sink.i133 = phi i32 [ 632, %if.then31.i ], [ 628, %if.then16.i ], [ 624, %if.end.i.sw.epilog.i135_crit_edge ]
  %add35.i = add nuw nsw i32 %.sink.i133, %mul.i120
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %add.ptr.i134 = getelementptr i8, ptr %55, i32 %add35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 16777216) #7, !srcloc !171
  br label %if.end19

if.end19:                                         ; preds = %sw.epilog.i135, %if.end.i.if.end19_crit_edge, %if.then17.if.end19_crit_edge, %ispif_select_cid.exit.if.end19_crit_edge
  tail call fastcc void @ispif_set_intf_cmd(ptr noundef %3, i8 noundef zeroext 1, i32 noundef %7, i8 noundef zeroext %11)
  br label %if.end40

if.else:                                          ; preds = %entry
  %config_lock20 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %config_lock20, i32 noundef 0) #7
  tail call fastcc void @ispif_set_intf_cmd(ptr noundef %3, i8 noundef zeroext 0, i32 noundef %7, i8 noundef zeroext %11)
  tail call void @mutex_unlock(ptr noundef %config_lock20) #7
  %56 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %7, label %if.else.sw.epilog.i145_crit_edge [
    i32 0, label %sw.bb.i139
    i32 1, label %sw.bb2.i140
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb12.i142
    i32 4, label %sw.bb17.i143
  ]

if.else.sw.epilog.i145_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i145

sw.bb.i139:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i136 = zext i8 %11 to i32
  %mul.i137 = shl nuw nsw i32 %conv.i136, 9
  %add.i138 = add nuw nsw i32 %mul.i137, 704
  br label %sw.epilog.i145

sw.bb2.i140:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = zext i8 %11 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i, 9
  %add5.i = add nuw nsw i32 %mul4.i, 720
  br label %sw.epilog.i145

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i = zext i8 %11 to i32
  %mul9.i = shl nuw nsw i32 %conv8.i, 9
  %add11.i = add nuw nsw i32 %mul9.i, 708
  br label %sw.epilog.i145

sw.bb12.i142:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.i141 = zext i8 %11 to i32
  %mul14.i = shl nuw nsw i32 %conv13.i141, 9
  %add16.i = add nuw nsw i32 %mul14.i, 724
  br label %sw.epilog.i145

sw.bb17.i143:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv18.i = zext i8 %11 to i32
  %mul19.i = shl nuw nsw i32 %conv18.i, 9
  %add21.i = add nuw nsw i32 %mul19.i, 728
  br label %sw.epilog.i145

sw.epilog.i145:                                   ; preds = %sw.bb17.i143, %sw.bb12.i142, %sw.bb7.i, %sw.bb2.i140, %sw.bb.i139, %if.else.sw.epilog.i145_crit_edge
  %addr.0.i144 = phi i32 [ 0, %if.else.sw.epilog.i145_crit_edge ], [ %add21.i, %sw.bb17.i143 ], [ %add16.i, %sw.bb12.i142 ], [ %add11.i, %sw.bb7.i ], [ %add5.i, %sw.bb2.i140 ], [ %add.i138, %sw.bb.i139 ]
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 556) #7
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %add.ptr78.i = getelementptr i8, ptr %58, i32 %addr.0.i144
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %60 = and i32 %59, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %60)
  %cmp3280.i = icmp eq i32 %60, 251658240
  br i1 %cmp3280.i, label %sw.epilog.i145.if.end26_crit_edge, label %sw.epilog.i145.land.lhs.true.i_crit_edge

sw.epilog.i145.land.lhs.true.i_crit_edge:         ; preds = %sw.epilog.i145
  br label %land.lhs.true.i

sw.epilog.i145.if.end26_crit_edge:                ; preds = %sw.epilog.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true.i:                                  ; preds = %if.then50.i.land.lhs.true.i_crit_edge, %sw.epilog.i145.land.lhs.true.i_crit_edge
  %call36.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call36.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call36.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then50.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %add.ptr.i146 = getelementptr i8, ptr %62, i32 %addr.0.i144
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %64 = and i32 %63, 251658240
  %cmp32.i = icmp eq i32 %64, 251658240
  br i1 %cmp32.i, label %if.then50.i.if.end26_crit_edge, label %if.then50.i.land.lhs.true.i_crit_edge

if.then50.i.land.lhs.true.i_crit_edge:            ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then50.i.if.end26_crit_edge:                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.end.i:                                        ; preds = %land.lhs.true.i
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %add.ptr44.i = getelementptr i8, ptr %66, i32 %addr.0.i144
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %68 = and i32 %67, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %68)
  %cmp55.i = icmp eq i32 %68, 251658240
  br i1 %cmp55.i, label %for.end.i.if.end26_crit_edge, label %ispif_wait_for_stop.exit

for.end.i.if.end26_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

ispif_wait_for_stop.exit:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %camss2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %camss2, align 4
  %dev.i148 = getelementptr inbounds %struct.camss, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %dev.i148 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i148, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #10
  br label %cleanup

if.end26:                                         ; preds = %for.end.i.if.end26_crit_edge, %if.then50.i.if.end26_crit_edge, %sw.epilog.i145.if.end26_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %config_lock20, i32 noundef 0) #7
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %5, align 8
  %.off117 = add i32 %74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off117)
  %switch118 = icmp ult i32 %.off117, 2
  br i1 %switch118, label %if.then35, label %if.end26.if.end39_crit_edge

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then35:                                        ; preds = %if.end26
  %code38 = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0, i32 2
  %75 = ptrtoint ptr %code38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %code38, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %76, label %if.then35.if.end39_crit_edge [
    i32 12292, label %if.then35.if.end.i149_crit_edge
    i32 8236, label %if.then35.if.end.i149_crit_edge208
  ]

if.then35.if.end.i149_crit_edge208:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i149

if.then35.if.end.i149_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i149

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end.i149:                                      ; preds = %if.then35.if.end.i149_crit_edge, %if.then35.if.end.i149_crit_edge208
  %78 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %7, label %if.end.i149.if.end39_crit_edge [
    i32 1, label %if.end.i149.sw.epilog.i157_crit_edge
    i32 3, label %if.then16.i150
    i32 4, label %if.then31.i151
  ]

if.end.i149.sw.epilog.i157_crit_edge:             ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i157

if.end.i149.if.end39_crit_edge:                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then16.i150:                                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i157

if.then31.i151:                                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i157

sw.epilog.i157:                                   ; preds = %if.then31.i151, %if.then16.i150, %if.end.i149.sw.epilog.i157_crit_edge
  %.sink.i152 = phi i32 [ 632, %if.then31.i151 ], [ 628, %if.then16.i150 ], [ 624, %if.end.i149.sw.epilog.i157_crit_edge ]
  %conv32.i153 = zext i8 %11 to i32
  %mul33.i154 = shl nuw nsw i32 %conv32.i153, 9
  %add35.i155 = add nuw nsw i32 %.sink.i152, %mul33.i154
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 4
  %add.ptr.i156 = getelementptr i8, ptr %80, i32 %add35.i155
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 0) #7, !srcloc !171
  br label %if.end39

if.end39:                                         ; preds = %sw.epilog.i157, %if.end.i149.if.end39_crit_edge, %if.then35.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  tail call fastcc void @ispif_config_irq(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %11, i8 noundef zeroext 0)
  %81 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %7, label %if.end39.ispif_select_cid.exit183_crit_edge [
    i32 0, label %sw.bb.i162
    i32 1, label %sw.bb3.i166
    i32 2, label %sw.bb8.i170
    i32 3, label %sw.bb13.i174
    i32 4, label %sw.bb18.i178
  ]

if.end39.ispif_select_cid.exit183_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %11 to i32
  %.pre206 = shl nuw nsw i32 %.pre, 9
  br label %ispif_select_cid.exit183

sw.bb.i162:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i159 = zext i8 %11 to i32
  %mul.i160 = shl nuw nsw i32 %conv1.i159, 9
  %add.i161 = add nuw nsw i32 %mul.i160, 596
  br label %ispif_select_cid.exit183

sw.bb3.i166:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i163 = zext i8 %11 to i32
  %mul5.i164 = shl nuw nsw i32 %conv4.i163, 9
  %add6.i165 = add nuw nsw i32 %mul5.i164, 612
  br label %ispif_select_cid.exit183

sw.bb8.i170:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i167 = zext i8 %11 to i32
  %mul10.i168 = shl nuw nsw i32 %conv9.i167, 9
  %add12.i169 = add nuw nsw i32 %mul10.i168, 600
  br label %ispif_select_cid.exit183

sw.bb13.i174:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i171 = zext i8 %11 to i32
  %mul15.i172 = shl nuw nsw i32 %conv14.i171, 9
  %add17.i173 = add nuw nsw i32 %mul15.i172, 616
  br label %ispif_select_cid.exit183

sw.bb18.i178:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv19.i175 = zext i8 %11 to i32
  %mul20.i176 = shl nuw nsw i32 %conv19.i175, 9
  %add22.i177 = add nuw nsw i32 %mul20.i176, 620
  br label %ispif_select_cid.exit183

ispif_select_cid.exit183:                         ; preds = %sw.bb18.i178, %sw.bb13.i174, %sw.bb8.i170, %sw.bb3.i166, %sw.bb.i162, %if.end39.ispif_select_cid.exit183_crit_edge
  %mul.i185.pre-phi = phi i32 [ %.pre206, %if.end39.ispif_select_cid.exit183_crit_edge ], [ %mul.i160, %sw.bb.i162 ], [ %mul5.i164, %sw.bb3.i166 ], [ %mul10.i168, %sw.bb8.i170 ], [ %mul15.i172, %sw.bb13.i174 ], [ %mul20.i176, %sw.bb18.i178 ]
  %addr.0.i179 = phi i32 [ 0, %if.end39.ispif_select_cid.exit183_crit_edge ], [ %add.i161, %sw.bb.i162 ], [ %add6.i165, %sw.bb3.i166 ], [ %add12.i169, %sw.bb8.i170 ], [ %add17.i173, %sw.bb13.i174 ], [ %add22.i177, %sw.bb18.i178 ]
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %3, align 4
  %add.ptr.i180 = getelementptr i8, ptr %83, i32 %addr.0.i179
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #7, !srcloc !170
  %85 = and i32 %84, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  %add.ptr24.i181 = getelementptr i8, ptr %87, i32 %addr.0.i179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i181, i32 %85) #7, !srcloc !171
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 4
  %add.i186 = add nuw nsw i32 %mul.i185.pre-phi, 580
  %add.ptr.i187 = getelementptr i8, ptr %89, i32 %add.i186
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #7, !srcloc !170
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  %92 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %7, label %ispif_select_cid.exit183.ispif_select_csid.exit200_crit_edge [
    i32 0, label %sw.bb.i189
    i32 1, label %sw.bb2.i191
    i32 2, label %sw.bb9.i193
    i32 3, label %sw.bb17.i195
    i32 4, label %sw.bb25.i197
  ]

ispif_select_cid.exit183.ispif_select_csid.exit200_crit_edge: ; preds = %ispif_select_cid.exit183
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_select_csid.exit200

sw.bb.i189:                                       ; preds = %ispif_select_cid.exit183
  call void @__sanitizer_cov_trace_pc() #9
  %and.i188 = and i32 %91, -4
  br label %ispif_select_csid.exit200

sw.bb2.i191:                                      ; preds = %ispif_select_cid.exit183
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i190 = and i32 %91, -49
  br label %ispif_select_csid.exit200

sw.bb9.i193:                                      ; preds = %ispif_select_cid.exit183
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i192 = and i32 %91, -769
  br label %ispif_select_csid.exit200

sw.bb17.i195:                                     ; preds = %ispif_select_cid.exit183
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i194 = and i32 %91, -12289
  br label %ispif_select_csid.exit200

sw.bb25.i197:                                     ; preds = %ispif_select_cid.exit183
  call void @__sanitizer_cov_trace_pc() #9
  %and26.i196 = and i32 %91, -3145729
  br label %ispif_select_csid.exit200

ispif_select_csid.exit200:                        ; preds = %sw.bb25.i197, %sw.bb17.i195, %sw.bb9.i193, %sw.bb2.i191, %sw.bb.i189, %ispif_select_cid.exit183.ispif_select_csid.exit200_crit_edge
  %val.0.i198 = phi i32 [ %91, %ispif_select_cid.exit183.ispif_select_csid.exit200_crit_edge ], [ %and26.i196, %sw.bb25.i197 ], [ %and18.i194, %sw.bb17.i195 ], [ %and10.i192, %sw.bb9.i193 ], [ %and3.i190, %sw.bb2.i191 ], [ %and.i188, %sw.bb.i189 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %val.0.i198) #7
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 4
  %add.ptr37.i199 = getelementptr i8, ptr %95, i32 %add.i186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i199, i32 %93) #7, !srcloc !171
  tail call fastcc void @ispif_select_clk_mux(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext 0)
  br label %if.end40

if.end40:                                         ; preds = %ispif_select_csid.exit200, %if.end19
  %config_lock41 = getelementptr inbounds %struct.ispif_device, ptr %3, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %config_lock41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %ispif_wait_for_stop.exit, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then9 ], [ 0, %if.end40 ], [ -67, %if.then.cleanup_crit_edge ], [ -110, %ispif_wait_for_stop.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ispif_select_clk_mux(ptr nocapture noundef readonly %ispif, i32 noundef %intf, i8 noundef zeroext %csid, i8 noundef zeroext %vfe, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %intf to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %intf, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb28
    i32 3, label %sw.bb50
    i32 4, label %sw.bb73
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_clk_mux = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 1
  %1 = ptrtoint ptr %base_clk_mux to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base_clk_mux, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !170
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i8 %vfe to i32
  %mul = shl nuw nsw i32 %conv, 3
  %shl = shl i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %conv1 = zext i8 %csid to i32
  %shl4 = shl i32 %conv1, %mul
  %or = select i1 %tobool.not, i32 0, i32 %shl4
  %val.0 = or i32 %and, %or
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %6 = ptrtoint ptr %base_clk_mux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_clk_mux, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !171
  br label %do.body

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_clk_mux9 = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 1
  %8 = ptrtoint ptr %base_clk_mux9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_clk_mux9, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !170
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %conv13 = zext i8 %vfe to i32
  %mul14 = mul nuw nsw i32 %conv13, 12
  %shl15 = shl i32 15, %mul14
  %neg16 = xor i32 %shl15, -1
  %and17 = and i32 %11, %neg16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool18.not = icmp eq i8 %enable, 0
  %conv20 = zext i8 %csid to i32
  %shl23 = shl i32 %conv20, %mul14
  %or24 = select i1 %tobool18.not, i32 0, i32 %shl23
  %val.1 = or i32 %and17, %or24
  %12 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %13 = ptrtoint ptr %base_clk_mux9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_clk_mux9, align 4
  %add.ptr27 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %12) #7, !srcloc !171
  br label %do.body

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_clk_mux30 = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 1
  %15 = ptrtoint ptr %base_clk_mux30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_clk_mux30, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !170
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %conv34 = zext i8 %vfe to i32
  %mul35 = shl nuw nsw i32 %conv34, 3
  %add = or i32 %mul35, 4
  %shl36 = shl i32 15, %add
  %neg37 = xor i32 %shl36, -1
  %and38 = and i32 %18, %neg37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool39.not = icmp eq i8 %enable, 0
  %conv41 = zext i8 %csid to i32
  %shl45 = shl i32 %conv41, %add
  %or46 = select i1 %tobool39.not, i32 0, i32 %shl45
  %val.2 = or i32 %and38, %or46
  %19 = tail call i32 @llvm.bswap.i32(i32 %val.2)
  %20 = ptrtoint ptr %base_clk_mux30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_clk_mux30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !171
  br label %do.body

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_clk_mux52 = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 1
  %22 = ptrtoint ptr %base_clk_mux52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_clk_mux52, align 4
  %add.ptr53 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !170
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %conv56 = zext i8 %vfe to i32
  %mul57 = mul nuw nsw i32 %conv56, 12
  %shl59 = shl i32 240, %mul57
  %neg60 = xor i32 %shl59, -1
  %and61 = and i32 %25, %neg60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool62.not = icmp eq i8 %enable, 0
  %add58 = add nuw nsw i32 %mul57, 4
  %conv64 = zext i8 %csid to i32
  %shl68 = shl i32 %conv64, %add58
  %or69 = select i1 %tobool62.not, i32 0, i32 %shl68
  %val.3 = or i32 %and61, %or69
  %26 = tail call i32 @llvm.bswap.i32(i32 %val.3)
  %27 = ptrtoint ptr %base_clk_mux52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_clk_mux52, align 4
  %add.ptr72 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %26) #7, !srcloc !171
  br label %do.body

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_clk_mux75 = getelementptr inbounds %struct.ispif_device, ptr %ispif, i32 0, i32 1
  %29 = ptrtoint ptr %base_clk_mux75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_clk_mux75, align 4
  %add.ptr76 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #7, !srcloc !170
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %conv79 = zext i8 %vfe to i32
  %mul80 = mul nuw nsw i32 %conv79, 12
  %shl82 = shl i32 3840, %mul80
  %neg83 = xor i32 %shl82, -1
  %and84 = and i32 %32, %neg83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool85.not = icmp eq i8 %enable, 0
  %add81 = add nuw nsw i32 %mul80, 8
  %conv87 = zext i8 %csid to i32
  %shl91 = shl i32 %conv87, %add81
  %or92 = select i1 %tobool85.not, i32 0, i32 %shl91
  %val.4 = or i32 %and84, %or92
  %33 = tail call i32 @llvm.bswap.i32(i32 %val.4)
  %34 = ptrtoint ptr %base_clk_mux75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_clk_mux75, align 4
  %add.ptr95 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %33) #7, !srcloc !171
  br label %do.body

do.body:                                          ; preds = %sw.bb73, %sw.bb50, %sw.bb28, %sw.bb7, %sw.bb, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ispif_config_irq(ptr nocapture noundef readonly %ispif, i32 noundef %intf, i8 noundef zeroext %vfe, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %intf to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %intf, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb35
    i32 3, label %sw.bb59
    i32 4, label %sw.bb83
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ispif, align 4
  %conv = zext i8 %vfe to i32
  %mul = shl nuw nsw i32 %conv, 9
  %add = add nuw nsw i32 %mul, 520
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %4 = and i32 %3, 14745599
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %or = or i32 %5, 4681
  %spec.select = select i1 %tobool.not, i32 %5, i32 %or
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %7 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ispif, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #7, !srcloc !171
  %9 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ispif, align 4
  %add9 = add nuw nsw i32 %mul, 560
  %add.ptr10 = getelementptr i8, ptr %10, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1225916416) #7, !srcloc !171
  br label %do.body

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ispif, align 4
  %conv14 = zext i8 %vfe to i32
  %mul15 = shl nuw nsw i32 %conv14, 9
  %add16 = add nuw nsw i32 %mul15, 520
  %add.ptr17 = getelementptr i8, ptr %12, i32 %add16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !170
  %14 = and i32 %13, -14745348
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool21.not = icmp eq i8 %enable, 0
  %or23 = or i32 %15, 38346752
  %spec.select156 = select i1 %tobool21.not, i32 %15, i32 %or23
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select156)
  %17 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ispif, align 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %16) #7, !srcloc !171
  %19 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ispif, align 4
  %add33 = add nuw nsw i32 %mul15, 560
  %add.ptr34 = getelementptr i8, ptr %20, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 2115842) #7, !srcloc !171
  br label %do.body

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ispif, align 4
  %conv38 = zext i8 %vfe to i32
  %mul39 = shl nuw nsw i32 %conv38, 9
  %add40 = add nuw nsw i32 %mul39, 524
  %add.ptr41 = getelementptr i8, ptr %22, i32 %add40
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !170
  %24 = and i32 %23, 14745599
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool45.not = icmp eq i8 %enable, 0
  %or47 = or i32 %25, 4681
  %spec.select157 = select i1 %tobool45.not, i32 %25, i32 %or47
  %26 = tail call i32 @llvm.bswap.i32(i32 %spec.select157)
  %27 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ispif, align 4
  %add.ptr53 = getelementptr i8, ptr %28, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %26) #7, !srcloc !171
  %29 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ispif, align 4
  %add57 = add nuw nsw i32 %mul39, 564
  %add.ptr58 = getelementptr i8, ptr %30, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 1225916416) #7, !srcloc !171
  br label %do.body

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ispif, align 4
  %conv62 = zext i8 %vfe to i32
  %mul63 = shl nuw nsw i32 %conv62, 9
  %add64 = add nuw nsw i32 %mul63, 524
  %add.ptr65 = getelementptr i8, ptr %32, i32 %add64
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #7, !srcloc !170
  %34 = and i32 %33, -14745348
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool69.not = icmp eq i8 %enable, 0
  %or71 = or i32 %35, 38346752
  %spec.select158 = select i1 %tobool69.not, i32 %35, i32 %or71
  %36 = tail call i32 @llvm.bswap.i32(i32 %spec.select158)
  %37 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ispif, align 4
  %add.ptr77 = getelementptr i8, ptr %38, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %36) #7, !srcloc !171
  %39 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ispif, align 4
  %add81 = add nuw nsw i32 %mul63, 564
  %add.ptr82 = getelementptr i8, ptr %40, i32 %add81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 2115842) #7, !srcloc !171
  br label %do.body

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ispif, align 4
  %conv86 = zext i8 %vfe to i32
  %mul87 = shl nuw nsw i32 %conv86, 9
  %add88 = add nuw nsw i32 %mul87, 528
  %add.ptr89 = getelementptr i8, ptr %42, i32 %add88
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #7, !srcloc !170
  %44 = and i32 %43, 14745599
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool93.not = icmp eq i8 %enable, 0
  %or95 = or i32 %45, 4681
  %spec.select159 = select i1 %tobool93.not, i32 %45, i32 %or95
  %46 = tail call i32 @llvm.bswap.i32(i32 %spec.select159)
  %47 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ispif, align 4
  %add.ptr101 = getelementptr i8, ptr %48, i32 %add88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %46) #7, !srcloc !171
  %49 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ispif, align 4
  %add105 = add nuw nsw i32 %mul87, 568
  %add.ptr106 = getelementptr i8, ptr %50, i32 %add105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 1225916416) #7, !srcloc !171
  br label %do.body

do.body:                                          ; preds = %sw.bb83, %sw.bb59, %sw.bb35, %sw.bb11, %sw.bb, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ispif, align 4
  %add.ptr108 = getelementptr i8, ptr %52, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 16777216) #7, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ispif_set_intf_cmd(ptr nocapture noundef %ispif, i8 noundef zeroext %cmd, i32 noundef %intf, i8 noundef zeroext %vfe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %intf)
  %cmp = icmp eq i32 %intf, 4
  %idxprom = zext i8 %vfe to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_1 = getelementptr %struct.ispif_device, ptr %ispif, i32 0, i32 11, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %cmd_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_1, align 4
  %and = and i32 %1, -769
  %conv1 = zext i8 %cmd to i32
  %shl5 = shl nuw nsw i32 %conv1, 8
  %or = or i32 %and, %shl5
  store i32 %or, ptr %cmd_1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %cmd_1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ispif, align 4
  %mul7 = shl nuw nsw i32 %idxprom, 9
  %add8 = add nuw nsw i32 %mul7, 588
  %add.ptr = getelementptr i8, ptr %6, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14 = getelementptr %struct.ispif_device, ptr %ispif, i32 0, i32 11, i32 %idxprom
  %mul17 = shl i32 %intf, 3
  %shl19 = shl i32 3, %mul17
  %neg20 = xor i32 %shl19, -1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14, align 4
  %and21 = and i32 %8, %neg20
  %conv22 = zext i8 %cmd to i32
  %shl27 = shl i32 %conv22, %mul17
  %or28 = or i32 %and21, %shl27
  store i32 %or28, ptr %arrayidx14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx14, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %ispif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ispif, align 4
  %mul34 = shl nuw nsw i32 %idxprom, 9
  %add35 = add nuw nsw i32 %mul34, 584
  %add.ptr36 = getelementptr i8, ptr %13, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %11) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %nformats = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %formats = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %formats, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %5
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %10 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end8
  %num_pads.i.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !169

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  br label %__ispif_get_format.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0
  br label %__ispif_get_format.exit

__ispif_get_format.exit:                          ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %15, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %code10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__ispif_get_format.exit, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %code10, %__ispif_get_format.exit ]
  %16 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.sink, align 4
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %18 = ptrtoint ptr %code4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %code4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %7, label %if.end.ispif_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb28.i
  ]

if.end.ispif_try_format.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %nformats.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp54.not.i = icmp eq i32 %10, 0
  br i1 %cmp54.not.i, label %for.cond.preheader.i.ispif_try_format.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ispif_try_format.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %formats.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.cond.i.ispif_try_format.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.ispif_try_format.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %12, i32 %i.055.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp1.i = icmp eq i32 %5, %14
  br i1 %cmp1.i, label %for.body.i.ispif_try_format.exit_crit_edge, label %for.cond.i

for.body.i.ispif_try_format.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit

sw.bb28.i:                                        ; preds = %if.end
  %15 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb28.i
  %num_pads.i.i.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.i.not.i = icmp eq i16 %18, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !169

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  br label %__ispif_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0
  br label %__ispif_get_format.exit.i

__ispif_get_format.exit.i:                        ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
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
  br label %ispif_try_format.exit

ispif_try_format.exit:                            ; preds = %__ispif_get_format.exit.i, %for.body.i.ispif_try_format.exit_crit_edge, %for.cond.i.ispif_try_format.exit_crit_edge, %for.cond.preheader.i.ispif_try_format.exit_crit_edge, %if.end.ispif_try_format.exit_crit_edge
  %format.sroa.0.0 = phi i32 [ 1, %if.end.ispif_try_format.exit_crit_edge ], [ %format.sroa.0.0.copyload, %__ispif_get_format.exit.i ], [ 1, %for.cond.preheader.i.ispif_try_format.exit_crit_edge ], [ 1, %for.cond.i.ispif_try_format.exit_crit_edge ], [ 1, %for.body.i.ispif_try_format.exit_crit_edge ]
  %format.sroa.13.0 = phi i32 [ 1, %if.end.ispif_try_format.exit_crit_edge ], [ %format.sroa.13.0.copyload, %__ispif_get_format.exit.i ], [ 1, %for.cond.preheader.i.ispif_try_format.exit_crit_edge ], [ 1, %for.cond.i.ispif_try_format.exit_crit_edge ], [ 1, %for.body.i.ispif_try_format.exit_crit_edge ]
  %format.sroa.21.1 = phi i32 [ %5, %if.end.ispif_try_format.exit_crit_edge ], [ %format.sroa.21.0.copyload, %__ispif_get_format.exit.i ], [ 8198, %for.cond.preheader.i.ispif_try_format.exit_crit_edge ], [ %5, %for.body.i.ispif_try_format.exit_crit_edge ], [ 8198, %for.cond.i.ispif_try_format.exit_crit_edge ]
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
  br i1 %cmp6.not, label %if.end8, label %ispif_try_format.exit.cleanup_crit_edge

ispif_try_format.exit.cleanup_crit_edge:          ; preds = %ispif_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %ispif_try_format.exit
  %28 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pad, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %29, label %if.end8.ispif_try_format.exit61_crit_edge [
    i32 0, label %for.cond.preheader.i33
    i32 1, label %sw.bb28.i50
  ]

if.end8.ispif_try_format.exit61_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit61

for.cond.preheader.i33:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit61

sw.bb28.i50:                                      ; preds = %if.end8
  %31 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i49 = icmp eq i32 %32, 0
  br i1 %cmp.i.i49, label %if.then.i.i53, label %if.end.i.i57

if.then.i.i53:                                    ; preds = %sw.bb28.i50
  %num_pads.i.i.i51 = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %33 = ptrtoint ptr %num_pads.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.not.i.i.not.i52 = icmp eq i16 %34, 0
  br i1 %cmp.not.i.i.not.i52, label %do.end.i.i.i54, label %if.then.i.i53.v4l2_subdev_get_try_format.exit.i.i55_crit_edge, !prof !169

if.then.i.i53.v4l2_subdev_get_try_format.exit.i.i55_crit_edge: ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i55

do.end.i.i.i54:                                   ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i55

v4l2_subdev_get_try_format.exit.i.i55:            ; preds = %do.end.i.i.i54, %if.then.i.i53.v4l2_subdev_get_try_format.exit.i.i55_crit_edge
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  br label %__ispif_get_format.exit.i59

if.end.i.i57:                                     ; preds = %sw.bb28.i50
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i56 = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0
  br label %__ispif_get_format.exit.i59

__ispif_get_format.exit.i59:                      ; preds = %if.end.i.i57, %v4l2_subdev_get_try_format.exit.i.i55
  %retval.0.i.i58 = phi ptr [ %36, %v4l2_subdev_get_try_format.exit.i.i55 ], [ %arrayidx.i.i56, %if.end.i.i57 ]
  %37 = ptrtoint ptr %retval.0.i.i58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %format.sroa.0.0.copyload65 = load i32, ptr %retval.0.i.i58, align 4
  %format.sroa.13.0.retval.0.i.i58.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i58, i32 4
  %38 = ptrtoint ptr %format.sroa.13.0.retval.0.i.i58.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %format.sroa.13.0.copyload66 = load i32, ptr %format.sroa.13.0.retval.0.i.i58.sroa_idx, align 4
  br label %ispif_try_format.exit61

ispif_try_format.exit61:                          ; preds = %__ispif_get_format.exit.i59, %for.cond.preheader.i33, %if.end8.ispif_try_format.exit61_crit_edge
  %format.sroa.0.1 = phi i32 [ -1, %if.end8.ispif_try_format.exit61_crit_edge ], [ %format.sroa.0.0.copyload65, %__ispif_get_format.exit.i59 ], [ 8191, %for.cond.preheader.i33 ]
  %format.sroa.13.1 = phi i32 [ -1, %if.end8.ispif_try_format.exit61_crit_edge ], [ %format.sroa.13.0.copyload66, %__ispif_get_format.exit.i59 ], [ 8191, %for.cond.preheader.i33 ]
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %39 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %format.sroa.0.1, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %40 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %format.sroa.13.1, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %ispif_try_format.exit61, %ispif_try_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ispif_try_format.exit61 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ispif_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %num_pads.i.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !173

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ispif_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 %3
  br label %__ispif_get_format.exit

__ispif_get_format.exit:                          ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__ispif_get_format.exit.cleanup_crit_edge, label %if.end

__ispif_get_format.exit.cleanup_crit_edge:        ; preds = %__ispif_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__ispif_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__ispif_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__ispif_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %num_pads.i.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !173

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ispif_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 %3
  br label %__ispif_get_format.exit

__ispif_get_format.exit:                          ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__ispif_get_format.exit.cleanup_crit_edge, label %if.end

__ispif_get_format.exit.cleanup_crit_edge:        ; preds = %__ispif_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__ispif_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %11, label %if.end.ispif_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb28.i
  ]

if.end.ispif_try_format.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %nformats.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp54.not.i = icmp eq i32 %14, 0
  br i1 %cmp54.not.i, label %for.cond.preheader.i.if.then4.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then4.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code.i, align 4
  %formats.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.if.then4.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.then4.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i33 = getelementptr i32, ptr %18, i32 %i.055.i
  %19 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp1.i = icmp eq i32 %16, %20
  br i1 %cmp1.i, label %for.body.i.if.end6.i_crit_edge, label %for.cond.i

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then4.i:                                       ; preds = %for.cond.i.if.then4.i_crit_edge, %for.cond.preheader.i.if.then4.i_crit_edge
  %code5.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8198, ptr %code5.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %for.body.i.if.end6.i_crit_edge
  %22 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %format3, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 1) #7
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 8191) #7
  %26 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %format3, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 1) #7
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 8191) #7
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.i, align 4
  br label %ispif_try_format.exit

sw.bb28.i:                                        ; preds = %if.end
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb28.i
  %num_pads.i.i.i = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %35 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.not.i.i.not.i = icmp eq i16 %36, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !169

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %37 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd_state, align 4
  br label %__ispif_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i34 = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0
  br label %__ispif_get_format.exit.i

__ispif_get_format.exit.i:                        ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %38, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i34, %if.end.i.i ]
  %39 = call ptr @memcpy(ptr %format3, ptr %retval.0.i.i, i32 48)
  br label %ispif_try_format.exit

ispif_try_format.exit:                            ; preds = %__ispif_get_format.exit.i, %if.end6.i, %if.end.ispif_try_format.exit_crit_edge
  %colorspace29.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %colorspace29.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %colorspace29.i, align 4
  %41 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %42 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp7 = icmp eq i32 %43, 0
  br i1 %cmp7, label %if.then8, label %ispif_try_format.exit.cleanup_crit_edge

ispif_try_format.exit.cleanup_crit_edge:          ; preds = %ispif_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %ispif_try_format.exit
  %44 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i35 = icmp eq i32 %45, 0
  br i1 %cmp.i35, label %if.then.i39, label %if.end.i45

if.then.i39:                                      ; preds = %if.then8
  %num_pads.i.i36 = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %46 = ptrtoint ptr %num_pads.i.i36 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_pads.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %47)
  %cmp.not.i.i38 = icmp ugt i16 %47, 1
  br i1 %cmp.not.i.i38, label %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge, label %do.end.i.i40, !prof !173

if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge: ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i43

do.end.i.i40:                                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i43

v4l2_subdev_get_try_format.exit.i43:              ; preds = %do.end.i.i40, %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge
  %spec.select.i.i41 = phi i32 [ 0, %do.end.i.i40 ], [ 1, %if.then.i39.v4l2_subdev_get_try_format.exit.i43_crit_edge ]
  %48 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i42 = getelementptr %struct.v4l2_subdev_pad_config, ptr %49, i32 %spec.select.i.i41
  br label %__ispif_get_format.exit47

if.end.i45:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i44 = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 1
  br label %__ispif_get_format.exit47

__ispif_get_format.exit47:                        ; preds = %if.end.i45, %v4l2_subdev_get_try_format.exit.i43
  %retval.0.i46 = phi ptr [ %arrayidx.i.i42, %v4l2_subdev_get_try_format.exit.i43 ], [ %arrayidx.i44, %if.end.i45 ]
  %50 = call ptr @memcpy(ptr %retval.0.i46, ptr %format3, i32 48)
  %51 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i48 = icmp eq i32 %52, 0
  br i1 %cmp.i.i48, label %if.then.i.i52, label %if.end.i.i56

if.then.i.i52:                                    ; preds = %__ispif_get_format.exit47
  %num_pads.i.i.i50 = getelementptr inbounds %struct.ispif_line, ptr %1, i32 0, i32 5, i32 0, i32 5
  %53 = ptrtoint ptr %num_pads.i.i.i50 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_pads.i.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.not.i.i.not.i51 = icmp eq i16 %54, 0
  br i1 %cmp.not.i.i.not.i51, label %do.end.i.i.i53, label %if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge, !prof !169

if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge: ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i54

do.end.i.i.i53:                                   ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i54

v4l2_subdev_get_try_format.exit.i.i54:            ; preds = %do.end.i.i.i53, %if.then.i.i52.v4l2_subdev_get_try_format.exit.i.i54_crit_edge
  %55 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd_state, align 4
  br label %ispif_try_format.exit60

if.end.i.i56:                                     ; preds = %__ispif_get_format.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i55 = getelementptr %struct.ispif_line, ptr %1, i32 0, i32 7, i32 0
  br label %ispif_try_format.exit60

ispif_try_format.exit60:                          ; preds = %if.end.i.i56, %v4l2_subdev_get_try_format.exit.i.i54
  %retval.0.i.i57 = phi ptr [ %56, %v4l2_subdev_get_try_format.exit.i.i54 ], [ %arrayidx.i.i55, %if.end.i.i56 ]
  %57 = call ptr @memcpy(ptr %retval.0.i46, ptr %retval.0.i.i57, i32 48)
  %colorspace29.i59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i46, i32 0, i32 4
  %58 = ptrtoint ptr %colorspace29.i59 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %colorspace29.i59, align 4
  br label %cleanup

cleanup:                                          ; preds = %ispif_try_format.exit60, %ispif_try_format.exit.cleanup_crit_edge, %__ispif_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__ispif_get_format.exit.cleanup_crit_edge ], [ 0, %ispif_try_format.exit60 ], [ 0, %ispif_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ispif_link_setup(ptr noundef readonly %entity, ptr noundef %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %local) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  %flags3 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags3, align 4
  %and4 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %entity10 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity10, align 4
  %csid_id = getelementptr inbounds %struct.ispif_line, ptr %3, i32 0, i32 2
  tail call void @msm_csid_get_csid_id(ptr noundef %5, ptr noundef %csid_id) #7
  br label %return

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %id, align 4, !annotation !189
  %dev_priv.i37 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i37, align 4
  %entity24 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %9 = ptrtoint ptr %entity24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity24, align 4
  %vfe_id = getelementptr inbounds %struct.ispif_line, ptr %8, i32 0, i32 3
  tail call void @msm_vfe_get_vfe_id(ptr noundef %10, ptr noundef %vfe_id) #7
  %11 = ptrtoint ptr %entity24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity24, align 4
  call void @msm_vfe_get_vfe_line_id(ptr noundef %12, ptr noundef nonnull %id) #7
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %if.else.ispif_get_intf.exit_crit_edge

if.else.ispif_get_intf.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ispif_get_intf.exit

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ispif_link_setup, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ispif_get_intf.exit

ispif_get_intf.exit:                              ; preds = %switch.lookup, %if.else.ispif_get_intf.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.else.ispif_get_intf.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %interface = getelementptr inbounds %struct.ispif_line, ptr %8, i32 0, i32 4
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %interface, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  br label %return

return:                                           ; preds = %ispif_get_intf.exit, %if.then6, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then.return_crit_edge ], [ 0, %if.then6 ], [ 0, %ispif_get_intf.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_csid_get_csid_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_vfe_get_vfe_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_vfe_get_vfe_line_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1159, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @msm_ispif_subdev_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @msm_ispif_subdev_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1164, i32 53}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1165, i32 19}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1177, i32 3}
!14 = !{ptr @msm_ispif_subdev_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @msm_ispif_subdev_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @msm_ispif_subdev_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1226, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @msm_ispif_subdev_init.__key.11, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1229, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1357, i32 44}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1363, i32 4}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @msm_ispif_register_entities._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @msm_ispif_register_entities._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1375, i32 4}
!31 = !{ptr @msm_ispif_register_entities._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @msm_ispif_register_entities._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1382, i32 4}
!35 = !{ptr @msm_ispif_register_entities._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @msm_ispif_register_entities._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ispif_formats_8x16, !38, !"ispif_formats_8x16", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 108, i32 18}
!39 = !{ptr @ispif_formats_8x96, !40, !"ispif_formats_8x96", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 128, i32 18}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 249, i32 3}
!43 = !{ptr @ispif_isr_8x16._rs, !42, !"_rs", i1 false, i1 false}
!44 = !{ptr @__func__.ispif_isr_8x16, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ispif_isr_8x16._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @ispif_isr_8x16._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ispif_isr_8x16._rs.24, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 252, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ispif_isr_8x16._entry.25, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ispif_isr_8x16._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ispif_isr_8x16._rs.28, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 255, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ispif_isr_8x16._entry.29, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ispif_isr_8x16._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ispif_isr_8x16._rs.32, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 258, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ispif_isr_8x16._entry.33, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ispif_isr_8x16._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ispif_isr_8x16._rs.36, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 261, i32 3}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ispif_isr_8x16._entry.37, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ispif_isr_8x16._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @ispif_isr_8x96._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 190, i32 3}
!70 = !{ptr @__func__.ispif_isr_8x96, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ispif_isr_8x96._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ispif_isr_8x96._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ispif_isr_8x96._rs.40, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 193, i32 3}
!75 = !{ptr @ispif_isr_8x96._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ispif_isr_8x96._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ispif_isr_8x96._rs.43, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 196, i32 3}
!79 = !{ptr @ispif_isr_8x96._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ispif_isr_8x96._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ispif_isr_8x96._rs.46, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 199, i32 3}
!83 = !{ptr @ispif_isr_8x96._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ispif_isr_8x96._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @ispif_isr_8x96._rs.49, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 202, i32 3}
!87 = !{ptr @ispif_isr_8x96._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ispif_isr_8x96._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @ispif_isr_8x96._rs.52, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 205, i32 3}
!91 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ispif_isr_8x96._entry.53, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ispif_isr_8x96._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ispif_isr_8x96._rs.56, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 208, i32 3}
!96 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ispif_isr_8x96._entry.57, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ispif_isr_8x96._entry_ptr.59, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @ispif_isr_8x96._rs.60, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 211, i32 3}
!101 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ispif_isr_8x96._entry.61, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ispif_isr_8x96._entry_ptr.63, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @ispif_isr_8x96._rs.64, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 214, i32 3}
!106 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ispif_isr_8x96._entry.65, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ispif_isr_8x96._entry_ptr.67, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @ispif_isr_8x96._rs.68, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 217, i32 3}
!111 = !{ptr @.str.70, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ispif_isr_8x96._entry.69, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ispif_isr_8x96._entry_ptr.71, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @init_completion.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../include/linux/completion.h", i32 87, i32 2}
!116 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ispif_v4l2_ops, !118, !"ispif_v4l2_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1316, i32 37}
!119 = !{ptr @ispif_core_ops, !120, !"ispif_core_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1301, i32 42}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 398, i32 4}
!123 = !{ptr @.str.74, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ispif_set_power._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ispif_set_power._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.75, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 342, i32 3}
!128 = !{ptr @.str.76, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.77, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ispif_reset.__UNIQUE_ID_ddebug299, !127, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!131 = !{ptr @.str.78, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 274, i32 3}
!133 = !{ptr @.str.79, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ispif_vfe_reset._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @ispif_vfe_reset._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 307, i32 3}
!138 = !{ptr @ispif_vfe_reset._entry.80, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ispif_vfe_reset._entry_ptr.82, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @ispif_video_ops, !141, !"ispif_video_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1305, i32 43}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 511, i32 3}
!144 = !{ptr @.str.84, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ispif_validate_intf_status._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @ispif_validate_intf_status._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 558, i32 3}
!149 = !{ptr @.str.86, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ispif_wait_for_stop._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ispif_wait_for_stop._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @ispif_pad_ops, !153, !"ispif_pad_ops", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1309, i32 41}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!156 = !{ptr @ispif_v4l2_internal_ops, !157, !"ispif_v4l2_internal_ops", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1322, i32 46}
!158 = !{ptr @ispif_media_ops, !159, !"ispif_media_ops", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/qcom/camss/camss-ispif.c", i32 1326, i32 45}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i64 4266476}
!171 = !{i64 4266058}
!172 = !{i64 2156530783}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2156501325}
!175 = !{i64 2148275949}
!176 = !{i64 760772, i64 760797, i64 760819, i64 760835, i64 760847, i64 760867, i64 760891, i64 760907, i64 760919}
!177 = !{i64 2148276137}
!178 = !{i64 2148758345, i64 2148758350, i64 2148758363, i64 2148758407, i64 2148758441, i64 2148758462}
!179 = !{i64 2156564878}
!180 = !{i64 2156565814}
!181 = !{i64 2156561308}
!182 = !{i64 2156561798}
!183 = !{i64 2156555409}
!184 = !{i64 2156570777}
!185 = !{i64 2156571555}
!186 = !{i64 2156571929}
!187 = !{i64 2156572077}
!188 = !{i64 2156572451}
!189 = !{!"auto-init"}
