; ModuleID = '/llk/IR_all_yes/drivers/staging/most/video/video.c_pt.bc'
source_filename = "../drivers/staging/most/video/video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.most_component = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.most_video_dev = type { ptr, i32, %struct.list_head, i8, %struct.list_head, %struct.spinlock, %struct.v4l2_device, %struct.atomic_t, ptr, i32, %struct.mutex, %struct.wait_queue_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
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
%struct.comp_fh = type { %struct.v4l2_fh, ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.89, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.89 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@video_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @video_devices, ptr @video_devices }, [24 x i8] zeroinitializer }, align 32
@comp = internal global { %struct.most_component, [60 x i8] } { %struct.most_component { %struct.list_head zeroinitializer, ptr @.str.1, ptr null, ptr @comp_probe_channel, ptr @comp_disconnect_channel, ptr @comp_rx_data, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_most_video__292_579_comp_init6 = internal global ptr @comp_init, section ".initcall6.init", align 4
@__exitcall_comp_exit = internal global ptr @comp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [58 x i8] c"most_video.description=V4L2 Component Module for Mostcore\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [59 x i8] c"most_video.author=Andrey Shvetsov <andrey.shvetsov@k2l.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [54 x i8] c"most_video.file=drivers/staging/most/video/most_video\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"most_video.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013most_video: channel already linked\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"comp_probe_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/most/video/video.c\00", [61 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry_ptr = internal global ptr @comp_probe_channel._entry, section ".printk_index", align 4
@comp_probe_channel._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013most_video: wrong direction, expect rx\0A\00", [54 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry_ptr.7 = internal global ptr @comp_probe_channel._entry.5, section ".printk_index", align 4
@comp_probe_channel._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013most_video: wrong channel type, expect sync or isoc\0A\00", [41 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry_ptr.10 = internal global ptr @comp_probe_channel._entry.8, section ".printk_index", align 4
@comp_probe_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mdev->lock\00", [20 x i8] zeroinitializer }, align 32
@comp_probe_channel.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mdev->list_lock\00", [47 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013most_video: v4l2_device_register() failed\0A\00", [51 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry_ptr.16 = internal global ptr @comp_probe_channel._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@comp_register_videodev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mdev->wait_data\00", [47 x i8] zeroinitializer }, align 32
@comp_videodev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @comp_fops, i32 16777217, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MOST: %s\00", [23 x i8] zeroinitializer }, align 32
@comp_register_videodev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: video_register_device failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"comp_register_videodev\00", [41 x i8] zeroinitializer }, align 32
@comp_register_videodev._entry_ptr = internal global ptr @comp_register_videodev._entry, section ".printk_index", align 4
@comp_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @comp_vdev_read, ptr null, ptr @comp_vdev_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @comp_vdev_open, ptr @comp_vdev_close }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_std, ptr null, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@comp_vdev_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: read: copy_to_user failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"comp_vdev_read\00", [17 x i8] zeroinitializer }, align 32
@comp_vdev_read._entry_ptr = internal global ptr @comp_vdev_read._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@comp_vdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: too many clients\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"comp_vdev_open\00", [17 x i8] zeroinitializer }, align 32
@comp_vdev_open._entry_ptr = internal global ptr @comp_vdev_open._entry, section ".printk_index", align 4
@comp_vdev_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: most_start_channel() failed\0A\00", [61 x i8] zeroinitializer }, align 32
@comp_vdev_open._entry_ptr.30 = internal global ptr @comp_vdev_open._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"v4l2_component\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOST\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPEG\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOST Video\00", [21 x i8] zeroinitializer }, align 32
@comp_disconnect_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013most_video: no such channel is linked\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"comp_disconnect_channel\00", [40 x i8] zeroinitializer }, align 32
@comp_disconnect_channel._entry_ptr = internal global ptr @comp_disconnect_channel._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 32]
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"video_devices\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 55, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 529, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 56, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 531, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 458, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 463, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 469, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 477, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 479, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 489, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 410, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"comp_videodev_template\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 358, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 421, i32 55 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 428, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"comp_fops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 337, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 346, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 179, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 230, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 214, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 174, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 87, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 100, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 248, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 249, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 251, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 261, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 309, i32 23 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [38 x i8] c"../drivers/staging/most/video/video.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 515, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_comp_exit, ptr @__initcall__kmod_most_video__292_579_comp_init6, ptr @comp_disconnect_channel._entry, ptr @comp_disconnect_channel._entry_ptr, ptr @comp_exit, ptr @comp_probe_channel._entry, ptr @comp_probe_channel._entry.14, ptr @comp_probe_channel._entry.5, ptr @comp_probe_channel._entry.8, ptr @comp_probe_channel._entry_ptr, ptr @comp_probe_channel._entry_ptr.10, ptr @comp_probe_channel._entry_ptr.16, ptr @comp_probe_channel._entry_ptr.7, ptr @comp_register_videodev._entry, ptr @comp_register_videodev._entry_ptr, ptr @comp_vdev_open._entry, ptr @comp_vdev_open._entry.28, ptr @comp_vdev_open._entry_ptr, ptr @comp_vdev_open._entry_ptr.30, ptr @comp_vdev_read._entry, ptr @comp_vdev_read._entry_ptr, ptr @list_lock, ptr @video_devices, ptr @comp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @comp_probe_channel.__key, ptr @.str.11, ptr @comp_probe_channel.__key.12, ptr @.str.13, ptr @.str.15, ptr @comp_register_videodev.__key, ptr @.str.17, ptr @comp_videodev_template, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @comp_fops, ptr @video_ioctl_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_register_videodev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_videodev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_register_videodev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_vdev_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_vdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_vdev_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_disconnect_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @comp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @list_lock) #13
  %0 = load ptr, ptr @video_devices, align 4
  %cmp.not32 = icmp eq ptr %0, @video_devices
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in33, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @list_lock) #13
  %vdev.i = getelementptr i8, ptr %.pn.in33, i32 196
  %10 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev.i, align 4
  tail call void @video_unregister_device(ptr noundef %11) #13
  %v4l2_dev = getelementptr i8, ptr %.pn.in33, i32 64
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #13
  %call = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #13
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @list_lock) #13
  %cmp.not = icmp eq ptr %.pn, @video_devices
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @list_lock) #13
  tail call void @most_deregister_configfs_subsys(ptr noundef nonnull @comp) #13
  %call13 = tail call i32 @most_deregister_component(ptr noundef nonnull @comp) #13
  %12 = load volatile ptr, ptr @video_devices, align 4
  %cmp.i.not = icmp eq ptr %12, @video_devices
  br i1 %cmp.i.not, label %do.end24, label %do.body19, !prof !105

do.body19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/video/video.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #13, !srcloc !106
  unreachable

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_configfs_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_deregister_component(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @most_register_component(ptr noundef nonnull @comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @most_register_configfs_subsys(ptr noundef nonnull @comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @most_deregister_component(ptr noundef nonnull @comp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_probe_channel(ptr noundef %iface, i32 noundef %channel_idx, ptr nocapture noundef readonly %ccfg, ptr noundef %name, ptr nocapture noundef readnone %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #13
  %.pn24.i = load ptr, ptr @video_devices, align 4
  %cmp6.not26.i = icmp eq ptr %.pn24.i, @video_devices
  br i1 %cmp6.not26.i, label %entry.get_comp_dev.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.get_comp_dev.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_comp_dev.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn27.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %entry.for.body.i_crit_edge ]
  %mdev.028.i = getelementptr i8, ptr %.pn27.i, i32 -8
  %0 = ptrtoint ptr %mdev.028.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.028.i, align 4
  %cmp9.i = icmp eq ptr %1, %iface
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ch_idx.i = getelementptr i8, ptr %.pn27.i, i32 -4
  %2 = ptrtoint ptr %ch_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channel_idx)
  %cmp11.i = icmp eq i32 %3, %channel_idx
  br i1 %cmp11.i, label %get_comp_dev.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, @video_devices
  br i1 %cmp6.not.i, label %for.inc.i.get_comp_dev.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.get_comp_dev.exit.thread_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_comp_dev.exit.thread

get_comp_dev.exit.thread:                         ; preds = %for.inc.i.get_comp_dev.exit.thread_crit_edge, %entry.get_comp_dev.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.i) #13
  br label %if.end

get_comp_dev.exit:                                ; preds = %land.lhs.true.i
  %mdev.028.i.le = getelementptr i8, ptr %.pn27.i, i32 -8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.i) #13
  %tobool.not = icmp eq ptr %mdev.028.i.le, null
  br i1 %tobool.not, label %get_comp_dev.exit.if.end_crit_edge, label %do.end

get_comp_dev.exit.if.end_crit_edge:               ; preds = %get_comp_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %get_comp_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end:                                           ; preds = %get_comp_dev.exit.if.end_crit_edge, %get_comp_dev.exit.thread
  %5 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %ccfg, i32 0, i32 1
  %7 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end15 [
    i32 32, label %if.end8.if.end18_crit_edge
    i32 4, label %if.end8.if.end18_crit_edge88
  ]

if.end8.if.end18_crit_edge88:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end8.if.end18_crit_edge, %if.end8.if.end18_crit_edge88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 356) #17
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.body23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body23:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @comp_probe_channel.__key) #13
  %access_ref = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %access_ref, i32 noundef 4) #13
  %11 = ptrtoint ptr %access_ref to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %access_ref, align 8
  %list_lock = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @comp_probe_channel.__key.12, i16 noundef signext 3) #13
  %pending_mbos = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %pending_mbos to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pending_mbos, ptr %pending_mbos, align 4
  %prev.i = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pending_mbos, ptr %prev.i, align 8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %iface, ptr %call7.i.i, align 8
  %ch_idx = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ch_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %channel_idx, ptr %ch_idx, align 4
  %v4l2_dev = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 6
  %release = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 6, i32 9
  %16 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @comp_v4l2_dev_release, ptr %release, align 4
  %name32 = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 6, i32 4
  %call33 = tail call i32 @strscpy(ptr noundef %name32, ptr noundef %name, i32 noundef 36) #13
  %call35 = tail call i32 @v4l2_device_register(ptr noundef null, ptr noundef %v4l2_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end43:                                         ; preds = %do.body23
  %wait_data.i = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait_data.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @comp_register_videodev.__key) #13
  %call.i = tail call ptr @video_device_alloc() #13
  %vdev.i = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %vdev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end43.err_unreg_crit_edge, label %if.end.i

if.end43.err_unreg_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unreg

if.end.i:                                         ; preds = %if.end43
  %18 = call ptr @memcpy(ptr %call.i, ptr @comp_videodev_template, i32 1352)
  %v4l2_dev4.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %v4l2_dev4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %v4l2_dev, ptr %v4l2_dev4.i, align 4
  %20 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev.i, align 4
  %lock6.i = getelementptr inbounds %struct.video_device, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %lock6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lock, ptr %lock6.i, align 8
  %23 = load ptr, ptr %vdev.i, align 4
  %name.i = getelementptr inbounds %struct.video_device, ptr %23, i32 0, i32 12
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %name32) #13
  %24 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %25, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %27 = load ptr, ptr %vdev.i, align 4
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fops.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i.i74 = tail call i32 @__video_register_device(ptr noundef %27, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool15.not.i = icmp eq i32 %call.i.i74, 0
  br i1 %tobool15.not.i, label %if.end47, label %do.end19.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name32, i32 noundef %call.i.i74) #16
  %32 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev.i, align 4
  tail call void @video_device_release(ptr noundef %33) #13
  br label %err_unreg

if.end47:                                         ; preds = %if.end.i
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @list_lock) #13
  %list = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 2
  %34 = load ptr, ptr @video_devices, align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @video_devices, ptr noundef %34) #13
  br i1 %call.i.i76, label %if.end.i.i, label %if.end47.list_add.exit_crit_edge

if.end47.list_add.exit_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %prev1.i.i, align 4
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.most_video_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @video_devices, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @video_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end47.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @list_lock) #13
  br label %cleanup

err_unreg:                                        ; preds = %do.end19.i, %if.end43.err_unreg_crit_edge
  %retval.0.i75.ph = phi i32 [ %call.i.i74, %do.end19.i ], [ -12, %if.end43.err_unreg_crit_edge ]
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #13
  %call50 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #13
  br label %cleanup

cleanup:                                          ; preds = %err_unreg, %list_add.exit, %do.end40, %if.end18.cleanup_crit_edge, %do.end15, %do.end5, %do.end
  %retval.0 = phi i32 [ -17, %do.end ], [ -22, %do.end5 ], [ -22, %do.end15 ], [ %call35, %do.end40 ], [ %retval.0.i75.ph, %err_unreg ], [ 0, %list_add.exit ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_disconnect_channel(ptr noundef readnone %iface, i32 noundef %channel_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #13
  %.pn24.i = load ptr, ptr @video_devices, align 4
  %cmp6.not26.i = icmp eq ptr %.pn24.i, @video_devices
  br i1 %cmp6.not26.i, label %entry.get_comp_dev.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.get_comp_dev.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_comp_dev.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn27.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %entry.for.body.i_crit_edge ]
  %mdev.028.i = getelementptr i8, ptr %.pn27.i, i32 -8
  %0 = ptrtoint ptr %mdev.028.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.028.i, align 4
  %cmp9.i = icmp eq ptr %1, %iface
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ch_idx.i = getelementptr i8, ptr %.pn27.i, i32 -4
  %2 = ptrtoint ptr %ch_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channel_idx)
  %cmp11.i = icmp eq i32 %3, %channel_idx
  br i1 %cmp11.i, label %get_comp_dev.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, @video_devices
  br i1 %cmp6.not.i, label %for.inc.i.get_comp_dev.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.get_comp_dev.exit.thread_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_comp_dev.exit.thread

get_comp_dev.exit.thread:                         ; preds = %for.inc.i.get_comp_dev.exit.thread_crit_edge, %entry.get_comp_dev.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.i) #13
  br label %do.end

get_comp_dev.exit:                                ; preds = %land.lhs.true.i
  %mdev.028.i.le = getelementptr i8, ptr %.pn27.i, i32 -8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.i) #13
  %tobool.not = icmp eq ptr %mdev.028.i.le, null
  br i1 %tobool.not, label %get_comp_dev.exit.do.end_crit_edge, label %if.end

get_comp_dev.exit.do.end_crit_edge:               ; preds = %get_comp_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %get_comp_dev.exit.do.end_crit_edge, %get_comp_dev.exit.thread
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end:                                           ; preds = %get_comp_dev.exit
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @list_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn27.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn27.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn27.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn27.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn27.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @list_lock) #13
  %vdev.i = getelementptr i8, ptr %.pn27.i, i32 196
  %13 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdev.i, align 4
  tail call void @video_unregister_device(ptr noundef %14) #13
  %v4l2_dev = getelementptr i8, ptr %.pn27.i, i32 64
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #13
  %call3 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -2, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_rx_data(ptr noundef %mbo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 5
  %2 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdm_channel_id, align 4
  %conv = zext i16 %3 to i32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #13
  %.pn24.i = load ptr, ptr @video_devices, align 4
  %cmp6.not26.i = icmp eq ptr %.pn24.i, @video_devices
  br i1 %cmp6.not26.i, label %entry.get_comp_dev.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.get_comp_dev.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_comp_dev.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn27.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %entry.for.body.i_crit_edge ]
  %mdev.028.i = getelementptr i8, ptr %.pn27.i, i32 -8
  %4 = ptrtoint ptr %mdev.028.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.028.i, align 4
  %cmp9.i = icmp eq ptr %5, %1
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ch_idx.i = getelementptr i8, ptr %.pn27.i, i32 -4
  %6 = ptrtoint ptr %ch_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp11.i = icmp eq i32 %7, %conv
  br i1 %cmp11.i, label %get_comp_dev.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, @video_devices
  br i1 %cmp6.not.i, label %for.inc.i.get_comp_dev.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.get_comp_dev.exit.thread_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_comp_dev.exit.thread

get_comp_dev.exit.thread:                         ; preds = %for.inc.i.get_comp_dev.exit.thread_crit_edge, %entry.get_comp_dev.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.i) #13
  br label %cleanup

get_comp_dev.exit:                                ; preds = %land.lhs.true.i
  %mdev.028.i.le = getelementptr i8, ptr %.pn27.i, i32 -8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2.i) #13
  %tobool.not = icmp eq ptr %mdev.028.i.le, null
  br i1 %tobool.not, label %get_comp_dev.exit.cleanup_crit_edge, label %do.body1

get_comp_dev.exit.cleanup_crit_edge:              ; preds = %get_comp_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %get_comp_dev.exit
  %list_lock = getelementptr i8, ptr %.pn27.i, i32 20
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #13
  %mute = getelementptr i8, ptr %.pn27.i, i32 8
  %9 = ptrtoint ptr %mute to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mute, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.end12, label %if.then10, !prof !105

if.then10:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call4) #13
  br label %cleanup

if.end12:                                         ; preds = %do.body1
  %list = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %pending_mbos = getelementptr i8, ptr %.pn27.i, i32 12
  %prev.i = getelementptr i8, ptr %.pn27.i, i32 16
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %12, ptr noundef %pending_mbos) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pending_mbos, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call4) #13
  %wait_data = getelementptr i8, ptr %.pn27.i, i32 296
  tail call void @__wake_up(ptr noundef %wait_data, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then10, %get_comp_dev.exit.cleanup_crit_edge, %get_comp_dev.exit.thread
  %retval.0 = phi i32 [ -5, %if.then10 ], [ 0, %list_add_tail.exit ], [ -5, %get_comp_dev.exit.cleanup_crit_edge ], [ -5, %get_comp_dev.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comp_v4l2_dev_release(ptr noundef %v4l2_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -72
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_vdev_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup61_crit_edge, label %if.end4

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.end4:                                          ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end25_crit_edge

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then6:                                         ; preds = %if.end4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 166) #13
  %pending_mbos.i = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %pending_mbos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pending_mbos.i, align 4
  %cmp.i.i99.not = icmp eq ptr %9, %pending_mbos.i
  br i1 %cmp.i.i99.not, label %if.then10, label %if.then6.if.end25_crit_edge

if.then6.if.end25_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then10:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %wait_data = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 11
  %call12135 = call i32 @prepare_to_wait_event(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %11 = ptrtoint ptr %pending_mbos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pending_mbos.i, align 4
  %cmp.i.i101.not136 = icmp eq ptr %12, %pending_mbos.i
  br i1 %cmp.i.i101.not136, label %if.then10.if.end15_crit_edge, label %if.then10.if.end20.thread118_crit_edge

if.then10.if.end20.thread118_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.thread118

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  br label %if.end15

if.end15:                                         ; preds = %cleanup.if.end15_crit_edge, %if.then10.if.end15_crit_edge
  %call12137 = phi i32 [ %call12, %cleanup.if.end15_crit_edge ], [ %call12135, %if.then10.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12137)
  %tobool16.not = icmp eq i32 %call12137, 0
  br i1 %tobool16.not, label %cleanup, label %if.end20

cleanup:                                          ; preds = %if.end15
  call void @schedule() #13
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %13 = ptrtoint ptr %pending_mbos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pending_mbos.i, align 4
  %cmp.i.i101.not = icmp eq ptr %14, %pending_mbos.i
  br i1 %cmp.i.i101.not, label %cleanup.if.end15_crit_edge, label %cleanup.if.end20.thread118_crit_edge

cleanup.if.end20.thread118_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.thread118

cleanup.if.end15_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end20.thread118:                               ; preds = %cleanup.if.end20.thread118_crit_edge, %if.then10.if.end20.thread118_crit_edge
  call void @finish_wait(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end25

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup61

if.end25:                                         ; preds = %if.end20.thread118, %if.then6.if.end25_crit_edge, %if.end4.if.end25_crit_edge
  %pending_mbos.i102 = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %pending_mbos.i102 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pending_mbos.i102, align 4
  %cmp.i.i103.not = icmp eq ptr %16, %pending_mbos.i102
  br i1 %cmp.i.i103.not, label %if.end25.cleanup61_crit_edge, label %while.cond.preheader

if.end25.cleanup61_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

while.cond.preheader:                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not138 = icmp eq i32 %count, 0
  br i1 %cmp.not138, label %while.cond.preheader.cleanup61_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.cleanup61_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %offs = getelementptr inbounds %struct.comp_fh, ptr %1, i32 0, i32 2
  %list_lock = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup56.land.rhs_crit_edge, %land.rhs.lr.ph
  %buf.addr.0141 = phi ptr [ %buf, %land.rhs.lr.ph ], [ %add.ptr48, %cleanup56.land.rhs_crit_edge ]
  %count.addr.0140 = phi i32 [ %count, %land.rhs.lr.ph ], [ %sub47, %cleanup56.land.rhs_crit_edge ]
  %ret.0139 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add49, %cleanup56.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %pending_mbos.i102 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pending_mbos.i102, align 4
  %cmp.i.i105.not = icmp eq ptr %18, %pending_mbos.i102
  br i1 %cmp.i.i105.not, label %land.rhs.cleanup61_crit_edge, label %while.body

land.rhs.cleanup61_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

while.body:                                       ; preds = %land.rhs
  %add.ptr.i = getelementptr i8, ptr %18, i32 -8
  %processed_length = getelementptr i8, ptr %18, i32 30
  %19 = ptrtoint ptr %processed_length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %processed_length, align 2
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offs, align 4
  %sub = sub i32 %conv, %22
  %23 = call i32 @llvm.umin.i32(i32 %sub, i32 %count.addr.0140)
  %virt_address = getelementptr i8, ptr %18, i32 20
  %24 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt_address, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i.i = icmp slt i32 %23, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.body
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end39_crit_edge, label %if.then27.i.i, !prof !105

land.rhs16.i.i.do.end39_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %do.end39

if.then.i.i.i:                                    ; preds = %while.body
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %23, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0141, i32 %23, i32 -1226833920) #18, !srcloc !108
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %23) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0141, ptr noundef %add.ptr, i32 noundef %23) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %23, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %23, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool35.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool35.not, label %if.end45, label %copy_to_user.exit.do.end39_crit_edge

copy_to_user.exit.do.end39_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

do.end39:                                         ; preds = %copy_to_user.exit.do.end39_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end39_crit_edge
  %name = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 6, i32 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0139)
  %tobool42.not = icmp eq i32 %ret.0139, 0
  %spec.store.select = select i1 %tobool42.not, i32 -14, i32 %ret.0139
  br label %cleanup61

if.end45:                                         ; preds = %copy_to_user.exit
  %27 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offs, align 4
  %add = add i32 %28, %23
  store i32 %add, ptr %offs, align 4
  %sub47 = sub i32 %count.addr.0140, %23
  %add.ptr48 = getelementptr i8, ptr %buf.addr.0141, i32 %23
  %add49 = add i32 %23, %ret.0139
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub)
  %cmp50.not = icmp slt i32 %23, %sub
  br i1 %cmp50.not, label %if.end45.cleanup56_crit_edge, label %if.then52

if.end45.cleanup56_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56

if.then52:                                        ; preds = %if.end45
  %29 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %offs, align 4
  call void @_raw_spin_lock_irq(ptr noundef %list_lock) #13
  %call.i.i107 = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #13
  br i1 %call.i.i107, label %if.end.i.i108, label %if.then52.list_del.exit_crit_edge

if.then52.list_del.exit_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i108:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i108, %if.then52.list_del.exit_crit_edge
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %list_lock) #13
  call void @most_put_mbo(ptr noundef %add.ptr.i) #13
  br label %cleanup56

cleanup56:                                        ; preds = %list_del.exit, %if.end45.cleanup56_crit_edge
  %cmp.not = icmp eq i32 %sub47, 0
  br i1 %cmp.not, label %cleanup56.cleanup61_crit_edge, label %cleanup56.land.rhs_crit_edge

cleanup56.land.rhs_crit_edge:                     ; preds = %cleanup56
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

cleanup56.cleanup61_crit_edge:                    ; preds = %cleanup56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup56.cleanup61_crit_edge, %do.end39, %land.rhs.cleanup61_crit_edge, %while.cond.preheader.cleanup61_crit_edge, %if.end25.cleanup61_crit_edge, %if.end20, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.2 = phi i32 [ -29, %entry.cleanup61_crit_edge ], [ -19, %if.end.cleanup61_crit_edge ], [ -512, %if.end20 ], [ -11, %if.end25.cleanup61_crit_edge ], [ %spec.store.select, %do.end39 ], [ 0, %while.cond.preheader.cleanup61_crit_edge ], [ %add49, %cleanup56.cleanup61_crit_edge ], [ %ret.0139, %land.rhs.cleanup61_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_vdev_poll(ptr noundef %filp, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 4
  %pending_mbos.i = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pending_mbos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending_mbos.i, align 4
  %cmp.i.i.not = icmp eq ptr %5, %pending_mbos.i
  br i1 %cmp.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %wait_data = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 11
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %wait_data, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %7(ptr noundef %filp, ptr noundef nonnull %wait_data, ptr noundef nonnull %wait) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %pending_mbos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pending_mbos.i, align 4
  %cmp.i.i10.not = icmp eq ptr %9, %pending_mbos.i
  %spec.select = select i1 %cmp.i.i10.not, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_vdev_open(ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %filp) #13
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 200) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %access_ref = getelementptr inbounds %struct.most_video_dev, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %access_ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %access_ref, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %access_ref, ptr %access_ref, i32 1, ptr elementtype(i32) %access_ref) #13, !srcloc !110
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.most_video_dev, ptr %1, i32 0, i32 6, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name) #16
  br label %err_dec

if.end6:                                          ; preds = %if.end
  %mdev7 = getelementptr inbounds %struct.comp_fh, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %mdev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %mdev7, align 8
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call) #13
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %ch_idx = getelementptr inbounds %struct.most_video_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ch_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_idx, align 4
  %call10 = tail call i32 @most_start_channel(ptr noundef %9, i32 noundef %11, ptr noundef nonnull @comp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %do.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %name18 = getelementptr inbounds %struct.most_video_dev, ptr %1, i32 0, i32 6, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name18) #16
  tail call void @v4l2_fh_del(ptr noundef nonnull %call7.i.i) #13
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #13
  br label %err_dec

err_dec:                                          ; preds = %do.end15, %do.end
  %ret.0 = phi i32 [ %call10, %do.end15 ], [ -16, %do.end ]
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %access_ref, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %access_ref, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %access_ref, ptr %access_ref, i32 1, ptr elementtype(i32) %access_ref) #13, !srcloc !112
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_dec, %if.end6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_dec ], [ -22, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_vdev_close(ptr nocapture noundef readonly %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 4
  %list_lock = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %list_lock) #13
  %mute = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mute to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %mute, align 4
  %pending_mbos = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %pending_mbos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending_mbos, align 4
  %cmp.not40 = icmp eq ptr %6, %pending_mbos
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in41 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %6, %entry.for.body_crit_edge ]
  %mbo.0 = getelementptr i8, ptr %.pn.in41, i32 -8
  %7 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in41, align 4
  %call.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #13
  br i1 %call.i.i39, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %list_lock) #13
  tail call void @most_put_mbo(ptr noundef %mbo.0) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %list_lock) #13
  %cmp.not = icmp eq ptr %.pn, %pending_mbos
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %list_lock) #13
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %ch_idx = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %ch_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_idx, align 4
  %call = tail call i32 @most_stop_channel(ptr noundef %17, i32 noundef %19, ptr noundef nonnull @comp) #13
  %20 = ptrtoint ptr %mute to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %mute, align 4
  tail call void @v4l2_fh_del(ptr noundef %1) #13
  tail call void @v4l2_fh_exit(ptr noundef %1) #13
  %access_ref = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %access_ref, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %access_ref, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %access_ref, ptr %access_ref, i32 1, ptr elementtype(i32) %access_ref) #13, !srcloc !112
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_put_mbo(ptr noundef) local_unnamed_addr #2

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
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_start_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_stop_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %cap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.31, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.32, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %description = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %description, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %description = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 3
  %call = tail call i32 @strscpy(ptr noundef %description, ptr noundef nonnull @.str.34, i32 noundef 32) #13
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  %flags = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %flags, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1195724877, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %height.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 376, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field.i, align 4
  %priv.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %priv.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724877, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1195724877
  br i1 %cmp.not.i, label %if.end.i, label %entry.comp_set_format.exit_crit_edge

entry.comp_set_format.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %comp_set_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fmt.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %fmt.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %height.i.i, align 4
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1195724877, ptr %pixelformat.i, align 4
  %bytesperline.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytesperline.i.i, align 4
  %sizeimage.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 376, ptr %sizeimage.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %colorspace.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %9 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %priv.i.i, align 4
  br label %comp_set_format.exit

comp_set_format.exit:                             ; preds = %if.end.i, %entry.comp_set_format.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.comp_set_format.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724877, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1195724877
  %spec.select = select i1 %cmp.not.i, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vidioc_g_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %norm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %input) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef 32) #13
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %type, align 4
  %audioset = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 3
  %6 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %audioset, align 8
  %vdev = getelementptr inbounds %struct.most_video_dev, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev, align 4
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 5
  %11 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %i) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %ctrl_input = getelementptr inbounds %struct.most_video_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, i32 noundef %index) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp.not = icmp eq i32 %index, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mdev1 = getelementptr inbounds %struct.comp_fh, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %ctrl_input = getelementptr inbounds %struct.most_video_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl_input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctrl_input, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_component(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_configfs_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_most_video__292_579_comp_init6, !1, !"__initcall__kmod_most_video__292_579_comp_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/most/video/video.c", i32 579, i32 1}
!2 = !{ptr @__exitcall_comp_exit, !3, !"__exitcall_comp_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/most/video/video.c", i32 580, i32 1}
!4 = !{ptr @__UNIQUE_ID_description293, !5, !"__UNIQUE_ID_description293", i1 false, i1 false}
!5 = !{!"../drivers/staging/most/video/video.c", i32 582, i32 1}
!6 = !{ptr @__UNIQUE_ID_author294, !7, !"__UNIQUE_ID_author294", i1 false, i1 false}
!7 = !{!"../drivers/staging/most/video/video.c", i32 583, i32 1}
!8 = !{ptr @__UNIQUE_ID_file295, !9, !"__UNIQUE_ID_file295", i1 false, i1 false}
!9 = !{!"../drivers/staging/most/video/video.c", i32 584, i32 1}
!10 = !{ptr @__UNIQUE_ID_license296, !9, !"__UNIQUE_ID_license296", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/most/video/video.c", i32 56, i32 8}
!13 = !{ptr @list_lock, !12, !"list_lock", i1 false, i1 false}
!14 = !{ptr @video_devices, !15, !"video_devices", i1 false, i1 false}
!15 = !{!"../drivers/staging/most/video/video.c", i32 55, i32 25}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/most/video/video.c", i32 531, i32 10}
!18 = !{ptr @comp, !19, !"comp", i1 false, i1 false}
!19 = !{!"../drivers/staging/most/video/video.c", i32 529, i32 30}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/most/video/video.c", i32 458, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @comp_probe_channel._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @comp_probe_channel._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/most/video/video.c", i32 463, i32 3}
!28 = !{ptr @comp_probe_channel._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @comp_probe_channel._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/most/video/video.c", i32 469, i32 3}
!32 = !{ptr @comp_probe_channel._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @comp_probe_channel._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @comp_probe_channel.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/staging/most/video/video.c", i32 477, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @comp_probe_channel.__key.12, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/staging/most/video/video.c", i32 479, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/most/video/video.c", i32 489, i32 3}
!42 = !{ptr @comp_probe_channel._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @comp_probe_channel._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @comp_register_videodev.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/staging/most/video/video.c", i32 410, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/most/video/video.c", i32 421, i32 55}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/most/video/video.c", i32 428, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @comp_register_videodev._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @comp_register_videodev._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @comp_videodev_template, !55, !"comp_videodev_template", i1 false, i1 false}
!55 = !{!"../drivers/staging/most/video/video.c", i32 358, i32 34}
!56 = !{ptr @comp_fops, !57, !"comp_fops", i1 false, i1 false}
!57 = !{!"../drivers/staging/most/video/video.c", i32 337, i32 42}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/most/video/video.c", i32 179, i32 4}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @comp_vdev_read._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @comp_vdev_read._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/most/video/video.c", i32 87, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @comp_vdev_open._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @comp_vdev_open._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/most/video/video.c", i32 100, i32 3}
!77 = !{ptr @comp_vdev_open._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @comp_vdev_open._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @video_ioctl_ops, !80, !"video_ioctl_ops", i1 false, i1 false}
!80 = !{!"../drivers/staging/most/video/video.c", i32 346, i32 36}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/most/video/video.c", i32 248, i32 23}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/most/video/video.c", i32 249, i32 21}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/most/video/video.c", i32 251, i32 4}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/most/video/video.c", i32 261, i32 26}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/most/video/video.c", i32 309, i32 23}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/most/video/video.c", i32 515, i32 3}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @comp_disconnect_channel._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @comp_disconnect_channel._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2156277727, i64 2156278226, i64 2156277764, i64 2156277820, i64 2156277854, i64 2156277878, i64 2156277919, i64 2156277940, i64 2156277968, i64 2156278002}
!107 = !{i8 0, i8 2}
!108 = !{i64 2153179659, i64 2153179684}
!109 = !{i64 2148437222}
!110 = !{i64 2148352507, i64 2148352539, i64 2148352568, i64 2148352602, i64 2148352633, i64 2148352656}
!111 = !{i64 2148437451}
!112 = !{i64 2148354252, i64 2148354278, i64 2148354307, i64 2148354341, i64 2148354372, i64 2148354395}
