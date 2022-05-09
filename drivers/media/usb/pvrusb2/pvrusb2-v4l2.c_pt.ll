; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.pvr2_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pvr2_v4l2 = type { %struct.pvr2_channel, ptr, ptr }
%struct.pvr2_context = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pvr2_context_stream, %struct.mutex, i32, i32, i32, ptr }
%struct.pvr2_context_stream = type { ptr, ptr }
%struct.pvr2_v4l2_dev = type { %struct.video_device, ptr, ptr, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pvr2_v4l2_fh = type { %struct.v4l2_fh, %struct.pvr2_channel, ptr, ptr, ptr, %struct.wait_queue_head, i32, ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_ext_controls = type { %union.anon.102, i32, i32, i32, [1 x i32], ptr }
%union.anon.102 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.103 }>
%union.anon.103 = type { i64 }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.104, i32 }>
%union.anon.104 = type { i64, [24 x i8] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__param_str_video_nr = internal constant [17 x i8] c"pvrusb2.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 20, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype297 = internal constant [39 x i8] c"pvrusb2.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr298 = internal constant [58 x i8] c"pvrusb2.parm=video_nr:Offset for device's video dev minor\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [17 x i8] c"pvrusb2.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 20, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype299 = internal constant [39 x i8] c"pvrusb2.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr300 = internal constant [58 x i8] c"pvrusb2.parm=radio_nr:Offset for device's radio dev minor\00", section ".modinfo", align 1
@__param_str_vbi_nr = internal constant [15 x i8] c"pvrusb2.vbi_nr\00", align 1
@__param_arr_vbi_nr = internal constant %struct.kparam_array { i32 20, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_nr }, align 4
@__param_vbi_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vbi_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_nrtype301 = internal constant [37 x i8] c"pvrusb2.parmtype=vbi_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_nr302 = internal constant [54 x i8] c"pvrusb2.parm=vbi_nr:Offset for device's vbi dev minor\00", section ".modinfo", align 1
@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_v4l2_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pvrusb2: Creating pvr2_v4l2 id=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2_v4l2_create\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-v4l2.c\00", [55 x i8] zeroinitializer }, align 32
@pvr2_v4l2_create._entry_ptr = internal global ptr @pvr2_v4l2_create._entry, section ".printk_index", align 4
@pvr2_v4l2_create._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pvrusb2: Failure creating pvr2_v4l2 id=%p\0A\00", [51 x i8] zeroinitializer }, align 32
@pvr2_v4l2_create._entry_ptr.5 = internal global ptr @pvr2_v4l2_create._entry.3, section ".printk_index", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@video_nr = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [48 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [48 x i8] zeroinitializer }, align 32
@vbi_nr = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pvr2_v4l2_internal_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016pvrusb2: pvr2_v4l2 internal_check exit-empty id=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pvr2_v4l2_internal_check\00", [39 x i8] zeroinitializer }, align 32
@pvr2_v4l2_internal_check._entry_ptr = internal global ptr @pvr2_v4l2_internal_check._entry, section ".printk_index", align 4
@pvr2_v4l2_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013pvrusb2: Failed to set up pvrusb2 v4l video dev due to missing stream instance\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_v4l2_dev_init\00", [45 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_init._entry_ptr = internal global ptr @pvr2_v4l2_dev_init._entry, section ".printk_index", align 4
@pvr2_v4l2_dev_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013pvrusb2: Failed to set up pvrusb2 v4l dev due to unrecognized config\0A\00", [56 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_init._entry_ptr.12 = internal global ptr @pvr2_v4l2_dev_init._entry.10, section ".printk_index", align 4
@vdev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @vdev_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr null, ptr null, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@pvr2_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @pvr2_querycap, ptr @pvr2_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2_streamon, ptr @pvr2_streamoff, ptr @pvr2_g_std, ptr @pvr2_s_std, ptr @pvr2_querystd, ptr @pvr2_enum_input, ptr @pvr2_g_input, ptr @pvr2_s_input, ptr null, ptr null, ptr null, ptr @pvr2_queryctrl, ptr null, ptr @pvr2_g_ctrl, ptr @pvr2_s_ctrl, ptr @pvr2_g_ext_ctrls, ptr @pvr2_s_ext_ctrls, ptr @pvr2_try_ext_ctrls, ptr @pvr2_querymenu, ptr @pvr2_enumaudio, ptr @pvr2_g_audio, ptr @pvr2_s_audio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2_g_pixelaspect, ptr @pvr2_g_selection, ptr @pvr2_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvr2_g_tuner, ptr @pvr2_s_tuner, ptr @pvr2_g_frequency, ptr @pvr2_s_frequency, ptr null, ptr null, ptr @pvr2_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013pvrusb2: Failed to register pvrusb2 v4l device\0A\00", [46 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_init._entry_ptr.15 = internal global ptr @pvr2_v4l2_dev_init._entry.13, section ".printk_index", align 4
@pvr2_v4l2_dev_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: registered device %s [%s]\0A\00", [58 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_init._entry_ptr.18 = internal global ptr @pvr2_v4l2_dev_init._entry.16, section ".printk_index", align 4
@vdev_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @pvr2_v4l2_read, ptr null, ptr @pvr2_v4l2_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @pvr2_v4l2_open, ptr @pvr2_v4l2_release }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016pvrusb2: pvr2_v4l2_open\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pvr2_v4l2_open\00", [17 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry_ptr = internal global ptr @pvr2_v4l2_open._entry, section ".printk_index", align 4
@pvr2_v4l2_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pvrusb2: pvr2_v4l2_open: hardware not ready\0A\00", [49 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry_ptr.26 = internal global ptr @pvr2_v4l2_open._entry.24, section ".printk_index", align 4
@pvr2_v4l2_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fhp->wait_data\00", [16 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016pvrusb2: Creating pvr_v4l2_fh id=%p\0A\00", [57 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry_ptr.30 = internal global ptr @pvr2_v4l2_open._entry.28, section ".printk_index", align 4
@pvr2_v4l2_open._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pvrusb2: Destroying pvr_v4l2_fh id=%p (input mask error)\0A\00", [36 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry_ptr.33 = internal global ptr @pvr2_v4l2_open._entry.31, section ".printk_index", align 4
@pvr2_v4l2_open._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016pvrusb2: Destroying pvr_v4l2_fh id=%p (input map failure)\0A\00", [35 x i8] zeroinitializer }, align 32
@pvr2_v4l2_open._entry_ptr.36 = internal global ptr @pvr2_v4l2_open._entry.34, section ".printk_index", align 4
@pvr2_v4l2_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016pvrusb2: pvr2_v4l2_release\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_v4l2_release\00", [46 x i8] zeroinitializer }, align 32
@pvr2_v4l2_release._entry_ptr = internal global ptr @pvr2_v4l2_release._entry, section ".printk_index", align 4
@pvr2_v4l2_release._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pvrusb2: Destroying pvr_v4l2_fh id=%p\0A\00", [55 x i8] zeroinitializer }, align 32
@pvr2_v4l2_release._entry_ptr.41 = internal global ptr @pvr2_v4l2_release._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pvrusb2\00", [24 x i8] zeroinitializer }, align 32
@pvr_format = internal constant { <{ { i32, { %struct.v4l2_pix_format, [152 x i8] } }, { i32, { %struct.v4l2_vbi_format, [156 x i8] } } }>, [104 x i8] } { <{ { i32, { %struct.v4l2_pix_format, [152 x i8] } }, { i32, { %struct.v4l2_vbi_format, [156 x i8] } } }> <{ { i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 1, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format { i32 720, i32 576, i32 1195724877, i32 4, i32 0, i32 32768, i32 0, i32 0, i32 0, %union.anon.96 zeroinitializer, i32 0, i32 0 }, [152 x i8] undef } }, { i32, { %struct.v4l2_vbi_format, [156 x i8] } } { i32 4, { %struct.v4l2_vbi_format, [156 x i8] } { %struct.v4l2_vbi_format { i32 27000000, i32 248, i32 1443, i32 1497715271, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, i32 0, [2 x i32] zeroinitializer }, [156 x i8] undef } } }>, [104 x i8] zeroinitializer }, align 32
@pvr2_queryctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: QUERYCTRL id=0x%x not implemented here\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pvr2_queryctrl\00", [17 x i8] zeroinitializer }, align 32
@pvr2_queryctrl._entry_ptr = internal global ptr @pvr2_queryctrl._entry, section ".printk_index", align 4
@pvr2_queryctrl._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: QUERYCTRL id=0x%x mapping name=%s (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@pvr2_queryctrl._entry_ptr.48 = internal global ptr @pvr2_queryctrl._entry.46, section ".printk_index", align 4
@pvr2_queryctrl._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: QUERYCTRL id=0x%x name=%s not mappable\0A\00", [45 x i8] zeroinitializer }, align 32
@pvr2_queryctrl._entry_ptr.51 = internal global ptr @pvr2_queryctrl._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PVRUSB2 Audio\00", [18 x i8] zeroinitializer }, align 32
@pvr2_v4l2_destroy_no_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016pvrusb2: Destroying pvr2_v4l2 id=%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pvr2_v4l2_destroy_no_lock\00", [38 x i8] zeroinitializer }, align 32
@pvr2_v4l2_destroy_no_lock._entry_ptr = internal global ptr @pvr2_v4l2_destroy_no_lock._entry, section ".printk_index", align 4
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pvrusb2: unregistered device %s [%s]\00", [59 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pvr2_v4l2_dev_destroy\00", [42 x i8] zeroinitializer }, align 32
@pvr2_v4l2_dev_destroy._entry_ptr = internal global ptr @pvr2_v4l2_dev_destroy._entry, section ".printk_index", align 4
@switch.table.pvr2_enum_input = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 2, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1268, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1285, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 61, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 64, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"vbi_nr\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 67, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 899, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1202, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1222, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"vdev_template\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1175, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"pvr2_ioctl_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 790, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1248, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1252, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [10 x i8] c"vdev_fops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1165, i32 42 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 230, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 214, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 174, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 961, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 964, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 975, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 978, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 996, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1013, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 913, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 929, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 114, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"pvr_format\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 74, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 517, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 523, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 551, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 266, i32 21 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 875, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 835, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [44 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 850, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [29 x i8] c"switch.table.pvr2_enum_input\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_radio_nr300, ptr @__UNIQUE_ID_radio_nrtype299, ptr @__UNIQUE_ID_vbi_nr302, ptr @__UNIQUE_ID_vbi_nrtype301, ptr @__UNIQUE_ID_video_nr298, ptr @__UNIQUE_ID_video_nrtype297, ptr @__param_radio_nr, ptr @__param_vbi_nr, ptr @__param_video_nr, ptr @pvr2_queryctrl._entry, ptr @pvr2_queryctrl._entry.46, ptr @pvr2_queryctrl._entry.49, ptr @pvr2_queryctrl._entry_ptr, ptr @pvr2_queryctrl._entry_ptr.48, ptr @pvr2_queryctrl._entry_ptr.51, ptr @pvr2_v4l2_create._entry, ptr @pvr2_v4l2_create._entry.3, ptr @pvr2_v4l2_create._entry_ptr, ptr @pvr2_v4l2_create._entry_ptr.5, ptr @pvr2_v4l2_destroy_no_lock._entry, ptr @pvr2_v4l2_destroy_no_lock._entry_ptr, ptr @pvr2_v4l2_dev_destroy._entry, ptr @pvr2_v4l2_dev_destroy._entry_ptr, ptr @pvr2_v4l2_dev_init._entry, ptr @pvr2_v4l2_dev_init._entry.10, ptr @pvr2_v4l2_dev_init._entry.13, ptr @pvr2_v4l2_dev_init._entry.16, ptr @pvr2_v4l2_dev_init._entry_ptr, ptr @pvr2_v4l2_dev_init._entry_ptr.12, ptr @pvr2_v4l2_dev_init._entry_ptr.15, ptr @pvr2_v4l2_dev_init._entry_ptr.18, ptr @pvr2_v4l2_internal_check._entry, ptr @pvr2_v4l2_internal_check._entry_ptr, ptr @pvr2_v4l2_open._entry, ptr @pvr2_v4l2_open._entry.24, ptr @pvr2_v4l2_open._entry.28, ptr @pvr2_v4l2_open._entry.31, ptr @pvr2_v4l2_open._entry.34, ptr @pvr2_v4l2_open._entry_ptr, ptr @pvr2_v4l2_open._entry_ptr.26, ptr @pvr2_v4l2_open._entry_ptr.30, ptr @pvr2_v4l2_open._entry_ptr.33, ptr @pvr2_v4l2_open._entry_ptr.36, ptr @pvr2_v4l2_release._entry, ptr @pvr2_v4l2_release._entry.39, ptr @pvr2_v4l2_release._entry_ptr, ptr @pvr2_v4l2_release._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @video_nr, ptr @radio_nr, ptr @vbi_nr, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @vdev_template, ptr @pvr2_ioctl_ops, ptr @.str.14, ptr @.str.17, ptr @vdev_fops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @pvr2_v4l2_open.__key, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @pvr_format, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.pvr2_enum_input], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_create._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_nr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_internal_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_dev_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_dev_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_dev_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdev_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_open._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_open._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_release._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr_format to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_queryctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_queryctrl._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_queryctrl._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_destroy_no_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_v4l2_dev_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_enum_input to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_v4l2_create(ptr noundef %mnp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pvr2_channel_init(ptr noundef nonnull %call7.i.i, ptr noundef %mnp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.do.end7_crit_edge, label %do.end

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.end.do.end7_crit_edge
  %check_func = getelementptr inbounds %struct.pvr2_channel, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %check_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pvr2_v4l2_internal_check, ptr %check_func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1376) #12
  %dev_video = getelementptr inbounds %struct.pvr2_v4l2, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev_video to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i55, ptr %dev_video, align 4
  %tobool11.not = icmp eq ptr %call7.i.i55, null
  br i1 %tobool11.not, label %do.end7.do.body27_crit_edge, label %if.end13

do.end7.do.body27_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end13:                                         ; preds = %do.end7
  tail call fastcc void @pvr2_v4l2_dev_init(ptr noundef nonnull %call7.i.i55, ptr noundef nonnull %call7.i.i, i32 noundef 0)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7.i.i, align 8
  %hdw = getelementptr inbounds %struct.pvr2_context, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdw, align 4
  %call16 = tail call i32 @pvr2_hdw_get_input_available(ptr noundef %8) #9
  %and17 = and i32 %call16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.then19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1376) #12
  %dev_radio = getelementptr inbounds %struct.pvr2_v4l2, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %dev_radio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i56, ptr %dev_radio, align 8
  %tobool22.not = icmp eq ptr %call7.i.i56, null
  br i1 %tobool22.not, label %if.then19.do.body27_crit_edge, label %if.end24

if.then19.do.body27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_init(ptr noundef nonnull %call7.i.i56, ptr noundef nonnull %call7.i.i, i32 noundef 2)
  br label %cleanup

do.body27:                                        ; preds = %if.then19.do.body27_crit_edge, %do.end7.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %11 = load i32, ptr @pvrusb2_debug, align 4
  %and28 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end38_crit_edge, label %do.end33

do.body27.do.end38_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %call7.i.i) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %do.body27.do.end38_crit_edge
  %12 = ptrtoint ptr %dev_video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_video, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end38.if.end.i_crit_edge, label %if.then.i

do.end38.if.end.i_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_destroy(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %dev_video to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dev_video, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end38.if.end.i_crit_edge
  %dev_radio.i = getelementptr inbounds %struct.pvr2_v4l2, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev_radio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_radio.i, align 8
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then4.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_destroy(ptr noundef nonnull %16) #9
  %17 = ptrtoint ptr %dev_radio.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dev_radio.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.end.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %18 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge, label %do.end.i

do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_destroy_no_lock.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %call7.i.i) #13
  br label %pvr2_v4l2_destroy_no_lock.exit

pvr2_v4l2_destroy_no_lock.exit:                   ; preds = %do.end.i, %do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge
  tail call void @pvr2_channel_done(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %pvr2_v4l2_destroy_no_lock.exit, %if.end24, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %pvr2_v4l2_destroy_no_lock.exit ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end24 ], [ %call7.i.i, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_channel_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_v4l2_internal_check(ptr noundef %chp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chp, align 4
  %disconnect_flag = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %disconnect_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disconnect_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_video = getelementptr inbounds %struct.pvr2_v4l2, ptr %chp, i32 0, i32 1
  %4 = ptrtoint ptr %dev_video to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_video, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.pvr2_v4l2_dev_disassociate_parent.exit_crit_edge, label %if.end.i

if.end.pvr2_v4l2_dev_disassociate_parent.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_dev_disassociate_parent.exit

if.end.i:                                         ; preds = %if.end
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.pvr2_v4l2_dev_disassociate_parent.exit_crit_edge, label %if.end3.i

if.end.i.pvr2_v4l2_dev_disassociate_parent.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_dev_disassociate_parent.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %7, align 4
  %dev8.i = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5
  %call.i = tail call i32 @device_move(ptr noundef %dev8.i, ptr noundef null, i32 noundef 0) #9
  br label %pvr2_v4l2_dev_disassociate_parent.exit

pvr2_v4l2_dev_disassociate_parent.exit:           ; preds = %if.end3.i, %if.end.i.pvr2_v4l2_dev_disassociate_parent.exit_crit_edge, %if.end.pvr2_v4l2_dev_disassociate_parent.exit_crit_edge
  %dev_radio = getelementptr inbounds %struct.pvr2_v4l2, ptr %chp, i32 0, i32 2
  %11 = ptrtoint ptr %dev_radio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_radio, align 4
  %tobool.not.i27 = icmp eq ptr %12, null
  br i1 %tobool.not.i27, label %pvr2_v4l2_dev_disassociate_parent.exit.pvr2_v4l2_dev_disassociate_parent.exit34_crit_edge, label %if.end.i30

pvr2_v4l2_dev_disassociate_parent.exit.pvr2_v4l2_dev_disassociate_parent.exit34_crit_edge: ; preds = %pvr2_v4l2_dev_disassociate_parent.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_dev_disassociate_parent.exit34

if.end.i30:                                       ; preds = %pvr2_v4l2_dev_disassociate_parent.exit
  %v4l2_dev.i28 = getelementptr inbounds %struct.video_device, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %v4l2_dev.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_dev.i28, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool1.not.i29 = icmp eq ptr %16, null
  br i1 %tobool1.not.i29, label %if.end.i30.pvr2_v4l2_dev_disassociate_parent.exit34_crit_edge, label %if.end3.i33

if.end.i30.pvr2_v4l2_dev_disassociate_parent.exit34_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_dev_disassociate_parent.exit34

if.end3.i33:                                      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %14, align 4
  %dev8.i31 = getelementptr inbounds %struct.video_device, ptr %12, i32 0, i32 5
  %call.i32 = tail call i32 @device_move(ptr noundef %dev8.i31, ptr noundef null, i32 noundef 0) #9
  br label %pvr2_v4l2_dev_disassociate_parent.exit34

pvr2_v4l2_dev_disassociate_parent.exit34:         ; preds = %if.end3.i33, %if.end.i30.pvr2_v4l2_dev_disassociate_parent.exit34_crit_edge, %pvr2_v4l2_dev_disassociate_parent.exit.pvr2_v4l2_dev_disassociate_parent.exit34_crit_edge
  %18 = ptrtoint ptr %dev_video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_video, align 4
  %fh_list = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %fh_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %fh_list, align 4
  %cmp.i.not = icmp eq ptr %21, %fh_list
  br i1 %cmp.i.not, label %lor.lhs.false, label %pvr2_v4l2_dev_disassociate_parent.exit34.do.body_crit_edge

pvr2_v4l2_dev_disassociate_parent.exit34.do.body_crit_edge: ; preds = %pvr2_v4l2_dev_disassociate_parent.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %pvr2_v4l2_dev_disassociate_parent.exit34
  %22 = ptrtoint ptr %dev_radio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_radio, align 4
  %tobool4.not = icmp eq ptr %23, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end19_crit_edge, label %land.lhs.true

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %fh_list7 = getelementptr inbounds %struct.video_device, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %fh_list7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %fh_list7, align 4
  %cmp.i35.not = icmp eq ptr %25, %fh_list7
  br i1 %cmp.i35.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %pvr2_v4l2_dev_disassociate_parent.exit34.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %26 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %chp) #13
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %lor.lhs.false.if.end19_crit_edge
  %tobool.not.i37 = icmp eq ptr %19, null
  br i1 %tobool.not.i37, label %if.end19.if.end.i38_crit_edge, label %if.then.i

if.end19.if.end.i38_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i38

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_destroy(ptr noundef nonnull %19) #9
  %27 = ptrtoint ptr %dev_video to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dev_video, align 4
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then.i, %if.end19.if.end.i38_crit_edge
  %28 = ptrtoint ptr %dev_radio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_radio, align 4
  %tobool3.not.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i, label %if.end.i38.do.body.i_crit_edge, label %if.then4.i

if.end.i38.do.body.i_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then4.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_destroy(ptr noundef nonnull %29) #9
  %30 = ptrtoint ptr %dev_radio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %dev_radio, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.end.i38.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %31 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge, label %do.end.i

do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_destroy_no_lock.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %chp) #13
  br label %pvr2_v4l2_destroy_no_lock.exit

pvr2_v4l2_destroy_no_lock.exit:                   ; preds = %do.end.i, %do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge
  tail call void @pvr2_channel_done(ptr noundef %chp) #9
  tail call void @kfree(ptr noundef %chp) #9
  br label %cleanup

cleanup:                                          ; preds = %pvr2_v4l2_destroy_no_lock.exit, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_v4l2_dev_init(ptr noundef %dip, ptr noundef %vp, i32 noundef %v4l_type) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4lp = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 1
  %0 = ptrtoint ptr %v4lp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vp, ptr %v4lp, align 8
  %1 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vp, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdw1, align 4
  %v4l_type2 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 4
  %5 = ptrtoint ptr %v4l_type2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %v4l_type, ptr %v4l_type2, align 4
  %6 = zext i32 %v4l_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %v4l_type, label %do.end20 [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb10
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vp, align 4
  %video_stream = getelementptr inbounds %struct.pvr2_context, ptr %8, i32 0, i32 7
  %stream = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 2
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %video_stream, ptr %stream, align 4
  %config = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 3
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %config, align 8
  %minor_type = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 5
  %11 = ptrtoint ptr %minor_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %minor_type, align 8
  %tobool.not = icmp eq ptr %video_stream, null
  br i1 %tobool.not, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp, align 4
  %video_stream13 = getelementptr inbounds %struct.pvr2_context, ptr %13, i32 0, i32 7
  %stream14 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 2
  %14 = ptrtoint ptr %stream14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %video_stream13, ptr %stream14, align 4
  br label %sw.epilog.sink.split

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb10, %entry.sw.epilog.sink.split_crit_edge
  %.sink110 = phi i32 [ 1, %sw.bb10 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %caps.0.ph = phi i32 [ 17104896, %sw.bb10 ], [ 16842768, %entry.sw.epilog.sink.split_crit_edge ]
  %nr_ptr.0.ph = phi ptr [ @radio_nr, %sw.bb10 ], [ @vbi_nr, %entry.sw.epilog.sink.split_crit_edge ]
  %config15 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 3
  %15 = ptrtoint ptr %config15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink110, ptr %config15, align 8
  %minor_type16 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 5
  %16 = ptrtoint ptr %minor_type16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %v4l_type, ptr %minor_type16, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge
  %caps.0 = phi i32 [ 16973825, %sw.bb.sw.epilog_crit_edge ], [ %caps.0.ph, %sw.epilog.sink.split ]
  %nr_ptr.0 = phi ptr [ @video_nr, %sw.bb.sw.epilog_crit_edge ], [ %nr_ptr.0.ph, %sw.epilog.sink.split ]
  %17 = call ptr @memcpy(ptr %dip, ptr @vdev_template, i32 1352)
  %release = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 23
  %18 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pvr2_video_device_release, ptr %release, align 8
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 24
  %19 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pvr2_ioctl_ops, ptr %ioctl_ops, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 4
  %20 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %caps.0, ptr %device_caps, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val, align 4, !annotation !145
  %call26 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %4, i32 noundef 3) #9
  %call27 = call i32 @pvr2_ctrl_get_value(ptr noundef %call26, ptr noundef nonnull %val) #9
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv = sext i32 %23 to i64
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 22
  %24 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %tvnorms, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  %call29 = call i32 @pvr2_hdw_get_unit_number(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call29)
  %25 = icmp ult i32 %call29, 20
  br i1 %25, label %if.then35, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i32, ptr %nr_ptr.0, i32 %call29
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %sw.epilog.if.end36_crit_edge
  %mindevnum.0 = phi i32 [ %27, %if.then35 ], [ -1, %sw.epilog.if.end36_crit_edge ]
  call void @pvr2_hdw_set_v4l2_dev(ptr noundef %4, ptr noundef %dip) #9
  %28 = ptrtoint ptr %v4l_type2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v4l_type2, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 3
  %30 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fops.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %dip, i32 noundef %29, i32 noundef %mindevnum.0, i32 noundef 1, ptr noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41 = icmp slt i32 %call.i, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.end36.do.end58_crit_edge

if.end36.do.end58_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

land.lhs.true43:                                  ; preds = %if.end36
  %34 = ptrtoint ptr %v4l_type2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v4l_type2, align 4
  %36 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fops.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call.i109 = call i32 @__video_register_device(ptr noundef %dip, i32 noundef %35, i32 noundef -1, i32 noundef 1, ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp47 = icmp slt i32 %call.i109, 0
  br i1 %cmp47, label %do.end52, label %land.lhs.true43.do.end58_crit_edge

land.lhs.true43.do.end58_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

do.end52:                                         ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end52, %land.lhs.true43.do.end58_crit_edge, %if.end36.do.end58_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end58.video_device_node_name.exit_crit_edge

do.end58.video_device_node_name.exit_crit_edge:   ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 5
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end58.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %do.end58.video_device_node_name.exit_crit_edge ]
  %config62 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 3
  %44 = ptrtoint ptr %config62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %config62, align 8
  %call63 = call ptr @pvr2_config_get_name(i32 noundef %45) #9
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i, ptr noundef %call63) #13
  %minor_type65 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 5
  %46 = ptrtoint ptr %minor_type65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minor_type65, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 15
  %48 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %minor, align 8
  call void @pvr2_hdw_v4l_store_minor_number(ptr noundef %4, i32 noundef %47, i32 noundef %49) #9
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end20, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_input_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_video_device_release(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_unit_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_set_v4l2_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_config_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_v4l_store_minor_number(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_v4l2_read(ptr nocapture noundef readonly %file, ptr noundef %buff, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fw_mode_flag = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fw_mode_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_mode_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end28, label %if.then

if.then:                                          ; preds = %entry
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw1, align 4
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 4096) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then.cleanup78_crit_edge, label %while.cond.preheader

if.then.cleanup78_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

while.cond.preheader:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool4.not127 = icmp eq i32 %count, 0
  br i1 %tobool4.not127, label %while.cond.preheader.while.end_crit_edge, label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %conv = trunc i64 %9 to i32
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.preheader
  %buff.addr.0131 = phi ptr [ %add.ptr, %if.end19.while.body_crit_edge ], [ %buff, %while.body.preheader ]
  %offs.0130 = phi i32 [ %add, %if.end19.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %tcnt.0129 = phi i32 [ %add20, %if.end19.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %count.addr.0128 = phi i32 [ %sub, %if.end19.while.body_crit_edge ], [ %count, %while.body.preheader ]
  %11 = tail call i32 @llvm.umin.i32(i32 %count.addr.0128, i32 4096)
  %call8 = tail call i32 @pvr2_hdw_cpufw_get(ptr noundef %7, i32 noundef %offs.0130, ptr noundef nonnull %call7.i, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %while.body.while.end_crit_edge, label %if.end12

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end12:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool13.not = icmp eq i32 %call8, 0
  br i1 %tobool13.not, label %if.end12.while.end_crit_edge, label %if.end15

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call8)
  %cmp1.i.i = icmp ugt i32 %call8, 4096
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !146

if.then3.i.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef 4096, i32 noundef %call8) #9
  br label %while.end

if.then.i.i.i:                                    ; preds = %if.end15
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %call8, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.while.end_crit_edge, label %if.end.i.i

if.then.i.i.i.while.end_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buff.addr.0131, i32 %call8, i32 -1226833920) #14, !srcloc !147
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %call8) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buff.addr.0131, ptr noundef nonnull %call7.i, i32 noundef %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool17.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool17.not, label %if.end19, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end19:                                         ; preds = %copy_to_user.exit
  %add = add i32 %call8, %offs.0130
  %add20 = add i32 %call8, %tcnt.0129
  %add.ptr = getelementptr i8, ptr %buff.addr.0131, i32 %call8
  %sub = sub i32 %count.addr.0128, %call8
  %conv21124 = zext i32 %call8 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add22 = add i64 %14, %conv21124
  store i64 %add22, ptr %ppos, align 8
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i.while.end_crit_edge, %if.then.i.i.i.while.end_crit_edge, %if.then3.i.i, %if.end12.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tcnt.1 = phi i32 [ -14, %if.then3.i.i ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add20, %if.end19.while.end_crit_edge ], [ %tcnt.0129, %if.end12.while.end_crit_edge ], [ %call8, %while.body.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %if.then.i.i.i.while.end_crit_edge ], [ -14, %if.end.i.i.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup78

if.end28:                                         ; preds = %entry
  %rhp = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rhp, align 4
  %tobool29.not = icmp eq ptr %16, null
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  %call31 = tail call fastcc i32 @pvr2_v4l2_iosetup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end35_crit_edge, label %if.then30.cleanup78_crit_edge

if.then30.cleanup78_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait_data = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %if.end71.for.cond_crit_edge, %if.end35
  %17 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rhp, align 4
  %call37 = call i32 @pvr2_ioread_read(ptr noundef %18, ptr noundef %buff, i32 noundef %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call37)
  %cmp42.not = icmp eq i32 %call37, -11
  br i1 %cmp42.not, label %if.end45, label %for.cond.cleanup78_crit_edge

for.cond.cleanup78_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

if.end45:                                         ; preds = %for.cond
  %19 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_flags, align 4
  %and = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end48, label %if.end45.cleanup78_crit_edge

if.end45.cleanup78_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

if.end48:                                         ; preds = %if.end45
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1131) #9
  %21 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rhp, align 4
  %call53 = call i32 @pvr2_ioread_avail(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53)
  %cmp54 = icmp sgt i32 %call53, -1
  br i1 %cmp54, label %if.end48.if.end71_crit_edge, label %if.then56

if.end48.if.end71_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then56:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call59137 = call i32 @prepare_to_wait_event(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %24 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rhp, align 4
  %call61138 = call i32 @pvr2_ioread_avail(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call61138)
  %cmp62139 = icmp sgt i32 %call61138, -1
  br i1 %cmp62139, label %if.then56.for.end_crit_edge, label %if.then56.if.end65_crit_edge

if.then56.if.end65_crit_edge:                     ; preds = %if.then56
  br label %if.end65

if.then56.for.end_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end65:                                         ; preds = %cleanup69.if.end65_crit_edge, %if.then56.if.end65_crit_edge
  %call59140 = phi i32 [ %call59, %cleanup69.if.end65_crit_edge ], [ %call59137, %if.then56.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59140)
  %tobool66.not = icmp eq i32 %call59140, 0
  br i1 %tobool66.not, label %cleanup69, label %if.end65.__out_crit_edge

if.end65.__out_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup69:                                        ; preds = %if.end65
  call void @schedule() #9
  %call59 = call i32 @prepare_to_wait_event(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %26 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rhp, align 4
  %call61 = call i32 @pvr2_ioread_avail(ptr noundef %27) #9
  %cmp62 = icmp sgt i32 %call61, -1
  br i1 %cmp62, label %cleanup69.for.end_crit_edge, label %cleanup69.if.end65_crit_edge

cleanup69.if.end65_crit_edge:                     ; preds = %cleanup69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

cleanup69.for.end_crit_edge:                      ; preds = %cleanup69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup69.for.end_crit_edge, %if.then56.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end65.__out_crit_edge
  %__ret57.1119 = phi i32 [ 0, %for.end ], [ %call59140, %if.end65.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end71

if.end71:                                         ; preds = %__out, %if.end48.if.end71_crit_edge
  %__ret.0 = phi i32 [ 0, %if.end48.if.end71_crit_edge ], [ %__ret57.1119, %__out ]
  %cmp73 = icmp slt i32 %__ret.0, 0
  br i1 %cmp73, label %if.end71.cleanup78_crit_edge, label %if.end71.for.cond_crit_edge

if.end71.for.cond_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end71.cleanup78_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

cleanup78:                                        ; preds = %if.end71.cleanup78_crit_edge, %if.end45.cleanup78_crit_edge, %for.cond.cleanup78_crit_edge, %if.then30.cleanup78_crit_edge, %while.end, %if.then.cleanup78_crit_edge
  %retval.1 = phi i32 [ %tcnt.1, %while.end ], [ -12, %if.then.cleanup78_crit_edge ], [ %call31, %if.then30.cleanup78_crit_edge ], [ %__ret.0, %if.end71.cleanup78_crit_edge ], [ -11, %if.end45.cleanup78_crit_edge ], [ %call37, %for.cond.cleanup78_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_v4l2_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fw_mode_flag = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fw_mode_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_mode_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rhp = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rhp, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @pvr2_v4l2_iosetup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %wait_data = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end6.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end6.poll_wait.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %wait_data, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %file, ptr noundef nonnull %wait_data, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end6.poll_wait.exit_crit_edge
  %8 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rhp, align 4
  %call8 = tail call i32 @pvr2_ioread_avail(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.inv = icmp slt i32 %call8, 0
  %spec.select = select i1 %cmp.inv, i32 0, i32 65
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %poll_wait.exit ], [ 65, %entry.cleanup_crit_edge ], [ 8, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_v4l2_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #9
  %v4lp = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %v4lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4lp, align 8
  %hdw1 = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %4 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call i32 @pvr2_hdw_dev_ok(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body10, label %if.end22

do.body10:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %5 = load i32, ptr @pvrusb2_debug, align 4
  %and11 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %do.end16

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end22:                                         ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 296) #12
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call) #9
  %wait_data = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait_data, ptr noundef nonnull @.str.27, ptr noundef nonnull @pvr2_v4l2_open.__key) #9
  %pdi = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pdi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %pdi, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and31 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end26.do.end41_crit_edge, label %do.end36

if.end26.do.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %call7.i.i) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %if.end26.do.end41_crit_edge
  %channel42 = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @pvr2_channel_init(ptr noundef %channel42, ptr noundef %10) #9
  %v4l_type = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %v4l_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v4l_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  %. = select i1 %cmp, i32 16, i32 29
  %call47 = tail call i32 @pvr2_channel_limit_inputs(ptr noundef %channel42, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end64, label %if.then49

if.then49:                                        ; preds = %do.end41
  tail call void @pvr2_channel_done(ptr noundef %channel42) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %13 = load i32, ptr @pvrusb2_debug, align 4
  %and52 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then49.do.end62_crit_edge, label %do.end57

if.then49.do.end62_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

do.end57:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %call7.i.i) #13
  br label %do.end62

do.end62:                                         ; preds = %do.end57, %if.then49.do.end62_crit_edge
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end64:                                         ; preds = %do.end41
  %call65 = tail call i32 @pvr2_hdw_get_input_available(ptr noundef %3) #9
  %and66 = and i32 %call65, %.
  %14 = and i32 %and66, 1
  %15 = lshr i32 %and66, 2
  %16 = and i32 %15, 1
  %spec.select.2 = add nuw nsw i32 %16, %14
  %17 = lshr i32 %and66, 3
  %18 = and i32 %17, 1
  %spec.select.3 = add nuw nsw i32 %18, %spec.select.2
  %19 = lshr i32 %call65, 4
  %20 = and i32 %19, 1
  %spec.select.4 = add nuw nsw i32 %20, %spec.select.3
  %input_cnt73 = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %input_cnt73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.4, ptr %input_cnt73, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.4, i32 noundef 3520) #15
  %input_map = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %input_map to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i, ptr %input_map, align 8
  %tobool76.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool76.not, label %if.then77, label %if.end64.for.body95_crit_edge

if.end64.for.body95_crit_edge:                    ; preds = %if.end64
  br label %for.body95

if.then77:                                        ; preds = %if.end64
  tail call void @pvr2_channel_done(ptr noundef %channel42) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %23 = load i32, ptr @pvrusb2_debug, align 4
  %and80 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then77.do.end90_crit_edge, label %do.end85

if.then77.do.end90_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end90

do.end85:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %call7.i.i) #13
  br label %do.end90

do.end90:                                         ; preds = %do.end85, %if.then77.do.end90_crit_edge
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

for.body95:                                       ; preds = %for.inc103.for.body95_crit_edge, %if.end64.for.body95_crit_edge
  %input_cnt.2164 = phi i32 [ %input_cnt.3, %for.inc103.for.body95_crit_edge ], [ 0, %if.end64.for.body95_crit_edge ]
  %idx.1162 = phi i32 [ %inc104, %for.inc103.for.body95_crit_edge ], [ 0, %if.end64.for.body95_crit_edge ]
  %shl96 = shl nuw i32 1, %idx.1162
  %and97 = and i32 %shl96, %and66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %for.body95.for.inc103_crit_edge, label %if.end100

for.body95.for.inc103_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc103

if.end100:                                        ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %idx.1162 to i8
  %24 = ptrtoint ptr %input_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_map, align 8
  %inc102 = add i32 %input_cnt.2164, 1
  %arrayidx = getelementptr i8, ptr %25, i32 %input_cnt.2164
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc103

for.inc103:                                       ; preds = %if.end100, %for.body95.for.inc103_crit_edge
  %input_cnt.3 = phi i32 [ %inc102, %if.end100 ], [ %input_cnt.2164, %for.body95.for.inc103_crit_edge ]
  %inc104 = add nuw nsw i32 %idx.1162, 1
  %exitcond.not = icmp eq i32 %inc104, 32
  br i1 %exitcond.not, label %for.end105, label %for.inc103.for.body95_crit_edge

for.inc103.for.body95_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body95

for.end105:                                       ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #11
  %file106 = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %file106 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %file, ptr %file106, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call107 = tail call i32 @pvr2_hdw_cpufw_get_enabled(ptr noundef %3) #9
  %fw_mode_flag = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %fw_mode_flag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call107, ptr %fw_mode_flag, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end105, %do.end90, %do.end62, %if.end22.cleanup_crit_edge, %do.end16, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %do.end62 ], [ 0, %for.end105 ], [ -12, %do.end90 ], [ -5, %do.end16 ], [ -5, %do.body10.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_v4l2_release(ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pdi = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdi, align 4
  %v4lp = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4lp, align 8
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %10 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %rhp = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rhp, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %do.end4.if.end15_crit_edge, label %if.then6

do.end4.if.end15_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %do.end4
  %call7 = tail call i32 @pvr2_hdw_set_streaming(ptr noundef %9, i32 noundef 0) #9
  %13 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rhp, align 4
  %call9 = tail call ptr @pvr2_ioread_get_stream(ptr noundef %14) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then6.if.end12_crit_edge, label %if.then11

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pvr2_stream_set_callback(ptr noundef nonnull %call9, ptr noundef null, ptr noundef null) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then6.if.end12_crit_edge
  %15 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rhp, align 4
  tail call void @pvr2_ioread_destroy(ptr noundef %16) #9
  %17 = ptrtoint ptr %rhp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rhp, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %do.end4.if.end15_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #9
  tail call void @v4l2_fh_exit(ptr noundef %1) #9
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %private_data, align 4
  tail call void @pvr2_channel_done(ptr noundef %channel) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %19 = load i32, ptr @pvrusb2_debug, align 4
  %and20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end15.do.end30_crit_edge, label %do.end25

if.end15.do.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %1) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %if.end15.do.end30_crit_edge
  %input_map = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %input_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_map, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %do.end30.if.end35_crit_edge, label %if.then32

do.end30.if.end35_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %21) #9
  %22 = ptrtoint ptr %input_map to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %input_map, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %do.end30.if.end35_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %disconnect_flag = getelementptr inbounds %struct.pvr2_context, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %disconnect_flag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disconnect_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool38.not = icmp eq i32 %26, 0
  br i1 %tobool38.not, label %if.end35.if.end49_crit_edge, label %land.lhs.true

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end35
  %dev_video = getelementptr inbounds %struct.pvr2_v4l2, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %dev_video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_video, align 4
  %fh_list = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %fh_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %fh_list, align 4
  %cmp.i.not = icmp eq ptr %30, %fh_list
  br i1 %cmp.i.not, label %land.lhs.true41, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true41:                                  ; preds = %land.lhs.true
  %dev_radio = getelementptr inbounds %struct.pvr2_v4l2, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %dev_radio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_radio, align 4
  %tobool42.not = icmp eq ptr %32, null
  br i1 %tobool42.not, label %land.lhs.true41.if.then48_crit_edge, label %lor.lhs.false

land.lhs.true41.if.then48_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

lor.lhs.false:                                    ; preds = %land.lhs.true41
  %fh_list45 = getelementptr inbounds %struct.video_device, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %fh_list45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %fh_list45, align 4
  %cmp.i70.not = icmp eq ptr %34, %fh_list45
  br i1 %cmp.i70.not, label %lor.lhs.false.if.then48_crit_edge, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %land.lhs.true41.if.then48_crit_edge
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then48.if.end.i_crit_edge, label %if.then.i

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_destroy(ptr noundef nonnull %28) #9
  %35 = ptrtoint ptr %dev_video to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dev_video, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then48.if.end.i_crit_edge
  %36 = ptrtoint ptr %dev_radio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_radio, align 4
  %tobool3.not.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then4.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvr2_v4l2_dev_destroy(ptr noundef nonnull %37) #9
  %38 = ptrtoint ptr %dev_radio to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %dev_radio, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.end.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %39 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge, label %do.end.i

do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvr2_v4l2_destroy_no_lock.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %5) #13
  br label %pvr2_v4l2_destroy_no_lock.exit

pvr2_v4l2_destroy_no_lock.exit:                   ; preds = %do.end.i, %do.body.i.pvr2_v4l2_destroy_no_lock.exit_crit_edge
  tail call void @pvr2_channel_done(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %5) #9
  br label %if.end49

if.end49:                                         ; preds = %pvr2_v4l2_destroy_no_lock.exit, %lor.lhs.false.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_cpufw_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvr2_v4l2_iosetup(ptr noundef %fh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdi = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %pdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdi, align 4
  %stream = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %fh, i32 0, i32 1
  %call = tail call i32 @pvr2_channel_claim_stream(ptr noundef %channel, ptr noundef nonnull %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %pdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdi, align 4
  %stream9 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream9, align 4
  %call10 = tail call ptr @pvr2_channel_create_mpeg_stream(ptr noundef %9) #9
  %10 = ptrtoint ptr %rhp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %rhp, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @pvr2_channel_claim_stream(ptr noundef %channel, ptr noundef null) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 4
  %hdw19 = getelementptr inbounds %struct.pvr2_context, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %hdw19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdw19, align 4
  %15 = ptrtoint ptr %pdi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdi, align 4
  %stream21 = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %stream21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream21, align 4
  %stream22 = getelementptr inbounds %struct.pvr2_context_stream, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %stream22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream22, align 4
  tail call void @pvr2_stream_set_callback(ptr noundef %20, ptr noundef nonnull @pvr2_v4l2_notify, ptr noundef %fh) #9
  %21 = ptrtoint ptr %pdi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdi, align 4
  %config = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config, align 8
  %call24 = tail call i32 @pvr2_hdw_set_stream_type(ptr noundef %14, i32 noundef %24) #9
  %call25 = tail call i32 @pvr2_hdw_set_streaming(ptr noundef %14, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end17.cleanup_crit_edge, label %if.end28

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rhp, align 4
  %call30 = tail call i32 @pvr2_ioread_set_enabled(ptr noundef %26, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end17.cleanup_crit_edge, %if.then14, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end28 ], [ -12, %if.then14 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %call25, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ioread_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ioread_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_channel_claim_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_channel_create_mpeg_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_stream_set_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_v4l2_notify(ptr noundef %fhp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_data = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %fhp, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_set_stream_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_set_streaming(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ioread_set_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_dev_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_channel_limit_inputs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_channel_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_cpufw_get_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_ioread_get_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_ioread_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.42, i32 noundef 16) #9
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call3 = tail call ptr @pvr2_hdw_get_bus_info(ptr noundef %5) #9
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %call3, i32 noundef 32) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call6 = tail call ptr @pvr2_hdw_get_desc(ptr noundef %5) #9
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %call6, i32 noundef 32) #9
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2130247679, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pvr2_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fd, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %vf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = call ptr @memcpy(ptr %vf, ptr @pvr_format, i32 204)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 7) #9
  %call2 = call i32 @pvr2_ctrl_get_value(ptr noundef %call, ptr noundef nonnull %val) #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %vf, i32 0, i32 1
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt, align 4
  store i32 0, ptr %val, align 4
  %call3 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 8) #9
  %call4 = call i32 @pvr2_ctrl_get_value(ptr noundef %call3, ptr noundef nonnull %val) #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %vf, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %vf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %call = tail call i32 @pvr2_try_fmt_vid_cap(ptr noundef %file, ptr noundef %1, ptr noundef %vf)
  %call2 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 7) #9
  %call3 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 8) #9
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %vf, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  %call4 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call2, i32 noundef %7) #9
  %height = getelementptr inbounds %struct.v4l2_format, ptr %vf, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %call6 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call3, i32 noundef %9) #9
  %call7 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_try_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %vf) #0 align 64 {
entry:
  %ldef = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ldef) #9
  %6 = ptrtoint ptr %ldef to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ldef, align 4, !annotation !145
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %vf, i32 0, i32 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %vf, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 7) #9
  %call3 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 8) #9
  %call4 = tail call i32 @pvr2_ctrl_get_min(ptr noundef %call) #9
  %call5 = tail call i32 @pvr2_ctrl_get_max(ptr noundef %call) #9
  %call6 = call i32 @pvr2_ctrl_get_def(ptr noundef %call, ptr noundef nonnull %ldef) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ldef to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ldef, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call4)
  %cmp7 = icmp slt i32 %10, %call4
  %13 = call i32 @llvm.smin.i32(i32 %10, i32 %call5)
  %spec.select = select i1 %cmp7, i32 %call4, i32 %13
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then
  %w.0 = phi i32 [ %12, %if.then ], [ %spec.select, %if.else ]
  %call14 = call i32 @pvr2_ctrl_get_min(ptr noundef %call3) #9
  %call15 = call i32 @pvr2_ctrl_get_max(ptr noundef %call3) #9
  %call16 = call i32 @pvr2_ctrl_get_def(ptr noundef %call3, ptr noundef nonnull %ldef) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp17 = icmp eq i32 %8, -1
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ldef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ldef, align 4
  br label %if.end27

if.else19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call14)
  %cmp20 = icmp slt i32 %8, %call14
  %16 = call i32 @llvm.smin.i32(i32 %8, i32 %call15)
  %spec.select55 = select i1 %cmp20, i32 %call14, i32 %16
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then18
  %h.0 = phi i32 [ %15, %if.then18 ], [ %spec.select55, %if.else19 ]
  %17 = call ptr @memcpy(ptr %vf, ptr @pvr_format, i32 204)
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %w.0, ptr %fmt, align 4
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %h.0, ptr %height, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ldef) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_streamon(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %pdi2 = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pdi2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdi2, align 4
  %stream = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 8
  %call = tail call i32 @pvr2_hdw_set_stream_type(ptr noundef %5, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @pvr2_hdw_set_streaming(ptr noundef %5, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_streamoff(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pdi = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdi, align 4
  %stream = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdw1, align 4
  %call = tail call i32 @pvr2_hdw_set_streaming(ptr noundef %9, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_std(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 2) #9
  %call2 = call i32 @pvr2_ctrl_get_value(ptr noundef %call, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = sext i32 %8 to i64
  %9 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %std, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_std(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 2) #9
  %conv = trunc i64 %std to i32
  %call2 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call, i32 noundef %conv) #9
  %call3 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_querystd(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 19) #9
  %call2 = call i32 @pvr2_ctrl_get_value(ptr noundef %call, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = sext i32 %8 to i64
  %9 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %std, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_enum_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %vi) #0 align 64 {
entry:
  %tmp = alloca %struct.v4l2_input, align 8
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #9
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 4) #9
  %6 = call ptr @memset(ptr %tmp, i32 0, i32 80)
  %7 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vi, align 8
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp, align 8
  %input_cnt = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %input_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp.not = icmp ult i32 %8, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_map = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %input_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_map, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %16 = icmp ult i8 %15, 5
  br i1 %16, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %15 to i32
  %17 = sext i8 %15 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.pvr2_enum_input, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %type6 = getelementptr inbounds %struct.v4l2_input, ptr %tmp, i32 0, i32 2
  %19 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %switch.load, ptr %type6, align 4
  %20 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cnt, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %tmp, i32 0, i32 1
  %call7 = call i32 @pvr2_ctrl_get_valname(ptr noundef %call, i32 noundef %conv, ptr noundef %name, i32 noundef 31, ptr noundef nonnull %cnt) #9
  %21 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cnt, align 4
  %arrayidx9 = getelementptr %struct.v4l2_input, ptr %tmp, i32 0, i32 1, i32 %22
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx9, align 1
  %24 = call ptr @memcpy(ptr %vi, ptr %tmp, i32 80)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 4) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %call2 = call i32 @pvr2_ctrl_get_value(ptr noundef %call, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %i, align 4
  %input_cnt = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %input_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.not = icmp eq i32 %9, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %input_map = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %input_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_map, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %11, i32 %idx.013
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp3 = icmp eq i32 %13, %conv
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %idx.013, ptr %i, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.013, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %inp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %input_cnt = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %inp)
  %cmp.not = icmp ugt i32 %3, %inp
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw1, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %7, i32 noundef 4) #9
  %input_map = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %input_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_map, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %inp
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %call2 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call, i32 noundef %conv) #9
  %call3 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_queryctrl(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %vc) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !145
  %7 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %8, 2147483647
  %call = tail call ptr @pvr2_hdw_get_ctrl_nextv4l(ptr noundef %5, i32 noundef %and3) #9
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.do.body_crit_edge, label %if.end10.thread109

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end10.thread109:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @pvr2_ctrl_get_v4lid(ptr noundef nonnull %call) #9
  %9 = ptrtoint ptr %vc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call6, ptr %vc, align 4
  br label %do.body23

if.end10:                                         ; preds = %entry
  %call9 = tail call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %8) #9
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end10.do.body_crit_edge, label %if.end10.do.body23_crit_edge

if.end10.do.body23_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %if.then.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %10 = load i32, ptr @pvrusb2_debug, align 4
  %and13 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vc, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %12) #13
  br label %cleanup

do.body23:                                        ; preds = %if.end10.do.body23_crit_edge, %if.end10.thread109
  %cptr.0112 = phi ptr [ %call, %if.end10.thread109 ], [ %call9, %if.end10.do.body23_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %13 = load i32, ptr @pvrusb2_debug, align 4
  %and24 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end37_crit_edge, label %do.end29

do.body23.do.end37_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc, align 4
  %call32 = tail call ptr @pvr2_ctrl_get_name(ptr noundef nonnull %cptr.0112) #9
  %call33 = tail call ptr @pvr2_ctrl_get_desc(ptr noundef nonnull %cptr.0112) #9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %15, ptr noundef %call32, ptr noundef %call33) #13
  br label %do.end37

do.end37:                                         ; preds = %do.end29, %do.body23.do.end37_crit_edge
  %name = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 2
  %call38 = tail call ptr @pvr2_ctrl_get_desc(ptr noundef nonnull %cptr.0112) #9
  %call39 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %call38, i32 noundef 32) #9
  %call40 = tail call i32 @pvr2_ctrl_get_v4lflags(ptr noundef nonnull %cptr.0112) #9
  %flags = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 7
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call40, ptr %flags, align 4
  %call41 = call i32 @pvr2_ctrl_get_def(ptr noundef nonnull %cptr.0112, ptr noundef nonnull %val) #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %default_value = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 6
  %19 = ptrtoint ptr %default_value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %default_value, align 4
  %call42 = call i32 @pvr2_ctrl_get_type(ptr noundef nonnull %cptr.0112) #9
  %20 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call42, label %do.body56 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb44
    i32 0, label %sw.bb49
  ]

sw.bb:                                            ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %type, align 4
  %minimum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 3
  %22 = ptrtoint ptr %minimum to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %minimum, align 4
  %call43 = call i32 @pvr2_ctrl_get_cnt(ptr noundef nonnull %cptr.0112) #9
  %sub = add i32 %call43, -1
  %maximum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 4
  %23 = ptrtoint ptr %maximum to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %maximum, align 4
  %step = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 5
  %24 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %step, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %type45 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 1
  %25 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %type45, align 4
  %minimum46 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 3
  %26 = ptrtoint ptr %minimum46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %minimum46, align 4
  %maximum47 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 4
  %27 = ptrtoint ptr %maximum47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %maximum47, align 4
  %step48 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 5
  %28 = ptrtoint ptr %step48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %step48, align 4
  br label %cleanup

sw.bb49:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %type50 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 1
  %29 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type50, align 4
  %call51 = call i32 @pvr2_ctrl_get_min(ptr noundef nonnull %cptr.0112) #9
  %minimum52 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 3
  %30 = ptrtoint ptr %minimum52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call51, ptr %minimum52, align 4
  %call53 = call i32 @pvr2_ctrl_get_max(ptr noundef nonnull %cptr.0112) #9
  %maximum54 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 4
  %31 = ptrtoint ptr %maximum54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call53, ptr %maximum54, align 4
  %step55 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %vc, i32 0, i32 5
  %32 = ptrtoint ptr %step55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %step55, align 4
  br label %cleanup

do.body56:                                        ; preds = %do.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %33 = load i32, ptr @pvrusb2_debug, align 4
  %and57 = and i32 %33, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %do.end62

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc, align 4
  %call65 = call ptr @pvr2_ctrl_get_name(ptr noundef nonnull %cptr.0112) #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %35, ptr noundef %call65) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.body56.cleanup_crit_edge, %sw.bb49, %sw.bb44, %sw.bb, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end62 ], [ -22, %do.body56.cleanup_crit_edge ], [ 0, %sw.bb49 ], [ 0, %sw.bb44 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_ctrl(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %vc) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %7 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %8) #9
  %call2 = call i32 @pvr2_ctrl_get_value(ptr noundef %call, ptr noundef nonnull %val) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.v4l2_control, ptr %vc, i32 0, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_ctrl(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %6 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %7) #9
  %value = getelementptr inbounds %struct.v4l2_control, ptr %vc, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call2 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call, i32 noundef %9) #9
  %call3 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_ext_ctrls(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %ctls) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !145
  %count = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp35.not = icmp eq i32 %8, 0
  br i1 %cmp35.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %controls = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %idx.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %9 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controls, align 4
  %add.ptr = getelementptr %struct.v4l2_ext_control, ptr %10, i32 %idx.036
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr, align 1
  %call = call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %12) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.if.then9_crit_edge, label %if.then

for.body.if.then9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then:                                          ; preds = %for.body
  %13 = ptrtoint ptr %ctls to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %14)
  %cmp2 = icmp eq i32 %14, 251658240
  br i1 %cmp2, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 @pvr2_ctrl_get_def(ptr noundef nonnull %call, ptr noundef nonnull %val) #9
  br label %if.end10

if.end7:                                          ; preds = %if.then
  %call5 = call i32 @pvr2_ctrl_get_value(ptr noundef nonnull %call, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %for.body.if.then9_crit_edge
  %ret.133 = phi i32 [ %call5, %if.end7.if.then9_crit_edge ], [ -22, %for.body.if.then9_crit_edge ]
  %error_idx = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 2
  %15 = ptrtoint ptr %error_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %idx.036, ptr %error_idx, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.end7.thread
  %16 = getelementptr %struct.v4l2_ext_control, ptr %10, i32 %idx.036, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %16, align 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  store i32 %19, ptr %16, align 1
  %inc = add nuw i32 %idx.036, 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.133, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_ext_ctrls(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %ctls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %count = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.commit_crit_edge, label %for.body.lr.ph

entry.commit_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %commit

for.body.lr.ph:                                   ; preds = %entry
  %controls = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controls, align 4
  %add.ptr = getelementptr %struct.v4l2_ext_control, ptr %9, i32 %idx.014
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr, align 1
  %call = tail call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %11) #9
  %12 = getelementptr %struct.v4l2_ext_control, ptr %9, i32 %idx.014, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %12, align 1
  %call2 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %error_idx = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 2
  %15 = ptrtoint ptr %error_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %idx.014, ptr %error_idx, align 4
  br label %commit

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.014, 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.commit_crit_edge

for.inc.commit_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %commit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

commit:                                           ; preds = %for.inc.commit_crit_edge, %if.then, %entry.commit_crit_edge
  %ret.1 = phi i32 [ %call2, %if.then ], [ 0, %entry.commit_crit_edge ], [ 0, %for.inc.commit_crit_edge ]
  %call3 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %5) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_try_ext_ctrls(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %ctls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %count = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not = icmp eq i32 %7, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %controls = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controls, align 4
  %add.ptr = getelementptr %struct.v4l2_ext_control, ptr %9, i32 %idx.013
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr, align 1
  %call = tail call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %11) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %error_idx = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctls, i32 0, i32 2
  %12 = ptrtoint ptr %error_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %idx.013, ptr %error_idx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.013, 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_querymenu(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %vm) #0 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #9
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cnt, align 4
  %7 = ptrtoint ptr %vm to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %vm, align 1
  %call = tail call ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef %5, i32 noundef %8) #9
  %index = getelementptr inbounds %struct.v4l2_querymenu, ptr %vm, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %index, align 1
  %11 = getelementptr inbounds %struct.v4l2_querymenu, ptr %vm, i32 0, i32 2
  %call2 = call i32 @pvr2_ctrl_get_valname(ptr noundef %call, i32 noundef %10, ptr noundef %11, i32 noundef 31, ptr noundef nonnull %cnt) #9
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt, align 4
  %arrayidx = getelementptr [32 x i8], ptr %11, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %vin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %vin, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.52, i32 noundef 32) #9
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %vin, i32 0, i32 2
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %capability, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %vin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vin, align 4
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %vin, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.52, i32 noundef 32) #9
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %vin, i32 0, i32 2
  %1 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %capability, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pvr2_s_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %vout) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_pixelaspect(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  %cap = alloca %struct.v4l2_cropcap, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cap) #9
  %6 = getelementptr inbounds i8, ptr %cap, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @pvr2_hdw_get_cropcap(ptr noundef %5, ptr noundef nonnull %cap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pixelaspect = getelementptr inbounds %struct.v4l2_cropcap, ptr %cap, i32 0, i32 3
  %9 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %pixelaspect, align 4
  %11 = ptrtoint ptr %f to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %f, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cap) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %cap = alloca %struct.v4l2_cropcap, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cap) #9
  %6 = getelementptr inbounds i8, ptr %cap, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %9 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %cap, align 4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %13, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb28
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 9) #9
  %call3 = call i32 @pvr2_ctrl_get_value(ptr noundef %call, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %r, align 4
  %call7 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 10) #9
  %call8 = call i32 @pvr2_ctrl_get_value(ptr noundef %call7, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %top, align 4
  %call13 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 11) #9
  %call14 = call i32 @pvr2_ctrl_get_value(ptr noundef %call13, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width, align 4
  %call19 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 12) #9
  %call20 = call i32 @pvr2_ctrl_get_value(ptr noundef %call19, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 @pvr2_hdw_get_cropcap(ptr noundef %5, ptr noundef nonnull %cap) #9
  %r27 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %defrect = getelementptr inbounds %struct.v4l2_cropcap, ptr %cap, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %r27, ptr %defrect, i32 16)
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 @pvr2_hdw_get_cropcap(ptr noundef %5, ptr noundef nonnull %cap) #9
  %r30 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %bounds = getelementptr inbounds %struct.v4l2_cropcap, ptr %cap, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %r30, ptr %bounds, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb28, %sw.bb25, %if.end23, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call29, %sw.bb28 ], [ %call26, %sw.bb25 ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cap) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not = icmp eq i32 %9, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 9) #9
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %call3 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.commit_crit_edge

if.end.commit_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %commit

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 10) #9
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %top, align 4
  %call9 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call7, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %if.end6.commit_crit_edge

if.end6.commit_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %commit

if.end12:                                         ; preds = %if.end6
  %call13 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 11) #9
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %call15 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call13, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end18, label %if.end12.commit_crit_edge

if.end12.commit_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %commit

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 12) #9
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %call21 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call19, i32 noundef %17) #9
  br label %commit

commit:                                           ; preds = %if.end18, %if.end12.commit_crit_edge, %if.end6.commit_crit_edge, %if.end.commit_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.commit_crit_edge ], [ %call9, %if.end6.commit_crit_edge ], [ %call15, %if.end12.commit_crit_edge ], [ %call21, %if.end18 ]
  %call22 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %commit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %commit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_tuner(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw1, align 4
  tail call void @pvr2_hdw_execute_tuner_poll(ptr noundef %7) #9
  %call = tail call i32 @pvr2_hdw_get_tuner_status(ptr noundef %7, ptr noundef %vt) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_tuner(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw1, align 4
  %call = tail call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %7, i32 noundef 5) #9
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %8 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audmode, align 4
  %call2 = tail call i32 @pvr2_ctrl_set_value(ptr noundef %call, i32 noundef %9) #9
  %call3 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_g_frequency(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %vf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %cur_input = alloca i32, align 4
  %vt = alloca %struct.v4l2_tuner, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_input) #9
  %7 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cur_input, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %vt) #9
  %8 = call ptr @memset(ptr %vt, i32 255, i32 84)
  %call = call i32 @pvr2_hdw_get_tuner_status(ptr noundef %5, ptr noundef nonnull %vt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 6) #9
  %call3 = call i32 @pvr2_ctrl_get_value(ptr noundef %call2, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 4) #9
  %call8 = call i32 @pvr2_ctrl_get_value(ptr noundef %call7, ptr noundef nonnull %cur_input) #9
  %9 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp9 = icmp eq i32 %10, 4
  %spec.select = select i1 %cmp9, i32 1, i32 2
  %11 = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capability, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %div15 = sdiv i32 %16, 62500
  %mul = shl i32 %16, 1
  %div = sdiv i32 %mul, 125
  %storemerge = select i1 %tobool.not, i32 %div15, i32 %div
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %17 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %vt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_input) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s_frequency(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %vf) #0 align 64 {
entry:
  %vt = alloca %struct.v4l2_tuner, align 4
  %cur_input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %vt) #9
  %6 = call ptr @memset(ptr %vt, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_input) #9
  %7 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cur_input, align 4, !annotation !145
  %call = call i32 @pvr2_hdw_get_tuner_status(ptr noundef %5, ptr noundef nonnull %vt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 4) #9
  %call3 = call i32 @pvr2_ctrl_get_value(ptr noundef %call2, ptr noundef nonnull %cur_input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7 = icmp eq i32 %9, 1
  %10 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp9.not = icmp eq i32 %11, 4
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  br i1 %cmp9.not, label %if.then8.if.end17_crit_edge, label %if.then8.if.end17.sink.split_crit_edge

if.then8.if.end17.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %if.end6
  br i1 %cmp9.not, label %if.else.if.end17.sink.split_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %if.then8.if.end17.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.then8.if.end17.sink.split_crit_edge ], [ 0, %if.else.if.end17.sink.split_crit_edge ]
  %call15 = call i32 @pvr2_ctrl_set_value(ptr noundef %call2, i32 noundef %.sink) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge, %if.then8.if.end17_crit_edge
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %12 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %14 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capability, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mul = mul i32 %13, 125
  %div43 = lshr i32 %mul, 1
  %mul20 = mul i32 %13, 62500
  %fv.0 = select i1 %tobool.not, i32 %mul20, i32 %div43
  %call22 = call ptr @pvr2_hdw_get_ctrl_by_id(ptr noundef %5, i32 noundef 6) #9
  %call23 = call i32 @pvr2_ctrl_set_value(ptr noundef %call22, i32 noundef %fv.0) #9
  %call24 = call i32 @pvr2_hdw_commit_ctl(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_input) #9
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %vt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_log_status(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.pvr2_v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  tail call void @pvr2_hdw_trigger_module_log(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_bus_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_commit_ctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_valname(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_ctrl_nextv4l(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_v4lid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_ctrl_v4l(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_ctrl_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_ctrl_get_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_v4lflags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_cropcap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_execute_tuner_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_tuner_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_trigger_module_log(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_v4l2_dev_destroy(ptr noundef %dip) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4lp = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 1
  %0 = ptrtoint ptr %v4lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4lp, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw1, align 4
  %config = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 3
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %msg) #9
  %8 = call ptr @memset(ptr %msg, i32 255, i32 80)
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.video_device_node_name.exit_crit_edge

entry.video_device_node_name.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.video_device, ptr %dip, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %entry.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %entry.video_device_node_name.exit_crit_edge ]
  %call2 = tail call ptr @pvr2_config_get_name(i32 noundef %7) #9
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %msg, i32 noundef 79, ptr noundef nonnull @.str.55, ptr noundef %retval.0.i.i, ptr noundef %call2) #9
  %arrayidx = getelementptr [80 x i8], ptr %msg, i32 0, i32 %call3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %minor_type = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 5
  %14 = ptrtoint ptr %minor_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minor_type, align 8
  call void @pvr2_hdw_v4l_store_minor_number(ptr noundef %5, i32 noundef %15, i32 noundef -1) #9
  %16 = ptrtoint ptr %v4lp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %v4lp, align 8
  %stream = getelementptr inbounds %struct.pvr2_v4l2_dev, ptr %dip, i32 0, i32 2
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %stream, align 4
  call void @video_unregister_device(ptr noundef %dip) #9
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull %msg) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !133, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__param_video_nr, !1, !"__param_video_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_video_nrtype297, !1, !"__UNIQUE_ID_video_nrtype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_video_nr298, !4, !"__UNIQUE_ID_video_nr298", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 63, i32 1}
!5 = !{ptr @__param_radio_nr, !6, !"__param_radio_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 65, i32 1}
!7 = !{ptr @__UNIQUE_ID_radio_nrtype299, !6, !"__UNIQUE_ID_radio_nrtype299", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_radio_nr300, !9, !"__UNIQUE_ID_radio_nr300", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 66, i32 1}
!10 = !{ptr @__param_vbi_nr, !11, !"__param_vbi_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 68, i32 1}
!12 = !{ptr @__UNIQUE_ID_vbi_nrtype301, !11, !"__UNIQUE_ID_vbi_nrtype301", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_vbi_nr302, !14, !"__UNIQUE_ID_vbi_nr302", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 69, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1268, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pvr2_v4l2_create._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @pvr2_v4l2_create._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1285, i32 2}
!23 = !{ptr @pvr2_v4l2_create._entry.3, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pvr2_v4l2_create._entry_ptr.5, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__param_str_video_nr, !1, !"__param_str_video_nr", i1 false, i1 false}
!26 = !{ptr @__param_arr_video_nr, !1, !"__param_arr_video_nr", i1 false, i1 false}
!27 = !{ptr @video_nr, !28, !"video_nr", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 61, i32 12}
!29 = !{ptr @__param_str_radio_nr, !6, !"__param_str_radio_nr", i1 false, i1 false}
!30 = !{ptr @__param_arr_radio_nr, !6, !"__param_arr_radio_nr", i1 false, i1 false}
!31 = !{ptr @radio_nr, !32, !"radio_nr", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 64, i32 12}
!33 = !{ptr @__param_str_vbi_nr, !11, !"__param_str_vbi_nr", i1 false, i1 false}
!34 = !{ptr @__param_arr_vbi_nr, !11, !"__param_arr_vbi_nr", i1 false, i1 false}
!35 = !{ptr @vbi_nr, !36, !"vbi_nr", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 67, i32 12}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 899, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pvr2_v4l2_internal_check._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvr2_v4l2_internal_check._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1202, i32 4}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pvr2_v4l2_dev_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pvr2_v4l2_dev_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1222, i32 3}
!49 = !{ptr @pvr2_v4l2_dev_init._entry.10, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pvr2_v4l2_dev_init._entry_ptr.12, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1248, i32 3}
!53 = !{ptr @pvr2_v4l2_dev_init._entry.13, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pvr2_v4l2_dev_init._entry_ptr.15, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1252, i32 2}
!57 = !{ptr @pvr2_v4l2_dev_init._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pvr2_v4l2_dev_init._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @vdev_template, !60, !"vdev_template", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1175, i32 34}
!61 = !{ptr @vdev_fops, !62, !"vdev_fops", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1165, i32 42}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 961, i32 2}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pvr2_v4l2_open._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pvr2_v4l2_open._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 964, i32 3}
!77 = !{ptr @pvr2_v4l2_open._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pvr2_v4l2_open._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @pvr2_v4l2_open.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 975, i32 2}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 978, i32 2}
!84 = !{ptr @pvr2_v4l2_open._entry.28, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pvr2_v4l2_open._entry_ptr.30, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 996, i32 3}
!88 = !{ptr @pvr2_v4l2_open._entry.31, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pvr2_v4l2_open._entry_ptr.33, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 1013, i32 3}
!92 = !{ptr @pvr2_v4l2_open._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @pvr2_v4l2_open._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 913, i32 2}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pvr2_v4l2_release._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pvr2_v4l2_release._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 929, i32 2}
!101 = !{ptr @pvr2_v4l2_release._entry.39, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pvr2_v4l2_release._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @pvr2_ioctl_ops, !104, !"pvr2_ioctl_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 790, i32 36}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 114, i32 23}
!107 = !{ptr @pvr_format, !108, !"pvr_format", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 74, i32 27}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 517, i32 3}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pvr2_queryctrl._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @pvr2_queryctrl._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 523, i32 2}
!116 = !{ptr @pvr2_queryctrl._entry.46, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pvr2_queryctrl._entry_ptr.48, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 551, i32 3}
!120 = !{ptr @pvr2_queryctrl._entry.49, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @pvr2_queryctrl._entry_ptr.51, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 266, i32 21}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 875, i32 2}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @pvr2_v4l2_destroy_no_lock._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @pvr2_v4l2_destroy_no_lock._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 835, i32 5}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-v4l2.c", i32 850, i32 2}
!133 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @pvr2_v4l2_dev_destroy._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @pvr2_v4l2_dev_destroy._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 2153549904, i64 2153549929}
