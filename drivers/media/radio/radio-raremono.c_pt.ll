; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-raremono.c_pt.bc'
source_filename = "../drivers/media/radio/radio-raremono.c"
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.raremono_device = type { ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.mutex, ptr, i32, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_author297 = internal constant [56 x i8] c"radio_raremono.author=Hans Verkuil <hverkuil@xs4all.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [74 x i8] c"radio_raremono.description=Thanko's Raremono AM/FM/SW Receiver USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [55 x i8] c"radio_raremono.file=drivers/media/radio/radio-raremono\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [30 x i8] c"radio_raremono.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_radio_raremono__305_389_usb_raremono_driver_init6 = internal global ptr @usb_raremono_driver_init, section ".initcall6.init", align 4
@usb_raremono_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_raremono_probe, ptr @usb_raremono_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_raremono_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_raremono_driver_exit = internal global ptr @usb_raremono_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radio_raremono\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radio-raremono\00", [17 x i8] zeroinitializer }, align 32
@usb_raremono_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 4292, i16 -32374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"this is not Thanko's Raremono.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb_raremono_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/radio/radio-raremono.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry_ptr = internal global ptr @usb_raremono_probe._entry, section ".printk_index", align 4
@usb_raremono_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Thanko's Raremono connected: (%04X:%04X)\0A\00", [54 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry_ptr.9 = internal global ptr @usb_raremono_probe._entry.7, section ".printk_index", align 4
@usb_raremono_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 344, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry_ptr.13 = internal global ptr @usb_raremono_probe._entry.10, section ".printk_index", align 4
@usb_raremono_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@usb_raremono_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr null, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@usb_raremono_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr @vidioc_enum_freq_bands, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"V4L2 device registered as %s\0A\00", [34 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry_ptr.17 = internal global ptr @usb_raremono_probe._entry.15, section ".printk_index", align 4
@usb_raremono_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 372, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_raremono_probe._entry_ptr.20 = internal global ptr @usb_raremono_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Thanko's Raremono\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AM/FM/SW\00", [23 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 226, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s failed (%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry_ptr = internal global ptr @vidioc_g_tuner._entry, section ".printk_index", align 4
@bands = internal constant { [3 x %struct.v4l2_frequency_band], [32 x i8] } { [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1041, i32 1024000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1025, i32 8320, i32 27360, i32 8, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 2, i32 1025, i32 36800, i32 417600, i32 8, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@raremono_cmd_main._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.4, i32 150, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raremono_cmd_main\00", [46 x i8] zeroinitializer }, align 32
@raremono_cmd_main._entry_ptr = internal global ptr @raremono_cmd_main._entry, section ".printk_index", align 4
@usb_raremono_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Thanko's Raremono disconnected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_raremono_disconnect\00", [40 x i8] zeroinitializer }, align 32
@usb_raremono_disconnect._entry_ptr = internal global ptr @usb_raremono_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"usb_raremono_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 382, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 389, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 383, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"usb_raremono_device_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 49, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 334, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 339, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 344, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 348, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"usb_raremono_fops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 281, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"usb_raremono_ioctl_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 288, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 368, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 372, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 185, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 912, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 213, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 226, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 73, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 150, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [40 x i8] c"../drivers/media/radio/radio-raremono.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 166, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_usb_raremono_driver_exit, ptr @__initcall__kmod_radio_raremono__305_389_usb_raremono_driver_init6, ptr @raremono_cmd_main._entry, ptr @raremono_cmd_main._entry_ptr, ptr @usb_raremono_disconnect._entry, ptr @usb_raremono_disconnect._entry_ptr, ptr @usb_raremono_driver_exit, ptr @usb_raremono_probe._entry, ptr @usb_raremono_probe._entry.10, ptr @usb_raremono_probe._entry.15, ptr @usb_raremono_probe._entry.18, ptr @usb_raremono_probe._entry.7, ptr @usb_raremono_probe._entry_ptr, ptr @usb_raremono_probe._entry_ptr.13, ptr @usb_raremono_probe._entry_ptr.17, ptr @usb_raremono_probe._entry_ptr.20, ptr @usb_raremono_probe._entry_ptr.9, ptr @vidioc_g_tuner._entry, ptr @vidioc_g_tuner._entry_ptr, ptr @usb_raremono_driver, ptr @.str, ptr @.str.1, ptr @usb_raremono_device_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @usb_raremono_probe.__key, ptr @.str.14, ptr @usb_raremono_fops, ptr @usb_raremono_ioctl_ops, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @bands, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raremono_cmd_main._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_raremono_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_raremono_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_raremono_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_raremono_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @usb_raremono_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_raremono_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1592) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #12
  %buffer = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %buffer, align 4
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %intf8 = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %intf8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %intf, ptr %intf8, align 4
  tail call void @msleep(i32 noundef 20) #9
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or12 = or i32 %shl.i, -2147483520
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %call14 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or12, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 1, i16 noundef zeroext 2, ptr noundef %12, i16 noundef zeroext 3, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 3
  br i1 %cmp.not, label %lor.lhs.false, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end6
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx, align 1
  %17 = and i16 %16, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 578, i16 %17)
  %cmp17 = icmp eq i16 %17, 578
  br i1 %cmp17, label %lor.lhs.false.do.end_crit_edge, label %do.end23

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end6.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %free_mem

do.end23:                                         ; preds = %lor.lhs.false
  %dev24 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idVendor, align 2
  %conv25 = zext i16 %19 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %20 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idProduct, align 4
  %conv26 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.8, i32 noundef %conv25, i32 noundef %conv26) #13
  %v4l2_dev = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 3
  %call28 = tail call i32 @v4l2_device_register(ptr noundef %dev24, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %do.body37

do.end34:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.11) #13
  br label %free_mem

do.body37:                                        ; preds = %do.end23
  %lock = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @usb_raremono_probe.__key) #9
  %vdev = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 12
  %name41 = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call43 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name41, i32 noundef 32) #9
  %v4l2_dev46 = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %v4l2_dev46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %v4l2_dev, ptr %v4l2_dev46, align 4
  %fops = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @usb_raremono_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 24
  %24 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @usb_raremono_ioctl_ops, ptr %ioctl_ops, align 4
  %lock51 = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 26
  %25 = ptrtoint ptr %lock51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock, ptr %lock51, align 8
  %release = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 23
  %26 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @video_device_release_empty, ptr %release, align 8
  %device_caps = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327680, ptr %device_caps, align 8
  %release55 = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %28 = ptrtoint ptr %release55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @raremono_device_release, ptr %release55, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %driver_data.i.i121 = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %30 = ptrtoint ptr %driver_data.i.i121 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %driver_data.i.i121, align 4
  %call58 = tail call fastcc i32 @raremono_cmd_main(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 95160)
  %31 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fops, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp61 = icmp eq i32 %call.i, 0
  br i1 %cmp61, label %do.end66, label %do.end73

do.end66:                                         ; preds = %do.body37
  %init_name.i.i = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end66.video_device_node_name.exit_crit_edge

do.end66.video_device_node_name.exit_crit_edge:   ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.raremono_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end66.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %do.end66.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i) #13
  br label %cleanup

do.end73:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.19) #13
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %free_mem

free_mem:                                         ; preds = %do.end73, %do.end34, %do.end
  %retval1.0 = phi i32 [ -19, %do.end ], [ %call28, %do.end34 ], [ %call.i, %do.end73 ]
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %40) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_mem, %video_device_node_name.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %free_mem ], [ 0, %video_device_node_name.exit ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_raremono_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #13
  %lock = getelementptr i8, ptr %1, i32 128
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  tail call void @v4l2_device_disconnect(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call4 = tail call i32 @v4l2_device_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raremono_device_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %v4l2_dev, i32 -1360
  %buffer = getelementptr i8, ptr %v4l2_dev, i32 220
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raremono_cmd_main(ptr nocapture noundef %radio, i32 noundef %band, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %band to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %band, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %freq, 10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %entry.sw.epilog_crit_edge
  %freq.addr.0 = phi i32 [ %freq, %sw.default ], [ %div, %sw.bb ], [ %freq, %entry.sw.epilog_crit_edge ]
  %band_offset.0 = phi i8 [ 6, %sw.default ], [ 5, %sw.bb ], [ 4, %entry.sw.epilog_crit_edge ]
  %buffer = getelementptr inbounds %struct.raremono_device, ptr %radio, i32 0, i32 5
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %band_offset.0, ptr %2, align 1
  %shr = lshr i32 %freq.addr.0, 8
  %conv2 = trunc i32 %shr to i8
  %4 = load ptr, ptr %buffer, align 4
  %arrayidx4 = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %arrayidx4, align 1
  %conv5 = trunc i32 %freq.addr.0 to i8
  %6 = load ptr, ptr %buffer, align 4
  %arrayidx7 = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %arrayidx7, align 1
  %8 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %radio, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv11 = zext i8 %14 to i16
  %add12 = or i16 %conv11, 768
  %call15 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %add12, i16 noundef zeroext 2, ptr noundef %12, i16 noundef zeroext 3, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %v4l2_dev = getelementptr inbounds %struct.raremono_device, ptr %radio, i32 0, i32 3
  %15 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, i32 noundef %call15) #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp17 = icmp eq i32 %band, 0
  %mul = mul i32 %freq.addr.0, 10
  %cond = select i1 %cmp17, i32 %mul, i32 %freq.addr.0
  %curfreq = getelementptr inbounds %struct.raremono_device, ptr %radio, i32 0, i32 7
  %17 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %curfreq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call15, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.1, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.21, i32 noundef 32) #9
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
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %7, ptr noundef %devpath.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.23, i32 noundef 32) #9
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %4 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1041, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %5 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8320, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %6 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1728000, ptr %rangehigh, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %7 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %rxsubchans, align 4
  %curfreq = getelementptr inbounds %struct.raremono_device, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curfreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63999, i32 %9)
  %cmp2 = icmp ugt i32 %9, 63999
  %cond = zext i1 %cmp2 to i32
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %10 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %audmode, align 4
  %buffer = getelementptr inbounds %struct.raremono_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = call ptr @memset(ptr %12, i32 1, i32 64)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i = shl i32 %17, 8
  %or5 = or i32 %shl.i, -2147483520
  %18 = load ptr, ptr %buffer, align 4
  %call7 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or5, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 781, i16 noundef zeroext 2, ptr noundef %18, i16 noundef zeroext 64, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %v4l2_dev = getelementptr inbounds %struct.raremono_device, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %v4l2_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call7) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i8, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = and i8 %24, 15
  %and = zext i8 %25 to i32
  %arrayidx13 = getelementptr i8, ptr %22, i32 2
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %27 to i32
  %28 = shl nuw nsw i32 %and, 12
  %29 = shl nuw nsw i32 %conv14, 4
  %shl16 = or i32 %28, %29
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %30 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl16, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %curfreq = getelementptr inbounds %struct.raremono_device, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curfreq, align 4
  %mul = shl i32 %6, 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720799, i32 %7)
  %cmp2 = icmp ugt i32 %7, 720799
  call void @__sanitizer_cov_trace_const_cmp4(i32 32081, i32 %7)
  %cmp5 = icmp ult i32 %7, 32081
  %. = select i1 %cmp5, i32 1, i32 2
  %band.0 = select i1 %cmp2, i32 0, i32 %.
  %rangelow = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %band.0, i32 4
  %8 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rangelow, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9)
  %rangehigh = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %band.0, i32 5
  %11 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rangehigh, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12)
  %div35 = lshr i32 %13, 4
  %14 = zext i32 %band.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %band.0, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.sw.epilog.i_crit_edge
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 %13, 160
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i, %if.end.sw.epilog.i_crit_edge
  %freq.addr.0.i = phi i32 [ %div35, %sw.default.i ], [ %div.i, %sw.bb.i ], [ %div35, %if.end.sw.epilog.i_crit_edge ]
  %band_offset.0.i = phi i8 [ 6, %sw.default.i ], [ 5, %sw.bb.i ], [ 4, %if.end.sw.epilog.i_crit_edge ]
  %buffer.i = getelementptr inbounds %struct.raremono_device, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %band_offset.0.i, ptr %16, align 1
  %shr.i = lshr i32 %freq.addr.0.i, 8
  %conv2.i = trunc i32 %shr.i to i8
  %18 = load ptr, ptr %buffer.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %conv5.i = trunc i32 %freq.addr.0.i to i8
  %20 = load ptr, ptr %buffer.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i, ptr %arrayidx7.i, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %25, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %26 = load ptr, ptr %buffer.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv11.i = zext i8 %28 to i16
  %add12.i = or i16 %conv11.i, 768
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %add12.i, i16 noundef zeroext 2, ptr noundef %26, i16 noundef zeroext 3, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %v4l2_dev.i = getelementptr inbounds %struct.raremono_device, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %v4l2_dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, i32 noundef %call15.i) #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nuw i32 %freq.addr.0.i, 10
  %cond.i = select i1 %cmp2, i32 %mul.i, i32 %freq.addr.0.i
  %curfreq.i = getelementptr inbounds %struct.raremono_device, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %curfreq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i, ptr %curfreq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call15.i, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_freq_bands(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ugt i32 %3, 2
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %3
  %4 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-raremono.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-raremono.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-raremono.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_radio_raremono__305_389_usb_raremono_driver_init6, !8, !"__initcall__kmod_radio_raremono__305_389_usb_raremono_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-raremono.c", i32 389, i32 1}
!9 = !{ptr @__exitcall_usb_raremono_driver_exit, !8, !"__exitcall_usb_raremono_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/radio/radio-raremono.c", i32 383, i32 12}
!13 = !{ptr @usb_raremono_driver, !14, !"usb_raremono_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-raremono.c", i32 382, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/radio-raremono.c", i32 334, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @usb_raremono_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @usb_raremono_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-raremono.c", i32 339, i32 2}
!25 = !{ptr @usb_raremono_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @usb_raremono_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-raremono.c", i32 344, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @usb_raremono_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @usb_raremono_probe._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @usb_raremono_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-raremono.c", i32 348, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-raremono.c", i32 368, i32 3}
!37 = !{ptr @usb_raremono_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_raremono_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-raremono.c", i32 372, i32 2}
!41 = !{ptr @usb_raremono_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_raremono_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @usb_raremono_fops, !44, !"usb_raremono_fops", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-raremono.c", i32 281, i32 42}
!45 = !{ptr @usb_raremono_ioctl_ops, !46, !"usb_raremono_ioctl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-raremono.c", i32 288, i32 36}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/radio-raremono.c", i32 185, i32 19}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/usb.h", i32 912, i32 31}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/radio-raremono.c", i32 213, i32 19}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/radio/radio-raremono.c", i32 226, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vidioc_g_tuner._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @vidioc_g_tuner._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @bands, !60, !"bands", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-raremono.c", i32 73, i32 41}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/radio/radio-raremono.c", i32 150, i32 3}
!63 = !{ptr @raremono_cmd_main._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @raremono_cmd_main._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/radio/radio-raremono.c", i32 166, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @usb_raremono_disconnect._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @usb_raremono_disconnect._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @usb_raremono_device_table, !71, !"usb_raremono_device_table", i1 false, i1 false}
!71 = !{!"../drivers/media/radio/radio-raremono.c", i32 49, i32 35}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
