; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-ma901.c_pt.bc'
source_filename = "../drivers/media/radio/radio-ma901.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ma901radio_device = type { ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, i32, i16, i32, i8 }
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
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_author297 = internal constant [58 x i8] c"radio_ma901.author=Alexey Klimov <klimov.linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [60 x i8] c"radio_ma901.description=Masterkit MA901 USB FM radio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [49 x i8] c"radio_ma901.file=drivers/media/radio/radio-ma901\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"radio_ma901.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version301 = internal constant [26 x i8] c"radio_ma901.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio_ma901\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_radio_nr = internal constant [21 x i8] c"radio_ma901.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype302 = internal constant [34 x i8] c"radio_ma901.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr303 = internal constant [44 x i8] c"radio_ma901.parm=radio_nr:Radio file number\00", section ".modinfo", align 1
@__initcall__kmod_radio_ma901__308_456_usb_ma901radio_driver_init6 = internal global ptr @usb_ma901radio_driver_init, section ".initcall6.init", align 4
@usb_ma901radio_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @usb_ma901radio_probe, ptr @usb_ma901radio_disconnect, ptr null, ptr @usb_ma901radio_suspend, ptr @usb_ma901radio_resume, ptr @usb_ma901radio_resume, ptr null, ptr null, ptr @usb_ma901radio_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_ma901radio_driver_exit = internal global ptr @usb_ma901radio_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio-ma901\00", [20 x i8] zeroinitializer }, align 32
@usb_ma901radio_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 5824, i16 1503, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MA901\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"www.masterkit.ru\00", [47 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 351, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kzalloc for ma901radio_device failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb_ma901radio_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/radio/radio-ma901.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry_ptr = internal global ptr @usb_ma901radio_probe._entry, section ".printk_index", align 4
@usb_ma901radio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 358, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kmalloc for radio->buffer failed\0A\00", [62 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry_ptr.13 = internal global ptr @usb_ma901radio_probe._entry.11, section ".printk_index", align 4
@usb_ma901radio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 365, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry_ptr.16 = internal global ptr @usb_ma901radio_probe._entry.14, section ".printk_index", align 4
@usb_ma901radio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radio_ma901:369:(&radio->hdl)->_lock\00", [59 x i8] zeroinitializer }, align 32
@usb_ma901radio_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @usb_ma901radio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 385, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry_ptr.20 = internal global ptr @usb_ma901radio_probe._entry.18, section ".printk_index", align 4
@usb_ma901radio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@usb_ma901radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@usb_ma901radio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 418, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_ma901radio_probe._entry_ptr.24 = internal global ptr @usb_ma901radio_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Masterkit MA901 USB FM Radio\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 30, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 66, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"usb_ma901radio_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 446, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 447, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"usb_ma901radio_device_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 437, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 345, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 346, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 351, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 358, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 365, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 369, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"usb_ma901radio_ctrl_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 297, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 385, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 388, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"usb_ma901radio_fops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 302, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"usb_ma901radio_ioctl_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 310, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 418, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 192, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 912, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [37 x i8] c"../drivers/media/radio/radio-ma901.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 214, i32 19 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_radio_nr303, ptr @__UNIQUE_ID_radio_nrtype302, ptr @__UNIQUE_ID_version301, ptr @__exitcall_usb_ma901radio_driver_exit, ptr @__initcall__kmod_radio_ma901__308_456_usb_ma901radio_driver_init6, ptr @__modver_attr, ptr @__param_radio_nr, ptr @usb_ma901radio_driver_exit, ptr @usb_ma901radio_probe._entry, ptr @usb_ma901radio_probe._entry.11, ptr @usb_ma901radio_probe._entry.14, ptr @usb_ma901radio_probe._entry.18, ptr @usb_ma901radio_probe._entry.22, ptr @usb_ma901radio_probe._entry_ptr, ptr @usb_ma901radio_probe._entry_ptr.13, ptr @usb_ma901radio_probe._entry_ptr.16, ptr @usb_ma901radio_probe._entry_ptr.20, ptr @usb_ma901radio_probe._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @radio_nr, ptr @usb_ma901radio_driver, ptr @.str.3, ptr @usb_ma901radio_device_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @usb_ma901radio_probe._key, ptr @.str.17, ptr @usb_ma901radio_ctrl_ops, ptr @.str.19, ptr @usb_ma901radio_probe.__key, ptr @.str.21, ptr @usb_ma901radio_fops, ptr @usb_ma901radio_ioctl_ops, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ma901radio_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_ma901radio_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_ma901radio_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_ma901radio_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @usb_ma901radio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_ma901radio_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %4 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %manufacturer, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @strncmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(6) @.str.4, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %call7 = tail call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(17) @.str.5, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1784) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 8) #12
  %buffer = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %buffer, align 8
  %tobool16.not = icmp eq ptr %call7.i, null
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.12) #13
  br label %err_nobuf

if.end22:                                         ; preds = %if.end13
  %v4l2_dev = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 3
  %call24 = tail call i32 @v4l2_device_register(ptr noundef %dev21, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.15) #13
  br label %err_v4l2

if.end31:                                         ; preds = %if.end22
  %hdl = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 4
  %call32 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 1, ptr noundef nonnull @usb_ma901radio_probe._key, ptr noundef nonnull @.str.17) #9
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @usb_ma901radio_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 16, i64 noundef 1, i64 noundef 16) #9
  %error = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 4, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool36.not = icmp eq i32 %10, 0
  br i1 %tobool36.not, label %do.body45, label %if.then37

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.19) #13
  br label %err_ctrl

do.body45:                                        ; preds = %if.end31
  %lock = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @usb_ma901radio_probe.__key) #9
  %ctrl_handler = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %release = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @usb_ma901radio_release, ptr %release, align 4
  %vdev = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 12
  %name52 = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call54 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name52, i32 noundef 32) #9
  %v4l2_dev57 = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 7
  %13 = ptrtoint ptr %v4l2_dev57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %v4l2_dev, ptr %v4l2_dev57, align 4
  %fops = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @usb_ma901radio_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 24
  %15 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @usb_ma901radio_ioctl_ops, ptr %ioctl_ops, align 4
  %release61 = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 23
  %16 = ptrtoint ptr %release61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @video_device_release_empty, ptr %release61, align 8
  %lock64 = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 26
  %17 = ptrtoint ptr %lock64 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %lock64, align 8
  %device_caps = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 327680, ptr %device_caps, align 8
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %add.ptr.i133 = getelementptr i8, ptr %20, i32 -128
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i133, ptr %call7.i.i, align 8
  %intf67 = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %intf67 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %intf, ptr %intf67, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %curfreq = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1523360, ptr %curfreq, align 8
  %driver_data.i.i134 = getelementptr inbounds %struct.ma901radio_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %25 = ptrtoint ptr %driver_data.i.i134 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i134, align 4
  %26 = load i32, ptr @radio_nr, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 2, i32 noundef %26, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp72 = icmp slt i32 %call.i, 0
  br i1 %cmp72, label %do.end76, label %do.body45.cleanup_crit_edge

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end76:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.23) #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %err_ctrl

err_ctrl:                                         ; preds = %do.end76, %if.then37
  %retval1.0 = phi i32 [ %10, %if.then37 ], [ %call.i, %do.end76 ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_ctrl, %do.end29
  %retval1.1 = phi i32 [ %call24, %do.end29 ], [ %retval1.0, %err_ctrl ]
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %28) #9
  br label %err_nobuf

err_nobuf:                                        ; preds = %err_v4l2, %do.end20
  %retval1.2 = phi i32 [ %retval1.1, %err_v4l2 ], [ -12, %do.end20 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_nobuf, %do.body45.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %land.lhs.true3.cleanup_crit_edge ], [ 0, %do.body45.cleanup_crit_edge ], [ %retval1.2, %err_nobuf ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_ma901radio_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr i8, ptr %1, i32 316
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_disconnect(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call4 = tail call i32 @v4l2_device_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb_ma901radio_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb_ma901radio_resume(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_ma901radio_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %v4l2_dev, i32 -1360
  %hdl = getelementptr i8, ptr %v4l2_dev, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  %buffer = getelementptr i8, ptr %v4l2_dev, i32 312
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_ma901radio_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963781, i32 %1)
  %cond = icmp eq i32 %1, 9963781
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -1488
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %buffer.i = getelementptr i8, ptr %3, i32 184
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %7, align 1
  %9 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %arrayidx3.i, align 1
  %11 = load ptr, ptr %buffer.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -62, ptr %arrayidx5.i, align 1
  %conv.i = trunc i32 %5 to i8
  %add.i = add i8 %conv.i, 32
  %13 = load ptr, ptr %buffer.i, align 8
  %arrayidx8.i = getelementptr i8, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add.i, ptr %arrayidx8.i, align 1
  %15 = load ptr, ptr %buffer.i, align 8
  %arrayidx10.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx10.i, align 1
  %17 = load ptr, ptr %buffer.i, align 8
  %arrayidx12.i = getelementptr i8, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx12.i, align 1
  %19 = load ptr, ptr %buffer.i, align 8
  %arrayidx14.i = getelementptr i8, ptr %19, i32 6
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx14.i, align 1
  %21 = load ptr, ptr %buffer.i, align 8
  %arrayidx16.i = getelementptr i8, ptr %21, i32 7
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx16.i, align 1
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i = shl i32 %26, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %27 = load ptr, ptr %buffer.i, align 8
  %call19.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef %27, i16 noundef zeroext 8, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %5 to i16
  %volume.i = getelementptr i8, ptr %3, i32 284
  %28 = ptrtoint ptr %volume.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %volume.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call19.i, %sw.bb.cleanup_crit_edge ], [ %call19.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #0

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
  %call1 = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.3, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.25, i32 noundef 32) #9
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
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.26, ptr noundef %7, ptr noundef %devpath.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
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
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %signal, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.27, i32 noundef 32) #9
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %6 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1400000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1728000, ptr %rangehigh, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 17, ptr %capability, align 4
  %stereo = getelementptr inbounds %struct.ma901radio_device, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %stereo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stereo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp ne i32 %10, 0
  %cond = zext i1 %tobool.not to i32
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %11 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #2 align 64 {
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
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  %buffer.i = getelementptr inbounds %struct.ma901radio_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %7, align 1
  %9 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %arrayidx3.i, align 1
  %11 = load ptr, ptr %buffer.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %11, i32 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -48, ptr %arrayidx5.i, align 1
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx7.i, align 1
  %16 = load ptr, ptr %buffer.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx9.i, align 1
  %18 = load ptr, ptr %buffer.i, align 8
  %arrayidx11.i = getelementptr i8, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx11.i, align 1
  %20 = load ptr, ptr %buffer.i, align 8
  %arrayidx13.i = getelementptr i8, ptr %20, i32 6
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx13.i, align 1
  %22 = load ptr, ptr %buffer.i, align 8
  %arrayidx15.i = getelementptr i8, ptr %22, i32 7
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx15.i, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %28 = load ptr, ptr %buffer.i, align 8
  %call18.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef %28, i16 noundef zeroext 8, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 80, ptr %arrayidx5.i, align 1
  %30 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer.i, align 8
  %arrayidx7.i8 = getelementptr i8, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx7.i8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx7.i8, align 1
  %33 = load ptr, ptr %buffer.i, align 8
  %arrayidx9.i9 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx9.i9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx9.i9, align 1
  %35 = load ptr, ptr %buffer.i, align 8
  %arrayidx11.i10 = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx11.i10 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx11.i10, align 1
  %37 = load ptr, ptr %buffer.i, align 8
  %arrayidx13.i11 = getelementptr i8, ptr %37, i32 6
  %38 = ptrtoint ptr %arrayidx13.i11 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx13.i11, align 1
  %39 = load ptr, ptr %buffer.i, align 8
  %arrayidx15.i12 = getelementptr i8, ptr %39, i32 7
  %40 = ptrtoint ptr %arrayidx15.i12 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx15.i12, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i13 = shl i32 %44, 8
  %or.i14 = or i32 %shl.i.i13, -2147483648
  %45 = load ptr, ptr %buffer.i, align 8
  %call18.i15 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i14, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef %45, i16 noundef zeroext 8, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i15)
  %cmp.i16 = icmp slt i32 %call18.i15, 0
  br i1 %cmp.i16, label %sw.default.cleanup_crit_edge, label %sw.default.cleanup.sink.split_crit_edge

sw.default.cleanup.sink.split_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.default.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb.cleanup.sink.split_crit_edge ], [ 1, %sw.default.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call18.i, %sw.bb.cleanup.sink.split_crit_edge ], [ %call18.i15, %sw.default.cleanup.sink.split_crit_edge ]
  %stereo22.i17 = getelementptr inbounds %struct.ma901radio_device, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %stereo22.i17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %stereo22.i17, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call18.i, %sw.bb.cleanup_crit_edge ], [ %call18.i15, %sw.default.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
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
  %curfreq = getelementptr inbounds %struct.ma901radio_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curfreq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 1400000)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 1728000)
  %shr.i14 = lshr i32 %7, 5
  %div.i15.lhs.trunc = trunc i32 %shr.i14 to i16
  %div.i1516 = udiv i16 %div.i15.lhs.trunc, 25
  %add.i = add nuw nsw i16 %div.i1516, 768
  %buffer.i = getelementptr inbounds %struct.ma901radio_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %9, align 1
  %11 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %arrayidx3.i, align 1
  %shr4.i = lshr i16 %add.i, 8
  %13 = trunc i16 %shr4.i to i8
  %conv.i17 = or i8 %13, -128
  %14 = load ptr, ptr %buffer.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i17, ptr %arrayidx7.i, align 1
  %conv9.i = trunc i16 %div.i1516 to i8
  %16 = load ptr, ptr %buffer.i, align 8
  %arrayidx11.i = getelementptr i8, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %18 = load ptr, ptr %buffer.i, align 8
  %arrayidx13.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx13.i, align 1
  %20 = load ptr, ptr %buffer.i, align 8
  %arrayidx15.i = getelementptr i8, ptr %20, i32 5
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx15.i, align 1
  %22 = load ptr, ptr %buffer.i, align 8
  %arrayidx17.i = getelementptr i8, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx17.i, align 1
  %24 = load ptr, ptr %buffer.i, align 8
  %arrayidx19.i = getelementptr i8, ptr %24, i32 7
  %25 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx19.i, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i = shl i32 %29, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %30 = load ptr, ptr %buffer.i, align 8
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef %30, i16 noundef zeroext 8, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i = icmp slt i32 %call22.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %curfreq.i = getelementptr inbounds %struct.ma901radio_device, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %curfreq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %7, ptr %curfreq.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call22.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-ma901.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-ma901.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-ma901.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version301, !8, !"__UNIQUE_ID_version301", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-ma901.c", i32 30, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_radio_nr, !14, !"__param_radio_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-ma901.c", i32 67, i32 1}
!15 = !{ptr @__UNIQUE_ID_radio_nrtype302, !14, !"__UNIQUE_ID_radio_nrtype302", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_radio_nr303, !17, !"__UNIQUE_ID_radio_nr303", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-ma901.c", i32 68, i32 1}
!18 = !{ptr @__initcall__kmod_radio_ma901__308_456_usb_ma901radio_driver_init6, !19, !"__initcall__kmod_radio_ma901__308_456_usb_ma901radio_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-ma901.c", i32 456, i32 1}
!20 = !{ptr @__exitcall_usb_ma901radio_driver_exit, !19, !"__exitcall_usb_ma901radio_driver_exit", i1 false, i1 false}
!21 = !{ptr @__param_str_radio_nr, !14, !"__param_str_radio_nr", i1 false, i1 false}
!22 = !{ptr @radio_nr, !23, !"radio_nr", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/radio-ma901.c", i32 66, i32 12}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/radio-ma901.c", i32 447, i32 12}
!26 = !{ptr @usb_ma901radio_driver, !27, !"usb_ma901radio_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-ma901.c", i32 446, i32 26}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-ma901.c", i32 345, i32 26}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-ma901.c", i32 346, i32 33}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-ma901.c", i32 351, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @usb_ma901radio_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @usb_ma901radio_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-ma901.c", i32 358, i32 3}
!42 = !{ptr @usb_ma901radio_probe._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @usb_ma901radio_probe._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-ma901.c", i32 365, i32 3}
!46 = !{ptr @usb_ma901radio_probe._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @usb_ma901radio_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @usb_ma901radio_probe._key, !49, !"_key", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/radio-ma901.c", i32 369, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/radio-ma901.c", i32 385, i32 3}
!53 = !{ptr @usb_ma901radio_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @usb_ma901radio_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @usb_ma901radio_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/radio-ma901.c", i32 388, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-ma901.c", i32 418, i32 3}
!60 = !{ptr @usb_ma901radio_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @usb_ma901radio_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @usb_ma901radio_ctrl_ops, !63, !"usb_ma901radio_ctrl_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/radio-ma901.c", i32 297, i32 35}
!64 = !{ptr @usb_ma901radio_fops, !65, !"usb_ma901radio_fops", i1 false, i1 false}
!65 = !{!"../drivers/media/radio/radio-ma901.c", i32 302, i32 42}
!66 = !{ptr @usb_ma901radio_ioctl_ops, !67, !"usb_ma901radio_ioctl_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/radio/radio-ma901.c", i32 310, i32 36}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/radio-ma901.c", i32 192, i32 19}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/usb.h", i32 912, i32 31}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/radio-ma901.c", i32 214, i32 19}
!74 = !{ptr @usb_ma901radio_device_table, !75, !"usb_ma901radio_device_table", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/radio-ma901.c", i32 437, i32 35}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
