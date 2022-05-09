; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/vdec.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/vdec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+amvdec_get_output_size\22, \22a\22\09"
module asm "\09.weak\09__crc_amvdec_get_output_size\09\09\09\09"
module asm "\09.long\09__crc_amvdec_get_output_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amvdec_get_output_size:\09\09\09\09\09"
module asm "\09.asciz \09\22amvdec_get_output_size\22\09\09\09\09\09"
module asm "__kstrtabns_amvdec_get_output_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vdec_platform = type { ptr, i32, i32 }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.amvdec_format = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x i32] }
%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.amvdec_ops = type { ptr, ptr, ptr, ptr }
%struct.amvdec_buffer = type { %struct.list_head, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__kstrtab_amvdec_get_output_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_amvdec_get_output_size = external dso_local constant [0 x i8], align 1
@__ksymtab_amvdec_get_output_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amvdec_get_output_size to i32), ptr @__kstrtab_amvdec_get_output_size, ptr @__kstrtabns_amvdec_get_output_size }, section "___ksymtab_gpl+amvdec_get_output_size", align 4
@__initcall__kmod_meson_vdec__309_1125_meson_vdec_driver_init6 = internal global ptr @meson_vdec_driver_init, section ".initcall6.init", align 4
@meson_vdec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vdec_probe, ptr @vdec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vdec_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_vdec_driver_exit = internal global ptr @meson_vdec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [75 x i8] c"meson_vdec.description=Meson video decoder driver for GXBB/GXL/GXM/G12/SM1\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [57 x i8] c"meson_vdec.author=Maxime Jourdan <mjourdan@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [60 x i8] c"meson_vdec.file=drivers/staging/media/meson/vdec/meson-vdec\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [23 x i8] c"meson_vdec.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson-vdec\00", [21 x i8] zeroinitializer }, align 32
@vdec_dt_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,gxbb-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_platform_gxbb }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,gxm-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_platform_gxm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,gxl-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_platform_gxl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_platform_g12a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,sm1-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_platform_sm1 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dos\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esparser\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amlogic,ao-sysctrl\00", [45 x i8] zeroinitializer }, align 32
@vdec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1020, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't regmap AO sysctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdec_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/media/meson/vdec/vdec.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vdec_probe._entry_ptr = internal global ptr @vdec_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdec_hevcf\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dos_parser\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdec_1\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdec_hevc\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@vdec_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 1070, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't register v4l2 device\0A\00", [33 x i8] zeroinitializer }, align 32
@vdec_probe._entry_ptr.16 = internal global ptr @vdec_probe._entry.14, section ".printk_index", align 4
@vdec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&core->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson-video-decoder\00", [44 x i8] zeroinitializer }, align 32
@vdec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @vdec_open, ptr @vdec_close }, [60 x i8] zeroinitializer }, align 32
@vdec_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vdec_querycap, ptr @vdec_enum_fmt, ptr null, ptr @vdec_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_g_fmt, ptr @vdec_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_s_fmt, ptr @vdec_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_try_fmt, ptr @vdec_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_g_pixelaspect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_decoder_cmd, ptr @v4l2_m2m_ioctl_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vdec_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 1097, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed registering video device\0A\00", [63 x i8] zeroinitializer }, align 32
@vdec_probe._entry_ptr.21 = internal global ptr @vdec_probe._entry.19, section ".printk_index", align 4
@vdec_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @vdec_m2m_device_run, ptr null, ptr @vdec_m2m_job_abort }, [20 x i8] zeroinitializer }, align 32
@vdec_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 886, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to v4l2_m2m_init\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdec_open\00", [22 x i8] zeroinitializer }, align 32
@vdec_open._entry_ptr = internal global ptr @vdec_open._entry, section ".printk_index", align 4
@vdec_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 893, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to v4l2_m2m_ctx_init\0A\00", [37 x i8] zeroinitializer }, align 32
@vdec_open._entry_ptr.26 = internal global ptr @vdec_open._entry.24, section ".printk_index", align 4
@vdec_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&sess->esparser_queue_work)\00", [50 x i8] zeroinitializer }, align 32
@vdec_open.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&sess->lock\00", [20 x i8] zeroinitializer }, align 32
@vdec_open.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&sess->bufs_recycle_lock\00", [39 x i8] zeroinitializer }, align 32
@vdec_open.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sess->ts_spinlock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@vdec_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vdec_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vdec_vb2_buf_prepare, ptr null, ptr null, ptr @vdec_start_streaming, ptr @vdec_stop_streaming, ptr @vdec_vb2_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vdec_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 319, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request VIFIFO buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vdec_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@vdec_start_streaming._entry_ptr = internal global ptr @vdec_start_streaming._entry, section ".printk_index", align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdec_recycle\00", [19 x i8] zeroinitializer }, align 32
@vdec_init_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vdec:852:(ctrl_handler)->_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Amlogic Video Decoder\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:meson-vdec\00", [44 x i8] zeroinitializer }, align 32
@vdec_decoder_cmd.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson_vdec\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdec_decoder_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Received V4L2_DEC_CMD_STOP\0A\00", [36 x i8] zeroinitializer }, align 32
@vdec_platform_gxbb = external dso_local constant %struct.vdec_platform, align 4
@vdec_platform_gxm = external dso_local constant %struct.vdec_platform, align 4
@vdec_platform_gxl = external dso_local constant %struct.vdec_platform, align 4
@vdec_platform_g12a = external dso_local constant %struct.vdec_platform, align 4
@vdec_platform_sm1 = external dso_local constant %struct.vdec_platform, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 842091854, i64 842091865]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 842091854, i64 842091865]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 842091854, i64 842091865]
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"meson_vdec_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1117, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1121, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"vdec_dt_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 977, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1008, i32 63 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1012, i32 68 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1018, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1020, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1033, i32 44 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1038, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1046, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1050, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1054, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1070, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1082, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1084, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"vdec_fops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 950, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"vdec_ioctl_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 787, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1097, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"vdec_m2m_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 159, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 886, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 893, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 912, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 913, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 914, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 915, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"vdec_vb2_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 446, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 319, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 340, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 852, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 460, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 461, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [43 x i8] c"../drivers/staging/media/meson/vdec/vdec.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 740, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_meson_vdec_driver_exit, ptr @__initcall__kmod_meson_vdec__309_1125_meson_vdec_driver_init6, ptr @__ksymtab_amvdec_get_output_size, ptr @meson_vdec_driver_exit, ptr @vdec_open._entry, ptr @vdec_open._entry.24, ptr @vdec_open._entry_ptr, ptr @vdec_open._entry_ptr.26, ptr @vdec_probe._entry, ptr @vdec_probe._entry.14, ptr @vdec_probe._entry.19, ptr @vdec_probe._entry_ptr, ptr @vdec_probe._entry_ptr.16, ptr @vdec_probe._entry_ptr.21, ptr @vdec_start_streaming._entry, ptr @vdec_start_streaming._entry_ptr, ptr @meson_vdec_driver, ptr @.str, ptr @vdec_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @vdec_probe.__key, ptr @.str.17, ptr @.str.18, ptr @vdec_fops, ptr @vdec_ioctl_ops, ptr @.str.20, ptr @vdec_m2m_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @vdec_open.__key, ptr @.str.27, ptr @vdec_open.__key.28, ptr @.str.29, ptr @vdec_open.__key.30, ptr @.str.31, ptr @vdec_open.__key.32, ptr @.str.33, ptr @vdec_vb2_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @vdec_init_ctrls._key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vdec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_dt_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_init_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amvdec_get_output_size(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %mul.i = mul i32 %3, %1
  %add.i = add i32 %mul.i, 65535
  %and.i = and i32 %add.i, -65536
  ret i32 %and.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vdec_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_vdec_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_vdec_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_vdec_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 280, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #13
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #13
  %esparser_base = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %esparser_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %esparser_base, align 4
  %cmp.i184 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.3) #13
  %regmap_ao = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %regmap_ao, align 4
  %cmp.i185 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #16
  %9 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_ao, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call ptr @meson_canvas_get(ptr noundef %dev1) #13
  %canvas = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %canvas to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %canvas, align 4
  %cmp.i186 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call32 = tail call ptr @of_match_node(ptr noundef nonnull @vdec_dt_match, ptr noundef %15) #13
  %data = getelementptr inbounds %struct.of_device_id, ptr %call32, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %revision, align 4
  %.off = add i32 %20, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then37, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then37:                                        ; preds = %if.end30
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  %vdec_hevcf_clk = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %vdec_hevcf_clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38, ptr %vdec_hevcf_clk, align 4
  %cmp.i187 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then37.cleanup_crit_edge, label %if.then37.if.end43_crit_edge

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %if.then37.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %call44 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  %dos_parser_clk = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %dos_parser_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call44, ptr %dos_parser_clk, align 4
  %cmp.i188 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %call49 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  %dos_clk = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %dos_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call49, ptr %dos_clk, align 4
  %cmp.i189 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.end48.cleanup_crit_edge, label %if.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %call54 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  %vdec_1_clk = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %vdec_1_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call54, ptr %vdec_1_clk, align 4
  %cmp.i190 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.end53.cleanup_crit_edge, label %if.end58

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  %call59 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #13
  %vdec_hevc_clk = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %vdec_hevc_clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call59, ptr %vdec_hevc_clk, align 4
  %cmp.i191 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.end58.cleanup_crit_edge, label %if.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %call64 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %call69 = tail call i32 @devm_request_threaded_irq(ptr noundef %27, i32 noundef %call64, ptr noundef nonnull @vdec_isr, ptr noundef nonnull @vdec_threaded_isr, i32 noundef 8192, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %call73 = tail call i32 @esparser_init(ptr noundef %pdev, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %v4l2_dev = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 14
  %call77 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %call84 = tail call ptr @video_device_alloc() #13
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %if.end83.err_vdev_release_crit_edge, label %if.end87

if.end83.err_vdev_release_crit_edge:              ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_vdev_release

if.end87:                                         ; preds = %if.end83
  %vdev_dec = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 13
  %28 = ptrtoint ptr %vdev_dec to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call84, ptr %vdev_dec, align 4
  %dev_dec = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %dev_dec to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev1, ptr %dev_dec, align 4
  %lock = getelementptr inbounds %struct.amvdec_core, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @vdec_probe.__key) #13
  %name = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 12
  %call91 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef 32) #13
  %release = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 23
  %30 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @video_device_release, ptr %release, align 8
  %fops = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 3
  %31 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vdec_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 24
  %32 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @vdec_ioctl_ops, ptr %ioctl_ops, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 14
  %33 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %vfl_dir, align 4
  %v4l2_dev93 = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 7
  %34 = ptrtoint ptr %v4l2_dev93 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %v4l2_dev, ptr %v4l2_dev93, align 4
  %lock95 = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 26
  %35 = ptrtoint ptr %lock95 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lock, ptr %lock95, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 4
  %36 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 67125248, ptr %device_caps, align 8
  %driver_data.i.i192 = getelementptr inbounds %struct.video_device, ptr %call84, i32 0, i32 5, i32 8
  %37 = ptrtoint ptr %driver_data.i.i192 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i192, align 4
  %call.i193 = tail call i32 @__video_register_device(ptr noundef nonnull %call84, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool97.not = icmp eq i32 %call.i193, 0
  br i1 %tobool97.not, label %if.end87.cleanup_crit_edge, label %do.end101

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end101:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #16
  br label %err_vdev_release

err_vdev_release:                                 ; preds = %do.end101, %if.end83.err_vdev_release_crit_edge
  %ret.0 = phi i32 [ %call.i193, %do.end101 ], [ -12, %if.end83.err_vdev_release_crit_edge ]
  tail call void @video_device_release(ptr noundef %call84) #13
  br label %cleanup

cleanup:                                          ; preds = %err_vdev_release, %if.end87.cleanup_crit_edge, %do.end82, %if.end72.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then27, %do.end, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then13 ], [ %11, %do.end ], [ %13, %if.then27 ], [ -12, %do.end82 ], [ %ret.0, %err_vdev_release ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then37.cleanup_crit_edge ], [ -517, %if.end43.cleanup_crit_edge ], [ -517, %if.end48.cleanup_crit_edge ], [ -517, %if.end53.cleanup_crit_edge ], [ -517, %if.end58.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call69, %if.end67.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vdev_dec = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vdev_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev_dec, align 4
  tail call void @video_unregister_device(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @meson_canvas_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_sess = getelementptr inbounds %struct.amvdec_core, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %cur_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_sess, align 4
  %call = tail call i64 @get_jiffies_64() #13
  %last_irq_jiffies = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %last_irq_jiffies to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call, ptr %last_irq_jiffies, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fmt_out, align 4
  %codec_ops = getelementptr inbounds %struct.amvdec_format, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %codec_ops, align 4
  %isr = getelementptr inbounds %struct.amvdec_codec_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isr, align 4
  %call1 = tail call i32 %8(ptr noundef %1) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_threaded_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_sess = getelementptr inbounds %struct.amvdec_core, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %cur_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_sess, align 4
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops, align 4
  %threaded_isr = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %threaded_isr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %threaded_isr, align 4
  %call = tail call i32 %7(ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esparser_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_open(ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1024) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %call7.i.i, align 8
  %call5 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @vdec_m2m_ops) #13
  %m2m_dev = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %m2m_dev, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #16
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_dev, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %err_free_sess

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %call5, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @m2m_queue_init) #13
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %m2m_ctx, align 8
  %cmp.i103 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #16
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 8
  %17 = ptrtoint ptr %16 to i32
  br label %err_m2m_release

if.end22:                                         ; preds = %if.end11
  %ctrl_handler1.i = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 4
  %call.i104 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler1.i, i32 noundef 1, ptr noundef nonnull @vdec_init_ctrls._key, ptr noundef nonnull @.str.37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.err_m2m_release_crit_edge

if.end22.err_m2m_release_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_m2m_release

if.end.i:                                         ; preds = %if.end22
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler1.i, ptr noundef null, i32 noundef 9963815, i64 noundef 1, i64 noundef 32, i64 noundef 1, i64 noundef 1) #13
  %ctrl_min_buf_capture.i = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ctrl_min_buf_capture.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %ctrl_min_buf_capture.i, align 4
  %error.i = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 4, i32 9
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i, label %if.end26, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler1.i) #13
  br label %err_m2m_release

if.end26:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %pixfmts_cap = getelementptr inbounds %struct.amvdec_format, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %pixfmts_cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixfmts_cap, align 4
  %pixfmt_cap = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pixfmt_cap, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %fmt_out to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %7, ptr %fmt_out, align 4
  %width = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1280, ptr %width, align 8
  %height = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 720, ptr %height, align 4
  %pixelaspect = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %pixelaspect, align 8
  %denominator = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 16, i32 1
  %28 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %denominator, align 4
  %src_buffer_size = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %src_buffer_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1048576, ptr %src_buffer_size, align 4
  %timestamps = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 35
  %30 = ptrtoint ptr %timestamps to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %timestamps, ptr %timestamps, align 8
  %prev.i = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 35, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %timestamps, ptr %prev.i, align 4
  %bufs_recycle = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 32
  %32 = ptrtoint ptr %bufs_recycle to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %bufs_recycle, ptr %bufs_recycle, align 8
  %prev.i105 = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 32, i32 1
  %33 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bufs_recycle, ptr %prev.i105, align 4
  %esparser_queue_work = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %esparser_queue_work, i32 noundef 0) #13
  %34 = ptrtoint ptr %esparser_queue_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %esparser_queue_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @vdec_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry34 = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry34, ptr %entry34, align 8
  %prev.i106 = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 18, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry34, ptr %prev.i106, align 4
  %func = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 18, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @esparser_queue_all_src, ptr %func, align 8
  %lock = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @vdec_open.__key.28) #13
  %bufs_recycle_lock = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 33
  tail call void @__mutex_init(ptr noundef %bufs_recycle_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @vdec_open.__key.30) #13
  %ts_spinlock = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %ts_spinlock, ptr noundef nonnull @.str.33, ptr noundef nonnull @vdec_open.__key.32, i16 noundef signext 3) #13
  %fh = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 1
  %vdev_dec = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %vdev_dec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdev_dec, align 4
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %39) #13
  %ctrl_handler49 = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %ctrl_handler49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ctrl_handler1.i, ptr %ctrl_handler49, align 8
  tail call void @v4l2_fh_add(ptr noundef %fh) #13
  %41 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m2m_ctx, align 8
  %m2m_ctx53 = getelementptr inbounds %struct.amvdec_session, ptr %call7.i.i, i32 0, i32 1, i32 10
  %43 = ptrtoint ptr %m2m_ctx53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %m2m_ctx53, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %44 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %fh, ptr %private_data, align 4
  br label %cleanup

err_m2m_release:                                  ; preds = %if.then4.i, %if.end22.err_m2m_release_crit_edge, %do.end19
  %ret.0 = phi i32 [ %17, %do.end19 ], [ %call.i104, %if.end22.err_m2m_release_crit_edge ], [ %20, %if.then4.i ]
  %45 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %46) #13
  br label %err_free_sess

err_free_sess:                                    ; preds = %err_m2m_release, %do.end
  %ret.1 = phi i32 [ %13, %do.end ], [ %ret.0, %err_m2m_release ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_sess, %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_sess ], [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_close(ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %m2m_ctx = getelementptr i8, ptr %1, i32 196
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %3) #13
  %m2m_dev = getelementptr i8, ptr %1, i32 192
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %5) #13
  tail call void @v4l2_fh_del(ptr noundef %1) #13
  tail call void @v4l2_fh_exit(ptr noundef %1) #13
  %lock = getelementptr i8, ptr %1, i32 388
  tail call void @mutex_destroy(ptr noundef %lock) #13
  %bufs_recycle_lock = getelementptr i8, ptr %1, i32 716
  tail call void @mutex_destroy(ptr noundef %bufs_recycle_lock) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2m_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %2 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %timestamp_flags, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vdec_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %5 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %6 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 744, ptr %buf_struct_size, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 15
  %7 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %min_buffers_needed, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.amvdec_session, ptr %priv, i32 0, i32 6
  %lock2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %13 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock2, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %dst_vq, align 4
  %io_modes4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %io_modes4, align 4
  %timestamp_flags5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %16 = ptrtoint ptr %timestamp_flags5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16384, ptr %timestamp_flags5, align 4
  %ops6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vdec_vb2_ops, ptr %ops6, align 4
  %mem_ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops7, align 4
  %drv_priv8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %19 = ptrtoint ptr %drv_priv8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv, ptr %drv_priv8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %20 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 744, ptr %buf_struct_size9, align 4
  %min_buffers_needed10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %21 = ptrtoint ptr %min_buffers_needed10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %min_buffers_needed10, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %dev12 = getelementptr inbounds %struct.amvdec_core, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev12, align 4
  %dev13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %26 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dev13, align 4
  %lock15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lock, ptr %lock15, align 4
  %call16 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esparser_queue_all_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_m2m_device_run(ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %esparser_queue_work = getelementptr inbounds %struct.amvdec_session, ptr %priv, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %esparser_queue_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_m2m_job_abort(ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr inbounds %struct.amvdec_session, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %1, ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_queue_setup(ptr nocapture noundef %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %width.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height.i, align 4
  %mul.i.i = mul i32 %5, %3
  %add.i.i = add i32 %mul.i.i, 65535
  %and.i.i = and i32 %add.i.i, -65536
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q, align 4
  br i1 %tobool.not, label %if.end31, label %if.then

if.then:                                          ; preds = %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then.sw.epilog30_crit_edge [
    i32 10, label %sw.bb
    i32 9, label %sw.bb4
  ]

if.then.sw.epilog30_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog30

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  %src_buffer_size = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %src_buffer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp2 = icmp ult i32 %12, %14
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.sw.epilog30_crit_edge

lor.lhs.false.sw.epilog30_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog30

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb4:                                           ; preds = %if.then
  %pixfmt_cap = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixfmt_cap, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %16, label %sw.bb4.cleanup_crit_edge [
    i32 842091854, label %sw.bb5
    i32 842091865, label %sw.bb15
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6.not = icmp eq i32 %7, 2
  br i1 %cmp6.not, label %lor.lhs.false7, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %sw.bb5
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and.i.i)
  %cmp9 = icmp ult i32 %19, %and.i.i
  br i1 %cmp9, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %arrayidx11 = getelementptr i32, ptr %sizes, i32 1
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11, align 4
  %div94 = lshr exact i32 %and.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div94)
  %cmp12 = icmp ult i32 %21, %div94
  br i1 %cmp12, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false10.sw.epilog_crit_edge

lor.lhs.false10.sw.epilog_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp16.not = icmp eq i32 %7, 3
  br i1 %cmp16.not, label %lor.lhs.false17, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false17:                                  ; preds = %sw.bb15
  %22 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and.i.i)
  %cmp19 = icmp ult i32 %23, %and.i.i
  br i1 %cmp19, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %arrayidx21 = getelementptr i32, ptr %sizes, i32 1
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %div2293 = lshr exact i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %div2293)
  %cmp23 = icmp ult i32 %25, %div2293
  br i1 %cmp23, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false24

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %arrayidx25 = getelementptr i32, ptr %sizes, i32 2
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %div2293)
  %cmp27 = icmp ult i32 %27, %div2293
  br i1 %cmp27, label %lor.lhs.false24.cleanup_crit_edge, label %lor.lhs.false24.sw.epilog_crit_edge

lor.lhs.false24.sw.epilog_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %lor.lhs.false24.sw.epilog_crit_edge, %lor.lhs.false10.sw.epilog_crit_edge
  tail call fastcc void @process_num_buffers(ptr noundef %q, ptr noundef %1, ptr noundef %num_buffers, i1 noundef zeroext false)
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.epilog, %lor.lhs.false.sw.epilog30_crit_edge, %if.then.sw.epilog30_crit_edge
  br label %cleanup

if.end31:                                         ; preds = %entry
  %28 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %9, label %if.end31.cleanup_crit_edge [
    i32 10, label %sw.bb33
    i32 9, label %sw.bb36
  ]

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb33:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %src_buffer_size34 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %src_buffer_size34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_buffer_size34, align 4
  %31 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sizes, align 4
  %32 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_planes, align 4
  br label %sw.epilog51

sw.bb36:                                          ; preds = %if.end31
  %pixfmt_cap37 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %pixfmt_cap37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixfmt_cap37, align 8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %34, label %sw.bb36.cleanup_crit_edge [
    i32 842091854, label %sw.bb38
    i32 842091865, label %sw.bb42
  ]

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i.i, ptr %sizes, align 4
  %div4092 = lshr exact i32 %and.i.i, 1
  br label %sw.epilog49

sw.bb42:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i.i, ptr %sizes, align 4
  %div4491 = lshr exact i32 %and.i.i, 2
  %arrayidx45 = getelementptr i32, ptr %sizes, i32 1
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div4491, ptr %arrayidx45, align 4
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %sw.bb42, %sw.bb38
  %.sink = phi i32 [ 2, %sw.bb42 ], [ 1, %sw.bb38 ]
  %div4491.sink = phi i32 [ %div4491, %sw.bb42 ], [ %div4092, %sw.bb38 ]
  %storemerge = phi i32 [ 3, %sw.bb42 ], [ 2, %sw.bb38 ]
  %arrayidx47 = getelementptr i32, ptr %sizes, i32 %.sink
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div4491.sink, ptr %arrayidx47, align 4
  %40 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge, ptr %num_planes, align 4
  %fmt_out1.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %fmt_out1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fmt_out1.i, align 4
  %num_buffers2.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 21
  %43 = ptrtoint ptr %num_buffers2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_buffers2.i, align 4
  %45 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_buffers, align 4
  %add.i = add i32 %46, %44
  %ctrl_min_buf_capture.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %ctrl_min_buf_capture.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_min_buf_capture.i, align 4
  %call.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %48) #13
  %49 = ptrtoint ptr %num_buffers2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_buffers2.i, align 4
  %51 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_buffers, align 4
  %add4.i = add i32 %52, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %call.i)
  %cmp.i = icmp ult i32 %add4.i, %call.i
  br i1 %cmp.i, label %if.then.i, label %sw.epilog49.if.end.i_crit_edge

sw.epilog49.if.end.i_crit_edge:                   ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %call.i, %50
  %53 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i, ptr %num_buffers, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog49.if.end.i_crit_edge
  %min_buffers.i = getelementptr inbounds %struct.amvdec_format, ptr %42, i32 0, i32 1
  %54 = ptrtoint ptr %min_buffers.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %min_buffers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %55)
  %cmp6.i = icmp ult i32 %add.i, %55
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %num_buffers2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_buffers2.i, align 4
  %sub10.i = sub i32 %55, %57
  %58 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub10.i, ptr %num_buffers, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %max_buffers.i = getelementptr inbounds %struct.amvdec_format, ptr %42, i32 0, i32 2
  %59 = ptrtoint ptr %max_buffers.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_buffers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %60)
  %cmp12.i = icmp ugt i32 %add.i, %60
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.process_num_buffers.exit_crit_edge

if.end11.i.process_num_buffers.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_num_buffers.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %num_buffers2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_buffers2.i, align 4
  %sub16.i = sub i32 %60, %62
  %63 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub16.i, ptr %num_buffers, align 4
  br label %process_num_buffers.exit

process_num_buffers.exit:                         ; preds = %if.then13.i, %if.end11.i.process_num_buffers.exit_crit_edge
  %64 = ptrtoint ptr %num_buffers2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_buffers2.i, align 4
  %66 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_buffers, align 4
  %add19.i = add i32 %67, %65
  %num_dst_bufs.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 25
  %68 = ptrtoint ptr %num_dst_bufs.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add19.i, ptr %num_dst_bufs.i, align 8
  %69 = ptrtoint ptr %min_buffers.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %min_buffers.i, align 4
  %71 = tail call i32 @llvm.umax.i32(i32 %70, i32 %add19.i) #13
  %min_buffers_needed.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 15
  %72 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %min_buffers_needed.i, align 4
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %process_num_buffers.exit, %sw.bb33
  %changed_format = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 26
  %73 = ptrtoint ptr %changed_format to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %changed_format, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog51, %sw.bb36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %sw.epilog30, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog30 ], [ 0, %sw.epilog51 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vdec_vb2_buf_prepare(ptr nocapture noundef writeonly %vb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops1 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %cur_sess = getelementptr inbounds %struct.amvdec_core, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %cur_sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_sess, align 4
  %tobool.not = icmp eq ptr %9, null
  %cmp.not = icmp eq ptr %9, %1
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.bufs_done_crit_edge

entry.bufs_done_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bufs_done

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp4 = icmp eq i32 %11, 10
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %streamon_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %streamon_out to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %streamon_out, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %streamon_cap = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %streamon_cap, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %streamon_out7 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %streamon_out7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %streamon_out7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %status = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 41
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp11 = icmp eq i32 %17, 3
  br i1 %cmp11, label %land.lhs.true12, label %if.end19

land.lhs.true12:                                  ; preds = %if.end10
  %18 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cmp14 = icmp eq i32 %19, 9
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %changed_format = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %changed_format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %changed_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then17

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  %resume = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resume, align 4
  tail call void %23(ptr noundef %1) #13
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %status, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %.off = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end19.cleanup_crit_edge, label %if.end28

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %vififo_size = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 31
  %25 = ptrtoint ptr %vififo_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %vififo_size, align 4
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %7, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %vififo_paddr = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 30
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %27, i32 noundef 16777216, ptr noundef %vififo_paddr, i32 noundef 3264, i32 noundef 0) #13
  %vififo_vaddr = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 29
  %28 = ptrtoint ptr %vififo_vaddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %vififo_vaddr, align 4
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %do.end, label %if.end37

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %dev36 = getelementptr inbounds %struct.amvdec_core, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.34) #16
  br label %bufs_done

if.end37:                                         ; preds = %if.end28
  %should_stop = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 23
  %33 = ptrtoint ptr %should_stop to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %should_stop, align 8
  %keyframe_found = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 24
  %34 = ptrtoint ptr %keyframe_found to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %keyframe_found, align 4
  %last_offset = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 38
  %35 = ptrtoint ptr %last_offset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %last_offset, align 8
  %wrap_count = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 39
  %36 = ptrtoint ptr %wrap_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %wrap_count, align 4
  %pixelaspect = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %pixelaspect, align 8
  %denominator = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %denominator, align 4
  %esparser_queued_bufs = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %esparser_queued_bufs, i32 noundef 4) #13
  %39 = ptrtoint ptr %esparser_queued_bufs to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %esparser_queued_bufs, align 4
  %ctrl_min_buf_capture = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %ctrl_min_buf_capture to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_min_buf_capture, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %45, i32 noundef 0) #13
  %call.i134 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %41, i32 noundef 1) #13
  %46 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %49) #13
  %50 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fmt_out, align 4
  %vdec_ops1.i = getelementptr inbounds %struct.amvdec_format, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %vdec_ops1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vdec_ops1.i, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %dos_parser_clk.i = getelementptr inbounds %struct.amvdec_core, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %dos_parser_clk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dos_parser_clk.i, align 4
  %call.i.i135 = tail call i32 @clk_prepare(ptr noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %tobool.not.i.i = icmp eq i32 %call.i.i135, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end37.vififo_free_crit_edge

if.end37.vififo_free_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %vififo_free

if.end.i.i:                                       ; preds = %if.end37
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.vififo_free.sink.split_crit_edge

if.end.i.i.vififo_free.sink.split_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vififo_free.sink.split

if.end.i:                                         ; preds = %if.end.i.i
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %dos_clk.i = getelementptr inbounds %struct.amvdec_core, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %dos_clk.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dos_clk.i, align 4
  %call.i27.i = tail call i32 @clk_prepare(ptr noundef %61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.end.i31.i, label %if.end.i.disable_dos_parser.i_crit_edge

if.end.i.disable_dos_parser.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_dos_parser.i

if.end.i31.i:                                     ; preds = %if.end.i
  %call1.i29.i = tail call i32 @clk_enable(ptr noundef %61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool2.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool2.not.i30.i, label %if.end6.i, label %if.end.i31.i.disable_dos_parser.sink.split.i_crit_edge

if.end.i31.i.disable_dos_parser.sink.split.i_crit_edge: ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_dos_parser.sink.split.i

if.end6.i:                                        ; preds = %if.end.i31.i
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %53, align 4
  %call7.i = tail call i32 %63(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end43, label %disable_dos.i

disable_dos.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %dos_clk13.i = getelementptr inbounds %struct.amvdec_core, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %dos_clk13.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dos_clk13.i, align 4
  tail call void @clk_disable(ptr noundef %67) #13
  br label %disable_dos_parser.sink.split.i

disable_dos_parser.sink.split.i:                  ; preds = %disable_dos.i, %if.end.i31.i.disable_dos_parser.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %67, %disable_dos.i ], [ %61, %if.end.i31.i.disable_dos_parser.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call7.i, %disable_dos.i ], [ %call1.i29.i, %if.end.i31.i.disable_dos_parser.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #13
  br label %disable_dos_parser.i

disable_dos_parser.i:                             ; preds = %disable_dos_parser.sink.split.i, %if.end.i.disable_dos_parser.i_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.end.i.disable_dos_parser.i_crit_edge ], [ %ret.0.ph.i, %disable_dos_parser.sink.split.i ]
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %dos_parser_clk15.i = getelementptr inbounds %struct.amvdec_core, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %dos_parser_clk15.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dos_parser_clk15.i, align 4
  tail call void @clk_disable(ptr noundef %71) #13
  br label %vififo_free.sink.split

if.end43:                                         ; preds = %if.end6.i
  %call11.i = tail call i32 @esparser_power_up(ptr noundef %1) #13
  %sequence_cap = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 21
  %72 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %sequence_cap, align 8
  %sequence_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 22
  %73 = ptrtoint ptr %sequence_out to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %sequence_out, align 4
  %74 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fmt_out, align 4
  %codec_ops1.i = getelementptr inbounds %struct.amvdec_format, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %codec_ops1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %codec_ops1.i, align 4
  %can_recycle.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %can_recycle.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %can_recycle.i, align 4
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %if.end43.if.end52_crit_edge, label %vdec_codec_needs_recycle.exit

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

vdec_codec_needs_recycle.exit:                    ; preds = %if.end43
  %recycle.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %77, i32 0, i32 5
  %80 = ptrtoint ptr %recycle.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %recycle.i, align 4
  %tobool2.i.not = icmp eq ptr %81, null
  br i1 %tobool2.i.not, label %vdec_codec_needs_recycle.exit.if.end52_crit_edge, label %if.then46

vdec_codec_needs_recycle.exit.if.end52_crit_edge: ; preds = %vdec_codec_needs_recycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then46:                                        ; preds = %vdec_codec_needs_recycle.exit
  %call47 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vdec_recycle_thread, ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.36) #13
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46.if.end51_crit_edge, label %if.then49

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call i32 @wake_up_process(ptr noundef %call47) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then46.if.end51_crit_edge
  %recycle_thread = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 34
  %82 = ptrtoint ptr %recycle_thread to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call47, ptr %recycle_thread, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %vdec_codec_needs_recycle.exit.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %83 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %status, align 8
  %84 = ptrtoint ptr %cur_sess to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %1, ptr %cur_sess, align 4
  %esparser_queue_work = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %85 = load ptr, ptr @system_wq, align 4
  %call.i.i137 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %85, ptr noundef %esparser_queue_work) #13
  br label %cleanup

vififo_free.sink.split:                           ; preds = %disable_dos_parser.i, %if.end.i.i.vififo_free.sink.split_crit_edge
  %.sink = phi ptr [ %71, %disable_dos_parser.i ], [ %57, %if.end.i.i.vififo_free.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %ret.0.i, %disable_dos_parser.i ], [ %call1.i.i, %if.end.i.i.vififo_free.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #13
  br label %vififo_free

vififo_free:                                      ; preds = %vififo_free.sink.split, %if.end37.vififo_free_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i135, %if.end37.vififo_free_crit_edge ], [ %retval.0.i.ph.ph, %vififo_free.sink.split ]
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %dev57 = getelementptr inbounds %struct.amvdec_core, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev57, align 4
  %90 = ptrtoint ptr %vififo_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vififo_size, align 4
  %92 = ptrtoint ptr %vififo_vaddr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vififo_vaddr, align 4
  %94 = ptrtoint ptr %vififo_paddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vififo_paddr, align 8
  tail call void @dma_free_attrs(ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %95, i32 noundef 0) #13
  br label %bufs_done

bufs_done:                                        ; preds = %vififo_free, %do.end, %entry.bufs_done_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.ph, %vififo_free ], [ -12, %do.end ], [ -16, %entry.bufs_done_crit_edge ]
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i146 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %97, i32 0, i32 8
  %call.i138147 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i146) #13
  %tobool62.not148 = icmp eq ptr %call.i138147, null
  br i1 %tobool62.not148, label %bufs_done.while.cond63.preheader_crit_edge, label %bufs_done.while.body_crit_edge

bufs_done.while.body_crit_edge:                   ; preds = %bufs_done
  br label %while.body

bufs_done.while.cond63.preheader_crit_edge:       ; preds = %bufs_done
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond63.preheader

while.cond63.preheader:                           ; preds = %while.body.while.cond63.preheader_crit_edge, %bufs_done.while.cond63.preheader_crit_edge
  %98 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i150 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %99, i32 0, i32 7
  %call.i139151 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i150) #13
  %tobool66.not152 = icmp eq ptr %call.i139151, null
  br i1 %tobool66.not152, label %while.cond63.preheader.while.end68_crit_edge, label %while.cond63.preheader.while.body67_crit_edge

while.cond63.preheader.while.body67_crit_edge:    ; preds = %while.cond63.preheader
  br label %while.body67

while.cond63.preheader.while.end68_crit_edge:     ; preds = %while.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end68

while.body:                                       ; preds = %while.body.while.body_crit_edge, %bufs_done.while.body_crit_edge
  %call.i138149 = phi ptr [ %call.i138, %while.body.while.body_crit_edge ], [ %call.i138147, %bufs_done.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i138149, i32 noundef 3) #13
  %100 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %101, i32 0, i32 8
  %call.i138 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #13
  %tobool62.not = icmp eq ptr %call.i138, null
  br i1 %tobool62.not, label %while.body.while.cond63.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.cond63.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond63.preheader

while.body67:                                     ; preds = %while.body67.while.body67_crit_edge, %while.cond63.preheader.while.body67_crit_edge
  %call.i139153 = phi ptr [ %call.i139, %while.body67.while.body67_crit_edge ], [ %call.i139151, %while.cond63.preheader.while.body67_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i139153, i32 noundef 3) #13
  %102 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %103, i32 0, i32 7
  %call.i139 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #13
  %tobool66.not = icmp eq ptr %call.i139, null
  br i1 %tobool66.not, label %while.body67.while.end68_crit_edge, label %while.body67.while.body67_crit_edge

while.body67.while.body67_crit_edge:              ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body67

while.body67.while.end68_crit_edge:               ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end68

while.end68:                                      ; preds = %while.body67.while.end68_crit_edge, %while.cond63.preheader.while.end68_crit_edge
  %104 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %105)
  %cmp70 = icmp eq i32 %105, 10
  br i1 %cmp70, label %if.then71, label %if.else73

if.then71:                                        ; preds = %while.end68
  call void @__sanitizer_cov_trace_pc() #15
  %streamon_out72 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 20
  %106 = ptrtoint ptr %streamon_out72 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %streamon_out72, align 4
  br label %cleanup

if.else73:                                        ; preds = %while.end68
  call void @__sanitizer_cov_trace_pc() #15
  %streamon_cap74 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 19
  %107 = ptrtoint ptr %streamon_cap74 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %streamon_cap74, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else73, %if.then71, %if.end52, %if.end19.cleanup_crit_edge, %if.then17, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.end52 ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %ret.0, %if.else73 ], [ %ret.0, %if.then71 ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %land.lhs.true12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_stop_streaming(ptr nocapture noundef readonly %q) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops1 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %status = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 41
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %9, label %entry.if.end17_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge94
    i32 3, label %land.lhs.true
  ]

entry.if.then_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %streamon_out = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false8

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %streamon_cap = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %streamon_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %lor.lhs.false8.if.then_crit_edge, label %lor.lhs.false8.if.end17_crit_edge

lor.lhs.false8.if.end17_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false8.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge, %entry.if.then_crit_edge94
  %can_recycle.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %can_recycle.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %can_recycle.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %vdec_codec_needs_recycle.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

vdec_codec_needs_recycle.exit:                    ; preds = %if.then
  %recycle.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %recycle.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %recycle.i, align 4
  %tobool2.i.not = icmp eq ptr %18, null
  br i1 %tobool2.i.not, label %vdec_codec_needs_recycle.exit.if.end_crit_edge, label %if.then12

vdec_codec_needs_recycle.exit.if.end_crit_edge:   ; preds = %vdec_codec_needs_recycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then12:                                        ; preds = %vdec_codec_needs_recycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %recycle_thread = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %recycle_thread to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recycle_thread, align 4
  %call13 = tail call i32 @kthread_stop(ptr noundef %20) #13
  br label %if.end

if.end:                                           ; preds = %if.then12, %vdec_codec_needs_recycle.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt_out, align 4
  %vdec_ops1.i = getelementptr inbounds %struct.amvdec_format, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %vdec_ops1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdec_ops1.i, align 4
  %codec_ops3.i = getelementptr inbounds %struct.amvdec_format, ptr %22, i32 0, i32 7
  %25 = ptrtoint ptr %codec_ops3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %codec_ops3.i, align 4
  %should_stop.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 23
  %27 = ptrtoint ptr %should_stop.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %should_stop.i, align 8
  %call3.i.i = tail call i64 @get_jiffies_64() #13
  %last_irq_jiffies.i.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 37
  %28 = ptrtoint ptr %last_irq_jiffies.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %last_irq_jiffies.i.i, align 8
  %add.neg5.i.i = add i64 %call3.i.i, -5
  %sub6.i.i = sub i64 %add.neg5.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub6.i.i)
  %cmp7.i.i = icmp slt i64 %sub6.i.i, 0
  br i1 %cmp7.i.i, label %if.end.while.body.i.i_crit_edge, label %if.end.vdec_wait_inactive.exit.i_crit_edge

if.end.vdec_wait_inactive.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_wait_inactive.exit.i

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 25) #13
  %call.i.i = tail call i64 @get_jiffies_64() #13
  %30 = ptrtoint ptr %last_irq_jiffies.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %last_irq_jiffies.i.i, align 8
  %add.neg.i.i = add i64 %call.i.i, -5
  %sub.i.i = sub i64 %add.neg.i.i, %31
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.vdec_wait_inactive.exit.i_crit_edge

while.body.i.i.vdec_wait_inactive.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_wait_inactive.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

vdec_wait_inactive.exit.i:                        ; preds = %while.body.i.i.vdec_wait_inactive.exit.i_crit_edge, %if.end.vdec_wait_inactive.exit.i_crit_edge
  %drain.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %26, i32 0, i32 6
  %32 = ptrtoint ptr %drain.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drain.i, align 4
  %tobool.not.i68 = icmp eq ptr %33, null
  br i1 %tobool.not.i68, label %vdec_wait_inactive.exit.i.vdec_poweroff.exit_crit_edge, label %if.then.i

vdec_wait_inactive.exit.i.vdec_poweroff.exit_crit_edge: ; preds = %vdec_wait_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_poweroff.exit

if.then.i:                                        ; preds = %vdec_wait_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %33(ptr noundef %1) #13
  br label %vdec_poweroff.exit

vdec_poweroff.exit:                               ; preds = %if.then.i, %vdec_wait_inactive.exit.i.vdec_poweroff.exit_crit_edge
  %stop.i = getelementptr inbounds %struct.amvdec_ops, ptr %24, i32 0, i32 1
  %34 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop.i, align 4
  %call.i = tail call i32 %35(ptr noundef %1) #13
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %dos_clk.i = getelementptr inbounds %struct.amvdec_core, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %dos_clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dos_clk.i, align 4
  tail call void @clk_disable(ptr noundef %39) #13
  tail call void @clk_unprepare(ptr noundef %39) #13
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %dos_parser_clk.i = getelementptr inbounds %struct.amvdec_core, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %dos_parser_clk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dos_parser_clk.i, align 4
  tail call void @clk_disable(ptr noundef %43) #13
  tail call void @clk_unprepare(ptr noundef %43) #13
  %canvas_num.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 28
  %44 = ptrtoint ptr %canvas_num.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %canvas_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp7.not.i = icmp eq i32 %45, 0
  br i1 %cmp7.not.i, label %vdec_poweroff.exit.vdec_free_canvas.exit_crit_edge, label %vdec_poweroff.exit.for.body.i_crit_edge

vdec_poweroff.exit.for.body.i_crit_edge:          ; preds = %vdec_poweroff.exit
  br label %for.body.i

vdec_poweroff.exit.vdec_free_canvas.exit_crit_edge: ; preds = %vdec_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_free_canvas.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vdec_poweroff.exit.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %vdec_poweroff.exit.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %canvas.i = getelementptr inbounds %struct.amvdec_core, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %canvas.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %canvas.i, align 4
  %arrayidx.i = getelementptr %struct.amvdec_session, ptr %1, i32 0, i32 27, i32 %i.08.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %call.i69 = tail call i32 @meson_canvas_free(ptr noundef %49, i8 noundef zeroext %51) #13
  %inc.i = add nuw i32 %i.08.i, 1
  %52 = ptrtoint ptr %canvas_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %canvas_num.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %53
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vdec_free_canvas.exit_crit_edge

for.body.i.vdec_free_canvas.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_free_canvas.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

vdec_free_canvas.exit:                            ; preds = %for.body.i.vdec_free_canvas.exit_crit_edge, %vdec_poweroff.exit.vdec_free_canvas.exit_crit_edge
  %54 = ptrtoint ptr %canvas_num.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %canvas_num.i, align 8
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %vififo_size = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 31
  %59 = ptrtoint ptr %vififo_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vififo_size, align 4
  %vififo_vaddr = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 29
  %61 = ptrtoint ptr %vififo_vaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vififo_vaddr, align 4
  %vififo_paddr = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 30
  %63 = ptrtoint ptr %vififo_paddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vififo_paddr, align 8
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef 0) #13
  %timestamps.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 35
  %65 = ptrtoint ptr %timestamps.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %timestamps.i, align 8
  %cmp.not19.i = icmp eq ptr %66, %timestamps.i
  br i1 %cmp.not19.i, label %vdec_free_canvas.exit.vdec_reset_timestamps.exit_crit_edge, label %vdec_free_canvas.exit.for.body.i70_crit_edge

vdec_free_canvas.exit.for.body.i70_crit_edge:     ; preds = %vdec_free_canvas.exit
  br label %for.body.i70

vdec_free_canvas.exit.vdec_reset_timestamps.exit_crit_edge: ; preds = %vdec_free_canvas.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_reset_timestamps.exit

for.body.i70:                                     ; preds = %list_del.exit.i.for.body.i70_crit_edge, %vdec_free_canvas.exit.for.body.i70_crit_edge
  %tmp.020.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i70_crit_edge ], [ %66, %vdec_free_canvas.exit.for.body.i70_crit_edge ]
  %67 = ptrtoint ptr %tmp.020.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %n.0.i = load ptr, ptr %tmp.020.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.020.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i70.list_del.exit.i_crit_edge

for.body.i70.list_del.exit.i_crit_edge:           ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.020.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %tmp.020.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tmp.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i70.list_del.exit.i_crit_edge
  %74 = ptrtoint ptr %tmp.020.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.020.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %tmp.020.i) #13
  %cmp.not.i = icmp eq ptr %n.0.i, %timestamps.i
  br i1 %cmp.not.i, label %list_del.exit.i.vdec_reset_timestamps.exit_crit_edge, label %list_del.exit.i.for.body.i70_crit_edge

list_del.exit.i.for.body.i70_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i70

list_del.exit.i.vdec_reset_timestamps.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_reset_timestamps.exit

vdec_reset_timestamps.exit:                       ; preds = %list_del.exit.i.vdec_reset_timestamps.exit_crit_edge, %vdec_free_canvas.exit.vdec_reset_timestamps.exit_crit_edge
  %bufs_recycle.i = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 32
  %76 = ptrtoint ptr %bufs_recycle.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bufs_recycle.i, align 8
  %cmp.not19.i71 = icmp eq ptr %77, %bufs_recycle.i
  br i1 %cmp.not19.i71, label %vdec_reset_timestamps.exit.vdec_reset_bufs_recycle.exit_crit_edge, label %vdec_reset_timestamps.exit.for.body.i75_crit_edge

vdec_reset_timestamps.exit.for.body.i75_crit_edge: ; preds = %vdec_reset_timestamps.exit
  br label %for.body.i75

vdec_reset_timestamps.exit.vdec_reset_bufs_recycle.exit_crit_edge: ; preds = %vdec_reset_timestamps.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_reset_bufs_recycle.exit

for.body.i75:                                     ; preds = %list_del.exit.i81.for.body.i75_crit_edge, %vdec_reset_timestamps.exit.for.body.i75_crit_edge
  %tmp.020.i72 = phi ptr [ %n.0.i73, %list_del.exit.i81.for.body.i75_crit_edge ], [ %77, %vdec_reset_timestamps.exit.for.body.i75_crit_edge ]
  %78 = ptrtoint ptr %tmp.020.i72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %n.0.i73 = load ptr, ptr %tmp.020.i72, align 4
  %call.i.i.i74 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.020.i72) #13
  br i1 %call.i.i.i74, label %if.end.i.i.i78, label %for.body.i75.list_del.exit.i81_crit_edge

for.body.i75.list_del.exit.i81_crit_edge:         ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i81

if.end.i.i.i78:                                   ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i76 = getelementptr inbounds %struct.list_head, ptr %tmp.020.i72, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i76, align 4
  %81 = ptrtoint ptr %tmp.020.i72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tmp.020.i72, align 4
  %prev1.i.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i77, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit.i81

list_del.exit.i81:                                ; preds = %if.end.i.i.i78, %for.body.i75.list_del.exit.i81_crit_edge
  %85 = ptrtoint ptr %tmp.020.i72 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.020.i72, align 4
  %prev.i.i79 = getelementptr inbounds %struct.list_head, ptr %tmp.020.i72, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i79, align 4
  tail call void @kfree(ptr noundef %tmp.020.i72) #13
  %cmp.not.i80 = icmp eq ptr %n.0.i73, %bufs_recycle.i
  br i1 %cmp.not.i80, label %list_del.exit.i81.vdec_reset_bufs_recycle.exit_crit_edge, label %list_del.exit.i81.for.body.i75_crit_edge

list_del.exit.i81.for.body.i75_crit_edge:         ; preds = %list_del.exit.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i75

list_del.exit.i81.vdec_reset_bufs_recycle.exit_crit_edge: ; preds = %list_del.exit.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_reset_bufs_recycle.exit

vdec_reset_bufs_recycle.exit:                     ; preds = %list_del.exit.i81.vdec_reset_bufs_recycle.exit_crit_edge, %vdec_reset_timestamps.exit.vdec_reset_bufs_recycle.exit_crit_edge
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 42
  %87 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %88) #13
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %priv, align 4
  %cur_sess = getelementptr inbounds %struct.amvdec_core, ptr %7, i32 0, i32 15
  %90 = ptrtoint ptr %cur_sess to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %cur_sess, align 4
  %91 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %status, align 8
  br label %if.end17

if.end17:                                         ; preds = %vdec_reset_bufs_recycle.exit, %lor.lhs.false8.if.end17_crit_edge, %entry.if.end17_crit_edge
  %92 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %93)
  %cmp18 = icmp eq i32 %93, 10
  br i1 %cmp18, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %if.end17
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 3
  %94 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i90 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %95, i32 0, i32 8
  %call.i8291 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i90) #13
  %tobool21.not92 = icmp eq ptr %call.i8291, null
  br i1 %tobool21.not92, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i8293 = phi ptr [ %call.i82, %while.body.while.body_crit_edge ], [ %call.i8291, %while.cond.preheader.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i8293, i32 noundef 6) #13
  %96 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %97, i32 0, i32 8
  %call.i82 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #13
  %tobool21.not = icmp eq ptr %call.i82, null
  br i1 %tobool21.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %streamon_out22 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 20
  %98 = ptrtoint ptr %streamon_out22 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %streamon_out22, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end17
  %99 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp24 = icmp ugt i32 %100, 1
  br i1 %cmp24, label %land.lhs.true25, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.else
  %drain = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 6
  %101 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %drain, align 4
  %tobool26.not = icmp eq ptr %102, null
  br i1 %tobool26.not, label %land.lhs.true25.if.end29_crit_edge, label %if.then27

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %102(ptr noundef %1) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true25.if.end29_crit_edge, %if.else.if.end29_crit_edge
  %m2m_ctx31 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 3
  %103 = ptrtoint ptr %m2m_ctx31 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %m2m_ctx31, align 8
  %cap_q_ctx.i86 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %104, i32 0, i32 7
  %call.i8387 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i86) #13
  %tobool33.not88 = icmp eq ptr %call.i8387, null
  br i1 %tobool33.not88, label %if.end29.while.end35_crit_edge, label %if.end29.while.body34_crit_edge

if.end29.while.body34_crit_edge:                  ; preds = %if.end29
  br label %while.body34

if.end29.while.end35_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end35

while.body34:                                     ; preds = %while.body34.while.body34_crit_edge, %if.end29.while.body34_crit_edge
  %call.i8389 = phi ptr [ %call.i83, %while.body34.while.body34_crit_edge ], [ %call.i8387, %if.end29.while.body34_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i8389, i32 noundef 6) #13
  %105 = ptrtoint ptr %m2m_ctx31 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %m2m_ctx31, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %106, i32 0, i32 7
  %call.i83 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #13
  %tobool33.not = icmp eq ptr %call.i83, null
  br i1 %tobool33.not, label %while.body34.while.end35_crit_edge, label %while.body34.while.body34_crit_edge

while.body34.while.body34_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body34

while.body34.while.end35_crit_edge:               ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end35

while.end35:                                      ; preds = %while.body34.while.end35_crit_edge, %if.end29.while.end35_crit_edge
  %streamon_cap36 = getelementptr inbounds %struct.amvdec_session, ptr %1, i32 0, i32 19
  %107 = ptrtoint ptr %streamon_cap36 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %streamon_cap36, align 8
  br label %if.end37

if.end37:                                         ; preds = %while.end35, %while.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_vb2_buf_queue(ptr noundef %vb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx1 = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %m2m_ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx1, align 8
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #13
  %streamon_out = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %streamon_cap = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %streamon_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp = icmp eq i32 %11, 9
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true3:                                   ; preds = %land.lhs.true
  %fmt_out.i = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %fmt_out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt_out.i, align 4
  %codec_ops1.i = getelementptr inbounds %struct.amvdec_format, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %codec_ops1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %codec_ops1.i, align 4
  %can_recycle.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %can_recycle.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %can_recycle.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %land.lhs.true3.if.end7_crit_edge, label %vdec_codec_needs_recycle.exit

land.lhs.true3.if.end7_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

vdec_codec_needs_recycle.exit:                    ; preds = %land.lhs.true3
  %recycle.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %recycle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recycle.i, align 4
  %tobool2.i.not = icmp eq ptr %19, null
  br i1 %tobool2.i.not, label %vdec_codec_needs_recycle.exit.if.end7_crit_edge, label %if.then6

vdec_codec_needs_recycle.exit.if.end7_crit_edge:  ; preds = %vdec_codec_needs_recycle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %vdec_codec_needs_recycle.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 12) #17
  %tobool.not.i19 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i19, label %if.then6.if.end7_crit_edge, label %if.end.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i:                                         ; preds = %if.then6
  %vb1.i = getelementptr inbounds %struct.amvdec_buffer, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %vb1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vb, ptr %vb1.i, align 8
  %bufs_recycle_lock.i = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %bufs_recycle_lock.i, i32 noundef 0) #13
  %bufs_recycle.i = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 32
  %prev.i.i = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 32, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %23, ptr noundef %bufs_recycle.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bufs_recycle.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %23, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %bufs_recycle_lock.i) #13
  br label %if.end7

if.end7:                                          ; preds = %list_add_tail.exit.i, %if.then6.if.end7_crit_edge, %vdec_codec_needs_recycle.exit.if.end7_crit_edge, %land.lhs.true3.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %esparser_queue_work = getelementptr inbounds %struct.amvdec_session, ptr %3, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %esparser_queue_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_num_buffers(ptr nocapture noundef %q, ptr nocapture noundef %sess, ptr nocapture noundef %num_buffers, i1 noundef zeroext %is_reqbufs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt_out1 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %0 = ptrtoint ptr %fmt_out1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt_out1, align 4
  %num_buffers2 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers2, align 4
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers, align 4
  %add = add i32 %5, %3
  %ctrl_min_buf_capture = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 5
  %6 = ptrtoint ptr %ctrl_min_buf_capture to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_min_buf_capture, align 4
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %7) #13
  %8 = ptrtoint ptr %num_buffers2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers2, align 4
  %10 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers, align 4
  %add4 = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %call)
  %cmp = icmp ult i32 %add4, %call
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %call, %9
  %12 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %num_buffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %is_reqbufs, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %min_buffers = getelementptr inbounds %struct.amvdec_format, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %min_buffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp6 = icmp ult i32 %add, %14
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %num_buffers2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers2, align 4
  %sub10 = sub i32 %14, %16
  %17 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub10, ptr %num_buffers, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %max_buffers = getelementptr inbounds %struct.amvdec_format, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %max_buffers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp12 = icmp ugt i32 %add, %19
  br i1 %cmp12, label %if.then13, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %num_buffers2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_buffers2, align 4
  %sub16 = sub i32 %19, %21
  %22 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub16, ptr %num_buffers, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  %23 = ptrtoint ptr %num_buffers2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_buffers2, align 4
  %25 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_buffers, align 4
  %add19 = add i32 %26, %24
  %num_dst_bufs = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 25
  %27 = ptrtoint ptr %num_dst_bufs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add19, ptr %num_dst_bufs, align 8
  %min_buffers20 = getelementptr inbounds %struct.amvdec_format, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %min_buffers20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_buffers20, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %add19)
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 15
  %31 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %min_buffers_needed, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_recycle_thread(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops2 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops2, align 4
  %call36 = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %call36, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %bufs_recycle_lock = getelementptr inbounds %struct.amvdec_session, ptr %data, i32 0, i32 33
  %bufs_recycle = getelementptr inbounds %struct.amvdec_session, ptr %data, i32 0, i32 32
  %can_recycle = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 4
  %recycle = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  tail call void @mutex_lock_nested(ptr noundef %bufs_recycle_lock, i32 noundef 0) #13
  %6 = ptrtoint ptr %bufs_recycle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufs_recycle, align 8
  %cmp.not32 = icmp eq ptr %7, %bufs_recycle
  br i1 %cmp.not32, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %while.body.for.body_crit_edge
  %tmp.033 = phi ptr [ %n.035, %list_del.exit.for.body_crit_edge ], [ %7, %while.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %tmp.033 to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.035 = load ptr, ptr %tmp.033, align 4
  %9 = ptrtoint ptr %can_recycle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %can_recycle, align 4
  %call11 = tail call i32 %10(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %recycle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recycle, align 4
  %vb = getelementptr inbounds %struct.amvdec_buffer, ptr %tmp.033, i32 0, i32 1
  %13 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vb, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  tail call void %12(ptr noundef %1, i32 noundef %16) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.033) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.033, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %tmp.033 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tmp.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %23 = ptrtoint ptr %tmp.033 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.033, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.033, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.033) #13
  %cmp.not = icmp eq ptr %n.035, %bufs_recycle
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %bufs_recycle_lock) #13
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #13
  %call = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %call, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esparser_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_canvas_free(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.38, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.39, i32 noundef 32) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdec_enum_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %platform1 = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %platform1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform1, align 4
  %reserved = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 6
  %6 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 10, label %if.then
    i32 9, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %num_formats = getelementptr inbounds %struct.vdec_platform, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp2.not = icmp ult i32 %11, %13
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.amvdec_format, ptr %15, i32 %11
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat, align 4
  %flags = getelementptr %struct.amvdec_format, ptr %15, i32 %11, i32 5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %flags5 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %21 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flags5, align 4
  br label %cleanup

if.then8:                                         ; preds = %entry
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp11 = icmp ugt i32 %23, 3
  br i1 %cmp11, label %if.then8.cleanup_crit_edge, label %lor.lhs.false

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %fmt_out9 = getelementptr i8, ptr %1, i32 480
  %24 = ptrtoint ptr %fmt_out9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fmt_out9, align 4
  %arrayidx13 = getelementptr %struct.amvdec_format, ptr %25, i32 0, i32 9, i32 %23
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %pixelformat19 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %28 = ptrtoint ptr %pixelformat19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pixelformat19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end15 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_g_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.if.end23_crit_edge [
    i32 9, label %if.end5.thread
    i32 10, label %if.end5.thread50
  ]

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pixfmt_cap = getelementptr i8, ptr %1, i32 484
  %5 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixfmt_cap, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %pixelformat, align 1
  %width = getelementptr i8, ptr %1, i32 492
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 8
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %fmt, align 1
  %height = getelementptr i8, ptr %1, i32 496
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height10 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %height10, align 1
  %colorspace = getelementptr i8, ptr %1, i32 500
  %14 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorspace, align 8
  %colorspace11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %colorspace11, align 1
  %ycbcr_enc = getelementptr i8, ptr %1, i32 504
  %17 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ycbcr_enc, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %19, align 1
  %quantization = getelementptr i8, ptr %1, i32 505
  %21 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %quantization, align 1
  %quantization12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %23 = ptrtoint ptr %quantization12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %quantization12, align 1
  %xfer_func = getelementptr i8, ptr %1, i32 506
  %24 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %xfer_func, align 2
  %xfer_func13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %26 = ptrtoint ptr %xfer_func13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %xfer_func13, align 1
  br label %if.end23

if.end5.thread50:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fmt_out = getelementptr i8, ptr %1, i32 480
  %27 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fmt_out, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %pixelformat4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %pixelformat4 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %pixelformat4, align 1
  %width18 = getelementptr i8, ptr %1, i32 492
  %32 = ptrtoint ptr %width18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width18, align 8
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %fmt, align 1
  %height20 = getelementptr i8, ptr %1, i32 496
  %35 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height20, align 4
  %height21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %height21 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %height21, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end5.thread50, %if.end5.thread, %entry.if.end23_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform, align 4
  %num_formats = getelementptr inbounds %struct.vdec_platform, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_formats, align 4
  %call = tail call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr, i32 noundef %43, ptr noundef %f)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_s_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #9 align 64 {
entry:
  %format = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform, align 4
  %num_formats1 = getelementptr inbounds %struct.vdec_platform, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_formats1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats1, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %format) #13
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %orig_pixmp.sroa.0.0.copyload = load i32, ptr %fmt, align 1
  %orig_pixmp.sroa.6.0..sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %orig_pixmp.sroa.6.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %orig_pixmp.sroa.6.0.copyload = load i32, ptr %orig_pixmp.sroa.6.0..sroa_idx, align 1
  %call = tail call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr, i32 noundef %7, ptr noundef %f)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %11, label %if.end.if.end10_crit_edge [
    i32 10, label %if.then2
    i32 9, label %if.then6
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %pixelformat, align 1
  %pixfmt_cap3 = getelementptr i8, ptr %1, i32 484
  %15 = ptrtoint ptr %pixfmt_cap3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixfmt_cap3, align 8
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pixelformat7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat7 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %pixelformat7, align 1
  %fmt_out8 = getelementptr i8, ptr %1, i32 480
  %19 = ptrtoint ptr %fmt_out8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt_out8, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then2, %if.end.if.end10_crit_edge
  %pixfmt_out.0 = phi i32 [ %14, %if.then2 ], [ %22, %if.then6 ], [ 0, %if.end.if.end10_crit_edge ]
  %pixfmt_cap.0 = phi i32 [ %16, %if.then2 ], [ %18, %if.then6 ], [ 0, %if.end.if.end10_crit_edge ]
  %23 = getelementptr inbounds i8, ptr %format, i32 16
  %24 = call ptr @memset(ptr %23, i32 0, i32 188)
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %format, align 4
  %fmt12 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %pixelformat13 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %pixelformat13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %pixfmt_out.0, ptr %pixelformat13, align 4
  %27 = ptrtoint ptr %fmt12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %orig_pixmp.sroa.0.0.copyload, ptr %fmt12, align 4
  %height17 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %orig_pixmp.sroa.6.0.copyload, ptr %height17, align 4
  %call18 = call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr, i32 noundef %7, ptr noundef nonnull %format)
  %29 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %30)
  %cmp20 = icmp eq i32 %30, 10
  br i1 %cmp20, label %if.then21, label %if.end10.if.end31_crit_edge

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %fmt12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt12, align 4
  %width24 = getelementptr i8, ptr %1, i32 492
  %33 = ptrtoint ptr %width24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %width24, align 8
  %34 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height17, align 4
  %height27 = getelementptr i8, ptr %1, i32 496
  %36 = ptrtoint ptr %height27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height27, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %colorspace, align 1
  %colorspace28 = getelementptr i8, ptr %1, i32 500
  %39 = ptrtoint ptr %colorspace28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %colorspace28, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %ycbcr_enc = getelementptr i8, ptr %1, i32 504
  %43 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %44 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %quantization, align 1
  %quantization29 = getelementptr i8, ptr %1, i32 505
  %46 = ptrtoint ptr %quantization29 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %quantization29, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %47 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %xfer_func, align 1
  %xfer_func30 = getelementptr i8, ptr %1, i32 506
  %49 = ptrtoint ptr %xfer_func30 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %xfer_func30, align 2
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %50 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %plane_fmt, align 1
  %src_buffer_size = getelementptr i8, ptr %1, i32 488
  %52 = ptrtoint ptr %src_buffer_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %src_buffer_size, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end10.if.end31_crit_edge
  %53 = getelementptr inbounds i8, ptr %format, i32 16
  %54 = call ptr @memset(ptr %53, i32 0, i32 188)
  %55 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 9, ptr %format, align 4
  %56 = ptrtoint ptr %pixelformat13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %pixfmt_cap.0, ptr %pixelformat13, align 4
  %57 = ptrtoint ptr %fmt12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %orig_pixmp.sroa.0.0.copyload, ptr %fmt12, align 4
  %58 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %orig_pixmp.sroa.6.0.copyload, ptr %height17, align 4
  %call41 = call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr, i32 noundef %7, ptr noundef nonnull %format)
  %59 = ptrtoint ptr %fmt12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fmt12, align 4
  %width44 = getelementptr i8, ptr %1, i32 492
  %61 = ptrtoint ptr %width44 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %width44, align 8
  %62 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height17, align 4
  %height47 = getelementptr i8, ptr %1, i32 496
  %64 = ptrtoint ptr %height47 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %height47, align 4
  %65 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %f, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %66, label %if.end31.cleanup_crit_edge [
    i32 10, label %if.then50
    i32 9, label %if.then55
  ]

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then50:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %fmt_out51 = getelementptr i8, ptr %1, i32 480
  %68 = ptrtoint ptr %fmt_out51 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call, ptr %fmt_out51, align 4
  br label %cleanup

if.then55:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %pixelformat13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pixelformat13, align 4
  %pixfmt_cap58 = getelementptr i8, ptr %1, i32 484
  %71 = ptrtoint ptr %pixfmt_cap58 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %pixfmt_cap58, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.then50, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.then50 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_try_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform, align 4
  %num_formats = getelementptr inbounds %struct.vdec_platform, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  %call = tail call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr, i32 noundef %7, ptr noundef %f)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdec_g_pixelaspect(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, i32 noundef %type, ptr nocapture noundef writeonly %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp.not = icmp eq i32 %type, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pixelaspect = getelementptr i8, ptr %1, i32 508
  %2 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pixelaspect, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %f, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #3 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %fmt_out = getelementptr i8, ptr %1, i32 480
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops1 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops1, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev2 = getelementptr inbounds %struct.amvdec_core, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %streamon_out = getelementptr i8, ptr %1, i32 568
  %10 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %streamon_out, align 4
  %streamon_cap = getelementptr i8, ptr %1, i32 564
  %12 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %streamon_cap, align 8
  %and = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %15, label %if.end5.cleanup_crit_edge [
    i32 0, label %if.then7
    i32 1, label %do.body
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %m2m_ctx = getelementptr i8, ptr %1, i32 196
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 8
  %next_buf_last.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %next_buf_last.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %next_buf_last.i, align 4
  %is_draining.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %is_draining.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_draining.i, align 1
  %has_stopped.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %has_stopped.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %has_stopped.i, align 1
  %should_stop = getelementptr i8, ptr %1, i32 580
  %22 = ptrtoint ptr %should_stop to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %should_stop, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_decoder_cmd.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_decoder_cmd, %if.then18)) #13
          to label %do.end [label %if.then18], !srcloc !112

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdec_decoder_cmd.__UNIQUE_ID_ddebug308, ptr noundef %9, ptr noundef nonnull @.str.42) #13
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %should_stop20 = getelementptr i8, ptr %1, i32 580
  %23 = ptrtoint ptr %should_stop20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %should_stop20, align 8
  %m2m_ctx21 = getelementptr i8, ptr %1, i32 196
  %24 = ptrtoint ptr %m2m_ctx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx21, align 8
  %next_buf_last.i55 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %next_buf_last.i55 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %next_buf_last.i55, align 4
  %is_draining.i56 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %is_draining.i56 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_draining.i56, align 1
  %has_stopped.i57 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %has_stopped.i57 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %has_stopped.i57, align 1
  %drain = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drain, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end
  %call3.i = tail call i64 @get_jiffies_64() #13
  %last_irq_jiffies.i = getelementptr i8, ptr %1, i32 868
  %31 = ptrtoint ptr %last_irq_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %last_irq_jiffies.i, align 8
  %add.neg5.i = add i64 %call3.i, -5
  %sub6.i = sub i64 %add.neg5.i, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub6.i)
  %cmp7.i = icmp slt i64 %sub6.i, 0
  br i1 %cmp7.i, label %if.then23.while.body.i_crit_edge, label %if.then23.vdec_wait_inactive.exit_crit_edge

if.then23.vdec_wait_inactive.exit_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_wait_inactive.exit

if.then23.while.body.i_crit_edge:                 ; preds = %if.then23
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then23.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 25) #13
  %call.i = tail call i64 @get_jiffies_64() #13
  %33 = ptrtoint ptr %last_irq_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last_irq_jiffies.i, align 8
  %add.neg.i = add i64 %call.i, -5
  %sub.i = sub i64 %add.neg.i, %34
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.vdec_wait_inactive.exit_crit_edge

while.body.i.vdec_wait_inactive.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_wait_inactive.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

vdec_wait_inactive.exit:                          ; preds = %while.body.i.vdec_wait_inactive.exit_crit_edge, %if.then23.vdec_wait_inactive.exit_crit_edge
  %35 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drain, align 4
  tail call void %36(ptr noundef %add.ptr) #13
  br label %cleanup

if.else:                                          ; preds = %do.end
  %eos_sequence = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 8
  %37 = ptrtoint ptr %eos_sequence to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %eos_sequence, align 4
  %tobool25.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %if.then26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %39 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %len, align 4, !annotation !113
  %call28 = call ptr %38(ptr noundef nonnull %len) #13
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %call30 = call i32 @esparser_queue_eos(ptr noundef %41, ptr noundef %call28, i32 noundef %43) #13
  %call3.i58 = call i64 @get_jiffies_64() #13
  %last_irq_jiffies.i59 = getelementptr i8, ptr %1, i32 868
  %44 = ptrtoint ptr %last_irq_jiffies.i59 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %last_irq_jiffies.i59, align 8
  %add.neg5.i60 = add i64 %call3.i58, -5
  %sub6.i61 = sub i64 %add.neg5.i60, %45
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub6.i61)
  %cmp7.i62 = icmp slt i64 %sub6.i61, 0
  br i1 %cmp7.i62, label %if.then26.while.body.i67_crit_edge, label %if.then26.vdec_wait_inactive.exit68_crit_edge

if.then26.vdec_wait_inactive.exit68_crit_edge:    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_wait_inactive.exit68

if.then26.while.body.i67_crit_edge:               ; preds = %if.then26
  br label %while.body.i67

while.body.i67:                                   ; preds = %while.body.i67.while.body.i67_crit_edge, %if.then26.while.body.i67_crit_edge
  call void @msleep(i32 noundef 25) #13
  %call.i63 = call i64 @get_jiffies_64() #13
  %46 = ptrtoint ptr %last_irq_jiffies.i59 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %last_irq_jiffies.i59, align 8
  %add.neg.i64 = add i64 %call.i63, -5
  %sub.i65 = sub i64 %add.neg.i64, %47
  %cmp.i66 = icmp slt i64 %sub.i65, 0
  br i1 %cmp.i66, label %while.body.i67.while.body.i67_crit_edge, label %while.body.i67.vdec_wait_inactive.exit68_crit_edge

while.body.i67.vdec_wait_inactive.exit68_crit_edge: ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %vdec_wait_inactive.exit68

while.body.i67.while.body.i67_crit_edge:          ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i67

vdec_wait_inactive.exit68:                        ; preds = %while.body.i67.vdec_wait_inactive.exit68_crit_edge, %if.then26.vdec_wait_inactive.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  br label %cleanup

cleanup:                                          ; preds = %vdec_wait_inactive.exit68, %if.else.cleanup_crit_edge, %vdec_wait_inactive.exit, %if.then7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %vdec_wait_inactive.exit68 ], [ 0, %vdec_wait_inactive.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_enum_framesizes(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %num_formats4 = getelementptr inbounds %struct.vdec_platform, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %num_formats4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_formats4, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %10 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.not.i = icmp eq i32 %9, 0
  br i1 %cmp8.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amvdec_format, ptr %7, i32 %i.09.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp2.i = icmp eq i32 %13, %11
  br i1 %cmp2.i, label %find_format.exit, label %for.cond.i

find_format.exit:                                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_format.exit.cleanup_crit_edge, label %lor.lhs.false

find_format.exit.cleanup_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %find_format.exit
  %14 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %type, align 4
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %17, align 4
  %max_width = getelementptr %struct.amvdec_format, ptr %7, i32 %i.09.i, i32 3
  %19 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_width, align 4
  %max_width6 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %max_width6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max_width6, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 144, ptr %min_height, align 4
  %max_height = getelementptr %struct.amvdec_format, ptr %7, i32 %i.09.i, i32 4
  %24 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_height, align 4
  %max_height7 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %26 = ptrtoint ptr %max_height7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_height7, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %27 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %find_format.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %find_format.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_subscribe_event(ptr noundef %fh, ptr noundef %sub) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge6
    i32 3, label %sw.bb1
  ]

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #13
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vdec_try_fmt_common(ptr nocapture noundef readonly %sess, i32 noundef %size, ptr noundef %f) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %6 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %reserved2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 11
  %7 = call ptr @memset(ptr %reserved2, i32 0, i32 7)
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 9, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %pixelformat, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp8.not.i = icmp eq i32 %size, 0
  br i1 %cmp8.not.i, label %if.then.thread, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

if.then.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 843534413, ptr %pixelformat, align 1
  br label %sw.epilog

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %size
  br i1 %exitcond.not.i, label %for.cond.i.for.body.i194.preheader_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.for.body.i194.preheader_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i194.preheader

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amvdec_format, ptr %5, i32 %i.09.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp2.i = icmp eq i32 %15, %12
  br i1 %cmp2.i, label %find_format.exit, label %for.cond.i

find_format.exit:                                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_format.exit.for.body.i194.preheader_crit_edge, label %find_format.exit.sw.epilog_crit_edge

find_format.exit.sw.epilog_crit_edge:             ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

find_format.exit.for.body.i194.preheader_crit_edge: ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i194.preheader

for.body.i194.preheader:                          ; preds = %find_format.exit.for.body.i194.preheader_crit_edge, %for.cond.i.for.body.i194.preheader_crit_edge
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 843534413, ptr %pixelformat, align 1
  br label %for.body.i194

for.cond.i190:                                    ; preds = %for.body.i194
  %inc.i188 = add nuw i32 %i.09.i191, 1
  %exitcond.not.i189 = icmp eq i32 %inc.i188, %size
  br i1 %exitcond.not.i189, label %for.cond.i190.sw.epilog_crit_edge, label %for.cond.i190.for.body.i194_crit_edge

for.cond.i190.for.body.i194_crit_edge:            ; preds = %for.cond.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i194

for.cond.i190.sw.epilog_crit_edge:                ; preds = %for.cond.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body.i194:                                    ; preds = %for.cond.i190.for.body.i194_crit_edge, %for.body.i194.preheader
  %i.09.i191 = phi i32 [ %inc.i188, %for.cond.i190.for.body.i194_crit_edge ], [ 0, %for.body.i194.preheader ]
  %arrayidx.i192 = getelementptr %struct.amvdec_format, ptr %5, i32 %i.09.i191
  %17 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %18)
  %cmp2.i193 = icmp eq i32 %18, 843534413
  br i1 %cmp2.i193, label %for.body.i194.sw.epilog_crit_edge, label %for.cond.i190

for.body.i194.sw.epilog_crit_edge:                ; preds = %for.body.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fmt_out8 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %19 = ptrtoint ptr %fmt_out8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt_out8, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %for.body.i194.sw.epilog_crit_edge, %for.cond.i190.sw.epilog_crit_edge, %find_format.exit.sw.epilog_crit_edge, %if.then.thread
  %fmt_out.0 = phi ptr [ %20, %sw.bb7 ], [ %arrayidx.i, %find_format.exit.sw.epilog_crit_edge ], [ null, %if.then.thread ], [ %arrayidx.i192, %for.body.i194.sw.epilog_crit_edge ], [ null, %for.cond.i190.sw.epilog_crit_edge ]
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %fmt, align 1
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 256)
  %max_width = getelementptr inbounds %struct.amvdec_format, ptr %fmt_out.0, i32 0, i32 3
  %24 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_width, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %height, align 1
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 144)
  %max_height = getelementptr inbounds %struct.amvdec_format, ptr %fmt_out.0, i32 0, i32 4
  %31 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_height, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %32)
  %34 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %height, align 1
  %mul.i = mul i32 %33, %26
  %add.i = add i32 %mul.i, 65535
  %and.i = and i32 %add.i, -65536
  %35 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %sw.epilog.if.end105_crit_edge [
    i32 10, label %if.then34
    i32 9, label %if.then44
  ]

sw.epilog.if.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then34:                                        ; preds = %sw.epilog
  %36 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool36.not = icmp eq i32 %37, 0
  br i1 %tobool36.not, label %if.then37, label %if.then34.if.end40_crit_edge

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %src_buffer_size = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 9
  %38 = ptrtoint ptr %src_buffer_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_buffer_size, align 4
  %40 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %plane_fmt, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then34.if.end40_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %bytesperline, align 1
  br label %if.end105.sink.split

if.then44:                                        ; preds = %sw.epilog
  %fmt_out45 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %42 = ptrtoint ptr %fmt_out45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fmt_out45, align 4
  %pixelformat46 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %pixelformat46 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %pixelformat46, align 1
  %arrayidx6.i = getelementptr %struct.amvdec_format, ptr %43, i32 0, i32 9, i32 0
  %46 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not7.i = icmp eq i32 %47, 0
  br i1 %tobool.not7.i, label %if.then44.if.then49_crit_edge, label %if.then44.for.body.i200_crit_edge

if.then44.for.body.i200_crit_edge:                ; preds = %if.then44
  br label %for.body.i200

if.then44.if.then49_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

for.cond.i199:                                    ; preds = %for.body.i200
  %inc.i197 = add i32 %i.08.i, 1
  %arrayidx.i198 = getelementptr %struct.amvdec_format, ptr %43, i32 0, i32 9, i32 %inc.i197
  %48 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i198, align 4
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %for.cond.i199.if.then49_crit_edge, label %for.cond.i199.for.body.i200_crit_edge

for.cond.i199.for.body.i200_crit_edge:            ; preds = %for.cond.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i200

for.cond.i199.if.then49_crit_edge:                ; preds = %for.cond.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

for.body.i200:                                    ; preds = %for.cond.i199.for.body.i200_crit_edge, %if.then44.for.body.i200_crit_edge
  %50 = phi i32 [ %49, %for.cond.i199.for.body.i200_crit_edge ], [ %47, %if.then44.for.body.i200_crit_edge ]
  %i.08.i = phi i32 [ %inc.i197, %for.cond.i199.for.body.i200_crit_edge ], [ 0, %if.then44.for.body.i200_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %45)
  %cmp.i = icmp eq i32 %50, %45
  br i1 %cmp.i, label %if.end52thread-pre-split, label %for.cond.i199

if.then49:                                        ; preds = %for.cond.i199.if.then49_crit_edge, %if.then44.if.then49_crit_edge
  %51 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx6.i, align 4
  %53 = ptrtoint ptr %pixelformat46 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %pixelformat46, align 1
  br label %if.end52

if.end52thread-pre-split:                         ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %pixelformat46 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %.pr = load i32, ptr %pixelformat46, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end52thread-pre-split, %if.then49
  %55 = phi i32 [ %.pr, %if.end52thread-pre-split ], [ %52, %if.then49 ]
  %arrayidx53 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %reserved54 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %56 = call ptr @memset(ptr %reserved54, i32 0, i32 12)
  %57 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %55, label %if.end52.if.end105_crit_edge [
    i32 842091854, label %if.then58
    i32 842091865, label %if.then75
  ]

if.end52.if.end105_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %and.i, ptr %plane_fmt, align 1
  %add = add i32 %26, 31
  %and = and i32 %add, -32
  %bytesperline63 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %59 = ptrtoint ptr %bytesperline63 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %and, ptr %bytesperline63, align 1
  %div186 = lshr exact i32 %and.i, 1
  %60 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %div186, ptr %arrayidx53, align 1
  %bytesperline70 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %61 = ptrtoint ptr %bytesperline70 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %and, ptr %bytesperline70, align 1
  br label %if.end105.sink.split

if.then75:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %and.i, ptr %plane_fmt, align 1
  %add79 = add i32 %26, 31
  %and80 = and i32 %add79, -32
  %bytesperline82 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %63 = ptrtoint ptr %bytesperline82 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %and80, ptr %bytesperline82, align 1
  %div83182 = lshr exact i32 %and.i, 2
  %64 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %div83182, ptr %arrayidx53, align 1
  %and88 = lshr i32 %add79, 1
  %div89183 = and i32 %and88, 2147483632
  %bytesperline91 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %65 = ptrtoint ptr %bytesperline91 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %div89183, ptr %bytesperline91, align 1
  %div92184 = lshr exact i32 %and.i, 1
  %arrayidx93 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %div92184, ptr %arrayidx93, align 1
  %bytesperline100 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %67 = ptrtoint ptr %bytesperline100 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %div89183, ptr %bytesperline100, align 1
  br label %if.end105.sink.split

if.end105.sink.split:                             ; preds = %if.then75, %if.then58, %if.end40
  %.sink = phi i8 [ 3, %if.then75 ], [ 2, %if.then58 ], [ 1, %if.end40 ]
  %fmt_out.1.ph = phi ptr [ %43, %if.then75 ], [ %43, %if.then58 ], [ %fmt_out.0, %if.end40 ]
  %num_planes101 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %68 = ptrtoint ptr %num_planes101 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink, ptr %num_planes101, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.end52.if.end105_crit_edge, %sw.epilog.if.end105_crit_edge
  %fmt_out.1 = phi ptr [ %fmt_out.0, %sw.epilog.if.end105_crit_edge ], [ %43, %if.end52.if.end105_crit_edge ], [ %fmt_out.1.ph, %if.end105.sink.split ]
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %69 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %field, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp106 = icmp eq i32 %70, 0
  br i1 %cmp106, label %if.then107, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 1, ptr %field, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.end105.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %fmt_out.1, %if.then107 ], [ %fmt_out.1, %if.end105.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esparser_queue_eos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !82, !83, !84, !85, !87, !89, !90, !92, !94, !96, !98, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__ksymtab_amvdec_get_output_size, !1, !"__ksymtab_amvdec_get_output_size", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 44, i32 1}
!2 = !{ptr @__initcall__kmod_meson_vdec__309_1125_meson_vdec_driver_init6, !3, !"__initcall__kmod_meson_vdec__309_1125_meson_vdec_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1125, i32 1}
!4 = !{ptr @__exitcall_meson_vdec_driver_exit, !3, !"__exitcall_meson_vdec_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1127, i32 1}
!7 = !{ptr @__UNIQUE_ID_author311, !8, !"__UNIQUE_ID_author311", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1128, i32 1}
!9 = !{ptr @__UNIQUE_ID_file312, !10, !"__UNIQUE_ID_file312", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1129, i32 1}
!11 = !{ptr @__UNIQUE_ID_license313, !10, !"__UNIQUE_ID_license313", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1121, i32 11}
!14 = !{ptr @meson_vdec_driver, !15, !"meson_vdec_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1117, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1008, i32 63}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1012, i32 68}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1018, i32 7}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1020, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vdec_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @vdec_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1033, i32 44}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1038, i32 43}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1046, i32 39}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1050, i32 42}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1054, i32 38}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1070, i32 3}
!42 = !{ptr @vdec_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vdec_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @vdec_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1082, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1084, i32 22}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 1097, i32 3}
!51 = !{ptr @vdec_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vdec_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @vdec_fops, !54, !"vdec_fops", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 950, i32 42}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 886, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vdec_open._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @vdec_open._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 893, i32 3}
!62 = !{ptr @vdec_open._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vdec_open._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @vdec_open.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 912, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vdec_open.__key.28, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 913, i32 2}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vdec_open.__key.30, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 914, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vdec_open.__key.32, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 915, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vdec_m2m_ops, !77, !"vdec_m2m_ops", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 159, i32 34}
!78 = !{ptr @vdec_vb2_ops, !79, !"vdec_vb2_ops", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 446, i32 29}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 319, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @vdec_start_streaming._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @vdec_start_streaming._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 340, i32 26}
!87 = !{ptr @vdec_init_ctrls._key, !88, !"_key", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 852, i32 8}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vdec_ioctl_ops, !91, !"vdec_ioctl_ops", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 787, i32 36}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 460, i32 21}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 461, i32 25}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 740, i32 2}
!98 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vdec_decoder_cmd.__UNIQUE_ID_ddebug308, !97, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!101 = !{ptr @vdec_dt_match, !102, !"vdec_dt_match", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/meson/vdec/vdec.c", i32 977, i32 34}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148320512, i64 2148320517, i64 2148320530, i64 2148320574, i64 2148320608, i64 2148320629}
!113 = !{!"auto-init"}
