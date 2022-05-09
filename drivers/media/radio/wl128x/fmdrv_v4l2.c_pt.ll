; ModuleID = '/llk/IR_all_yes/drivers/media/radio/wl128x/fmdrv_v4l2.c_pt.bc'
source_filename = "../drivers/media/radio/wl128x/fmdrv_v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fmdev = type { ptr, %struct.v4l2_device, ptr, i16, %struct.spinlock, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, i32, %struct.atomic_t, ptr, %struct.completion, i8, ptr, %struct.fm_irq, i8, %struct.fm_rx, %struct.fmtx_data, %struct.v4l2_ctrl_handler, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.sk_buff_head = type { %union.anon.111, i32, %struct.spinlock }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.133, i32 }
%union.anon.133 = type { ptr }
%struct.fm_irq = type { i8, i16, i16, %struct.timer_list, i8, ptr }
%struct.fm_rx = type { %struct.region_info, i32, i8, i8, i8, i16, i16, i8, i32, i8, i8, %struct.tuned_station_info, %struct.fm_rds }
%struct.region_info = type { i32, i32, i32, i8 }
%struct.tuned_station_info = type { i16, [25 x i32], i8, i8 }
%struct.fm_rds = type { i8, i8, %struct.wait_queue_head, i32, i32, i32, ptr }
%struct.fmtx_data = type { i8, i8, i8, i8, i16, i32, i32, %struct.tx_rds }
%struct.tx_rds = type { i8, [25 x i8], i8, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti_fmdrv\00", [23 x i8] zeroinitializer }, align 32
@fm_v4l2_init_video_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fmdev->mutex\00", [18 x i8] zeroinitializer }, align 32
@gradio_dev = internal global { %struct.video_device, [344 x i8] } zeroinitializer, align 32
@fm_viddev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @fm_drv_fops, i32 17761536, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"ti_fmdrv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @fm_drv_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@fm_v4l2_init_video_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fmdrv: Could not register video device\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fm_v4l2_init_video_device\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/radio/wl128x/fmdrv_v4l2.c\00", [56 x i8] zeroinitializer }, align 32
@fm_v4l2_init_video_device._entry_ptr = internal global ptr @fm_v4l2_init_video_device._entry, section ".printk_index", align 4
@fm_v4l2_init_video_device._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fmdrv_v4l2:550:(&fmdev->ctrl_handler)->_lock\00", [51 x i8] zeroinitializer }, align 32
@fm_v4l2_init_video_device._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fmdrv: (fmdev): Can't init ctrl handler\0A\00", [53 x i8] zeroinitializer }, align 32
@fm_v4l2_init_video_device._entry_ptr.8 = internal global ptr @fm_v4l2_init_video_device._entry.6, section ".printk_index", align 4
@fm_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @fm_g_volatile_ctrl, ptr null, ptr @fm_v4l2_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@fm_drv_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @fm_v4l2_fops_read, ptr @fm_v4l2_fops_write, ptr @fm_v4l2_fops_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @fm_v4l2_fops_open, ptr @fm_v4l2_fops_release }, [60 x i8] zeroinitializer }, align 32
@fm_drv_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @fm_v4l2_vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm_v4l2_vidioc_g_audio, ptr @fm_v4l2_vidioc_s_audio, ptr null, ptr null, ptr null, ptr @fm_v4l2_vidioc_g_modulator, ptr @fm_v4l2_vidioc_s_modulator, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm_v4l2_vidioc_g_tuner, ptr @fm_v4l2_vidioc_s_tuner, ptr @fm_v4l2_vidioc_g_freq, ptr @fm_v4l2_vidioc_s_freq, ptr null, ptr null, ptr null, ptr @fm_v4l2_vidioc_s_hw_freq_seek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@radio_disconnected = internal global { i1, [31 x i8] } zeroinitializer, align 32
@fm_v4l2_fops_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fmdrv: FM device is already disconnected\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fm_v4l2_fops_read\00", [46 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_read._entry_ptr = internal global ptr @fm_v4l2_fops_read._entry, section ".printk_index", align 4
@fm_v4l2_fops_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fmdrv: Unable to read current rds mode\0A\00", [54 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_read._entry_ptr.13 = internal global ptr @fm_v4l2_fops_read._entry.11, section ".printk_index", align 4
@fm_v4l2_fops_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fmdrv: Failed to enable rds mode\0A\00", [60 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_read._entry_ptr.16 = internal global ptr @fm_v4l2_fops_read._entry.14, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fmdrv: FM device is already opened\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fm_v4l2_fops_open\00", [46 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_open._entry_ptr = internal global ptr @fm_v4l2_fops_open._entry, section ".printk_index", align 4
@fm_v4l2_fops_open._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fmdrv: Unable to prepare FM CORE\0A\00", [60 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_open._entry_ptr.24 = internal global ptr @fm_v4l2_fops_open._entry.22, section ".printk_index", align 4
@fm_v4l2_fops_open._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fmdrv: Unable to load FM RX firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_open._entry_ptr.27 = internal global ptr @fm_v4l2_fops_open._entry.25, section ".printk_index", align 4
@fm_v4l2_fops_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fmdrv: Unable to turn off the chip\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fm_v4l2_fops_release\00", [43 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_release._entry_ptr = internal global ptr @fm_v4l2_fops_release._entry, section ".printk_index", align 4
@fm_v4l2_fops_release._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013fmdrv: FM CORE release failed\0A\00", [63 x i8] zeroinitializer }, align 32
@fm_v4l2_fops_release._entry_ptr.32 = internal global ptr @fm_v4l2_fops_release._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TI FM Radio\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UART\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_modulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013fmdrv: Failed to set TX mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fm_v4l2_vidioc_s_modulator\00", [37 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_modulator._entry_ptr = internal global ptr @fm_v4l2_vidioc_s_modulator._entry, section ".printk_index", align 4
@fm_v4l2_vidioc_s_modulator._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013fmdrv: Failed to set mono/stereo mode for TX\0A\00", [48 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_modulator._entry_ptr.40 = internal global ptr @fm_v4l2_vidioc_s_modulator._entry.38, section ".printk_index", align 4
@fm_v4l2_vidioc_s_modulator._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fmdrv: Failed to set rds mode for TX\0A\00", [56 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_modulator._entry_ptr.43 = internal global ptr @fm_v4l2_vidioc_s_modulator._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013fmdrv: Failed to set RX mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fm_v4l2_vidioc_s_tuner\00", [41 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_tuner._entry_ptr = internal global ptr @fm_v4l2_vidioc_s_tuner._entry, section ".printk_index", align 4
@fm_v4l2_vidioc_s_tuner._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fmdrv: Failed to set RX stereo/mono mode\0A\00", [52 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_tuner._entry_ptr.49 = internal global ptr @fm_v4l2_vidioc_s_tuner._entry.47, section ".printk_index", align 4
@fm_v4l2_vidioc_s_tuner._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.4, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fmdrv: Failed to set RX RDS mode\0A\00", [60 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_tuner._entry_ptr.52 = internal global ptr @fm_v4l2_vidioc_s_tuner._entry.50, section ".printk_index", align 4
@fm_v4l2_vidioc_g_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013fmdrv: Failed to get frequency\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fm_v4l2_vidioc_g_freq\00", [42 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_g_freq._entry_ptr = internal global ptr @fm_v4l2_vidioc_g_freq._entry, section ".printk_index", align 4
@fm_v4l2_vidioc_s_hw_freq_seek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.55, ptr @.str.4, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fm_v4l2_vidioc_s_hw_freq_seek\00", [34 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_hw_freq_seek._entry_ptr = internal global ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry, section ".printk_index", align 4
@fm_v4l2_vidioc_s_hw_freq_seek._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013fmdrv: RX seek failed - %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fm_v4l2_vidioc_s_hw_freq_seek._entry_ptr.58 = internal global ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry.56, section ".printk_index", align 4
@fm_g_volatile_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014fmdrv: %s: Unknown IOCTL: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fm_g_volatile_ctrl\00", [45 x i8] zeroinitializer }, align 32
@fm_g_volatile_ctrl._entry_ptr = internal global ptr @fm_g_volatile_ctrl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963781, i64 9963785, i64 10160496, i64 10160497]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 521, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 528, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"gradio_dev\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 26, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"fm_viddev_template\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 496, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 541, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 550, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 552, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"fm_ctrl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 478, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"fm_drv_fops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 468, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"fm_drv_ioctl_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 482, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"radio_disconnected\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 42, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 52, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 59, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 156, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 122, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 132, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 140, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 164, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 170, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 185, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 187, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 236, i32 23 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 447, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 458, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 463, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 280, i32 23 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 334, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 341, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 347, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 361, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 397, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 405, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [43 x i8] c"../drivers/media/radio/wl128x/fmdrv_v4l2.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 201, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @fm_g_volatile_ctrl._entry, ptr @fm_g_volatile_ctrl._entry_ptr, ptr @fm_v4l2_fops_open._entry, ptr @fm_v4l2_fops_open._entry.22, ptr @fm_v4l2_fops_open._entry.25, ptr @fm_v4l2_fops_open._entry_ptr, ptr @fm_v4l2_fops_open._entry_ptr.24, ptr @fm_v4l2_fops_open._entry_ptr.27, ptr @fm_v4l2_fops_read._entry, ptr @fm_v4l2_fops_read._entry.11, ptr @fm_v4l2_fops_read._entry.14, ptr @fm_v4l2_fops_read._entry_ptr, ptr @fm_v4l2_fops_read._entry_ptr.13, ptr @fm_v4l2_fops_read._entry_ptr.16, ptr @fm_v4l2_fops_release._entry, ptr @fm_v4l2_fops_release._entry.30, ptr @fm_v4l2_fops_release._entry_ptr, ptr @fm_v4l2_fops_release._entry_ptr.32, ptr @fm_v4l2_init_video_device._entry, ptr @fm_v4l2_init_video_device._entry.6, ptr @fm_v4l2_init_video_device._entry_ptr, ptr @fm_v4l2_init_video_device._entry_ptr.8, ptr @fm_v4l2_vidioc_g_freq._entry, ptr @fm_v4l2_vidioc_g_freq._entry_ptr, ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry, ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry.56, ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry_ptr, ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry_ptr.58, ptr @fm_v4l2_vidioc_s_modulator._entry, ptr @fm_v4l2_vidioc_s_modulator._entry.38, ptr @fm_v4l2_vidioc_s_modulator._entry.41, ptr @fm_v4l2_vidioc_s_modulator._entry_ptr, ptr @fm_v4l2_vidioc_s_modulator._entry_ptr.40, ptr @fm_v4l2_vidioc_s_modulator._entry_ptr.43, ptr @fm_v4l2_vidioc_s_tuner._entry, ptr @fm_v4l2_vidioc_s_tuner._entry.47, ptr @fm_v4l2_vidioc_s_tuner._entry.50, ptr @fm_v4l2_vidioc_s_tuner._entry_ptr, ptr @fm_v4l2_vidioc_s_tuner._entry_ptr.49, ptr @fm_v4l2_vidioc_s_tuner._entry_ptr.52, ptr @.str, ptr @fm_v4l2_init_video_device.__key, ptr @.str.1, ptr @gradio_dev, ptr @fm_viddev_template, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fm_v4l2_init_video_device._key, ptr @.str.5, ptr @.str.7, ptr @fm_ctrl_ops, ptr @fm_drv_fops, ptr @fm_drv_ioctl_ops, ptr @radio_disconnected, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_init_video_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gradio_dev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_viddev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_init_video_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_init_video_device._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_init_video_device._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_drv_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_drv_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_disconnected to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_open._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_open._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_fops_release._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_modulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_modulator._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_modulator._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_tuner._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_tuner._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_g_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_g_volatile_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_v4l2_init_video_device(ptr noundef %fmdev, i32 noundef %radio_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 1
  %name = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 1, i32 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 36) #6
  %call2 = tail call i32 @v4l2_device_register(ptr noundef null, ptr noundef %v4l2_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @fm_v4l2_init_video_device.__key) #6
  %0 = call ptr @memcpy(ptr @gradio_dev, ptr @fm_viddev_template, i32 1352)
  store ptr %fmdev, ptr getelementptr inbounds (%struct.video_device, ptr @gradio_dev, i32 0, i32 5, i32 8), align 4
  store ptr %mutex, ptr getelementptr inbounds (%struct.video_device, ptr @gradio_dev, i32 0, i32 26), align 8
  store ptr %v4l2_dev, ptr getelementptr inbounds (%struct.video_device, ptr @gradio_dev, i32 0, i32 7), align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef nonnull @gradio_dev, i32 noundef 2, i32 noundef %radio_nr, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %if.then6

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %1 = ptrtoint ptr %fmdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gradio_dev, ptr %fmdev, align 4
  %ctrl_handler = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 22
  store ptr %ctrl_handler, ptr getelementptr inbounds (%struct.video_device, ptr @gradio_dev, i32 0, i32 9), align 4
  %call17 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @fm_v4l2_init_video_device._key, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end28

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #6
  %2 = ptrtoint ptr %fmdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmdev, align 4
  tail call void @video_unregister_device(ptr noundef %3) #6
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end12
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @fm_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 70, i64 noundef 1, i64 noundef 70) #6
  %call32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @fm_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call34 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @fm_ctrl_ops, i32 noundef 10160496, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 2) #6
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @fm_ctrl_ops, i32 noundef 10160497, i64 noundef 91, i64 noundef 122, i64 noundef 1, i64 noundef 122) #6
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @fm_ctrl_ops, i32 noundef 10160498, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #6
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end28.cleanup_crit_edge, label %if.then40

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call38, i32 0, i32 20
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 128
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end28.cleanup_crit_edge, %do.end22, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ -16, %do.end22 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fm_v4l2_deinit_video_device() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.video_device, ptr @gradio_dev, i32 0, i32 5, i32 8), align 4
  %ctrl_handler = getelementptr inbounds %struct.fmdev, ptr %0, i32 0, i32 22
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #6
  tail call void @video_unregister_device(ptr noundef nonnull @gradio_dev) #6
  %v4l2_dev = getelementptr inbounds %struct.fmdev, ptr %0, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #6
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_fops_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %rds_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rds_mode) #6
  %0 = ptrtoint ptr %rds_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rds_mode, align 1, !annotation !134
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %.b = load i1, ptr @radio_disconnected, align 1
  br i1 %.b, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.fmdev, ptr %2, i32 0, i32 23
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @fm_rx_get_rds_mode(ptr noundef %2, ptr noundef nonnull %rds_mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %read_unlock

if.end13:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %rds_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rds_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp14 = icmp eq i8 %4, 0
  br i1 %cmp14, label %if.then16, label %if.end13.if.end27_crit_edge

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @fmc_set_rds_mode(ptr noundef %2, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.then16.if.end27_crit_edge

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %read_unlock

if.end27:                                         ; preds = %if.then16.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %call28 = call i32 @fmc_transfer_rds_from_internal_buff(ptr noundef %2, ptr noundef %file, ptr noundef %buf, i32 noundef %count) #6
  br label %read_unlock

read_unlock:                                      ; preds = %if.end27, %do.end23, %do.end10
  %ret.0 = phi i32 [ %call6, %do.end10 ], [ %call17, %do.end23 ], [ %call28, %if.end27 ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %read_unlock, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %read_unlock ], [ -5, %do.end ], [ -512, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rds_mode) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_fops_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %rds = alloca %struct.tx_rds, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rds) #6
  %0 = call ptr @memset(ptr %rds, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 32, i32 -1226833920) #10, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !136

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rds, i32 noundef 32) #6
  %2 = call i32 @llvm.read_register.i32(metadata !124) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !137
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rds, ptr noundef %buf, i32 noundef 32) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !136

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %rds, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds %struct.tx_rds, ptr %rds, i32 0, i32 1, i32 24
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex = getelementptr inbounds %struct.fmdev, ptr %8, i32 0, i32 23
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %text = getelementptr inbounds %struct.tx_rds, ptr %rds, i32 0, i32 1
  %9 = ptrtoint ptr %rds to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rds, align 4
  %call7 = call i32 @fm_tx_set_radio_text(ptr noundef %8, ptr noundef %text, i8 noundef zeroext %10) #6
  %af_freq = getelementptr inbounds %struct.tx_rds, ptr %rds, i32 0, i32 3
  %11 = ptrtoint ptr %af_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %af_freq, align 4
  %call8 = call i32 @fm_tx_set_af(ptr noundef %8, i32 noundef %12) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 32, %if.end5 ], [ -512, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rds) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_fops_poll(ptr noundef %file, ptr noundef %pts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call1 = tail call i32 @fmc_is_rds_data_available(ptr noundef %1, ptr noundef %file, ptr noundef %pts) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %. = select i1 %cmp, i32 65, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_fops_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @radio_disconnected, align 1
  br i1 %.b, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 23
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @fmc_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %do.end16

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #9
  br label %open_unlock

do.end16:                                         ; preds = %if.end5
  %call17 = tail call i32 @fmc_set_mode(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %open_unlock

if.end25:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @radio_disconnected, align 1
  br label %open_unlock

open_unlock:                                      ; preds = %if.end25, %do.end22, %do.end10
  %ret.0 = phi i32 [ %call6, %do.end10 ], [ %call17, %do.end22 ], [ %call17, %if.end25 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %open_unlock, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %ret.0, %open_unlock ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_fops_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %.b = load i1, ptr @radio_disconnected, align 1
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call1 = tail call i32 @fmc_set_mode(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %release_unlock

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @fmc_release(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %release_unlock

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @radio_disconnected, align 1
  br label %release_unlock

release_unlock:                                   ; preds = %if.end16, %do.end13, %do.end5
  %ret.0 = phi i32 [ %call1, %do.end5 ], [ %call8, %do.end13 ], [ %call8, %if.end16 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %release_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %release_unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_get_rds_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_set_rds_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_transfer_rds_from_internal_buff(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_radio_text(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_af(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_is_rds_data_available(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_set_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %capability) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %capability, ptr noundef nonnull @.str, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.33, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %bus_info, ptr @.str.34, i32 5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_g_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %audio, i32 0, i32 52)
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef 32) #6
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 2
  %1 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %capability, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm_v4l2_vidioc_s_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %audio) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_g_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp1.not = icmp eq i8 %5, 1
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %aud_mode = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 21, i32 4
  %6 = ptrtoint ptr %aud_mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aud_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp6 = icmp eq i16 %7, 0
  %cond = select i1 %cmp6, i32 2, i32 1
  %flag = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 21, i32 7, i32 2
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp10 = icmp eq i8 %9, 1
  %cond12 = select i1 %cmp10, i32 16, i32 0
  %or = or i32 %cond12, %cond
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %mod, i32 0, i32 5
  %10 = ptrtoint ptr %txsubchans to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %txsubchans, align 4
  %capability = getelementptr inbounds %struct.v4l2_modulator, ptr %mod, i32 0, i32 2
  %11 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 145, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_s_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp1.not = icmp eq i8 %5, 1
  br i1 %cmp1.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @fmc_set_mode(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.then3.if.end10_crit_edge, label %if.then3.cleanup.sink.split_crit_edge

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %mod, i32 0, i32 5
  %6 = ptrtoint ptr %txsubchans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txsubchans, align 4
  %8 = trunc i32 %7 to i16
  %9 = lshr i16 %8, 1
  %10 = and i16 %9, 1
  %11 = xor i16 %10, 1
  %call17 = tail call i32 @fm_tx_set_stereo_mono(ptr noundef %1, i16 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end10.cleanup.sink.split_crit_edge, label %if.end26

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end10
  %12 = trunc i32 %7 to i8
  %13 = lshr i8 %12, 4
  %14 = and i8 %13, 1
  %call27 = tail call i32 @fm_tx_set_rds_mode(ptr noundef %1, i8 noundef zeroext %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup.sink.split_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.36, %if.then3.cleanup.sink.split_crit_edge ], [ @.str.39, %if.end10.cleanup.sink.split_crit_edge ], [ @.str.42, %if.end26.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call4, %if.then3.cleanup.sink.split_crit_edge ], [ %call17, %if.end10.cleanup.sink.split_crit_edge ], [ %call27, %if.end26.cleanup.sink.split_crit_edge ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %tuner) #0 align 64 {
entry:
  %bottom_freq = alloca i32, align 4
  %top_freq = alloca i32, align 4
  %stereo_mono_mode = alloca i16, align 2
  %rssilvl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bottom_freq) #6
  %2 = ptrtoint ptr %bottom_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bottom_freq, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %top_freq) #6
  %3 = ptrtoint ptr %top_freq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %top_freq, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stereo_mono_mode) #6
  %4 = ptrtoint ptr %stereo_mono_mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %stereo_mono_mode, align 2, !annotation !134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rssilvl) #6
  %5 = ptrtoint ptr %rssilvl to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %rssilvl, align 2, !annotation !134
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp1.not = icmp eq i8 %9, 2
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @fm_rx_get_band_freq_range(ptr noundef %1, ptr noundef nonnull %bottom_freq, ptr noundef nonnull %top_freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 @fm_rx_get_stereo_mono(ptr noundef %1, ptr noundef nonnull %stereo_mono_mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call i32 @fm_rx_get_rssi_level(ptr noundef %1, ptr noundef nonnull %rssilvl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %call20 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.44, i32 noundef 32) #6
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %11 = ptrtoint ptr %bottom_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bottom_freq, align 4
  %mul = shl i32 %12, 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 4
  %13 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %rangelow, align 4
  %14 = ptrtoint ptr %top_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %top_freq, align 4
  %mul21 = shl i32 %15, 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 5
  %16 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul21, ptr %rangehigh, align 4
  %rds = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 20, i32 12
  %17 = ptrtoint ptr %rds to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp23 = icmp eq i8 %18, 1
  %or = select i1 %cmp23, i32 19, i32 3
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %19 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %rxsubchans, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 3
  %20 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 157, ptr %capability, align 4
  %21 = ptrtoint ptr %stereo_mono_mode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %stereo_mono_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  %cond26 = zext i1 %tobool.not to i32
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %23 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond26, ptr %audmode, align 4
  %24 = ptrtoint ptr %rssilvl to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rssilvl, align 2
  %add = add i16 %25, 128
  %conv29 = zext i16 %add to i32
  %mul30 = mul nuw nsw i32 %conv29, 257
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 8
  %26 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul30, ptr %signal, align 4
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 9
  %27 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %afc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rssilvl) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stereo_mono_mode) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %top_freq) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bottom_freq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %tuner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp ne i32 %5, 1
  %conv = zext i1 %cmp1 to i16
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 6
  %6 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxsubchans, align 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 1
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp5.not = icmp eq i8 %12, 2
  br i1 %cmp5.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @fmc_set_mode(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.cleanup.sink.split_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @fmc_set_stereo_mono(ptr noundef %1, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup.sink.split_crit_edge, label %if.end24

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end14
  %call25 = tail call i32 @fmc_set_rds_mode(ptr noundef %1, i8 noundef zeroext %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup.sink.split_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge
  %.str.51.sink = phi ptr [ @.str.45, %if.then7.cleanup.sink.split_crit_edge ], [ @.str.48, %if.end14.cleanup.sink.split_crit_edge ], [ @.str.51, %if.end24.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call8, %if.then7.cleanup.sink.split_crit_edge ], [ %call15, %if.end14.cleanup.sink.split_crit_edge ], [ %call25, %if.end24.cleanup.sink.split_crit_edge ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_g_freq(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %call1 = tail call i32 @fmc_get_freq(ptr noundef %1, ptr noundef %frequency) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %mul = shl i32 %3, 4
  store i32 %mul, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_s_freq(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %div2 = lshr i32 %3, 4
  %call1 = tail call i32 @fmc_set_freq(ptr noundef %1, i32 noundef %div2) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_vidioc_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %seek) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @fmc_set_mode(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.then2.if.end9_crit_edge, label %do.end

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 2
  %6 = ptrtoint ptr %seek_upward to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seek_upward, align 4
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 3
  %8 = ptrtoint ptr %wrap_around to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrap_around, align 4
  %spacing = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 4
  %10 = ptrtoint ptr %spacing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spacing, align 4
  %call10 = tail call i32 @fm_rx_seek(ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ -11, %entry.cleanup_crit_edge ], [ %call10, %do.end16 ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_stereo_mono(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_rds_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_get_band_freq_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_get_stereo_mono(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_get_rssi_level(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_set_stereo_mono(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_get_freq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_seek(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_g_volatile_ctrl(ptr nocapture noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10160498, i32 %1)
  %cond = icmp eq i32 %1, 10160498
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -808
  %call = tail call i32 @fm_tx_get_tune_cap_val(ptr noundef %add.ptr) #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %val, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_v4l2_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -808
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963781, label %sw.bb
    i32 9963785, label %sw.bb1
    i32 10160497, label %sw.bb5
    i32 10160496, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %call = tail call i32 @fm_rx_set_volume(ptr noundef %add.ptr, i16 noundef zeroext %conv) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %8 to i8
  %call4 = tail call i32 @fmc_set_mute_mode(ptr noundef %add.ptr, i8 noundef zeroext %conv3) #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %10 to i8
  %call8 = tail call i32 @fm_tx_set_pwr_lvl(ptr noundef %add.ptr, i8 noundef zeroext %conv7) #6
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val10, align 4
  %conv12 = and i32 %12, 255
  %call13 = tail call i32 @fm_tx_set_preemph_filter(ptr noundef %add.ptr, i32 noundef %conv12) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sw.bb9 ], [ %call8, %sw.bb5 ], [ %call4, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_get_tune_cap_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_volume(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_set_mute_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_pwr_lvl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_preemph_filter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 521, i32 32}
!2 = !{ptr @fm_v4l2_init_video_device.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 528, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 541, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fm_v4l2_init_video_device._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @fm_v4l2_init_video_device._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @fm_v4l2_init_video_device._key, !12, !"_key", i1 false, i1 false}
!12 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 550, i32 8}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 552, i32 3}
!16 = !{ptr @fm_v4l2_init_video_device._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @fm_v4l2_init_video_device._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @gradio_dev, !19, !"gradio_dev", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 26, i32 28}
!20 = !{ptr @fm_viddev_template, !21, !"fm_viddev_template", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 496, i32 34}
!22 = !{ptr @fm_drv_fops, !23, !"fm_drv_fops", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 468, i32 42}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 42, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fm_v4l2_fops_read._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @fm_v4l2_fops_read._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 52, i32 3}
!31 = !{ptr @fm_v4l2_fops_read._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fm_v4l2_fops_read._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 59, i32 4}
!35 = !{ptr @fm_v4l2_fops_read._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fm_v4l2_fops_read._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"radio_disconnected", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 27, i32 11}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 122, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fm_v4l2_fops_open._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @fm_v4l2_fops_open._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 132, i32 3}
!53 = !{ptr @fm_v4l2_fops_open._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @fm_v4l2_fops_open._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 140, i32 3}
!57 = !{ptr @fm_v4l2_fops_open._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @fm_v4l2_fops_open._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 164, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @fm_v4l2_fops_release._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @fm_v4l2_fops_release._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 170, i32 3}
!66 = !{ptr @fm_v4l2_fops_release._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @fm_v4l2_fops_release._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @fm_drv_ioctl_ops, !69, !"fm_drv_ioctl_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 482, i32 36}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 185, i32 28}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 187, i32 32}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 236, i32 23}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 447, i32 4}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fm_v4l2_vidioc_s_modulator._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @fm_v4l2_vidioc_s_modulator._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 458, i32 3}
!83 = !{ptr @fm_v4l2_vidioc_s_modulator._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fm_v4l2_vidioc_s_modulator._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 463, i32 3}
!87 = !{ptr @fm_v4l2_vidioc_s_modulator._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @fm_v4l2_vidioc_s_modulator._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 280, i32 23}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 334, i32 4}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @fm_v4l2_vidioc_s_tuner._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @fm_v4l2_vidioc_s_tuner._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 341, i32 3}
!98 = !{ptr @fm_v4l2_vidioc_s_tuner._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @fm_v4l2_vidioc_s_tuner._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 347, i32 3}
!102 = !{ptr @fm_v4l2_vidioc_s_tuner._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @fm_v4l2_vidioc_s_tuner._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 361, i32 3}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @fm_v4l2_vidioc_g_freq._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @fm_v4l2_vidioc_g_freq._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 397, i32 4}
!111 = !{ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 405, i32 3}
!115 = !{ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry.56, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @fm_v4l2_vidioc_s_hw_freq_seek._entry_ptr.58, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @fm_ctrl_ops, !118, !"fm_ctrl_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 478, i32 35}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/radio/wl128x/fmdrv_v4l2.c", i32 201, i32 3}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @fm_g_volatile_ctrl._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @fm_g_volatile_ctrl._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{!"sp"}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i64 2152340810, i64 2152340835}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 4836365}
!138 = !{i64 4836562}
!139 = !{i64 2152321795}
