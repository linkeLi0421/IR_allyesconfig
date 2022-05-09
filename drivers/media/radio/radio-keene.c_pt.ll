; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-keene.c_pt.bc'
source_filename = "../drivers/media/radio/radio-keene.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.keene_device = type { ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.mutex, ptr, i32, i8, i8, i8, i8, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_author297 = internal constant [53 x i8] c"radio_keene.author=Hans Verkuil <hverkuil@xs4all.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [52 x i8] c"radio_keene.description=Keene FM Transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [49 x i8] c"radio_keene.file=drivers/media/radio/radio-keene\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"radio_keene.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_radio_keene__305_404_usb_keene_driver_init6 = internal global ptr @usb_keene_driver_init, section ".initcall6.init", align 4
@usb_keene_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_keene_probe, ptr @usb_keene_disconnect, ptr null, ptr @usb_keene_suspend, ptr @usb_keene_resume, ptr @usb_keene_resume, ptr null, ptr null, ptr @usb_keene_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_keene_driver_exit = internal global ptr @usb_keene_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio_keene\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio-keene\00", [20 x i8] zeroinitializer }, align 32
@usb_keene_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1133, i16 2574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"B-LINK USB Audio  \00", [45 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kmalloc for keene_device failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_keene_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/radio/radio-keene.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry_ptr = internal global ptr @usb_keene_probe._entry, section ".printk_index", align 4
@usb_keene_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radio_keene:326:(hdl)->_lock\00", [35 x i8] zeroinitializer }, align 32
@keene_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @keene_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 346, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry_ptr.11 = internal global ptr @usb_keene_probe._entry.9, section ".printk_index", align 4
@usb_keene_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@usb_keene_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@usb_keene_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_modulator, ptr @vidioc_s_modulator, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 376, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry_ptr.15 = internal global ptr @usb_keene_probe._entry.13, section ".printk_index", align 4
@usb_keene_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 381, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"V4L2 device registered as %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usb_keene_probe._entry_ptr.19 = internal global ptr @usb_keene_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@keene_s_ctrl.db2tx = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\03\13\02\12\222!1 0@P", [20 x i8] zeroinitializer }, align 32
@keene_cmd_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 123, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s failed (%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keene_cmd_set\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@keene_cmd_set._entry_ptr = internal global ptr @keene_cmd_set._entry, section ".printk_index", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Keene FM Transmitter\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@keene_cmd_main._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.26, ptr @.str.5, i32 94, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"keene_cmd_main\00", [17 x i8] zeroinitializer }, align 32
@keene_cmd_main._entry_ptr = internal global ptr @keene_cmd_main._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963785, i64 10160465, i64 10160496, i64 10160497]
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"usb_keene_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 394, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 404, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 395, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"usb_keene_device_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 39, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 311, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 319, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 326, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"keene_ctrl_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 268, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 346, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 350, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"usb_keene_fops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 260, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"usb_keene_ioctl_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 272, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 376, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 380, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"db2tx\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 228, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 123, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 169, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 912, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 182, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [37 x i8] c"../drivers/media/radio/radio-keene.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 94, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_usb_keene_driver_exit, ptr @__initcall__kmod_radio_keene__305_404_usb_keene_driver_init6, ptr @keene_cmd_main._entry, ptr @keene_cmd_main._entry_ptr, ptr @keene_cmd_set._entry, ptr @keene_cmd_set._entry_ptr, ptr @usb_keene_driver_exit, ptr @usb_keene_probe._entry, ptr @usb_keene_probe._entry.13, ptr @usb_keene_probe._entry.16, ptr @usb_keene_probe._entry.9, ptr @usb_keene_probe._entry_ptr, ptr @usb_keene_probe._entry_ptr.11, ptr @usb_keene_probe._entry_ptr.15, ptr @usb_keene_probe._entry_ptr.19, ptr @usb_keene_driver, ptr @.str, ptr @.str.1, ptr @usb_keene_device_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @usb_keene_probe._key, ptr @.str.8, ptr @keene_ctrl_ops, ptr @.str.10, ptr @usb_keene_probe.__key, ptr @.str.12, ptr @usb_keene_fops, ptr @usb_keene_ioctl_ops, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @keene_s_ctrl.db2tx, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keene_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_keene_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keene_s_ctrl.db2tx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keene_cmd_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keene_cmd_main._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_keene_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_keene_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_keene_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @usb_keene_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_keene_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %product = getelementptr i8, ptr %1, i32 1104
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %product, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(19) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1784) #12
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.do.end_crit_edge, label %if.then7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then7:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 8) #12
  %buffer = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %buffer, align 4
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.then7.do.end_crit_edge, label %if.end15

if.then7.do.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.then7.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.3) #13
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then7
  %hdl16 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 4
  %call17 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl16, i32 noundef 4, ptr noundef nonnull @usb_keene_probe._key, ptr noundef nonnull @.str.8) #8
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl16, ptr noundef nonnull @keene_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call19 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl16, ptr noundef nonnull @keene_ctrl_ops, i32 noundef 10160496, i8 noundef zeroext 2, i64 noundef 1, i8 noundef zeroext 1) #8
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl16, ptr noundef nonnull @keene_ctrl_ops, i32 noundef 10160497, i64 noundef 84, i64 noundef 118, i64 noundef 1, i64 noundef 118) #8
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl16, ptr noundef nonnull @keene_ctrl_ops, i32 noundef 10160465, i64 noundef -15, i64 noundef 18, i64 noundef 3, i64 noundef 0) #8
  %pa = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %pa to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 118, ptr %pa, align 1
  %tx = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 50, ptr %tx, align 4
  %stereo = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stereo, align 2
  %error = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 4, i32 9
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl16) #8
  br label %err_v4l2

if.end25:                                         ; preds = %if.end15
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %v4l2_dev = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 3
  %call27 = tail call i32 @v4l2_device_register(ptr noundef %dev26, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end31, label %do.body34

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.10) #13
  br label %err_v4l2

do.body34:                                        ; preds = %if.end25
  %lock = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @usb_keene_probe.__key) #8
  %ctrl_handler = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdl16, ptr %ctrl_handler, align 4
  %release = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %13 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @usb_keene_video_device_release, ptr %release, align 4
  %vdev = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 12
  %name40 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call42 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name40, i32 noundef 32) #8
  %v4l2_dev45 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %v4l2_dev45 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %v4l2_dev, ptr %v4l2_dev45, align 4
  %fops = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @usb_keene_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 24
  %16 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @usb_keene_ioctl_ops, ptr %ioctl_ops, align 4
  %lock50 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 26
  %17 = ptrtoint ptr %lock50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %lock50, align 8
  %release52 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 23
  %18 = ptrtoint ptr %release52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @video_device_release_empty, ptr %release52, align 8
  %vfl_dir = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 14
  %19 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 786432, ptr %device_caps, align 8
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %add.ptr.i137 = getelementptr i8, ptr %22, i32 -128
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i137, ptr %call7.i.i, align 8
  %intf56 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %intf56 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %intf, ptr %intf56, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %driver_data.i.i138 = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %26 = ptrtoint ptr %driver_data.i.i138 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %driver_data.i.i138, align 4
  tail call void @msleep(i32 noundef 20) #8
  %call59 = tail call fastcc i32 @keene_cmd_main(ptr noundef nonnull %call7.i.i, i32 noundef 1522560, i1 noundef zeroext false)
  %27 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp62 = icmp slt i32 %call.i, 0
  br i1 %cmp62, label %do.end66, label %if.end68

do.end66:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.14) #13
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %err_v4l2

if.end68:                                         ; preds = %do.body34
  %call69 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl16) #8
  %init_name.i.i = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end68.video_device_node_name.exit_crit_edge

if.end68.video_device_node_name.exit_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.keene_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.end68.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end68.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i) #13
  br label %cleanup

err_v4l2:                                         ; preds = %do.end66, %do.end31, %if.then23
  %retval1.0 = phi i32 [ %11, %if.then23 ], [ %call27, %do.end31 ], [ %call.i, %do.end66 ]
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %36) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2, %video_device_node_name.exit, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ %retval1.0, %err_v4l2 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_keene_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr i8, ptr %1, i32 312
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call4 = tail call i32 @v4l2_device_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_keene_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1360
  %buffer.i = getelementptr i8, ptr %1, i32 404
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  %5 = load ptr, ptr %buffer.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 80, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %buffer.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx6.i, align 1
  %9 = load ptr, ptr %buffer.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx11.i, align 1
  %pa.i = getelementptr i8, ptr %1, i32 413
  %11 = ptrtoint ptr %pa.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pa.i, align 1
  %13 = load ptr, ptr %buffer.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %arrayidx13.i, align 1
  %muted.i = getelementptr i8, ptr %1, i32 415
  %15 = ptrtoint ptr %muted.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %muted.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not.i = icmp eq i8 %16, 0
  %or22.i = select i1 %tobool14.not.i, i8 10, i8 6
  %17 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or22.i, ptr %arrayidx25.i, align 1
  %20 = load ptr, ptr %buffer.i, align 4
  %arrayidx27.i = getelementptr i8, ptr %20, i32 6
  %21 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx27.i, align 1
  %22 = load ptr, ptr %buffer.i, align 4
  %arrayidx29.i = getelementptr i8, ptr %22, i32 7
  %23 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx29.i, align 1
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or31.i = or i32 %shl.i.i, -2147483648
  %28 = load ptr, ptr %buffer.i, align 4
  %call33.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or31.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2, ptr noundef %28, i16 noundef zeroext 8, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp.i = icmp slt i32 %call33.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.keene_cmd_main.exit_crit_edge

entry.keene_cmd_main.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %keene_cmd_main.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %1, i32 -1112
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26, i32 noundef %call33.i) #13
  br label %keene_cmd_main.exit

keene_cmd_main.exit:                              ; preds = %do.end.i, %entry.keene_cmd_main.exit_crit_edge
  %retval.0.i = phi i32 [ %call33.i, %do.end.i ], [ 0, %entry.keene_cmd_main.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_keene_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.06 = phi i32 [ 50, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.06, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1360
  %call2 = tail call fastcc i32 @keene_cmd_set(ptr noundef %add.ptr.i)
  %curfreq = getelementptr i8, ptr %1, i32 408
  %3 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curfreq, align 8
  %call3 = tail call fastcc i32 @keene_cmd_main(ptr noundef %add.ptr.i, i32 noundef %4, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_keene_video_device_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %v4l2_dev, i32 -1360
  %hdl = getelementptr i8, ptr %v4l2_dev, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  %buffer = getelementptr i8, ptr %v4l2_dev, i32 404
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keene_cmd_main(ptr noundef %radio, i32 noundef %freq, i1 noundef zeroext %play) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool.not = icmp eq i32 %freq, 0
  %sub = add i32 %freq, -1216000
  %div = udiv i32 %sub, 800
  %phi.cast60 = and i32 %div, 65535
  %cond21 = select i1 %tobool.not, i8 0, i8 16
  %cond = select i1 %tobool.not, i32 0, i32 %phi.cast60
  %buffer = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 6
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %buffer, align 4
  %arrayidx2 = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 80, ptr %arrayidx2, align 1
  %5 = lshr i32 %cond, 8
  %conv4 = trunc i32 %5 to i8
  %6 = load ptr, ptr %buffer, align 4
  %arrayidx6 = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %arrayidx6, align 1
  %conv9 = trunc i32 %cond to i8
  %8 = load ptr, ptr %buffer, align 4
  %arrayidx11 = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9, ptr %arrayidx11, align 1
  %pa = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 9
  %10 = ptrtoint ptr %pa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pa, align 1
  %12 = load ptr, ptr %buffer, align 4
  %arrayidx13 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx13, align 1
  %muted = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 11
  %14 = ptrtoint ptr %muted to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %muted, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  %cond16 = select i1 %tobool14.not, i8 8, i8 4
  %cond19 = select i1 %play, i8 1, i8 2
  %or = or i8 %cond21, %cond19
  %or22 = or i8 %or, %cond16
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx25 = getelementptr i8, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or22, ptr %arrayidx25, align 1
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx27 = getelementptr i8, ptr %19, i32 6
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx27, align 1
  %21 = load ptr, ptr %buffer, align 4
  %arrayidx29 = getelementptr i8, ptr %21, i32 7
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx29, align 1
  %23 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %radio, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i = shl i32 %26, 8
  %or31 = or i32 %shl.i, -2147483648
  %27 = load ptr, ptr %buffer, align 4
  %call33 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or31, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2, ptr noundef %27, i16 noundef zeroext 8, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 2, i32 5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26, i32 noundef %call33) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %curfreq = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 7
  %28 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %freq, ptr %curfreq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call33, %do.end ], [ 0, %if.then36 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keene_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1488
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963785, label %sw.bb
    i32 10160497, label %sw.bb1
    i32 10160496, label %sw.bb4
    i32 10160465, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %muted = getelementptr i8, ptr %1, i32 287
  %frombool = zext i1 %tobool to i8
  %7 = ptrtoint ptr %muted to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %muted, align 1
  %buffer.i = getelementptr i8, ptr %1, i32 276
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %9, align 1
  %11 = load ptr, ptr %buffer.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 80, ptr %arrayidx2.i, align 1
  %13 = load ptr, ptr %buffer.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx6.i, align 1
  %15 = load ptr, ptr %buffer.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx11.i, align 1
  %pa.i = getelementptr i8, ptr %1, i32 285
  %17 = ptrtoint ptr %pa.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pa.i, align 1
  %19 = load ptr, ptr %buffer.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %arrayidx13.i, align 1
  %21 = load i8, ptr %muted, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not.i = icmp eq i8 %21, 0
  %or22.i = select i1 %tobool14.not.i, i8 9, i8 5
  %22 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %23, i32 5
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or22.i, ptr %arrayidx25.i, align 1
  %25 = load ptr, ptr %buffer.i, align 4
  %arrayidx27.i = getelementptr i8, ptr %25, i32 6
  %26 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx27.i, align 1
  %27 = load ptr, ptr %buffer.i, align 4
  %arrayidx29.i = getelementptr i8, ptr %27, i32 7
  %28 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx29.i, align 1
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i = shl i32 %32, 8
  %or31.i = or i32 %shl.i.i, -2147483648
  %33 = load ptr, ptr %buffer.i, align 4
  %call33.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or31.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2, ptr noundef %33, i16 noundef zeroext 8, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp.i = icmp slt i32 %call33.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %1, i32 -1240
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26, i32 noundef %call33.i) #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val2, align 4
  %36 = mul i32 %35, 100
  %mul = add i32 %36, -7100
  %div = sdiv i32 %mul, 62
  %conv = trunc i32 %div to i8
  %pa = getelementptr i8, ptr %1, i32 285
  %37 = ptrtoint ptr %pa to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %pa, align 1
  %buffer.i30 = getelementptr i8, ptr %1, i32 276
  %38 = ptrtoint ptr %buffer.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer.i30, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %39, align 1
  %41 = load ptr, ptr %buffer.i30, align 4
  %arrayidx2.i31 = getelementptr i8, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx2.i31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 80, ptr %arrayidx2.i31, align 1
  %43 = load ptr, ptr %buffer.i30, align 4
  %arrayidx6.i32 = getelementptr i8, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx6.i32 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx6.i32, align 1
  %45 = load ptr, ptr %buffer.i30, align 4
  %arrayidx11.i33 = getelementptr i8, ptr %45, i32 3
  %46 = ptrtoint ptr %arrayidx11.i33 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx11.i33, align 1
  %47 = load i8, ptr %pa, align 1
  %48 = load ptr, ptr %buffer.i30, align 4
  %arrayidx13.i35 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %arrayidx13.i35 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %arrayidx13.i35, align 1
  %muted.i36 = getelementptr i8, ptr %1, i32 287
  %50 = ptrtoint ptr %muted.i36 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %muted.i36, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool14.not.i37 = icmp eq i8 %51, 0
  %or22.i39 = select i1 %tobool14.not.i37, i8 9, i8 5
  %52 = ptrtoint ptr %buffer.i30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer.i30, align 4
  %arrayidx25.i40 = getelementptr i8, ptr %53, i32 5
  %54 = ptrtoint ptr %arrayidx25.i40 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %or22.i39, ptr %arrayidx25.i40, align 1
  %55 = load ptr, ptr %buffer.i30, align 4
  %arrayidx27.i41 = getelementptr i8, ptr %55, i32 6
  %56 = ptrtoint ptr %arrayidx27.i41 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx27.i41, align 1
  %57 = load ptr, ptr %buffer.i30, align 4
  %arrayidx29.i42 = getelementptr i8, ptr %57, i32 7
  %58 = ptrtoint ptr %arrayidx29.i42 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx29.i42, align 1
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i43 = shl i32 %62, 8
  %or31.i44 = or i32 %shl.i.i43, -2147483648
  %63 = load ptr, ptr %buffer.i30, align 4
  %call33.i45 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or31.i44, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2, ptr noundef %63, i16 noundef zeroext 8, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i45)
  %cmp.i46 = icmp slt i32 %call33.i45, 0
  br i1 %cmp.i46, label %do.end.i48, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i48:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i47 = getelementptr i8, ptr %1, i32 -1240
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i47, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26, i32 noundef %call33.i45) #13
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %64 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp = icmp eq i32 %65, 2
  %preemph_75_us = getelementptr i8, ptr %1, i32 288
  %frombool7 = zext i1 %cmp to i8
  %66 = ptrtoint ptr %preemph_75_us to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool7, ptr %preemph_75_us, align 8
  %call8 = tail call fastcc i32 @keene_cmd_set(ptr noundef %add.ptr)
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %67 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val10, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 11
  %69 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %minimum, align 8
  %conv11 = trunc i64 %70 to i32
  %sub12 = sub i32 %68, %conv11
  %71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 18
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %71, align 8
  %conv13 = trunc i64 %73 to i32
  %div14 = sdiv i32 %sub12, %conv13
  %arrayidx = getelementptr [12 x i8], ptr @keene_s_ctrl.db2tx, i32 0, i32 %div14
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx, align 1
  %tx = getelementptr i8, ptr %1, i32 284
  %76 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %tx, align 4
  %call15 = tail call fastcc i32 @keene_cmd_set(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb4, %do.end.i48, %sw.bb1.cleanup_crit_edge, %do.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.bb9 ], [ %call8, %sw.bb4 ], [ -22, %entry.cleanup_crit_edge ], [ %call33.i, %do.end.i ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call33.i45, %do.end.i48 ], [ 0, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keene_cmd_set(ptr noundef %radio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 6
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %buffer, align 4
  %arrayidx2 = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 81, ptr %arrayidx2, align 1
  %tx = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 8
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx, align 4
  %7 = load ptr, ptr %buffer, align 4
  %arrayidx4 = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %6, ptr %arrayidx4, align 1
  %stereo = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 10
  %9 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stereo, align 2, !range !79
  %preemph_75_us = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 12
  %11 = ptrtoint ptr %preemph_75_us to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %preemph_75_us, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  %cond6 = select i1 %tobool5.not, i8 0, i8 4
  %13 = or i8 %cond6, %10
  %or = xor i8 %13, 1
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %arrayidx8 = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or, ptr %arrayidx8, align 1
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx10 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx10, align 1
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx12 = getelementptr i8, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx12, align 1
  %21 = load ptr, ptr %buffer, align 4
  %arrayidx14 = getelementptr i8, ptr %21, i32 6
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx14, align 1
  %23 = load ptr, ptr %buffer, align 4
  %arrayidx16 = getelementptr i8, ptr %23, i32 7
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx16, align 1
  %25 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %radio, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i = shl i32 %28, 8
  %or18 = or i32 %shl.i, -2147483648
  %29 = load ptr, ptr %buffer, align 4
  %call20 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or18, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2, ptr noundef %29, i16 noundef zeroext 8, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.keene_device, ptr %radio, i32 0, i32 2, i32 5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.23, i32 noundef 32) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef %7, ptr noundef %devpath.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_modulator, ptr %v, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef 32) #8
  %rangelow = getelementptr inbounds %struct.v4l2_modulator, ptr %v, i32 0, i32 3
  %4 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1216000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_modulator, ptr %v, i32 0, i32 4
  %5 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1728000, ptr %rangehigh, align 4
  %stereo = getelementptr inbounds %struct.keene_device, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stereo, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %v, i32 0, i32 5
  %8 = ptrtoint ptr %txsubchans to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %txsubchans, align 4
  %capability = getelementptr inbounds %struct.v4l2_modulator, ptr %v, i32 0, i32 2
  %9 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 17, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %v, i32 0, i32 5
  %4 = ptrtoint ptr %txsubchans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txsubchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  %stereo = getelementptr inbounds %struct.keene_device, ptr %3, i32 0, i32 10
  %frombool = zext i1 %cmp1 to i8
  %6 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %stereo, align 2
  %call2 = tail call fastcc i32 @keene_cmd_set(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %curfreq = getelementptr inbounds %struct.keene_device, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curfreq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.umax.i32(i32 %3, i32 1216000)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1728000)
  %call9 = tail call fastcc i32 @keene_cmd_main(ptr noundef %1, i32 noundef %9, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-keene.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-keene.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-keene.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_radio_keene__305_404_usb_keene_driver_init6, !8, !"__initcall__kmod_radio_keene__305_404_usb_keene_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-keene.c", i32 404, i32 1}
!9 = !{ptr @__exitcall_usb_keene_driver_exit, !8, !"__exitcall_usb_keene_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/radio/radio-keene.c", i32 395, i32 12}
!13 = !{ptr @usb_keene_driver, !14, !"usb_keene_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-keene.c", i32 394, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/radio-keene.c", i32 311, i32 43}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/radio/radio-keene.c", i32 319, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @usb_keene_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @usb_keene_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @usb_keene_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/radio-keene.c", i32 326, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-keene.c", i32 346, i32 3}
!30 = !{ptr @usb_keene_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @usb_keene_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @usb_keene_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-keene.c", i32 350, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-keene.c", i32 376, i32 3}
!37 = !{ptr @usb_keene_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_keene_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-keene.c", i32 380, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @usb_keene_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @usb_keene_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @keene_ctrl_ops, !45, !"keene_ctrl_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-keene.c", i32 268, i32 35}
!46 = !{ptr @keene_s_ctrl.db2tx, !47, !"db2tx", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/radio-keene.c", i32 228, i32 18}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/radio-keene.c", i32 123, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @keene_cmd_set._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @keene_cmd_set._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @usb_keene_fops, !55, !"usb_keene_fops", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-keene.c", i32 260, i32 42}
!56 = !{ptr @usb_keene_ioctl_ops, !57, !"usb_keene_ioctl_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/radio/radio-keene.c", i32 272, i32 36}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-keene.c", i32 169, i32 19}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/usb.h", i32 912, i32 31}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/radio-keene.c", i32 182, i32 19}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/radio/radio-keene.c", i32 94, i32 3}
!66 = !{ptr @keene_cmd_main._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @keene_cmd_main._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @usb_keene_device_table, !69, !"usb_keene_device_table", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/radio-keene.c", i32 39, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
