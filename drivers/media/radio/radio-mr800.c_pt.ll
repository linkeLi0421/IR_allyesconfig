; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-mr800.c_pt.bc'
source_filename = "../drivers/media/radio/radio-mr800.c"
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
%struct.amradio_device = type { ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, i32, i32, i32 }
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
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__UNIQUE_ID_author297 = internal constant [58 x i8] c"radio_mr800.author=Alexey Klimov <klimov.linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [61 x i8] c"radio_mr800.description=AverMedia MR 800 USB FM radio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [49 x i8] c"radio_mr800.file=drivers/media/radio/radio-mr800\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"radio_mr800.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version301 = internal constant [26 x i8] c"radio_mr800.version=0.1.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio_mr800\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_radio_nr = internal constant [21 x i8] c"radio_mr800.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype302 = internal constant [34 x i8] c"radio_mr800.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr303 = internal constant [35 x i8] c"radio_mr800.parm=radio_nr:Radio Nr\00", section ".modinfo", align 1
@__initcall__kmod_radio_mr800__308_599_usb_amradio_driver_init6 = internal global ptr @usb_amradio_driver_init, section ".initcall6.init", align 4
@usb_amradio_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @usb_amradio_probe, ptr @usb_amradio_disconnect, ptr null, ptr @usb_amradio_suspend, ptr @usb_amradio_resume, ptr @usb_amradio_resume, ptr null, ptr null, ptr @usb_amradio_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_amradio_driver_exit = internal global ptr @usb_amradio_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radio-mr800\00", [20 x i8] zeroinitializer }, align 32
@usb_amradio_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1994, i16 -18432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 507, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kmalloc for amradio_device failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_amradio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/radio/radio-mr800.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry_ptr = internal global ptr @usb_amradio_probe._entry, section ".printk_index", align 4
@usb_amradio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 515, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kmalloc for radio->buffer failed\0A\00", [62 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry_ptr.11 = internal global ptr @usb_amradio_probe._entry.9, section ".printk_index", align 4
@usb_amradio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 522, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry_ptr.14 = internal global ptr @usb_amradio_probe._entry.12, section ".printk_index", align 4
@usb_amradio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radio_mr800:526:(&radio->hdl)->_lock\00", [59 x i8] zeroinitializer }, align 32
@usb_amradio_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @usb_amradio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 531, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry_ptr.18 = internal global ptr @usb_amradio_probe._entry.16, section ".printk_index", align 4
@usb_amradio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@usb_amradio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@usb_amradio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr @vidioc_s_hw_freq_seek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 561, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_amradio_probe._entry_ptr.22 = internal global ptr @usb_amradio_probe._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amradio_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 156, ptr @.str.25, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radio-mr800 - cmd %02x failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amradio_send_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amradio_send_cmd._entry_ptr = internal global ptr @amradio_send_cmd._entry, section ".printk_index", align 4
@amradio_send_cmd._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.6, i32 175, ptr @.str.25, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"radio-mr800 - follow-up to cmd %02x failed\0A\00", [52 x i8] zeroinitializer }, align 32
@amradio_send_cmd._entry_ptr.28 = internal global ptr @amradio_send_cmd._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AverMedia MR 800 USB FM Radio\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@vidioc_s_hw_freq_seek.buf = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"=2\0F\08=2\0F\08", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@usb_amradio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 423, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radio-mr800 - initialization failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_amradio_init\00", [47 x i8] zeroinitializer }, align 32
@usb_amradio_init._entry_ptr = internal global ptr @usb_amradio_init._entry, section ".printk_index", align 4
@usb_amradio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 439, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"going into suspend..\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_amradio_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usb_amradio_suspend._entry_ptr = internal global ptr @usb_amradio_suspend._entry, section ".printk_index", align 4
@usb_amradio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 457, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"coming out of suspend..\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb_amradio_resume\00", [45 x i8] zeroinitializer }, align 32
@usb_amradio_resume._entry_ptr = internal global ptr @usb_amradio_resume._entry, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 65, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 110, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"usb_amradio_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 589, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 590, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"usb_amradio_device_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 580, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 507, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 515, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 522, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 526, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"usb_amradio_ctrl_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 461, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 531, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 534, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"usb_amradio_fops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 466, i32 42 }
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"usb_amradio_ioctl_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 474, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 561, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 155, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 175, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 261, i32 19 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 912, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 282, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 340, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 423, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 439, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [37 x i8] c"../drivers/media/radio/radio-mr800.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 457, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_radio_nr303, ptr @__UNIQUE_ID_radio_nrtype302, ptr @__UNIQUE_ID_version301, ptr @__exitcall_usb_amradio_driver_exit, ptr @__initcall__kmod_radio_mr800__308_599_usb_amradio_driver_init6, ptr @__modver_attr, ptr @__param_radio_nr, ptr @amradio_send_cmd._entry, ptr @amradio_send_cmd._entry.26, ptr @amradio_send_cmd._entry_ptr, ptr @amradio_send_cmd._entry_ptr.28, ptr @usb_amradio_driver_exit, ptr @usb_amradio_init._entry, ptr @usb_amradio_init._entry_ptr, ptr @usb_amradio_probe._entry, ptr @usb_amradio_probe._entry.12, ptr @usb_amradio_probe._entry.16, ptr @usb_amradio_probe._entry.20, ptr @usb_amradio_probe._entry.9, ptr @usb_amradio_probe._entry_ptr, ptr @usb_amradio_probe._entry_ptr.11, ptr @usb_amradio_probe._entry_ptr.14, ptr @usb_amradio_probe._entry_ptr.18, ptr @usb_amradio_probe._entry_ptr.22, ptr @usb_amradio_resume._entry, ptr @usb_amradio_resume._entry_ptr, ptr @usb_amradio_suspend._entry, ptr @usb_amradio_suspend._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @radio_nr, ptr @usb_amradio_driver, ptr @.str.3, ptr @usb_amradio_device_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @usb_amradio_probe._key, ptr @.str.15, ptr @usb_amradio_ctrl_ops, ptr @.str.17, ptr @usb_amradio_probe.__key, ptr @.str.19, ptr @usb_amradio_fops, ptr @usb_amradio_ioctl_ops, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @vidioc_s_hw_freq_seek.buf, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amradio_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amradio_send_cmd._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_hw_freq_seek.buf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amradio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_amradio_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_amradio_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_amradio_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @usb_amradio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_amradio_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1784) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 8) #11
  %buffer = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %buffer, align 8
  %tobool4.not = icmp eq ptr %call7.i, null
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.10) #12
  br label %err_nobuf

if.end10:                                         ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 3
  %call12 = tail call i32 @v4l2_device_register(ptr noundef %dev9, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.13) #12
  br label %err_v4l2

if.end18:                                         ; preds = %if.end10
  %hdl = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 4
  %call19 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 1, ptr noundef nonnull @usb_amradio_probe._key, ptr noundef nonnull @.str.15) #8
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @usb_amradio_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %error = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 4, i32 9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool23.not = icmp eq i32 %4, 0
  br i1 %tobool23.not, label %do.body32, label %if.then24

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.17) #12
  br label %err_ctrl

do.body32:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @usb_amradio_probe.__key) #8
  %ctrl_handler = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %release = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usb_amradio_release, ptr %release, align 4
  %vdev = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 12
  %name39 = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call41 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name39, i32 noundef 32) #8
  %v4l2_dev44 = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %v4l2_dev44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %v4l2_dev, ptr %v4l2_dev44, align 4
  %fops = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @usb_amradio_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 24
  %9 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @usb_amradio_ioctl_ops, ptr %ioctl_ops, align 4
  %release48 = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 23
  %10 = ptrtoint ptr %release48 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @video_device_release_empty, ptr %release48, align 8
  %lock51 = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 26
  %11 = ptrtoint ptr %lock51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock51, align 8
  %device_caps = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 328704, ptr %device_caps, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 -128
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %intf54 = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %intf54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %intf, ptr %intf54, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %curfreq = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1522560, ptr %curfreq, align 8
  %driver_data.i.i118 = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %19 = ptrtoint ptr %driver_data.i.i118 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i.i118, align 4
  %call.i = tail call fastcc i32 @amradio_set_mute(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body32.usb_amradio_init.exit_crit_edge

do.body32.usb_amradio_init.exit_crit_edge:        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_amradio_init.exit

if.end.i:                                         ; preds = %do.body32
  %call2.i = tail call fastcc i32 @amradio_set_stereo(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.usb_amradio_init.exit_crit_edge

if.end.i.usb_amradio_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_amradio_init.exit

if.end5.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %curfreq, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #8
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %24 = tail call i32 @llvm.umax.i32(i32 %21, i32 1400000) #8
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 1728000) #8
  %div28.i.i = udiv i32 %25, 200
  %conv.i.i = add nuw nsw i32 %div28.i.i, 16
  %26 = lshr i32 %conv.i.i, 8
  %conv10.i.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv10.i.i, ptr %buf.i.i, align 1
  %conv13.i.i = trunc i32 %conv.i.i to i8
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv13.i.i, ptr %22, align 1
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %23, align 1
  %call.i.i = call fastcc i32 @amradio_send_cmd(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef nonnull %buf.i.i, i8 noundef zeroext 3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end60, label %amradio_set_freq.exit.i

amradio_set_freq.exit.i:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #8
  br label %usb_amradio_init.exit

usb_amradio_init.exit:                            ; preds = %amradio_set_freq.exit.i, %if.end.i.usb_amradio_init.exit_crit_edge, %do.body32.usb_amradio_init.exit_crit_edge
  %retval1.0.i = phi i32 [ %call.i, %do.body32.usb_amradio_init.exit_crit_edge ], [ %call2.i, %if.end.i.usb_amradio_init.exit_crit_edge ], [ %call.i.i, %amradio_set_freq.exit.i ]
  %dev.i = getelementptr inbounds %struct.amradio_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #12
  br label %err_vdev

if.end60:                                         ; preds = %if.end5.i
  %30 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %25, ptr %curfreq, align 8
  call void @msleep(i32 noundef 40) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #8
  %31 = load i32, ptr @radio_nr, align 4
  %32 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i119 = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 2, i32 noundef %31, i32 noundef 1, ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp63 = icmp slt i32 %call.i119, 0
  br i1 %cmp63, label %do.end67, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.21) #12
  br label %err_vdev

err_vdev:                                         ; preds = %do.end67, %usb_amradio_init.exit
  %retval1.0 = phi i32 [ %retval1.0.i, %usb_amradio_init.exit ], [ %call.i119, %do.end67 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %err_ctrl

err_ctrl:                                         ; preds = %err_vdev, %if.then24
  %retval1.1 = phi i32 [ %4, %if.then24 ], [ %retval1.0, %err_vdev ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_ctrl, %do.end16
  %retval1.2 = phi i32 [ %call12, %do.end16 ], [ %retval1.1, %err_ctrl ]
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 8
  call void @kfree(ptr noundef %37) #8
  br label %err_nobuf

err_nobuf:                                        ; preds = %err_v4l2, %do.end8
  %retval1.3 = phi i32 [ %retval1.2, %err_v4l2 ], [ -12, %do.end8 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_nobuf, %if.end60.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end60.cleanup_crit_edge ], [ %retval1.3, %err_nobuf ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_amradio_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1360
  %lock = getelementptr i8, ptr %1, i32 316
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #8
  %call2 = tail call fastcc i32 @amradio_set_mute(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call5 = tail call i32 @v4l2_device_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_amradio_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr i8, ptr %1, i32 316
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %muted = getelementptr i8, ptr %1, i32 416
  %2 = ptrtoint ptr %muted to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %muted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1360
  %call2 = tail call fastcc i32 @amradio_set_mute(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %4 = ptrtoint ptr %muted to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %muted, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_amradio_resume(ptr noundef %intf) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1360
  %lock = getelementptr i8, ptr %1, i32 316
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %stereo = getelementptr i8, ptr %1, i32 412
  %2 = ptrtoint ptr %stereo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %call2 = tail call fastcc i32 @amradio_set_stereo(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool)
  %curfreq = getelementptr i8, ptr %1, i32 408
  %4 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curfreq, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 1400000) #8
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1728000) #8
  %div28.i = udiv i32 %9, 200
  %conv.i = add nuw nsw i32 %div28.i, 16
  %10 = lshr i32 %conv.i, 8
  %conv10.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %buf.i, align 1
  %conv13.i = trunc i32 %conv.i to i8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13.i, ptr %6, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %7, align 1
  %call.i = call fastcc i32 @amradio_send_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i8 noundef zeroext 3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.amradio_set_freq.exit_crit_edge

entry.amradio_set_freq.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amradio_set_freq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %curfreq, align 8
  call void @msleep(i32 noundef 40) #8
  br label %amradio_set_freq.exit

amradio_set_freq.exit:                            ; preds = %if.end.i, %entry.amradio_set_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  %muted = getelementptr i8, ptr %1, i32 416
  %15 = ptrtoint ptr %muted to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %muted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %if.then, label %amradio_set_freq.exit.if.end_crit_edge

amradio_set_freq.exit.if.end_crit_edge:           ; preds = %amradio_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %amradio_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call fastcc i32 @amradio_set_mute(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %amradio_set_freq.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_amradio_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %v4l2_dev, i32 -1360
  %hdl = getelementptr i8, ptr %v4l2_dev, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  %buffer = getelementptr i8, ptr %v4l2_dev, i32 312
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %add.ptr.i) #8
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_amradio_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %1)
  %cond = icmp eq i32 %1, 9963785
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -1488
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %call = tail call fastcc i32 @amradio_set_mute(ptr noundef %add.ptr, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amradio_set_mute(ptr noundef %radio, i1 noundef zeroext %mute) unnamed_addr #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %mute to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #8
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size.i, align 4, !annotation !109
  %buffer.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 5
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %4 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 85, ptr %arrayidx3.i, align 1
  %6 = load ptr, ptr %buffer.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -86, ptr %arrayidx5.i, align 1
  %8 = load ptr, ptr %buffer.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx7.i, align 1
  %10 = load ptr, ptr %buffer.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -85, ptr %arrayidx9.i, align 1
  %12 = load ptr, ptr %buffer.i, align 8
  %arrayidx11.i = getelementptr i8, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %arrayidx11.i, align 1
  %14 = load ptr, ptr %buffer.i, align 8
  %arrayidx13.i = getelementptr i8, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx13.i, align 1
  %16 = load ptr, ptr %buffer.i, align 8
  %arrayidx16.i = getelementptr i8, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx16.i, align 1
  %18 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %radio, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, 1073807360
  %22 = load ptr, ptr %buffer.i, align 8
  %call19.i = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i, ptr noundef %22, i32 noundef 8, ptr noundef nonnull %size.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp21.not.i = icmp eq i32 %24, 8
  br i1 %cmp21.not.i, label %if.then, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 17
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool24.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 171) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool28.not.i = icmp eq i32 %call19.i, 0
  %spec.select = select i1 %tobool28.not.i, i32 -5, i32 %call19.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  %conv3 = zext i1 %mute to i32
  %muted = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 9
  %27 = ptrtoint ptr %muted to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv3, ptr %muted, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i
  %retval.0.i9 = phi i32 [ %spec.select, %if.end.i ], [ 0, %if.then ]
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amradio_send_cmd(ptr noundef %radio, i8 noundef zeroext %cmd, i8 noundef zeroext %arg, ptr noundef readonly %extra, i8 noundef zeroext %extralen, i1 noundef zeroext %reply) unnamed_addr #2 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !109
  %buffer = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 5
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %4 = load ptr, ptr %buffer, align 8
  %arrayidx3 = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 85, ptr %arrayidx3, align 1
  %6 = load ptr, ptr %buffer, align 8
  %arrayidx5 = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -86, ptr %arrayidx5, align 1
  %8 = load ptr, ptr %buffer, align 8
  %arrayidx7 = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %extralen, ptr %arrayidx7, align 1
  %10 = load ptr, ptr %buffer, align 8
  %arrayidx9 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cmd, ptr %arrayidx9, align 1
  %12 = load ptr, ptr %buffer, align 8
  %arrayidx11 = getelementptr i8, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %arg, ptr %arrayidx11, align 1
  %14 = load ptr, ptr %buffer, align 8
  %arrayidx13 = getelementptr i8, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx13, align 1
  %tobool.not = icmp eq ptr %extra, null
  %phi.cast = select i1 %reply, i8 8, i8 0
  %spec.select = select i1 %tobool.not, i8 %phi.cast, i8 8
  %16 = load ptr, ptr %buffer, align 8
  %arrayidx16 = getelementptr i8, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %arrayidx16, align 1
  %18 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %radio, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i = shl i32 %21, 8
  %or = or i32 %shl.i, 1073807360
  %22 = load ptr, ptr %buffer, align 8
  %call19 = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or, ptr noundef %22, i32 noundef 8, ptr noundef nonnull %size, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp21.not = icmp eq i32 %24, 8
  br i1 %cmp21.not, label %if.end30, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %flags.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 17
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool24.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool24.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 5
  %conv27 = zext i8 %cmd to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv27) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool28.not = icmp eq i32 %call19, 0
  %spec.select123 = select i1 %tobool28.not, i32 -5, i32 %call19
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %tobool.not.not, %reply
  br i1 %brmerge, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 8
  br i1 %tobool.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %conv38 = zext i8 %extralen to i32
  %29 = call ptr @memcpy(ptr %28, ptr %extra, i32 %conv38)
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr i8, ptr %31, i32 %conv38
  %sub = sub nsw i32 8, %conv38
  %32 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end56

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 0, ptr %28, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then36
  %.sink132 = phi i32 [ -1069514624, %if.else ], [ 1073807360, %if.then36 ]
  %34 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %radio, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i127 = shl i32 %37, 8
  %or53 = or i32 %shl.i127, %.sink132
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 8
  %call55 = call i32 @usb_bulk_msg(ptr noundef %35, i32 noundef %or53, ptr noundef %39, i32 noundef 8, ptr noundef nonnull %size, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp57 = icmp eq i32 %call55, 0
  br i1 %cmp57, label %land.lhs.true59, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true59:                                  ; preds = %if.end56
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp60 = icmp eq i32 %41, 8
  br i1 %cmp60, label %land.lhs.true59.cleanup_crit_edge, label %land.lhs.true59.if.end63_crit_edge

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true59.if.end63_crit_edge, %if.end56.if.end63_crit_edge
  %flags.i129 = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 17
  %42 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i129, align 4
  %and1.i.i130 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i130)
  %tobool66.not = icmp eq i32 %and1.i.i130, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %cmd)
  %cmp69.not = icmp eq i8 %cmd, -91
  %or.cond = or i1 %cmp69.not, %tobool66.not
  br i1 %or.cond, label %if.end63.if.end78_crit_edge, label %do.end74

if.end63.if.end78_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.end74:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = zext i8 %cmd to i32
  %dev76 = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev76, ptr noundef nonnull @.str.27, i32 noundef %conv68) #12
  br label %if.end78

if.end78:                                         ; preds = %do.end74, %if.end63.if.end78_crit_edge
  %spec.select124 = select i1 %cmp57, i32 -5, i32 %call55
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %land.lhs.true59.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %spec.select123, %if.end ], [ %spec.select124, %if.end78 ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %land.lhs.true59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.3, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.29, i32 noundef 32) #8
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
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %7, ptr noundef %devpath.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %signal, align 4
  %call.i23 = tail call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -89, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buffer.i = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %6, i32 3
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.i, align 1
  %11 = and i8 %10, -16
  %and.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %12 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i, ptr %signal, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %14 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1400000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %15 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1728000, ptr %rangehigh, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %16 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 25, ptr %capability, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool7.not = icmp sgt i8 %8, -1
  %cond = select i1 %tobool7.not, i32 1, i32 2
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %17 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %rxsubchans, align 4
  %stereo = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %stereo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp ne i32 %19, 0
  %cond9 = zext i1 %tobool8.not to i32
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %20 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond9, ptr %audmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i23, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #2 align 64 {
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
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  %call2 = tail call fastcc i32 @amradio_set_stereo(ptr noundef %3, i1 noundef zeroext %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %curfreq = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curfreq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %9 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 1400000) #8
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1728000) #8
  %div28.i = udiv i32 %9, 200
  %conv.i = add nuw nsw i32 %div28.i, 16
  %10 = lshr i32 %conv.i, 8
  %conv10.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %buf.i, align 1
  %conv13.i = trunc i32 %conv.i to i8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13.i, ptr %6, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %7, align 1
  %call.i3 = call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i8 noundef zeroext 3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.amradio_set_freq.exit_crit_edge

if.end.amradio_set_freq.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amradio_set_freq.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %curfreq.i = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %curfreq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %curfreq.i, align 8
  call void @msleep(i32 noundef 40) #8
  br label %amradio_set_freq.exit

amradio_set_freq.exit:                            ; preds = %if.end.i, %if.end.amradio_set_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %cleanup

cleanup:                                          ; preds = %amradio_set_freq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i3, %amradio_set_freq.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %seek) #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %seek to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seek, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 3
  %4 = ptrtoint ptr %wrap_around to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrap_around, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -80, i8 noundef zeroext 0, ptr noundef nonnull @vidioc_s_hw_freq_seek.buf, i8 noundef zeroext 8, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %curfreq = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curfreq, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %10 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 1400000) #8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 1728000) #8
  %div28.i = udiv i32 %13, 200
  %conv.i = add nuw nsw i32 %div28.i, 16
  %14 = lshr i32 %conv.i, 8
  %conv10.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.i, ptr %buf.i, align 1
  %conv13.i = trunc i32 %conv.i to i8
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13.i, ptr %10, align 1
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %11, align 1
  %call.i83 = call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i8 noundef zeroext 3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.amradio_set_freq.exit_crit_edge

if.end8.amradio_set_freq.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %amradio_set_freq.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %curfreq, align 8
  call void @msleep(i32 noundef 40) #8
  br label %amradio_set_freq.exit

amradio_set_freq.exit:                            ; preds = %if.end.i, %if.end8.amradio_set_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %seek, i32 0, i32 2
  %19 = ptrtoint ptr %seek_upward to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seek_upward, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  %conv = select i1 %tobool10.not, i8 -86, i8 -87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #8
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %size.i, align 4, !annotation !109
  %buffer.i = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %23, align 1
  %25 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 85, ptr %arrayidx3.i, align 1
  %27 = load ptr, ptr %buffer.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -86, ptr %arrayidx5.i, align 1
  %29 = load ptr, ptr %buffer.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx7.i, align 1
  %31 = load ptr, ptr %buffer.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %arrayidx9.i, align 1
  %33 = load ptr, ptr %buffer.i, align 8
  %arrayidx11.i = getelementptr i8, ptr %33, i32 5
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx11.i, align 1
  %35 = load ptr, ptr %buffer.i, align 8
  %arrayidx13.i = getelementptr i8, ptr %35, i32 6
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx13.i, align 1
  %37 = load ptr, ptr %buffer.i, align 8
  %arrayidx16.i = getelementptr i8, ptr %37, i32 7
  %38 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx16.i, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i = shl i32 %42, 8
  %or.i = or i32 %shl.i.i, 1073807360
  %43 = load ptr, ptr %buffer.i, align 8
  %call19.i = call i32 @usb_bulk_msg(ptr noundef %40, i32 noundef %or.i, ptr noundef %43, i32 noundef 8, ptr noundef nonnull %size.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 0
  br i1 %cmp.i, label %amradio_set_freq.exit.if.then.i_crit_edge, label %lor.lhs.false.i

amradio_set_freq.exit.if.then.i_crit_edge:        ; preds = %amradio_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %amradio_set_freq.exit
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %45)
  %cmp21.not.i = icmp eq i32 %45, 8
  br i1 %cmp21.not.i, label %if.end14, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %amradio_set_freq.exit.if.then.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 2, i32 17
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool24.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then.i.if.end.i84_crit_edge, label %do.end.i

if.then.i.if.end.i84_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i84

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.amradio_device, ptr %1, i32 0, i32 2, i32 5
  %conv27.i = zext i8 %conv to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv27.i) #12
  br label %if.end.i84

if.end.i84:                                       ; preds = %do.end.i, %if.then.i.if.end.i84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool28.not.i = icmp eq i32 %call19.i, 0
  %spec.select = select i1 %tobool28.not.i, i32 -5, i32 %call19.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 3000
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub89 = sub i32 %add, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub89)
  %cmp1690 = icmp slt i32 %sub89, 0
  br i1 %cmp1690, label %if.end14.for.end_crit_edge, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  br label %if.end19

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end19:                                         ; preds = %for.cond.backedge.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  %call21 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end24:                                         ; preds = %if.end19
  %call25 = call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -91, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.for.cond.backedge_crit_edge

if.end24.for.cond.backedge_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %lor.lhs.false32.for.cond.backedge_crit_edge, %if.end24.for.cond.backedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %50
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.if.end19_crit_edge

for.cond.backedge.if.end19_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end28:                                         ; preds = %if.end24
  %call29 = call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -88, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true)
  %51 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer.i, align 8
  %arrayidx = getelementptr i8, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool31.not = icmp eq i8 %54, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %if.end28.if.then37_crit_edge

if.end28.if.then37_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false32:                                  ; preds = %if.end28
  %arrayidx34 = getelementptr i8, ptr %52, i32 2
  %55 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool36.not = icmp eq i8 %56, 0
  br i1 %tobool36.not, label %lor.lhs.false32.for.cond.backedge_crit_edge, label %lor.lhs.false32.if.then37_crit_edge

lor.lhs.false32.if.then37_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false32.for.cond.backedge_crit_edge:      ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then37:                                        ; preds = %lor.lhs.false32.if.then37_crit_edge, %if.end28.if.then37_crit_edge
  %conv40 = zext i8 %54 to i32
  %shl = shl nuw nsw i32 %conv40, 8
  %arrayidx42 = getelementptr i8, ptr %52, i32 2
  %57 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %58 to i32
  %or = or i32 %shl, %conv43
  %59 = mul nuw nsw i32 %or, 200
  %mul = add nsw i32 %59, -3200
  %60 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul, ptr %curfreq, align 8
  %call48 = call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -79, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext false)
  %61 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %curfreq, align 8
  %call50 = call fastcc i32 @amradio_set_freq(ptr noundef %1, i32 noundef %62)
  br label %for.end

for.end:                                          ; preds = %if.then37, %for.cond.backedge.for.end_crit_edge, %if.end19.for.end_crit_edge, %if.end14.for.end_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then37 ], [ -61, %if.end14.for.end_crit_edge ], [ -61, %for.cond.backedge.for.end_crit_edge ], [ -512, %if.end19.for.end_crit_edge ]
  %call52 = call fastcc i32 @amradio_send_cmd(ptr noundef %1, i8 noundef zeroext -79, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext false)
  %63 = ptrtoint ptr %curfreq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %curfreq, align 8
  %call54 = call fastcc i32 @amradio_set_freq(ptr noundef %1, i32 noundef %64)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.i84, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %for.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %spec.select, %if.end.i84 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amradio_set_stereo(ptr noundef %radio, i1 noundef zeroext %stereo) unnamed_addr #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot = xor i1 %stereo, true
  %conv = zext i1 %lnot to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #8
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size.i, align 4, !annotation !109
  %buffer.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 5
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %4 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 85, ptr %arrayidx3.i, align 1
  %6 = load ptr, ptr %buffer.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -86, ptr %arrayidx5.i, align 1
  %8 = load ptr, ptr %buffer.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx7.i, align 1
  %10 = load ptr, ptr %buffer.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -82, ptr %arrayidx9.i, align 1
  %12 = load ptr, ptr %buffer.i, align 8
  %arrayidx11.i = getelementptr i8, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx11.i, align 1
  %14 = load ptr, ptr %buffer.i, align 8
  %arrayidx13.i = getelementptr i8, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx13.i, align 1
  %16 = load ptr, ptr %buffer.i, align 8
  %arrayidx16.i = getelementptr i8, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx16.i, align 1
  %18 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %radio, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, 1073807360
  %22 = load ptr, ptr %buffer.i, align 8
  %call19.i = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i, ptr noundef %22, i32 noundef 8, ptr noundef nonnull %size.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp21.not.i = icmp eq i32 %24, 8
  br i1 %cmp21.not.i, label %if.then, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 17
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool24.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 2, i32 5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 174) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool28.not.i = icmp eq i32 %call19.i, 0
  %spec.select = select i1 %tobool28.not.i, i32 -5, i32 %call19.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  %conv3 = zext i1 %stereo to i32
  %stereo4 = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 8
  %27 = ptrtoint ptr %stereo4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv3, ptr %stereo4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i
  %retval.0.i10 = phi i32 [ %spec.select, %if.end.i ], [ 0, %if.then ]
  ret i32 %retval.0.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amradio_set_freq(ptr noundef %radio, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %2 = tail call i32 @llvm.umax.i32(i32 %freq, i32 1400000)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 1728000)
  %div28 = udiv i32 %3, 200
  %conv = add nuw nsw i32 %div28, 16
  %4 = lshr i32 %conv, 8
  %conv10 = trunc i32 %4 to i8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv10, ptr %buf, align 1
  %conv13 = trunc i32 %conv to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %1, align 1
  %call = call fastcc i32 @amradio_send_cmd(ptr noundef %radio, i8 noundef zeroext -92, i8 noundef zeroext 0, ptr noundef nonnull %buf, i8 noundef zeroext 3, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %curfreq = getelementptr inbounds %struct.amradio_device, ptr %radio, i32 0, i32 7
  %8 = ptrtoint ptr %curfreq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %curfreq, align 8
  call void @msleep(i32 noundef 40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #0

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-mr800.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-mr800.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-mr800.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version301, !8, !"__UNIQUE_ID_version301", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-mr800.c", i32 65, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_radio_nr, !14, !"__param_radio_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-mr800.c", i32 111, i32 1}
!15 = !{ptr @__UNIQUE_ID_radio_nrtype302, !14, !"__UNIQUE_ID_radio_nrtype302", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_radio_nr303, !17, !"__UNIQUE_ID_radio_nr303", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-mr800.c", i32 112, i32 1}
!18 = !{ptr @__initcall__kmod_radio_mr800__308_599_usb_amradio_driver_init6, !19, !"__initcall__kmod_radio_mr800__308_599_usb_amradio_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-mr800.c", i32 599, i32 1}
!20 = !{ptr @__exitcall_usb_amradio_driver_exit, !19, !"__exitcall_usb_amradio_driver_exit", i1 false, i1 false}
!21 = !{ptr @__param_str_radio_nr, !14, !"__param_str_radio_nr", i1 false, i1 false}
!22 = !{ptr @radio_nr, !23, !"radio_nr", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/radio-mr800.c", i32 110, i32 12}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/radio-mr800.c", i32 590, i32 12}
!26 = !{ptr @usb_amradio_driver, !27, !"usb_amradio_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-mr800.c", i32 589, i32 26}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-mr800.c", i32 507, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @usb_amradio_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @usb_amradio_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/radio/radio-mr800.c", i32 515, i32 3}
!38 = !{ptr @usb_amradio_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @usb_amradio_probe._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-mr800.c", i32 522, i32 3}
!42 = !{ptr @usb_amradio_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @usb_amradio_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @usb_amradio_probe._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-mr800.c", i32 526, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/radio-mr800.c", i32 531, i32 3}
!49 = !{ptr @usb_amradio_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @usb_amradio_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @usb_amradio_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/radio-mr800.c", i32 534, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-mr800.c", i32 561, i32 3}
!56 = !{ptr @usb_amradio_probe._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @usb_amradio_probe._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @usb_amradio_ctrl_ops, !59, !"usb_amradio_ctrl_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-mr800.c", i32 461, i32 35}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/radio/radio-mr800.c", i32 155, i32 4}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @amradio_send_cmd._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @amradio_send_cmd._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/radio/radio-mr800.c", i32 175, i32 3}
!68 = !{ptr @amradio_send_cmd._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @amradio_send_cmd._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @usb_amradio_fops, !71, !"usb_amradio_fops", i1 false, i1 false}
!71 = !{!"../drivers/media/radio/radio-mr800.c", i32 466, i32 42}
!72 = !{ptr @usb_amradio_ioctl_ops, !73, !"usb_amradio_ioctl_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/radio-mr800.c", i32 474, i32 36}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/radio-mr800.c", i32 261, i32 19}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/usb.h", i32 912, i32 31}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/radio/radio-mr800.c", i32 282, i32 19}
!80 = !{ptr @vidioc_s_hw_freq_seek.buf, !81, !"buf", i1 false, i1 false}
!81 = !{!"../drivers/media/radio/radio-mr800.c", i32 340, i32 12}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/radio/radio-mr800.c", i32 423, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @usb_amradio_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @usb_amradio_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/radio/radio-mr800.c", i32 439, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @usb_amradio_suspend._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @usb_amradio_suspend._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/radio/radio-mr800.c", i32 457, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @usb_amradio_resume._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @usb_amradio_resume._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @usb_amradio_device_table, !99, !"usb_amradio_device_table", i1 false, i1 false}
!99 = !{!"../drivers/media/radio/radio-mr800.c", i32 580, i32 35}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
