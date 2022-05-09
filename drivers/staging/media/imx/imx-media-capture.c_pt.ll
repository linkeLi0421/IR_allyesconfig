; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-capture.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_media_capture_device_next_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_capture_device_next_buf\09\09\09\09"
module asm "\09.long\09__crc_imx_media_capture_device_next_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_capture_device_next_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_capture_device_next_buf\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_capture_device_next_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_capture_device_error\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_capture_device_error\09\09\09\09"
module asm "\09.long\09__crc_imx_media_capture_device_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_capture_device_error:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_capture_device_error\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_capture_device_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_capture_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_capture_device_register\09\09\09\09"
module asm "\09.long\09__crc_imx_media_capture_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_capture_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_capture_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_capture_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_capture_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_capture_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_imx_media_capture_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_capture_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_capture_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_capture_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_capture_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_capture_device_init\09\09\09\09"
module asm "\09.long\09__crc_imx_media_capture_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_capture_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_capture_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_capture_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_capture_device_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_capture_device_remove\09\09\09\09"
module asm "\09.long\09__crc_imx_media_capture_device_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_capture_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_capture_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_capture_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.capture_priv = type { ptr, ptr, %struct.imx_media_video_dev, %struct.media_pad, ptr, i32, %struct.mutex, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.v4l2_ctrl_handler, i8 }
%struct.imx_media_video_dev = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr, %struct.list_head }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.imx_media_pixfmt = type { i32, ptr, i32, i32, i32, i8, i8, i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.117 }
%union.anon.117 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.118, [2 x i32] }
%union.anon.118 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.119, [2 x i32] }
%union.anon.119 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.imx_media_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }

@__kstrtab_imx_media_capture_device_next_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_capture_device_next_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_capture_device_next_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_capture_device_next_buf to i32), ptr @__kstrtab_imx_media_capture_device_next_buf, ptr @__kstrtabns_imx_media_capture_device_next_buf }, section "___ksymtab_gpl+imx_media_capture_device_next_buf", align 4
@__kstrtab_imx_media_capture_device_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_capture_device_error = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_capture_device_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_capture_device_error to i32), ptr @__kstrtab_imx_media_capture_device_error, ptr @__kstrtabns_imx_media_capture_device_error }, section "___ksymtab_gpl+imx_media_capture_device_error", align 4
@imx_media_capture_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"imx_media_capture_device_register\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/staging/media/imx/imx-media-capture.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_media_capture_device_register._entry_ptr = internal global ptr @imx_media_capture_device_register._entry, section ".printk_index", align 4
@imx_media_capture_device_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 928, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Registered %s as /dev/%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_media_capture_device_register._entry_ptr.8 = internal global ptr @imx_media_capture_device_register._entry.5, section ".printk_index", align 4
@imx_media_capture_device_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 936, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create link to device node\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_media_capture_device_register._entry_ptr.11 = internal global ptr @imx_media_capture_device_register._entry.9, section ".printk_index", align 4
@__kstrtab_imx_media_capture_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_capture_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_capture_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_capture_device_register to i32), ptr @__kstrtab_imx_media_capture_device_register, ptr @__kstrtabns_imx_media_capture_device_register }, section "___ksymtab_gpl+imx_media_capture_device_register", align 4
@__kstrtab_imx_media_capture_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_capture_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_capture_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_capture_device_unregister to i32), ptr @__kstrtab_imx_media_capture_device_unregister, ptr @__kstrtabns_imx_media_capture_device_unregister }, section "___ksymtab_gpl+imx_media_capture_device_unregister", align 4
@imx_media_capture_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@imx_media_capture_device_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&priv->q_lock\00", [18 x i8] zeroinitializer }, align 32
@capture_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @capture_open, ptr @capture_release }, [60 x i8] zeroinitializer }, align 32
@capture_legacy_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @capture_querycap, ptr @capture_legacy_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_legacy_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_legacy_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @capture_legacy_g_std, ptr @capture_legacy_s_std, ptr @capture_legacy_querystd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_legacy_g_parm, ptr @capture_legacy_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_legacy_enum_framesizes, ptr @capture_legacy_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_legacy_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@capture_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @capture_querycap, ptr @capture_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capture_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s capture\00", [21 x i8] zeroinitializer }, align 32
@capture_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @capture_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @capture_buf_init, ptr @capture_buf_prepare, ptr null, ptr null, ptr @capture_start_streaming, ptr @capture_stop_streaming, ptr @capture_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@imx_media_capture_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1026, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vb2_queue_init failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imx_media_capture_device_init\00", [34 x i8] zeroinitializer }, align 32
@imx_media_capture_device_init._entry_ptr = internal global ptr @imx_media_capture_device_init._entry, section ".printk_index", align 4
@imx_media_capture_device_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"imx_media_capture:1033:(&priv->ctrl_hdlr)->_lock\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_imx_media_capture_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_capture_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_capture_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_capture_device_init to i32), ptr @__kstrtab_imx_media_capture_device_init, ptr @__kstrtabns_imx_media_capture_device_init }, section "___ksymtab_gpl+imx_media_capture_device_init", align 4
@__kstrtab_imx_media_capture_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_capture_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_capture_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_capture_device_remove to i32), ptr @__kstrtab_imx_media_capture_device_remove, ptr @__kstrtabns_imx_media_capture_device_remove }, section "___ksymtab_gpl+imx_media_capture_device_remove", align 4
@__UNIQUE_ID_description317 = internal constant [73 x i8] c"imx_media_common.description=i.MX5/6 v4l2 video capture interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [71 x i8] c"imx_media_common.author=Steve Longerbeam <steve_longerbeam@mentor.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [65 x i8] c"imx_media_common.file=drivers/staging/media/imx/imx-media-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [29 x i8] c"imx_media_common.license=GPL\00", section ".modinfo", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@capture_init_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get source format\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"capture_init_format\00", [44 x i8] zeroinitializer }, align 32
@capture_init_format._entry_ptr = internal global ptr @capture_init_format._entry, section ".printk_index", align 4
@capture_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 786, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"v4l2_fh_open failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"capture_open\00", [19 x i8] zeroinitializer }, align 32
@capture_open._entry_ptr = internal global ptr @capture_open._entry, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx-capture\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@capture_legacy_enum_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get src_sd format\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"capture_legacy_enum_fmt_vid_cap\00", [32 x i8] zeroinitializer }, align 32
@capture_legacy_enum_fmt_vid_cap._entry_ptr = internal global ptr @capture_legacy_enum_fmt_vid_cap._entry, section ".printk_index", align 4
@capture_legacy_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 453, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s queue busy\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"capture_legacy_s_fmt_vid_cap\00", [35 x i8] zeroinitializer }, align 32
@capture_legacy_s_fmt_vid_cap._entry_ptr = internal global ptr @capture_legacy_s_fmt_vid_cap._entry, section ".printk_index", align 4
@capture_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"capture_s_fmt_vid_cap\00", [42 x i8] zeroinitializer }, align 32
@capture_s_fmt_vid_cap._entry_ptr = internal global ptr @capture_s_fmt_vid_cap._entry, section ".printk_index", align 4
@capture_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data will not fit into plane (%lu < %lu)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"capture_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@capture_buf_prepare._entry_ptr = internal global ptr @capture_buf_prepare._entry, section ".printk_index", align 4
@capture_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"capture format not valid\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"capture_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@capture_start_streaming._entry_ptr = internal global ptr @capture_start_streaming._entry, section ".printk_index", align 4
@capture_start_streaming._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 722, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pipeline start failed with %d\0A\00", [33 x i8] zeroinitializer }, align 32
@capture_start_streaming._entry_ptr.37 = internal global ptr @capture_start_streaming._entry.35, section ".printk_index", align 4
@capture_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 749, ptr @.str.40, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pipeline stop failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"capture_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@capture_stop_streaming._entry_ptr = internal global ptr @capture_stop_streaming._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 256, i64 257, i64 258, i64 259]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 134217729]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 923, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 927, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 936, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 976, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 978, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"capture_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 819, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"capture_legacy_ioctl_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 560, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"capture_ioctl_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 250, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 997, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"capture_qops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 760, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1026, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1033, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 882, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 786, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 87, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 90, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 364, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 453, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 197, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 647, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 715, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 722, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [49 x i8] c"../drivers/staging/media/imx/imx-media-capture.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 749, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__ksymtab_imx_media_capture_device_error, ptr @__ksymtab_imx_media_capture_device_init, ptr @__ksymtab_imx_media_capture_device_next_buf, ptr @__ksymtab_imx_media_capture_device_register, ptr @__ksymtab_imx_media_capture_device_remove, ptr @__ksymtab_imx_media_capture_device_unregister, ptr @capture_buf_prepare._entry, ptr @capture_buf_prepare._entry_ptr, ptr @capture_init_format._entry, ptr @capture_init_format._entry_ptr, ptr @capture_legacy_enum_fmt_vid_cap._entry, ptr @capture_legacy_enum_fmt_vid_cap._entry_ptr, ptr @capture_legacy_s_fmt_vid_cap._entry, ptr @capture_legacy_s_fmt_vid_cap._entry_ptr, ptr @capture_open._entry, ptr @capture_open._entry_ptr, ptr @capture_s_fmt_vid_cap._entry, ptr @capture_s_fmt_vid_cap._entry_ptr, ptr @capture_start_streaming._entry, ptr @capture_start_streaming._entry.35, ptr @capture_start_streaming._entry_ptr, ptr @capture_start_streaming._entry_ptr.37, ptr @capture_stop_streaming._entry, ptr @capture_stop_streaming._entry_ptr, ptr @imx_media_capture_device_init._entry, ptr @imx_media_capture_device_init._entry_ptr, ptr @imx_media_capture_device_register._entry, ptr @imx_media_capture_device_register._entry.5, ptr @imx_media_capture_device_register._entry.9, ptr @imx_media_capture_device_register._entry_ptr, ptr @imx_media_capture_device_register._entry_ptr.11, ptr @imx_media_capture_device_register._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @imx_media_capture_device_init.__key, ptr @.str.12, ptr @imx_media_capture_device_init.__key.13, ptr @.str.14, ptr @capture_fops, ptr @capture_legacy_ioctl_ops, ptr @capture_ioctl_ops, ptr @.str.15, ptr @capture_qops, ptr @.str.16, ptr @.str.17, ptr @imx_media_capture_device_init._key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_legacy_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_capture_device_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_init_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_legacy_enum_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_legacy_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_start_streaming._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_capture_device_next_buf(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %q_lock = getelementptr i8, ptr %vdev, i32 732
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #8
  %ready_q = getelementptr i8, ptr %vdev, i32 724
  %0 = ptrtoint ptr %ready_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ready_q, align 4
  %cmp.i.not = icmp eq ptr %1, %ready_q
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr10 = getelementptr i8, ptr %1, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %buf.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr10, %list_del.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #8
  ret ptr %buf.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_capture_device_error(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming.i = getelementptr i8, ptr %vdev, i32 660
  %0 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %q = getelementptr i8, ptr %vdev, i32 212
  %q_lock = getelementptr i8, ptr %vdev, i32 732
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #8
  tail call void @vb2_queue_error(ptr noundef %q) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_capture_device_register(ptr noundef %vdev, i32 noundef %link_flags) #0 align 64 {
entry:
  %fmt_src.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vdev, i32 -8
  %src_sd = getelementptr i8, ptr %vdev, i32 112
  %0 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_sd, align 4
  %v4l2_dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev1, align 4
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %add.ptr, align 4
  %v4l2_dev6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %v4l2_dev6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %v4l2_dev6, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt_src.i) #8
  %10 = getelementptr inbounds i8, ptr %fmt_src.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 80)
  %12 = ptrtoint ptr %fmt_src.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %fmt_src.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 1
  %src_sd_pad.i = getelementptr i8, ptr %vdev, i32 116
  %13 = ptrtoint ptr %src_sd_pad.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_sd_pad.i, align 4
  %15 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pad.i, align 4
  %legacy_api.i = getelementptr i8, ptr %vdev, i32 960
  %16 = ptrtoint ptr %legacy_api.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %legacy_api.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else27.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_sd, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.then.i.capture_init_format.exit.thread58_crit_edge, label %if.else.i

if.then.i.capture_init_format.exit.thread58_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %capture_init_format.exit.thread58

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %pad4.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %pad4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pad4.i, align 4
  %tobool5.not.i = icmp eq ptr %23, null
  br i1 %tobool5.not.i, label %if.else.i.capture_init_format.exit.thread58_crit_edge, label %land.lhs.true.i

if.else.i.capture_init_format.exit.thread58_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %capture_init_format.exit.thread58

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_fmt.i, align 4
  %tobool8.not.i = icmp eq ptr %25, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.capture_init_format.exit.thread58_crit_edge, label %if.else10.i

land.lhs.true.i.capture_init_format.exit.thread58_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %capture_init_format.exit.thread58

if.else10.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %if.else10.i.if.else17.i_crit_edge, label %land.lhs.true12.i

if.else10.i.if.else17.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

land.lhs.true12.i:                                ; preds = %if.else10.i
  %get_fmt13.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %get_fmt13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_fmt13.i, align 4
  %tobool14.not.i = icmp eq ptr %28, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.else17.i_crit_edge, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i.if.else17.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true12.i.if.else17.i_crit_edge, %if.else10.i.if.else17.i_crit_edge
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else17.i, %land.lhs.true12.i.if.end23.i_crit_edge
  %.sink.i = phi ptr [ %25, %if.else17.i ], [ %28, %land.lhs.true12.i.if.end23.i_crit_edge ]
  %call21.i = call i32 %.sink.i(ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %fmt_src.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool24.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool24.not.i, label %if.end23.i.capture_init_format.exit.thread_crit_edge, label %capture_init_format.exit

if.end23.i.capture_init_format.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %capture_init_format.exit.thread

if.else27.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8198, ptr %code.i, align 4
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 640, ptr %10, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 480, ptr %height.i, align 4
  br label %capture_init_format.exit.thread

capture_init_format.exit.thread:                  ; preds = %if.else27.i, %if.end23.i.capture_init_format.exit.thread_crit_edge
  %fmt.i = getelementptr i8, ptr %vdev, i32 4
  %call32.i = call i32 @imx_media_mbus_fmt_to_pix_fmt(ptr noundef %fmt.i, ptr noundef %10, ptr noundef null) #8
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %10, align 4
  %width35.i = getelementptr i8, ptr %vdev, i32 60
  %34 = ptrtoint ptr %width35.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %width35.i, align 4
  %height37.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %height37.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height37.i, align 4
  %height39.i = getelementptr i8, ptr %vdev, i32 64
  %37 = ptrtoint ptr %height39.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height39.i, align 4
  %pixelformat.i = getelementptr i8, ptr %vdev, i32 12
  %38 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixelformat.i, align 4
  %call41.i = call ptr @imx_media_find_pixel_format(i32 noundef %39, i32 noundef 7) #8
  %cc.i = getelementptr i8, ptr %vdev, i32 68
  %40 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call41.i, ptr %cc.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src.i) #8
  br label %if.end

capture_init_format.exit.thread58:                ; preds = %land.lhs.true.i.capture_init_format.exit.thread58_crit_edge, %if.else.i.capture_init_format.exit.thread58_crit_edge, %if.then.i.capture_init_format.exit.thread58_crit_edge
  %__result.063.i.ph = phi i32 [ -19, %if.then.i.capture_init_format.exit.thread58_crit_edge ], [ -515, %land.lhs.true.i.capture_init_format.exit.thread58_crit_edge ], [ -515, %if.else.i.capture_init_format.exit.thread58_crit_edge ]
  %dev.i60 = getelementptr i8, ptr %vdev, i32 -4
  %41 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.19) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src.i) #8
  br label %cleanup

capture_init_format.exit:                         ; preds = %if.end23.i
  %dev.i = getelementptr i8, ptr %vdev, i32 -4
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.19) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp = icmp slt i32 %call21.i, 0
  br i1 %cmp, label %capture_init_format.exit.cleanup_crit_edge, label %capture_init_format.exit.if.end_crit_edge

capture_init_format.exit.if.end_crit_edge:        ; preds = %capture_init_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

capture_init_format.exit.cleanup_crit_edge:       ; preds = %capture_init_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %capture_init_format.exit.if.end_crit_edge, %capture_init_format.exit.thread
  %fops.i = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 3
  %45 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fops.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %5, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %dev13 = getelementptr i8, ptr %vdev, i32 -4
  %49 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev13, align 4
  br i1 %tobool.not, label %do.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str) #11
  br label %cleanup

do.end12:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 3
  %51 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end12.video_device_node_name.exit_crit_edge

do.end12.video_device_node_name.exit_crit_edge:   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i55 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5
  %53 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i55, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end12.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %54, %if.end.i.i ], [ %52, %do.end12.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %retval.0.i.i) #11
  %and = lshr i32 %link_flags, 1
  %55 = and i32 %and, 1
  %56 = or i32 %55, %link_flags
  %57 = ptrtoint ptr %src_sd_pad.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_sd_pad.i, align 4
  %conv = trunc i32 %58 to i16
  %call19 = call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %5, i16 noundef zeroext 0, i32 noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.10) #11
  call void @video_unregister_device(ptr noundef %5) #8
  br label %cleanup

if.end26:                                         ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 4
  call void @imx_media_add_video_device(ptr noundef %62, ptr noundef %vdev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end24, %do.end, %capture_init_format.exit.cleanup_crit_edge, %capture_init_format.exit.thread58
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call19, %do.end24 ], [ 0, %if.end26 ], [ %call21.i, %capture_init_format.exit.cleanup_crit_edge ], [ %__result.063.i.ph, %capture_init_format.exit.thread58 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_add_video_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_capture_device_unregister(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  tail call void @video_unregister_device(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_capture_device_init(ptr noundef %dev, ptr noundef %src_sd, i32 noundef %pad, i1 noundef zeroext %legacy_api) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 972, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %legacy_api to i8
  %src_sd2 = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %src_sd2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %src_sd, ptr %src_sd2, align 4
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pad, ptr %src_sd_pad, align 4
  %dev3 = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev3, align 4
  %legacy_api5 = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %legacy_api5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %legacy_api5, align 4
  %mutex = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @imx_media_capture_device_init.__key) #8
  %ready_q = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %ready_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ready_q, ptr %ready_q, align 4
  %prev.i = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ready_q, ptr %prev.i, align 4
  %q_lock = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %q_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @imx_media_capture_device_init.__key.13, i16 noundef signext 3) #8
  %call11 = tail call ptr @video_device_alloc() #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %fops = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 3
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @capture_fops, ptr %fops, align 4
  %cond = select i1 %legacy_api, ptr @capture_legacy_ioctl_ops, ptr @capture_ioctl_ops
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 24
  %7 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond, ptr %ioctl_ops, align 4
  %minor = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 15
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %minor, align 8
  %release = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 23
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @video_device_release, ptr %release, align 8
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 14
  %10 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vfl_dir, align 4
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 22
  %11 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 16756991, ptr %tvnorms, align 8
  %or = select i1 %legacy_api, i32 67108865, i32 603979777
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 4
  %12 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %device_caps, align 8
  %lock = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 26
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mutex, ptr %lock, align 8
  %q = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7
  %queue = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 10
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %q, ptr %queue, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 12
  %name20 = getelementptr inbounds %struct.v4l2_subdev, ptr %src_sd, i32 0, i32 9
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef %name20)
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 5, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vdev = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %vdev, align 4
  %list = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %list, align 4
  %prev.i110 = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i110, align 4
  %vdev_pad = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 3
  %flags = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flags, align 4
  %call26 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call11, i16 noundef zeroext 1, ptr noundef %vdev_pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @video_device_release(ptr noundef nonnull %call11) #8
  %20 = inttoptr i32 %call26 to ptr
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %q, align 4
  %io_modes = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 10
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 12
  %24 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 7
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @capture_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 8
  %26 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 13
  %27 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock33 = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %lock33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mutex, ptr %lock33, align 4
  %min_buffers_needed = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 15
  %29 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %min_buffers_needed, align 4
  %30 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev3, align 4
  %dev35 = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %dev35, align 4
  %call36 = tail call i32 @vb2_queue_init(ptr noundef %q) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.16) #11
  tail call void @video_device_release(ptr noundef nonnull %call11) #8
  %35 = inttoptr i32 %call36 to ptr
  br label %cleanup

if.end44:                                         ; preds = %if.end30
  br i1 %legacy_api, label %if.then46, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_hdlr = getelementptr inbounds %struct.capture_priv, ptr %call.i, i32 0, i32 10
  %call47 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdlr, i32 noundef 0, ptr noundef nonnull @imx_media_capture_device_init._key, ptr noundef nonnull @.str.18) #8
  %ctrl_handler = getelementptr inbounds %struct.video_device, ptr %call11, i32 0, i32 9
  %36 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ctrl_hdlr, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end44.cleanup_crit_edge, %do.end41, %if.then28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %20, %if.then28 ], [ %35, %do.end41 ], [ %vdev, %if.then46 ], [ %vdev, %if.end44.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_capture_device_remove(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hdlr = getelementptr i8, ptr %vdev, i32 776
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_mbus_fmt_to_pix_fmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_pixel_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vdev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %mutex = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @v4l2_fh_open(ptr noundef %file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #11
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.then9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @v4l2_fh_release(ptr noundef %file) #8
  br label %out

out:                                              ; preds = %if.then9, %if.end6.out_crit_edge, %do.end
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call7, %if.then9 ], [ 0, %if.end6.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vdev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %mutex = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %owner = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %q = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 7
  tail call void @vb2_queue_release(ptr noundef %q) #8
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @v4l2_pipeline_pm_put(ptr noundef %3) #8
  %call3 = tail call i32 @v4l2_fh_release(ptr noundef %file) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.23, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.23, i32 noundef 32) #8
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %fmt_src = alloca %struct.v4l2_subdev_format, align 4
  %fourcc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt_src) #8
  %2 = getelementptr inbounds i8, ptr %fmt_src, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc) #8
  %4 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fourcc, align 4, !annotation !121
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_sd_pad, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pad, align 4
  %8 = ptrtoint ptr %fmt_src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %fmt_src, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.else

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad1, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.else.do.end_crit_edge, label %land.lhs.true

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fmt, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.else7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %get_fmt10 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %get_fmt10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_fmt10, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end21_crit_edge

land.lhs.true9.if.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %land.lhs.true9.if.end21_crit_edge
  %.sink = phi ptr [ %16, %if.else15 ], [ %19, %land.lhs.true9.if.end21_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %fmt_src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool22.not = icmp eq i32 %call19, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.do.end_crit_edge

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end21.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge, %entry.do.end_crit_edge
  %__result.0100 = phi i32 [ %call19, %if.end21.do.end_crit_edge ], [ -515, %if.else.do.end_crit_edge ], [ -515, %land.lhs.true.do.end_crit_edge ], [ -19, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.25) #11
  br label %cleanup72

if.end24:                                         ; preds = %if.end21
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code, align 4
  %call.i97 = call ptr @imx_media_find_mbus_format(i32 noundef %23, i32 noundef 11) #8
  %tobool26.not = icmp eq ptr %call.i97, null
  br i1 %tobool26.not, label %if.else32, label %if.then27

if.then27:                                        ; preds = %if.end24
  %cs = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call.i97, i32 0, i32 4
  %24 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  %call28 = call i32 @imx_media_enum_pixel_formats(ptr noundef nonnull %fourcc, i32 noundef %27, i32 noundef %cond, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end71_crit_edge, label %if.then27.cleanup72_crit_edge

if.then27.cleanup72_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup72

if.then27.if.end71_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else32:                                        ; preds = %if.end24
  %28 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code, align 4
  %call35 = call ptr @imx_media_find_mbus_format(i32 noundef %29, i32 noundef 7) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end49, label %if.end65, !prof !122

do.end49:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 382, i32 noundef 9, ptr noundef null) #8
  br label %cleanup72

if.end65:                                         ; preds = %if.else32
  %30 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp67.not = icmp eq i32 %31, 0
  br i1 %cmp67.not, label %if.end69, label %if.end65.cleanup72_crit_edge

if.end65.cleanup72_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup72

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call35, align 4
  %34 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fourcc, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.then27.if.end71_crit_edge
  %35 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %37 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pixelformat, align 4
  br label %cleanup72

cleanup72:                                        ; preds = %if.end71, %if.end65.cleanup72_crit_edge, %do.end49, %if.then27.cleanup72_crit_edge, %do.end
  %retval.1 = phi i32 [ %__result.0100, %do.end ], [ 0, %if.end71 ], [ %call28, %if.then27.cleanup72_crit_edge ], [ -22, %do.end49 ], [ -22, %if.end65.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %fmt1 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1
  %2 = call ptr @memcpy(ptr %fmt, ptr %fmt1, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  %fmt_src = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt_src) #8
  %2 = getelementptr inbounds i8, ptr %fmt_src, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %num_buffers.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 7, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_sd_pad, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 1
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pad, align 4
  %11 = ptrtoint ptr %fmt_src to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %fmt_src, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %pad3 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %pad3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pad3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_fmt, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.else9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.else9.if.else17_crit_edge, label %land.lhs.true11

if.else9.if.else17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

land.lhs.true11:                                  ; preds = %if.else9
  %get_fmt12 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %get_fmt12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_fmt12, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %land.lhs.true11.if.else17_crit_edge, label %land.lhs.true11.if.end24_crit_edge

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true11.if.else17_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true11.if.else17_crit_edge, %if.else9.if.else17_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %land.lhs.true11.if.end24_crit_edge
  %.sink = phi ptr [ %19, %if.else17 ], [ %22, %land.lhs.true11.if.end24_crit_edge ]
  %call21 = call i32 %.sink(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %fmt_src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool25.not = icmp eq i32 %call21, 0
  br i1 %tobool25.not, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat.i, align 4
  %call.i64 = call fastcc ptr @capture_find_format(i32 noundef %24, i32 noundef %26) #8
  %tobool.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i, label %__capture_legacy_try_fmt.exit.thread, label %if.end23.i, !prof !122

__capture_legacy_try_fmt.exit.thread:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 403, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23.i:                                       ; preds = %if.end27
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.end23.i.if.end31_crit_edge [
    i32 4, label %if.end23.i.if.then29.i_crit_edge
    i32 8, label %if.end23.i.if.then29.i_crit_edge67
    i32 9, label %if.end23.i.if.then29.i_crit_edge68
  ]

if.end23.i.if.then29.i_crit_edge68:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end23.i.if.then29.i_crit_edge67:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end23.i.if.then29.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end23.i.if.end31_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29.i:                                      ; preds = %if.end23.i.if.then29.i_crit_edge, %if.end23.i.if.then29.i_crit_edge67, %if.end23.i.if.then29.i_crit_edge68
  %field31.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %field31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %field31.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %31, label %if.then29.i.if.end31_crit_edge [
    i32 5, label %if.then29.i.if.end37.sink.split.i_crit_edge
    i32 6, label %sw.bb34.i
  ]

if.then29.i.if.end37.sink.split.i_crit_edge:      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.sink.split.i

if.then29.i.if.end31_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

sw.bb34.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.sink.split.i

if.end37.sink.split.i:                            ; preds = %sw.bb34.i, %if.then29.i.if.end37.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 9, %sw.bb34.i ], [ 8, %if.then29.i.if.end37.sink.split.i_crit_edge ]
  %33 = ptrtoint ptr %field31.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %field31.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end37.sink.split.i, %if.then29.i.if.end31_crit_edge, %if.end23.i.if.end31_crit_edge
  %call39.i = call i32 @imx_media_mbus_fmt_to_pix_fmt(ptr noundef %fmt, ptr noundef %2, ptr noundef nonnull %call.i64) #8
  %cc32 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %cc32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i64, ptr %cc32, align 4
  %fmt34 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1
  %35 = call ptr @memcpy(ptr %fmt34, ptr %fmt, i32 48)
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %width37 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 2, i32 2
  %38 = ptrtoint ptr %width37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %width37, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %height41 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 2, i32 3
  %41 = ptrtoint ptr %height41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %__capture_legacy_try_fmt.exit.thread, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end31 ], [ %call21, %if.end24.cleanup_crit_edge ], [ -22, %__capture_legacy_try_fmt.exit.thread ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  %fmt_src = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt_src) #8
  %2 = getelementptr inbounds i8, ptr %fmt_src, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_sd_pad, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pad, align 4
  %7 = ptrtoint ptr %fmt_src to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %fmt_src, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pad1, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fmt, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %get_fmt10 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %get_fmt10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_fmt10, align 4
  %tobool11.not = icmp eq ptr %18, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end21_crit_edge

land.lhs.true9.if.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %land.lhs.true9.if.end21_crit_edge
  %.sink = phi ptr [ %15, %if.else15 ], [ %18, %land.lhs.true9.if.end21_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %fmt_src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool22.not = icmp eq i32 %call19, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixelformat.i, align 4
  %call.i42 = call fastcc ptr @capture_find_format(i32 noundef %20, i32 noundef %22) #8
  %tobool.not.i = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !122

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 403, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23.i:                                       ; preds = %if.end24
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %24, label %if.end23.i.if.end37.i_crit_edge [
    i32 4, label %if.end23.i.if.then29.i_crit_edge
    i32 8, label %if.end23.i.if.then29.i_crit_edge45
    i32 9, label %if.end23.i.if.then29.i_crit_edge46
  ]

if.end23.i.if.then29.i_crit_edge46:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end23.i.if.then29.i_crit_edge45:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end23.i.if.then29.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end23.i.if.end37.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.end23.i.if.then29.i_crit_edge, %if.end23.i.if.then29.i_crit_edge45, %if.end23.i.if.then29.i_crit_edge46
  %field31.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %field31.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field31.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %27, label %if.then29.i.if.end37.i_crit_edge [
    i32 5, label %if.then29.i.if.end37.sink.split.i_crit_edge
    i32 6, label %sw.bb34.i
  ]

if.then29.i.if.end37.sink.split.i_crit_edge:      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.sink.split.i

if.then29.i.if.end37.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

sw.bb34.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.sink.split.i

if.end37.sink.split.i:                            ; preds = %sw.bb34.i, %if.then29.i.if.end37.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 9, %sw.bb34.i ], [ 8, %if.then29.i.if.end37.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %field31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %field31.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %if.then29.i.if.end37.i_crit_edge, %if.end23.i.if.end37.i_crit_edge
  %call39.i = call i32 @imx_media_mbus_fmt_to_pix_fmt(ptr noundef %fmt, ptr noundef %2, ptr noundef nonnull %call.i42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37.i, %do.end.i, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end21.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end37.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_g_std(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %g_std to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_std, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_std9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %g_std9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_std9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %std) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_s_std(ptr noundef %file, ptr nocapture noundef readnone %fh, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 7, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_std, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.else8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_std11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_std11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_std11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.cleanup.sink.split_crit_edge

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else16, %land.lhs.true10.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else16 ], [ %14, %land.lhs.true10.cleanup.sink.split_crit_edge ]
  %call15 = tail call i32 %.sink(ptr noundef nonnull %5, i64 noundef %std) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ %call15, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_querystd(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %querystd, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %querystd9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %querystd9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %querystd9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %std) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 256, label %entry.sw.bb_crit_edge
    i32 257, label %entry.sw.bb_crit_edge18
    i32 258, label %entry.sw.bb_crit_edge19
    i32 259, label %sw.bb1
  ]

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %compose = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 2
  %5 = call ptr @memcpy(ptr %r, ptr %compose, i32 16)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %r2 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r2, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %fmt = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %width6 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width6, align 4
  %height = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height10, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #0 align 64 {
entry:
  %fi = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fi) #8
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %fi, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 44)
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_sd_pad, align 4
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fi, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_frame_interval = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %g_frame_interval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_frame_interval, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %g_frame_interval10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %g_frame_interval10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %g_frame_interval10, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end22_crit_edge

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else15, %land.lhs.true9.if.end22_crit_edge
  %.sink = phi ptr [ %16, %if.else15 ], [ %19, %land.lhs.true9.if.end22_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %10, ptr noundef nonnull %fi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp23 = icmp slt i32 %call19, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %20 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4096, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %21 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %interval, align 4
  %23 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ %call19, %if.end22.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fi) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #0 align 64 {
entry:
  %fi = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fi) #8
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %fi, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 36)
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_sd_pad, align 4
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fi, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %timeperframe, align 4
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %interval, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_frame_interval = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %s_frame_interval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_frame_interval, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %s_frame_interval10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %s_frame_interval10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_frame_interval10, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end22_crit_edge

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else15, %land.lhs.true9.if.end22_crit_edge
  %.sink = phi ptr [ %19, %if.else15 ], [ %22, %land.lhs.true9.if.end22_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %13, ptr noundef nonnull %fi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp23 = icmp slt i32 %call19, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4096, ptr %parm, align 4
  %24 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %interval, align 4
  %26 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ %call19, %if.end22.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fi) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #8
  %2 = getelementptr inbounds i8, ptr %fse, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 52)
  %4 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsize, align 4
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fse, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_sd_pad, align 4
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %10 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %11 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixel_format, align 4
  %call2 = tail call ptr @imx_media_find_pixel_format(i32 noundef %12, i32 noundef 7) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call2, i32 0, i32 1
  %13 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %codes, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %code, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_sd, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %if.else

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %pad7 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %pad7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pad7, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enum_frame_size, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.else13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else13:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.else13.if.else21_crit_edge, label %land.lhs.true15

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21

land.lhs.true15:                                  ; preds = %if.else13
  %enum_frame_size16 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %enum_frame_size16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enum_frame_size16, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else21_crit_edge, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true15.if.else21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true15.if.else21_crit_edge, %if.else13.if.else21_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else21, %land.lhs.true15.if.end28_crit_edge
  %.sink = phi ptr [ %25, %if.else21 ], [ %28, %land.lhs.true15.if.end28_crit_edge ]
  %call25 = call i32 %.sink(ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %fse) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %29 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %31 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp = icmp eq i32 %30, %32
  br i1 %cmp, label %land.lhs.true32, label %if.end31.if.else37_crit_edge

if.end31.if.else37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37

land.lhs.true32:                                  ; preds = %if.end31
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %33 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %35 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp33 = icmp eq i32 %34, %36
  br i1 %cmp33, label %if.then34, label %land.lhs.true32.if.else37_crit_edge

land.lhs.true32.if.else37_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %38 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %30, ptr %38, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %40 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %34, ptr %height, align 4
  br label %cleanup

if.else37:                                        ; preds = %land.lhs.true32.if.else37_crit_edge, %if.end31.if.else37_crit_edge
  %type38 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %41 = ptrtoint ptr %type38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %type38, align 4
  %42 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %30, ptr %42, align 4
  %max_width42 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %44 = ptrtoint ptr %max_width42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %32, ptr %max_width42, align 4
  %min_height43 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %45 = ptrtoint ptr %min_height43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_height43, align 4
  %min_height44 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %47 = ptrtoint ptr %min_height44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %min_height44, align 4
  %max_height45 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %48 = ptrtoint ptr %max_height45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_height45, align 4
  %max_height46 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %50 = ptrtoint ptr %max_height46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_height46, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %51 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %52 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then34, %if.end28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call25, %if.end28.cleanup_crit_edge ], [ 0, %if.else37 ], [ 0, %if.then34 ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #0 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #8
  %2 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fival, align 4
  %4 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fie, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %src_sd_pad = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %src_sd_pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_sd_pad, align 4
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %8 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width2, align 4
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %11 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height3, align 4
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %interval, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %15 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %which, align 4
  %reserved = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 7
  %16 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %17 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixel_format, align 4
  %call4 = tail call ptr @imx_media_find_pixel_format(i32 noundef %18, i32 noundef 7) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call4, i32 0, i32 1
  %19 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %codes, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %23 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %code, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src_sd, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %cond.end.cleanup_crit_edge, label %if.else

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %pad10 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %pad10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pad10, align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enum_frame_interval, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %if.else16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool17.not = icmp eq ptr %32, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %enum_frame_interval19 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %enum_frame_interval19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enum_frame_interval19, align 4
  %tobool20.not = icmp eq ptr %34, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.if.end31_crit_edge

land.lhs.true18.if.end31_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %land.lhs.true18.if.end31_crit_edge
  %.sink = phi ptr [ %31, %if.else24 ], [ %34, %land.lhs.true18.if.end31_crit_edge ]
  %call28 = call i32 %.sink(ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull %fie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not = icmp eq i32 %call28, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %type, align 4
  %36 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %37 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %interval, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ %call28, %if.end31.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_legacy_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %entry.return_crit_edge [
    i32 134217729, label %sw.bb
    i32 5, label %sw.bb1
    i32 3, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #8
  br label %return

return:                                           ; preds = %sw.bb3, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_pixel_formats(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_mbus_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @capture_find_format(i32 noundef %code, i32 noundef %fourcc) unnamed_addr #0 align 64 {
entry:
  %fourcc.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fourcc.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %fourcc, ptr %fourcc.addr, align 4
  %call.i = tail call ptr @imx_media_find_mbus_format(i32 noundef %code, i32 noundef 11) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %cs = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %3 = ptrtoint ptr %fourcc.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fourcc.addr, align 4
  %call1 = tail call ptr @imx_media_find_pixel_format(i32 noundef %4, i32 noundef %cond) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 @imx_media_enum_pixel_formats(ptr noundef nonnull %fourcc.addr, i32 noundef 0, i32 noundef %cond, i32 noundef 0) #8
  %5 = ptrtoint ptr %fourcc.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fourcc.addr, align 4
  %call5 = call ptr @imx_media_find_pixel_format(i32 noundef %6, i32 noundef %cond) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call ptr @imx_media_find_mbus_format(i32 noundef %code, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end6 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call5, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %mbus_code = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 5
  %2 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code, align 4
  %call = tail call i32 @imx_media_enum_pixel_formats(ptr noundef %pixelformat, i32 noundef %1, i32 noundef 7, i32 noundef %3) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 7, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %compose = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 2
  %call2 = tail call fastcc ptr @__capture_try_fmt(ptr noundef %fmt, ptr noundef %compose)
  %cc4 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %cc4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %cc4, align 4
  %fmt6 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1
  %7 = call ptr @memcpy(ptr %fmt6, ptr %fmt, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call = tail call fastcc ptr @__capture_try_fmt(ptr noundef %fmt, ptr noundef null)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %call = tail call ptr @imx_media_find_pixel_format(i32 noundef %3, i32 noundef 7) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %5, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %11 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217729, i32 %1)
  %cond = icmp eq i32 %1, 134217729
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #8
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__capture_try_fmt(ptr noundef %pixfmt, ptr noundef writeonly %compose) unnamed_addr #0 align 64 {
entry:
  %fmt_src = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fmt_src) #8
  %0 = getelementptr inbounds i8, ptr %fmt_src, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @imx_media_find_pixel_format(i32 noundef %3, i32 noundef 7) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @imx_media_enum_pixel_formats(ptr noundef %pixelformat, i32 noundef 0, i32 noundef 7, i32 noundef 0) #8
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %call4 = tail call ptr @imx_media_find_pixel_format(i32 noundef %5, i32 noundef 7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cc.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call4, %if.then ]
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 3
  %6 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixfmt, align 4
  %8 = ptrtoint ptr %fmt_src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fmt_src, align 4
  %height.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 1
  %11 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height2.i, align 4
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 3
  %14 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 6
  %15 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 4
  %17 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %colorspace4.i, align 4
  %18 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %conv.i = trunc i32 %20 to i16
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %21, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 10
  %23 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %24 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 6
  %25 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 11
  %26 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %27 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 7
  %28 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt_src, i32 0, i32 2
  %29 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %code9.i, align 4
  %call16 = call i32 @imx_media_mbus_fmt_to_pix_fmt(ptr noundef %pixfmt, ptr noundef nonnull %fmt_src, ptr noundef %cc.0) #8
  %tobool17.not = icmp eq ptr %compose, null
  br i1 %tobool17.not, label %if.end.if.end21_crit_edge, label %if.then18

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %fmt_src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmt_src, align 4
  %width19 = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 2
  %32 = ptrtoint ptr %width19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width19, align 4
  %33 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height2.i, align 4
  %height20 = getelementptr inbounds %struct.v4l2_rect, ptr %compose, i32 0, i32 3
  %35 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fmt_src) #8
  ret ptr %cc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @capture_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nplanes, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end6.thread
    i32 1, label %lor.lhs.false
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sizeimage743 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1, i32 5
  %9 = ptrtoint ptr %sizeimage743 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage743, align 4
  %div44 = udiv i32 67108864, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %div44, i32 %3)
  br label %if.end18

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 1, i32 5
  %14 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp3 = icmp ult i32 %13, %15
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.then10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %16 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_buffers, align 4
  %add = add i32 %17, %3
  %18 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeimage, align 4
  %div = udiv i32 67108864, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %div, i32 %add)
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %17)
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.end6.thread
  %sizeimage748 = phi ptr [ %sizeimage, %if.then10 ], [ %sizeimage743, %if.end6.thread ]
  %storemerge = phi i32 [ %21, %if.then10 ], [ %11, %if.end6.thread ]
  %22 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %nbuffers, align 4
  %23 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %nplanes, align 4
  %24 = ptrtoint ptr %sizeimage748 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sizeimage748, align 4
  %26 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_buf_init(ptr noundef %vb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.imx_media_buffer, ptr %vb, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.imx_media_buffer, ptr %vb, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  %sizeimage = getelementptr inbounds %struct.capture_priv, ptr %3, i32 0, i32 2, i32 1, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit18

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  %sizeimage24 = getelementptr inbounds %struct.capture_priv, ptr %3, i32 0, i32 2, i32 1, i32 5
  %10 = ptrtoint ptr %sizeimage24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeimage24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp25 = icmp ult i32 %9, %11
  br i1 %cmp25, label %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit18

vb2_plane_size.exit18:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge
  %12 = phi i32 [ %7, %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge ], [ %11, %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge ]
  %retval.0.i17 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge ]
  %.in = getelementptr inbounds %struct.capture_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i17, i32 noundef %12) #11
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit18, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit18 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  %fmt_src.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt_src.i) #8
  %2 = getelementptr inbounds i8, ptr %fmt_src.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 80)
  %src_sd_pad.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %src_sd_pad.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_sd_pad.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 1
  %6 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pad.i, align 4
  %7 = ptrtoint ptr %fmt_src.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %fmt_src.i, align 4
  %src_sd.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %src_sd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_sd.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.else.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else.i:                                        ; preds = %entry
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %pad1.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pad1.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.else.i.do.end_crit_edge, label %land.lhs.true.i

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fmt.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end_crit_edge, label %if.else7.i

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not.i = icmp eq ptr %16, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %get_fmt10.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %get_fmt10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_fmt10.i, align 4
  %tobool11.not.i = icmp eq ptr %18, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.i_crit_edge

land.lhs.true9.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %15, %if.else14.i ], [ %18, %land.lhs.true9.i.if.end20.i_crit_edge ]
  %call18.i = call i32 %.sink.i(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %fmt_src.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool21.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end20.i.do.end_crit_edge

if.end20.i.do.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end23.i:                                       ; preds = %if.end20.i
  %width.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 2, i32 2
  %19 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width.i, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i = icmp eq i32 %20, %22
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end23.i.do.end_crit_edge

if.end23.i.do.end_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %height.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 2, i32 3
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i, align 4
  %height28.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %height28.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp29.not.i = icmp eq i32 %24, %26
  br i1 %cmp29.not.i, label %if.end31.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt_src.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code.i, align 4
  %call33.i = call fastcc ptr @capture_find_format(i32 noundef %28, i32 noundef 0) #8
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.end31.i.do.end_crit_edge, label %lor.lhs.false35.i

if.end31.i.do.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false35.i:                                ; preds = %if.end31.i
  %cc37.i = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %cc37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cc37.i, align 4
  %cs.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cs.i, align 4
  %cs38.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call33.i, i32 0, i32 4
  %33 = ptrtoint ptr %cs38.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cs38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp39.not.i = icmp eq i32 %32, %34
  br i1 %cmp39.not.i, label %if.end, label %lor.lhs.false35.i.do.end_crit_edge

lor.lhs.false35.i.do.end_crit_edge:               ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false35.i.do.end_crit_edge, %if.end31.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end23.i.do.end_crit_edge, %if.end20.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.else.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %entry.do.end_crit_edge ], [ -515, %land.lhs.true.i.do.end_crit_edge ], [ -515, %if.else.i.do.end_crit_edge ], [ -32, %lor.lhs.false35.i.do.end_crit_edge ], [ -32, %if.end31.i.do.end_crit_edge ], [ -32, %if.end23.i.do.end_crit_edge ], [ -32, %lor.lhs.false.i.do.end_crit_edge ], [ %call18.i, %if.end20.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src.i) #8
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.33) #11
  br label %do.body11

if.end:                                           ; preds = %lor.lhs.false35.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt_src.i) #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %src_sd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %src_sd.i, align 4
  %call2 = call i32 @imx_media_pipeline_set_stream(ptr noundef %38, ptr noundef %40, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.36, i32 noundef %call2) #11
  br label %do.body11

do.body11:                                        ; preds = %do.end7, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call2, %do.end7 ]
  %q_lock = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 9
  %call14 = call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #8
  %ready_q = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %ready_q to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ready_q, align 4
  %cmp26.not58 = icmp eq ptr %44, %ready_q
  br i1 %cmp26.not58, label %do.body11.for.end_crit_edge, label %do.body11.for.body_crit_edge

do.body11.for.body_crit_edge:                     ; preds = %do.body11
  br label %for.body

do.body11.for.end_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body11.for.body_crit_edge
  %.pn.in59 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %44, %do.body11.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in59, i32 -736
  %45 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn.in59, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %52 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in59, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #8
  %cmp26.not = icmp eq ptr %.pn, %ready_q
  br i1 %cmp26.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body11.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call14) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capture_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %src_sd = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_sd, align 4
  %call1 = tail call i32 @imx_media_pipeline_set_stream(ptr noundef %3, ptr noundef %5, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.38, i32 noundef %call1) #11
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  %q_lock = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 9
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #8
  %ready_q = getelementptr inbounds %struct.capture_priv, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ready_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ready_q, align 4
  %cmp18.not39 = icmp eq ptr %9, %ready_q
  br i1 %cmp18.not39, label %do.body3.for.end_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body3.for.body_crit_edge
  %.pn.in40 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %9, %do.body3.for.body_crit_edge ]
  %frame.0 = getelementptr i8, ptr %.pn.in40, i32 -736
  %10 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in40, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in40) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in40, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %frame.0, i32 noundef 6) #8
  %cmp18.not = icmp eq ptr %.pn, %ready_q
  br i1 %cmp18.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body3.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capture_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %q_lock = getelementptr inbounds %struct.capture_priv, ptr %3, i32 0, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #8
  %list = getelementptr inbounds %struct.imx_media_buffer, ptr %vb, i32 0, i32 1
  %ready_q = getelementptr inbounds %struct.capture_priv, ptr %3, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.capture_priv, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %ready_q) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ready_q, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.imx_media_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_pipeline_set_stream(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__ksymtab_imx_media_capture_device_next_buf, !1, !"__ksymtab_imx_media_capture_device_next_buf", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 852, i32 1}
!2 = !{ptr @__ksymtab_imx_media_capture_device_error, !3, !"__ksymtab_imx_media_capture_device_error", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 867, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 923, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @imx_media_capture_device_register._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @imx_media_capture_device_register._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 927, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @imx_media_capture_device_register._entry.5, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @imx_media_capture_device_register._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 936, i32 3}
!19 = !{ptr @imx_media_capture_device_register._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @imx_media_capture_device_register._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_imx_media_capture_device_register, !22, !"__ksymtab_imx_media_capture_device_register", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 946, i32 1}
!23 = !{ptr @__ksymtab_imx_media_capture_device_unregister, !24, !"__ksymtab_imx_media_capture_device_unregister", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 956, i32 1}
!25 = !{ptr @imx_media_capture_device_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 976, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @imx_media_capture_device_init.__key.13, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 978, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 997, i32 41}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1026, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @imx_media_capture_device_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx_media_capture_device_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @imx_media_capture_device_init._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1033, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__ksymtab_imx_media_capture_device_init, !42, !"__ksymtab_imx_media_capture_device_init", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1039, i32 1}
!43 = !{ptr @__ksymtab_imx_media_capture_device_remove, !44, !"__ksymtab_imx_media_capture_device_remove", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1047, i32 1}
!45 = !{ptr @__UNIQUE_ID_description317, !46, !"__UNIQUE_ID_description317", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1049, i32 1}
!47 = !{ptr @__UNIQUE_ID_author318, !48, !"__UNIQUE_ID_author318", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1050, i32 1}
!49 = !{ptr @__UNIQUE_ID_file319, !50, !"__UNIQUE_ID_file319", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 1051, i32 1}
!51 = !{ptr @__UNIQUE_ID_license320, !50, !"__UNIQUE_ID_license320", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 882, i32 4}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @capture_init_format._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @capture_init_format._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @capture_fops, !58, !"capture_fops", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 819, i32 42}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 786, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @capture_open._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @capture_open._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @capture_legacy_ioctl_ops, !65, !"capture_legacy_ioctl_ops", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 560, i32 36}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 87, i32 23}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 90, i32 4}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 364, i32 3}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @capture_legacy_enum_fmt_vid_cap._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @capture_legacy_enum_fmt_vid_cap._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 453, i32 3}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @capture_legacy_s_fmt_vid_cap._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @capture_legacy_s_fmt_vid_cap._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @capture_ioctl_ops, !81, !"capture_ioctl_ops", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 250, i32 36}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 197, i32 3}
!84 = !{ptr @capture_s_fmt_vid_cap._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @capture_s_fmt_vid_cap._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @capture_qops, !87, !"capture_qops", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 760, i32 29}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 647, i32 3}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @capture_buf_prepare._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @capture_buf_prepare._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!95 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 715, i32 3}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @capture_start_streaming._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @capture_start_streaming._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 722, i32 3}
!103 = !{ptr @capture_start_streaming._entry.35, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @capture_start_streaming._entry_ptr.37, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/media/imx/imx-media-capture.c", i32 749, i32 3}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @capture_stop_streaming._entry, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @capture_stop_streaming._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{!"auto-init"}
!122 = !{!"branch_weights", i32 1, i32 2000}
