; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/uas.c_pt.bc'
source_filename = "../drivers/usb/storage/uas.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.uas_dev_info = type { ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, i32, i32, i32, i32, i32, i32, i32, i8, [256 x ptr], %struct.spinlock, %struct.work_struct, %struct.work_struct }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.command_iu = type { i8, i8, i16, i8, i8, i8, i8, %struct.scsi_lun, [16 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iu = type { i8, i8, i16 }
%struct.sense_iu = type { i8, i8, i16, i16, i8, [7 x i8], i16, [96 x i8] }
%struct.response_iu = type { i8, i8, i16, [3 x i8], i8 }

@uas_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @uas_probe, ptr @uas_disconnect, ptr null, ptr @uas_suspend, ptr @uas_resume, ptr @uas_reset_resume, ptr @uas_pre_reset, ptr @uas_post_reset, ptr @uas_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap { %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uas_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, i8 0 }, [44 x i8] zeroinitializer }, align 32
@workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_uas__295_1279_uas_init6 = internal global ptr @uas_init, section ".initcall6.init", align 4
@__exitcall_uas_exit = internal global ptr @uas_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file296 = internal constant [33 x i8] c"uas.file=drivers/usb/storage/uas\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [16 x i8] c"uas.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns298 = internal constant [26 x i8] c"uas.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [79 x i8] c"uas.author=Hans de Goede <hdegoede@redhat.com>, Matthew Wilcox and Sarah Sharp\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uas\00", [28 x i8] zeroinitializer }, align 32
@uas_usb_ids = internal global { [20 x %struct.usb_device_id], [96 x i8] } { [20 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1356, i16 2173, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67108864 }, %struct.usb_device_id { i16 15, i16 1439, i16 4191, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1140850688 }, %struct.usb_device_id { i16 15, i16 1439, i16 4193, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1140850688 }, %struct.usb_device_id { i16 15, i16 2436, i16 769, i16 296, i16 296, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8388608 }, %struct.usb_device_id { i16 15, i16 3010, i16 13082, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 268435456 }, %struct.usb_device_id { i16 15, i16 5117, i16 14656, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554464 }, %struct.usb_device_id { i16 15, i16 5421, i16 1337, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67108864 }, %struct.usb_device_id { i16 15, i16 5421, i16 1383, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 83886080 }, %struct.usb_device_id { i16 15, i16 5421, i16 1400, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16777216 }, %struct.usb_device_id { i16 15, i16 5451, i16 -4085, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554432 }, %struct.usb_device_id { i16 15, i16 5451, i16 -4083, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554432 }, %struct.usb_device_id { i16 15, i16 8457, i16 1809, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554432 }, %struct.usb_device_id { i16 15, i16 9527, i16 4200, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8388608 }, %struct.usb_device_id { i16 15, i16 13693, i16 30600, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 75497472 }, %struct.usb_device_id { i16 15, i16 18801, i16 4114, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8388608 }, %struct.usb_device_id { i16 15, i16 18801, i16 -32745, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67108864 }, %struct.usb_device_id { i16 15, i16 18801, i16 -32732, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 536870912 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 8, i8 6, i8 80, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 8, i8 6, i8 98, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@uas_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @uas_queuecommand, ptr null, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @uas_eh_abort_handler, ptr @uas_eh_device_reset_handler, ptr null, ptr null, ptr null, ptr @uas_slave_alloc, ptr @uas_slave_configure, ptr null, ptr @uas_target_alloc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 8, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@uas_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&devinfo->lock\00", [17 x i8] zeroinitializer }, align 32
@uas_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&devinfo->work)\00", [62 x i8] zeroinitializer }, align 32
@uas_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&devinfo->scan_work)\00", [57 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 123, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UAS is ignored for this device, using usb-storage instead\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uas_use_uas_driver\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/storage/uas-detect.h\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr = internal global ptr @uas_use_uas_driver._entry, section ".printk_index", align 4
@uas_use_uas_driver._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 130, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"The driver for the USB controller %s does not support scatter-gather which is\0A\00", [49 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.13 = internal global ptr @uas_use_uas_driver._entry.11, section ".printk_index", align 4
@uas_use_uas_driver._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 132, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"required by the UAS driver. Please try an other USB controller if you wish to use UAS.\0A\00", [40 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.16 = internal global ptr @uas_use_uas_driver._entry.14, section ".printk_index", align 4
@uas_use_uas_driver._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 139, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"USB controller %s does not support streams, which are required by the UAS driver.\0A\00", [45 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.19 = internal global ptr @uas_use_uas_driver._entry.17, section ".printk_index", align 4
@uas_use_uas_driver._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 141, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Please try an other USB controller if you wish to use UAS.\0A\00", [36 x i8] zeroinitializer }, align 32
@uas_use_uas_driver._entry_ptr.22 = internal global ptr @uas_use_uas_driver._entry.20, section ".printk_index", align 4
@usb_stor_sense_invalidCDB = external dso_local local_unnamed_addr global [18 x i8], align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/storage/uas.c\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data in submit err\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"data out submit err\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd submit err\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sense submit err\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uas_stat_cmplt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.23, i32 320, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stat urb: status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uas_stat_cmplt\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uas_stat_cmplt._entry_ptr = internal global ptr @uas_stat_cmplt._entry, section ".printk_index", align 4
@uas_stat_cmplt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.23, i32 327, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"stat urb: no pending cmd for uas-tag %d\0A\00", [55 x i8] zeroinitializer }, align 32
@uas_stat_cmplt._entry_ptr.33 = internal global ptr @uas_stat_cmplt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unexpected status cmplt\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unexpected read rdy\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unexpected write rdy\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bogus IU\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: urb length %d disagrees with IU sense data length %d, using %d bytes of sense data\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.uas_sense = private unnamed_addr constant [10 x i8] c"uas_sense\00", align 1
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"response iu\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected data cmplt\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data cmplt err\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s %d uas-tag %d inflight:%s%s%s%s%s%s%s%s%s%s%s%s \00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" s-st\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" a-in\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" s-in\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" a-out\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" s-out\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" a-cmd\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" s-cmd\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CMD\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IN\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OUT\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" abort\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" work\00", [26 x i8] zeroinitializer }, align 32
@uas_cmd_cmplt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.23, i32 439, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmd cmplt err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uas_cmd_cmplt\00", [18 x i8] zeroinitializer }, align 32
@uas_cmd_cmplt._entry_ptr = internal global ptr @uas_cmd_cmplt._entry, section ".printk_index", align 4
@__func__.uas_eh_abort_handler = private unnamed_addr constant [21 x i8] c"uas_eh_abort_handler\00", align 1
@uas_eh_device_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.23, i32 780, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s FAILED to get lock err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uas_eh_device_reset_handler\00", [36 x i8] zeroinitializer }, align 32
@uas_eh_device_reset_handler._entry_ptr = internal global ptr @uas_eh_device_reset_handler._entry, section ".printk_index", align 4
@uas_eh_device_reset_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.23, i32 784, ptr @.str.38, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s start\0A\00", [22 x i8] zeroinitializer }, align 32
@uas_eh_device_reset_handler._entry_ptr.63 = internal global ptr @uas_eh_device_reset_handler._entry.61, section ".printk_index", align 4
@uas_eh_device_reset_handler._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.23, i32 805, ptr @.str.38, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s FAILED err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@uas_eh_device_reset_handler._entry_ptr.66 = internal global ptr @uas_eh_device_reset_handler._entry.64, section ".printk_index", align 4
@uas_eh_device_reset_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.23, i32 809, ptr @.str.38, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s success\0A\00", [20 x i8] zeroinitializer }, align 32
@uas_eh_device_reset_handler._entry_ptr.69 = internal global ptr @uas_eh_device_reset_handler._entry.67, section ".printk_index", align 4
@__func__.uas_zap_pending = private unnamed_addr constant [16 x i8] c"uas_zap_pending\00", align 1
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@uas_scan_work.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.23, ptr @.str.74, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uas_scan_work\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"starting scan\0A\00", [17 x i8] zeroinitializer }, align 32
@uas_scan_work.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.23, ptr @.str.75, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scan complete\0A\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@uas_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.23, i32 1161, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uas_suspend\00", [20 x i8] zeroinitializer }, align 32
@uas_suspend._entry_ptr = internal global ptr @uas_suspend._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@uas_reset_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.23, i32 1184, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: alloc streams error %d after reset\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uas_reset_resume\00", [47 x i8] zeroinitializer }, align 32
@uas_reset_resume._entry_ptr = internal global ptr @uas_reset_resume._entry, section ".printk_index", align 4
@uas_pre_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.80, ptr @.str.23, i32 1119, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uas_pre_reset\00", [18 x i8] zeroinitializer }, align 32
@uas_pre_reset._entry_ptr = internal global ptr @uas_pre_reset._entry, section ".printk_index", align 4
@uas_post_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.81, ptr @.str.23, i32 1143, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uas_post_reset\00", [17 x i8] zeroinitializer }, align 32
@uas_post_reset._entry_ptr = internal global ptr @uas_post_reset._entry, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1617, i64 43605]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 133, i64 161]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"uas_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1243, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"workqueue\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 95, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1244, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"uas_usb_ids\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 921, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"uas_host_template\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 901, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1022, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1023, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1024, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 122, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 128, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 131, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 137, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [36 x i8] c"../drivers/usb/storage/uas-detect.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 140, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 565, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 586, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 606, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 625, i32 28 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 551, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 320, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 326, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 335, i32 27 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 353, i32 28 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 361, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 377, i32 27 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 188, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 291, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 418, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 424, i32 28 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 210, i32 7 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 212, i32 45 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 212, i32 56 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 213, i32 45 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 214, i32 45 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 215, i32 45 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 216, i32 45 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 217, i32 45 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 218, i32 45 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 219, i32 45 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 220, i32 45 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 221, i32 45 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 222, i32 45 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 223, i32 45 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 439, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 779, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 784, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 804, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 809, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1367, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1368, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 137, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 139, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1161, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1182, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1119, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [29 x i8] c"../drivers/usb/storage/uas.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1141, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_import_ns298, ptr @__UNIQUE_ID_license297, ptr @__exitcall_uas_exit, ptr @__initcall__kmod_uas__295_1279_uas_init6, ptr @uas_cmd_cmplt._entry, ptr @uas_cmd_cmplt._entry_ptr, ptr @uas_eh_device_reset_handler._entry, ptr @uas_eh_device_reset_handler._entry.61, ptr @uas_eh_device_reset_handler._entry.64, ptr @uas_eh_device_reset_handler._entry.67, ptr @uas_eh_device_reset_handler._entry_ptr, ptr @uas_eh_device_reset_handler._entry_ptr.63, ptr @uas_eh_device_reset_handler._entry_ptr.66, ptr @uas_eh_device_reset_handler._entry_ptr.69, ptr @uas_exit, ptr @uas_post_reset._entry, ptr @uas_post_reset._entry_ptr, ptr @uas_pre_reset._entry, ptr @uas_pre_reset._entry_ptr, ptr @uas_reset_resume._entry, ptr @uas_reset_resume._entry_ptr, ptr @uas_stat_cmplt._entry, ptr @uas_stat_cmplt._entry.31, ptr @uas_stat_cmplt._entry_ptr, ptr @uas_stat_cmplt._entry_ptr.33, ptr @uas_suspend._entry, ptr @uas_suspend._entry_ptr, ptr @uas_use_uas_driver._entry, ptr @uas_use_uas_driver._entry.11, ptr @uas_use_uas_driver._entry.14, ptr @uas_use_uas_driver._entry.17, ptr @uas_use_uas_driver._entry.20, ptr @uas_use_uas_driver._entry_ptr, ptr @uas_use_uas_driver._entry_ptr.13, ptr @uas_use_uas_driver._entry_ptr.16, ptr @uas_use_uas_driver._entry_ptr.19, ptr @uas_use_uas_driver._entry_ptr.22, ptr @uas_driver, ptr @workqueue, ptr @.str, ptr @uas_usb_ids, ptr @uas_host_template, ptr @uas_probe.__key, ptr @.str.1, ptr @uas_probe.__key.2, ptr @.str.3, ptr @uas_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @init_usb_anchor.__key, ptr @.str.70, ptr @init_usb_anchor.__key.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_usb_ids to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_use_uas_driver._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_stat_cmplt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_stat_cmplt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_cmd_cmplt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_eh_device_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_eh_device_reset_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_eh_device_reset_handler._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_eh_device_reset_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_reset_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_pre_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uas_post_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uas_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @uas_driver) #9
  %0 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0) #9
  store ptr %call, ptr @workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usb_register_driver(ptr noundef nonnull @uas_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %eps.i128 = alloca [3 x ptr], align 4
  %eps.i = alloca [4 x ptr], align 4
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eps.i) #9
  %2 = call ptr @memset(ptr %eps.i, i32 0, i32 16)
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #9
  %driver_info.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %5 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_info.i, align 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flags.i, align 4
  %num_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %8 = ptrtoint ptr %num_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_altsetting.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp9.not.i.i, label %entry.uas_use_uas_driver.exit.thread_crit_edge, label %for.body.lr.ph.i.i

entry.uas_use_uas_driver.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

for.body.lr.ph.i.i:                               ; preds = %entry
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.usb_host_interface, ptr %11, i32 %i.010.i.i
  %bInterfaceClass.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %bInterfaceClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bInterfaceClass.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp.i.i.i = icmp eq i8 %13, 8
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %bInterfaceSubClass.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %bInterfaceSubClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceSubClass.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp4.i.i.i = icmp eq i8 %15, 6
  br i1 %cmp4.i.i.i, label %uas_is_interface.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

uas_is_interface.exit.i.i:                        ; preds = %land.lhs.true.i.i.i
  %bInterfaceProtocol.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %bInterfaceProtocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterfaceProtocol.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %17)
  %cmp8.i.not.i.i = icmp eq i8 %17, 98
  br i1 %cmp8.i.not.i.i, label %uas_find_uas_alt_setting.exit.i, label %uas_is_interface.exit.i.i.for.inc.i.i_crit_edge

uas_is_interface.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %uas_is_interface.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %uas_is_interface.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.inc.i.i.uas_use_uas_driver.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.uas_use_uas_driver.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

uas_find_uas_alt_setting.exit.i:                  ; preds = %uas_is_interface.exit.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %uas_find_uas_alt_setting.exit.i.uas_use_uas_driver.exit.thread_crit_edge, label %if.end.i

uas_find_uas_alt_setting.exit.i.uas_use_uas_driver.exit.thread_crit_edge: ; preds = %uas_find_uas_alt_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

if.end.i:                                         ; preds = %uas_find_uas_alt_setting.exit.i
  %endpoint1.i.i = getelementptr %struct.usb_host_interface, ptr %11, i32 %i.010.i.i, i32 3
  %18 = ptrtoint ptr %endpoint1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endpoint1.i.i, align 4
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp61.not.i.i = icmp eq i8 %21, 0
  br i1 %cmp61.not.i.i, label %if.end.i.for.end.i.i_crit_edge, label %if.end.i.for.body.i105.i_crit_edge

if.end.i.for.body.i105.i_crit_edge:               ; preds = %if.end.i
  br label %for.body.i105.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i105.i:                                  ; preds = %while.end.i.i.for.body.i105.i_crit_edge, %if.end.i.for.body.i105.i_crit_edge
  %i.062.i.i = phi i32 [ %inc.i107.i, %while.end.i.i.for.body.i105.i_crit_edge ], [ 0, %if.end.i.for.body.i105.i_crit_edge ]
  %arrayidx.i104.i = getelementptr %struct.usb_host_endpoint, ptr %19, i32 %i.062.i.i
  %extralen.i.i = getelementptr %struct.usb_host_endpoint, ptr %19, i32 %i.062.i.i, i32 8
  %22 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extralen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp558.i.i = icmp sgt i32 %23, 2
  br i1 %cmp558.i.i, label %while.body.preheader.i.i, label %for.body.i105.i.while.end.i.i_crit_edge

for.body.i105.i.while.end.i.i_crit_edge:          ; preds = %for.body.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %for.body.i105.i
  %extra3.i.i = getelementptr %struct.usb_host_endpoint, ptr %19, i32 %i.062.i.i, i32 7
  %24 = ptrtoint ptr %extra3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extra3.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end20.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %len.060.i.i = phi i32 [ %sub23.i.i, %if.end20.i.i.while.body.i.i_crit_edge ], [ %23, %while.body.preheader.i.i ]
  %extra.059.i.i = phi ptr [ %add.ptr.i106.i, %if.end20.i.i.while.body.i.i_crit_edge ], [ %25, %while.body.preheader.i.i ]
  %arrayidx7.i.i = getelementptr i8, ptr %extra.059.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %27)
  %cmp9.i.i = icmp eq i8 %27, 36
  br i1 %cmp9.i.i, label %if.then.i.i, label %if.end20.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %extra.059.i.i, i32 2
  %28 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx11.i.i, align 1
  %30 = add i8 %29, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %31 = icmp ult i8 %30, 4
  br i1 %31, label %if.then17.i.i, label %if.then.i.i.while.end.i.i_crit_edge

if.then.i.i.while.end.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.then17.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i.i = zext i8 %29 to i32
  %sub.i.i = add nsw i32 %conv12.i.i, -1
  %arrayidx19.i.i = getelementptr ptr, ptr %eps.i, i32 %sub.i.i
  %32 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i104.i, ptr %arrayidx19.i.i, align 4
  br label %while.end.i.i

if.end20.i.i:                                     ; preds = %while.body.i.i
  %33 = ptrtoint ptr %extra.059.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extra.059.i.i, align 1
  %conv22.i.i = zext i8 %34 to i32
  %sub23.i.i = sub nsw i32 %len.060.i.i, %conv22.i.i
  %add.ptr.i106.i = getelementptr i8, ptr %extra.059.i.i, i32 %conv22.i.i
  %cmp5.i.i = icmp sgt i32 %sub23.i.i, 2
  br i1 %cmp5.i.i, label %if.end20.i.i.while.body.i.i_crit_edge, label %if.end20.i.i.while.end.i.i_crit_edge

if.end20.i.i.while.end.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.end20.i.i.while.body.i.i_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end20.i.i.while.end.i.i_crit_edge, %if.then17.i.i, %if.then.i.i.while.end.i.i_crit_edge, %for.body.i105.i.while.end.i.i_crit_edge
  %inc.i107.i = add nuw nsw i32 %i.062.i.i, 1
  %exitcond.not.i108.i = icmp eq i32 %inc.i107.i, %conv.i.i
  br i1 %exitcond.not.i108.i, label %while.end.i.i.for.end.i.i_crit_edge, label %while.end.i.i.for.body.i105.i_crit_edge

while.end.i.i.for.body.i105.i_crit_edge:          ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i105.i

while.end.i.i.for.end.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %while.end.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %35 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %eps.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %for.end.i.i.uas_use_uas_driver.exit.thread_crit_edge, label %lor.lhs.false.i.i

for.end.i.i.uas_use_uas_driver.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

lor.lhs.false.i.i:                                ; preds = %for.end.i.i
  %arrayidx27.i.i = getelementptr inbounds ptr, ptr %eps.i, i32 1
  %37 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx27.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %38, null
  br i1 %tobool28.not.i.i, label %lor.lhs.false.i.i.uas_use_uas_driver.exit.thread_crit_edge, label %lor.lhs.false29.i.i

lor.lhs.false.i.i.uas_use_uas_driver.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

lor.lhs.false29.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx30.i.i = getelementptr inbounds ptr, ptr %eps.i, i32 2
  %39 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx30.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %40, null
  br i1 %tobool31.not.i.i, label %lor.lhs.false29.i.i.uas_use_uas_driver.exit.thread_crit_edge, label %lor.lhs.false32.i.i

lor.lhs.false29.i.i.uas_use_uas_driver.exit.thread_crit_edge: ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

lor.lhs.false32.i.i:                              ; preds = %lor.lhs.false29.i.i
  %arrayidx33.i.i = getelementptr inbounds ptr, ptr %eps.i, i32 3
  %41 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx33.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %42, null
  br i1 %tobool34.not.i.i, label %lor.lhs.false32.i.i.uas_use_uas_driver.exit.thread_crit_edge, label %if.end5.i

lor.lhs.false32.i.i.uas_use_uas_driver.exit.thread_crit_edge: ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread

if.end5.i:                                        ; preds = %lor.lhs.false32.i.i
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %43 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %idVendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 19479, i16 %44)
  %cmp6.i = icmp eq i16 %44, 19479
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end5.i.if.end36.i_crit_edge

if.end5.i.if.end36.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %45 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %idProduct.i, align 2
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i16 %46, label %land.lhs.true.i.if.end44.i_crit_edge [
    i16 1617, label %land.lhs.true.i.if.then17.i_crit_edge
    i16 -21931, label %land.lhs.true.i.if.then17.i_crit_edge166
  ]

land.lhs.true.i.if.then17.i_crit_edge166:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

land.lhs.true.i.if.then17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.then17.i:                                      ; preds = %land.lhs.true.i.if.then17.i_crit_edge, %land.lhs.true.i.if.then17.i_crit_edge166
  %actconfig.i = getelementptr i8, ptr %1, i32 956
  %48 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %actconfig.i, align 4
  %bMaxPower.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %bMaxPower.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bMaxPower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp19.i = icmp eq i8 %51, 0
  br i1 %cmp19.i, label %if.then17.i.if.end36thread-pre-split.i_crit_edge, label %if.else.i

if.then17.i.if.end36thread-pre-split.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36thread-pre-split.i

if.else.i:                                        ; preds = %if.then17.i
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %52 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp22.i = icmp ult i32 %53, 5
  br i1 %cmp22.i, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %6, 8388608
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end36thread-pre-split.i

if.else25.i:                                      ; preds = %if.else.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %38, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bmAttributes.i.i, align 1
  %57 = and i8 %56, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %cond.i = icmp eq i8 %57, 5
  br i1 %cond.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  %or30.i = or i32 %6, 8388608
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or30.i, ptr %flags.i, align 4
  br label %if.end36thread-pre-split.i

if.else31.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  %or32.i = or i32 %6, 134217728
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or32.i, ptr %flags.i, align 4
  br label %if.end36thread-pre-split.i

if.end36thread-pre-split.i:                       ; preds = %if.else31.i, %if.then29.i, %if.then24.i, %if.then17.i.if.end36thread-pre-split.i_crit_edge
  %60 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %.pr.i = load i16, ptr %idVendor.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36thread-pre-split.i, %if.end5.i.if.end36.i_crit_edge
  %61 = phi i16 [ %.pr.i, %if.end36thread-pre-split.i ], [ %44, %if.end5.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15861, i16 %61)
  %cmp40.i = icmp eq i16 %61, -15861
  br i1 %cmp40.i, label %if.then42.i, label %if.end36.i.if.end44.i_crit_edge

if.end36.i.if.end44.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %or43.i = or i32 %63, 33554432
  store i32 %or43.i, ptr %flags.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end36.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge
  call void @usb_stor_adjust_quirks(ptr noundef %add.ptr.i, ptr noundef nonnull %flags.i) #9
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %65, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool45.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end44.i.uas_use_uas_driver.exit.thread.sink.split_crit_edge

if.end44.i.uas_use_uas_driver.exit.thread.sink.split_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_use_uas_driver.exit.thread.sink.split

if.end47.i:                                       ; preds = %if.end44.i
  %66 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i, align 8
  %sg_tablesize.i = getelementptr inbounds %struct.usb_bus, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sg_tablesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp49.i = icmp eq i32 %69, 0
  br i1 %cmp49.i, label %do.end54.i, label %if.end60.i

do.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9
  %70 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver.i, align 8
  br label %uas_use_uas_driver.exit.thread.sink.split.sink.split

if.end60.i:                                       ; preds = %if.end47.i
  %speed61.i = getelementptr i8, ptr %1, i32 -100
  %72 = ptrtoint ptr %speed61.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %speed61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp62.i = icmp ugt i32 %73, 4
  br i1 %cmp62.i, label %land.lhs.true64.i, label %if.end60.i.if.end_crit_edge

if.end60.i.if.end_crit_edge:                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true64.i:                                ; preds = %if.end60.i
  %can_do_streams.i = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 14
  %74 = ptrtoint ptr %can_do_streams.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load.i = load i16, ptr %can_do_streams.i, align 4
  %75 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool65.not.i = icmp eq i16 %75, 0
  br i1 %tobool65.not.i, label %do.end69.i, label %land.lhs.true64.i.if.end_crit_edge

land.lhs.true64.i.if.end_crit_edge:               ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end69.i:                                       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #11
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 3
  br label %uas_use_uas_driver.exit.thread.sink.split.sink.split

uas_use_uas_driver.exit.thread.sink.split.sink.split: ; preds = %do.end69.i, %do.end54.i
  %bus_name.i.sink = phi ptr [ %bus_name.i, %do.end69.i ], [ %71, %do.end54.i ]
  %.str.18.sink = phi ptr [ @.str.18, %do.end69.i ], [ @.str.12, %do.end54.i ]
  %.str.6.sink.ph = phi ptr [ @.str.21, %do.end69.i ], [ @.str.15, %do.end54.i ]
  %76 = ptrtoint ptr %bus_name.i.sink to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus_name.i.sink, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull %.str.18.sink, ptr noundef %77) #12
  br label %uas_use_uas_driver.exit.thread.sink.split

uas_use_uas_driver.exit.thread.sink.split:        ; preds = %uas_use_uas_driver.exit.thread.sink.split.sink.split, %if.end44.i.uas_use_uas_driver.exit.thread.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %if.end44.i.uas_use_uas_driver.exit.thread.sink.split_crit_edge ], [ %.str.6.sink.ph, %uas_use_uas_driver.exit.thread.sink.split.sink.split ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull %.str.6.sink) #12
  br label %uas_use_uas_driver.exit.thread

uas_use_uas_driver.exit.thread:                   ; preds = %uas_use_uas_driver.exit.thread.sink.split, %lor.lhs.false32.i.i.uas_use_uas_driver.exit.thread_crit_edge, %lor.lhs.false29.i.i.uas_use_uas_driver.exit.thread_crit_edge, %lor.lhs.false.i.i.uas_use_uas_driver.exit.thread_crit_edge, %for.end.i.i.uas_use_uas_driver.exit.thread_crit_edge, %uas_find_uas_alt_setting.exit.i.uas_use_uas_driver.exit.thread_crit_edge, %for.inc.i.i.uas_use_uas_driver.exit.thread_crit_edge, %entry.uas_use_uas_driver.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eps.i) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true64.i.if.end_crit_edge, %if.end60.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eps.i) #9
  %78 = ptrtoint ptr %num_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_altsetting.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp9.not.i.i101 = icmp eq i32 %79, 0
  br i1 %cmp9.not.i.i101, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i.i102

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i.i102:                            ; preds = %if.end
  %80 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %intf, align 8
  br label %for.body.i.i107

for.body.i.i107:                                  ; preds = %for.inc.i.i116.for.body.i.i107_crit_edge, %for.body.lr.ph.i.i102
  %i.010.i.i103 = phi i32 [ 0, %for.body.lr.ph.i.i102 ], [ %inc.i.i114, %for.inc.i.i116.for.body.i.i107_crit_edge ]
  %arrayidx.i.i104 = getelementptr %struct.usb_host_interface, ptr %81, i32 %i.010.i.i103
  %bInterfaceClass.i.i.i105 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i104, i32 0, i32 5
  %82 = ptrtoint ptr %bInterfaceClass.i.i.i105 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bInterfaceClass.i.i.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %83)
  %cmp.i.i.i106 = icmp eq i8 %83, 8
  br i1 %cmp.i.i.i106, label %land.lhs.true.i.i.i110, label %for.body.i.i107.for.inc.i.i116_crit_edge

for.body.i.i107.for.inc.i.i116_crit_edge:         ; preds = %for.body.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i116

land.lhs.true.i.i.i110:                           ; preds = %for.body.i.i107
  %bInterfaceSubClass.i.i.i108 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i104, i32 0, i32 6
  %84 = ptrtoint ptr %bInterfaceSubClass.i.i.i108 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bInterfaceSubClass.i.i.i108, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %85)
  %cmp4.i.i.i109 = icmp eq i8 %85, 6
  br i1 %cmp4.i.i.i109, label %uas_is_interface.exit.i.i113, label %land.lhs.true.i.i.i110.for.inc.i.i116_crit_edge

land.lhs.true.i.i.i110.for.inc.i.i116_crit_edge:  ; preds = %land.lhs.true.i.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i116

uas_is_interface.exit.i.i113:                     ; preds = %land.lhs.true.i.i.i110
  %bInterfaceProtocol.i.i.i111 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i104, i32 0, i32 7
  %86 = ptrtoint ptr %bInterfaceProtocol.i.i.i111 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bInterfaceProtocol.i.i.i111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %87)
  %cmp8.i.not.i.i112 = icmp eq i8 %87, 98
  br i1 %cmp8.i.not.i.i112, label %uas_find_uas_alt_setting.exit.i118, label %uas_is_interface.exit.i.i113.for.inc.i.i116_crit_edge

uas_is_interface.exit.i.i113.for.inc.i.i116_crit_edge: ; preds = %uas_is_interface.exit.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i116

for.inc.i.i116:                                   ; preds = %uas_is_interface.exit.i.i113.for.inc.i.i116_crit_edge, %land.lhs.true.i.i.i110.for.inc.i.i116_crit_edge, %for.body.i.i107.for.inc.i.i116_crit_edge
  %inc.i.i114 = add nuw i32 %i.010.i.i103, 1
  %exitcond.not.i.i115 = icmp eq i32 %inc.i.i114, %79
  br i1 %exitcond.not.i.i115, label %for.inc.i.i116.cleanup_crit_edge, label %for.inc.i.i116.for.body.i.i107_crit_edge

for.inc.i.i116.for.body.i.i107_crit_edge:         ; preds = %for.inc.i.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i107

for.inc.i.i116.cleanup_crit_edge:                 ; preds = %for.inc.i.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

uas_find_uas_alt_setting.exit.i118:               ; preds = %uas_is_interface.exit.i.i113
  %tobool.not.i117 = icmp eq ptr %arrayidx.i.i104, null
  br i1 %tobool.not.i117, label %uas_find_uas_alt_setting.exit.i118.cleanup_crit_edge, label %uas_switch_interface.exit

uas_find_uas_alt_setting.exit.i118.cleanup_crit_edge: ; preds = %uas_find_uas_alt_setting.exit.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

uas_switch_interface.exit:                        ; preds = %uas_find_uas_alt_setting.exit.i118
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i104, i32 0, i32 2
  %88 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %89 to i32
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i104, i32 0, i32 3
  %90 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bAlternateSetting.i, align 1
  %conv2.i = zext i8 %91 to i32
  %call3.i = call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv.i, i32 noundef %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool3.not = icmp eq i32 %call3.i, 0
  br i1 %tobool3.not, label %if.end5, label %uas_switch_interface.exit.cleanup_crit_edge

uas_switch_interface.exit.cleanup_crit_edge:      ; preds = %uas_switch_interface.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %uas_switch_interface.exit
  %call6 = call ptr @scsi_host_alloc(ptr noundef nonnull @uas_host_template, i32 noundef 1532) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %set_alt0, label %if.end9

if.end9:                                          ; preds = %if.end5
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 24
  %92 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 268, ptr %max_cmd_len, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 21
  %93 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 22
  %94 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 256, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 20
  %95 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %max_channel, align 8
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i, align 8
  %sg_tablesize = getelementptr inbounds %struct.usb_bus, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sg_tablesize, align 4
  %conv = trunc i32 %99 to i16
  %sg_tablesize10 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 28
  %100 = ptrtoint ptr %sg_tablesize10 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv, ptr %sg_tablesize10, align 2
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 53
  %101 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %intf, ptr %hostdata, align 4
  %udev12 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %udev12 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i, ptr %udev12, align 4
  %resetting = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 4
  %103 = ptrtoint ptr %resetting to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %resetting, align 4
  %shutdown = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %104 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load = load i8, ptr %shutdown, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %shutdown, align 4
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 2
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %65, ptr %flags, align 4
  %cmd_urbs = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 1
  %106 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 2
  %107 = call ptr @memset(ptr %106, i32 0, i32 104)
  %108 = ptrtoint ptr %cmd_urbs to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %cmd_urbs, ptr %cmd_urbs, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 1, i32 1
  %109 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %cmd_urbs, ptr %prev.i.i, align 4
  call void @__init_waitqueue_head(ptr noundef %106, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_usb_anchor.__key.71, i16 noundef signext 3) #9
  %sense_urbs = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 2
  %110 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 3, i32 1
  %111 = call ptr @memset(ptr %110, i32 0, i32 104)
  %112 = ptrtoint ptr %sense_urbs to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %sense_urbs, ptr %sense_urbs, align 4
  %prev.i.i121 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 3
  %113 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %sense_urbs, ptr %prev.i.i121, align 4
  call void @__init_waitqueue_head(ptr noundef %110, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i123 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock.i123, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_usb_anchor.__key.71, i16 noundef signext 3) #9
  %data_urbs = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 10, i32 1
  %114 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 11
  %115 = call ptr @memset(ptr %114, i32 0, i32 104)
  %116 = ptrtoint ptr %data_urbs to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %data_urbs, ptr %data_urbs, align 4
  %prev.i.i124 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 10, i32 1, i32 1
  %117 = ptrtoint ptr %prev.i.i124 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %data_urbs, ptr %prev.i.i124, align 4
  call void @__init_waitqueue_head(ptr noundef %114, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i126 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i126, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_usb_anchor.__key.71, i16 noundef signext 3) #9
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 24
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @uas_probe.__key, i16 noundef signext 3) #9
  %work = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 31, i32 0, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %118 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 2
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @uas_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry18 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4
  %119 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 1
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %121 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @uas_do_work, ptr %func, align 4
  %scan_work = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 34
  call void @__init_work(ptr noundef %scan_work, i32 noundef 0) #9
  %122 = ptrtoint ptr %scan_work to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -64, ptr %scan_work, align 4
  %lockdep_map28 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 38
  call void @lockdep_init_map_type(ptr noundef %lockdep_map28, ptr noundef nonnull @.str.5, ptr noundef nonnull @uas_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry30 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 35
  %123 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i127 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 36
  %124 = ptrtoint ptr %prev.i127 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %entry30, ptr %prev.i127, align 4
  %func32 = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 49, i32 37
  %125 = ptrtoint ptr %func32 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @uas_scan_work, ptr %func32, align 4
  %call35 = call fastcc i32 @uas_configure_endpoints(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end9.if.then48_crit_edge

if.end9.if.then48_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.end38:                                         ; preds = %if.end9
  %qdepth = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 3
  %126 = ptrtoint ptr %qdepth to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %qdepth, align 4
  %sub = add i32 %127, -2
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 26
  %128 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %sub, ptr %can_queue, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %129 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call6, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end42, label %free_streams

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %130 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %130, ptr noundef %scan_work) #9
  br label %cleanup

free_streams:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %udev12 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %udev12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eps.i128) #9
  %133 = getelementptr inbounds [3 x ptr], ptr %eps.i128, i32 0, i32 1
  %134 = getelementptr inbounds [3 x ptr], ptr %eps.i128, i32 0, i32 2
  %status_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %135 = ptrtoint ptr %status_pipe.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %status_pipe.i, align 4
  %and.i.i = and i32 %136, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i129 = icmp eq i32 %and.i.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %132, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %132, i32 0, i32 22
  %cond.i.i = select i1 %tobool.not.i.i129, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i.i = lshr i32 %136, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i130 = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %137 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i130, align 4
  %139 = ptrtoint ptr %eps.i128 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %eps.i128, align 4
  %data_in_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %140 = ptrtoint ptr %data_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %data_in_pipe.i, align 4
  %and.i13.i = and i32 %141, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  %cond.i17.i = select i1 %tobool.not.i14.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i18.i = lshr i32 %141, 15
  %and2.i19.i = and i32 %shr.i18.i, 15
  %arrayidx.i20.i = getelementptr ptr, ptr %cond.i17.i, i32 %and2.i19.i
  %142 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i20.i, align 4
  %144 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %133, align 4
  %data_out_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %145 = ptrtoint ptr %data_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %data_out_pipe.i, align 4
  %and.i21.i = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  %cond.i25.i = select i1 %tobool.not.i22.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i26.i = lshr i32 %146, 15
  %and2.i27.i = and i32 %shr.i26.i, 15
  %arrayidx.i28.i = getelementptr ptr, ptr %cond.i25.i, i32 %and2.i27.i
  %147 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i28.i, align 4
  %149 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %134, align 4
  %150 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hostdata, align 4
  %call6.i = call i32 @usb_free_streams(ptr noundef %151, ptr noundef nonnull %eps.i128, i32 noundef 3, i32 noundef 3072) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eps.i128) #9
  %152 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %if.then48

set_alt0:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bInterfaceNumber, align 2
  %conv45 = zext i8 %156 to i32
  %call46 = call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv45, i32 noundef 0) #9
  br label %cleanup

if.then48:                                        ; preds = %free_streams, %if.end9.if.then48_crit_edge
  %result.0.ph = phi i32 [ %call.i, %free_streams ], [ %call35, %if.end9.if.then48_crit_edge ]
  %157 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %intf, align 8
  %bInterfaceNumber138 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %bInterfaceNumber138 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %bInterfaceNumber138, align 2
  %conv45139 = zext i8 %160 to i32
  %call46140 = call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv45139, i32 noundef 0) #9
  call void @scsi_host_put(ptr noundef nonnull %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %set_alt0, %if.end42, %uas_switch_interface.exit.cleanup_crit_edge, %uas_find_uas_alt_setting.exit.i118.cleanup_crit_edge, %for.inc.i.i116.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uas_use_uas_driver.exit.thread
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -19, %uas_switch_interface.exit.cleanup_crit_edge ], [ %result.0.ph, %if.then48 ], [ -12, %set_alt0 ], [ -19, %uas_use_uas_driver.exit.thread ], [ -19, %uas_find_uas_alt_setting.exit.i118.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %for.inc.i.i116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  %eps.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %resetting = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %2 = ptrtoint ptr %resetting to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %resetting, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %work = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 31, i32 0, i32 0, i32 3
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #9
  %cmd_urbs = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %cmd_urbs) #9
  %sense_urbs = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %sense_urbs) #9
  %data_urbs = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %data_urbs) #9
  tail call fastcc void @uas_zap_pending(ptr noundef %hostdata, i32 noundef 1)
  %scan_work = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 34
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %scan_work) #9
  tail call void @scsi_remove_host(ptr noundef %1) #9
  %udev1.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eps.i) #9
  %5 = getelementptr inbounds [3 x ptr], ptr %eps.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x ptr], ptr %eps.i, i32 0, i32 2
  %status_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %status_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status_pipe.i, align 4
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 22
  %cond.i.i = select i1 %tobool.not.i.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i.i = lshr i32 %8, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %11 = ptrtoint ptr %eps.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %eps.i, align 4
  %data_in_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %12 = ptrtoint ptr %data_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_in_pipe.i, align 4
  %and.i13.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  %cond.i17.i = select i1 %tobool.not.i14.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i18.i = lshr i32 %13, 15
  %and2.i19.i = and i32 %shr.i18.i, 15
  %arrayidx.i20.i = getelementptr ptr, ptr %cond.i17.i, i32 %and2.i19.i
  %14 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i20.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %5, align 4
  %data_out_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %17 = ptrtoint ptr %data_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_out_pipe.i, align 4
  %and.i21.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  %cond.i25.i = select i1 %tobool.not.i22.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i26.i = lshr i32 %18, 15
  %and2.i27.i = and i32 %shr.i26.i, 15
  %arrayidx.i28.i = getelementptr ptr, ptr %cond.i25.i, i32 %and2.i27.i
  %19 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i28.i, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %6, align 4
  %22 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hostdata, align 4
  %call6.i = call i32 @usb_free_streams(ptr noundef %23, ptr noundef nonnull %eps.i, i32 noundef 3, i32 noundef 3072) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eps.i) #9
  call void @scsi_host_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call fastcc i32 @uas_wait_for_pending_cmnds(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %shost_gendev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uas_resume(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_reset_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call fastcc i32 @uas_configure_endpoints(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %shost_gendev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %call1) #12
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  tail call void @scsi_report_bus_reset(ptr noundef %1, i32 noundef 0) #9
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  %eps.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %shutdown = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  tail call void @scsi_block_requests(ptr noundef %1) #9
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call3) #9
  %call7 = tail call fastcc i32 @uas_wait_for_pending_cmnds(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %shost_gendev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.80) #12
  tail call void @scsi_unblock_requests(ptr noundef %1) #9
  br label %cleanup

if.end14:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %udev1.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eps.i) #9
  %10 = getelementptr inbounds [3 x ptr], ptr %eps.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x ptr], ptr %eps.i, i32 0, i32 2
  %status_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %status_pipe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_pipe.i, align 4
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 22
  %cond.i.i = select i1 %tobool.not.i.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i.i = lshr i32 %13, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %eps.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %eps.i, align 4
  %data_in_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %17 = ptrtoint ptr %data_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_in_pipe.i, align 4
  %and.i13.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  %cond.i17.i = select i1 %tobool.not.i14.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i18.i = lshr i32 %18, 15
  %and2.i19.i = and i32 %shr.i18.i, 15
  %arrayidx.i20.i = getelementptr ptr, ptr %cond.i17.i, i32 %and2.i19.i
  %19 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i20.i, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %10, align 4
  %data_out_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %22 = ptrtoint ptr %data_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_out_pipe.i, align 4
  %and.i21.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  %cond.i25.i = select i1 %tobool.not.i22.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i26.i = lshr i32 %23, 15
  %and2.i27.i = and i32 %shr.i26.i, 15
  %arrayidx.i28.i = getelementptr ptr, ptr %cond.i25.i, i32 %and2.i27.i
  %24 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i28.i, align 4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %11, align 4
  %27 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hostdata, align 4
  %call6.i = call i32 @usb_free_streams(ptr noundef %28, ptr noundef nonnull %eps.i, i32 noundef 3, i32 noundef 3072) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eps.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end13 ], [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shutdown = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call fastcc i32 @uas_configure_endpoints(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp ne i32 %call1, 0
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call1, label %do.end [
    i32 -19, label %if.end.do.body6_crit_edge
    i32 0, label %if.end.do.body6_crit_edge28
  ]

if.end.do.body6_crit_edge28:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %shost_gendev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.81, i32 noundef %call1) #12
  br label %do.body6

do.body6:                                         ; preds = %do.end, %if.end.do.body6_crit_edge, %if.end.do.body6_crit_edge28
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  tail call void @scsi_report_bus_reset(ptr noundef %1, i32 noundef 0) #9
  %7 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call9) #9
  tail call void @scsi_unblock_requests(ptr noundef %1) #9
  %cond = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.body6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_shutdown(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %eps.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp.not = icmp eq i32 %0, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -128
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %shutdown = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %5 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %shutdown, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %shutdown, align 4
  %udev1.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eps.i) #9
  %8 = getelementptr inbounds [3 x ptr], ptr %eps.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x ptr], ptr %eps.i, i32 0, i32 2
  %status_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %status_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_pipe.i, align 4
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 22
  %cond.i.i = select i1 %tobool.not.i.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i.i = lshr i32 %11, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %eps.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %eps.i, align 4
  %data_in_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %15 = ptrtoint ptr %data_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_in_pipe.i, align 4
  %and.i13.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  %cond.i17.i = select i1 %tobool.not.i14.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i18.i = lshr i32 %16, 15
  %and2.i19.i = and i32 %shr.i18.i, 15
  %arrayidx.i20.i = getelementptr ptr, ptr %cond.i17.i, i32 %and2.i19.i
  %17 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i20.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %8, align 4
  %data_out_pipe.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %20 = ptrtoint ptr %data_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_out_pipe.i, align 4
  %and.i21.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  %cond.i25.i = select i1 %tobool.not.i22.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i26.i = lshr i32 %21, 15
  %and2.i27.i = and i32 %shr.i26.i, 15
  %arrayidx.i28.i = getelementptr ptr, ptr %cond.i25.i, i32 %and2.i27.i
  %22 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i28.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %9, align 4
  %25 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hostdata, align 4
  %call6.i = call i32 @usb_free_streams(ptr noundef %26, ptr noundef nonnull %eps.i, i32 noundef 3, i32 noundef 3072) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eps.i) #9
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %30 to i32
  %call2 = call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 0) #9
  %call3 = call i32 @usb_reset_device(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_do_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %resetting = getelementptr i8, ptr %work, i32 -1092
  %0 = ptrtoint ptr %resetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %entry
  %qdepth = getelementptr i8, ptr %work, i32 -1096
  %2 = ptrtoint ptr %qdepth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qdepth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp638 = icmp sgt i32 %3, 0
  br i1 %cmp638, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmnd8 = getelementptr i8, ptr %work, i32 -1068
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr %cmnd8, i32 0, i32 %i.039
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SCp, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end11.for.inc_crit_edge, label %if.end16

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end16:                                         ; preds = %if.end11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata, align 8
  %call17 = tail call fastcc i32 @uas_submit_urbs(ptr noundef nonnull %5, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %SCp, align 4
  %and21 = and i32 %13, -4097
  store i32 %and21, ptr %SCp, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %14 = load ptr, ptr @workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then19, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %15 = ptrtoint ptr %qdepth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qdepth, align 4
  %cmp6 = icmp slt i32 %inc, %16
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_scan_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1488
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uas_scan_work.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uas_scan_work, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uas_scan_work.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.74) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @scsi_scan_host(ptr noundef %3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uas_scan_work.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uas_scan_work, %if.then18)) #9
          to label %do.end23 [label %if.then18], !srcloc !188

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uas_scan_work.__UNIQUE_ID_ddebug291, ptr noundef %dev20, ptr noundef nonnull @.str.75) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uas_configure_endpoints(ptr nocapture noundef %devinfo) unnamed_addr #2 align 64 {
entry:
  %eps = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eps) #9
  %0 = call ptr @memset(ptr %eps, i32 0, i32 16)
  %udev1 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 1
  %1 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev1, align 4
  %3 = ptrtoint ptr %devinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devinfo, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %endpoint1.i = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %endpoint1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint1.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp61.not.i = icmp eq i8 %10, 0
  br i1 %cmp61.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %while.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %8, i32 %i.062.i
  %extralen.i = getelementptr %struct.usb_host_endpoint, ptr %8, i32 %i.062.i, i32 8
  %11 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %extralen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp558.i = icmp sgt i32 %12, 2
  br i1 %cmp558.i, label %while.body.preheader.i, label %for.body.i.while.end.i_crit_edge

for.body.i.while.end.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.preheader.i:                           ; preds = %for.body.i
  %extra3.i = getelementptr %struct.usb_host_endpoint, ptr %8, i32 %i.062.i, i32 7
  %13 = ptrtoint ptr %extra3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extra3.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %while.body.preheader.i
  %len.060.i = phi i32 [ %sub23.i, %if.end20.i.while.body.i_crit_edge ], [ %12, %while.body.preheader.i ]
  %extra.059.i = phi ptr [ %add.ptr.i, %if.end20.i.while.body.i_crit_edge ], [ %14, %while.body.preheader.i ]
  %arrayidx7.i = getelementptr i8, ptr %extra.059.i, i32 1
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %16)
  %cmp9.i = icmp eq i8 %16, 36
  br i1 %cmp9.i, label %if.then.i, label %if.end20.i

if.then.i:                                        ; preds = %while.body.i
  %arrayidx11.i = getelementptr i8, ptr %extra.059.i, i32 2
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11.i, align 1
  %19 = add i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %if.then17.i, label %if.then.i.while.end.i_crit_edge

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i = zext i8 %18 to i32
  %sub.i = add nsw i32 %conv12.i, -1
  %arrayidx19.i = getelementptr ptr, ptr %eps, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.i, ptr %arrayidx19.i, align 4
  br label %while.end.i

if.end20.i:                                       ; preds = %while.body.i
  %22 = ptrtoint ptr %extra.059.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %extra.059.i, align 1
  %conv22.i = zext i8 %23 to i32
  %sub23.i = sub nsw i32 %len.060.i, %conv22.i
  %add.ptr.i = getelementptr i8, ptr %extra.059.i, i32 %conv22.i
  %cmp5.i = icmp sgt i32 %sub23.i, 2
  br i1 %cmp5.i, label %if.end20.i.while.body.i_crit_edge, label %if.end20.i.while.end.i_crit_edge

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end20.i.while.end.i_crit_edge, %if.then17.i, %if.then.i.while.end.i_crit_edge, %for.body.i.while.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %while.end.i.for.end.i_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

while.end.i.for.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %while.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %24 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eps, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %lor.lhs.false.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.end.i
  %arrayidx27.i = getelementptr inbounds ptr, ptr %eps, i32 1
  %26 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx27.i, align 4
  %tobool28.not.i = icmp eq ptr %27, null
  br i1 %tobool28.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false29.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false29.i:                                ; preds = %lor.lhs.false.i
  %arrayidx30.i = getelementptr inbounds ptr, ptr %eps, i32 2
  %28 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %29, null
  br i1 %tobool31.not.i, label %lor.lhs.false29.i.cleanup_crit_edge, label %lor.lhs.false32.i

lor.lhs.false29.i.cleanup_crit_edge:              ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false32.i:                                ; preds = %lor.lhs.false29.i
  %arrayidx33.i = getelementptr inbounds ptr, ptr %eps, i32 3
  %30 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx33.i, align 4
  %tobool34.not.i = icmp eq ptr %31, null
  br i1 %tobool34.not.i, label %lor.lhs.false32.i.cleanup_crit_edge, label %if.end

lor.lhs.false32.i.cleanup_crit_edge:              ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false32.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %25, i32 0, i32 2
  %32 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i, align 1
  %34 = and i8 %33, 15
  %and.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 8
  %shl.i = shl i32 %36, 8
  %shl1.i = shl nuw nsw i32 %and.i, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or = or i32 %or.i, -1073741824
  %cmd_pipe = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 8
  %37 = ptrtoint ptr %cmd_pipe to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %cmd_pipe, align 4
  %38 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx27.i, align 4
  %bEndpointAddress.i55 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %bEndpointAddress.i55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bEndpointAddress.i55, align 1
  %42 = and i8 %41, 15
  %and.i56 = zext i8 %42 to i32
  %43 = load i32, ptr %2, align 8
  %shl.i57 = shl i32 %43, 8
  %shl1.i58 = shl nuw nsw i32 %and.i56, 15
  %or.i59 = or i32 %shl.i57, %shl1.i58
  %or9 = or i32 %or.i59, -1073741696
  %status_pipe = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 9
  %44 = ptrtoint ptr %status_pipe to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or9, ptr %status_pipe, align 4
  %45 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx30.i, align 4
  %bEndpointAddress.i60 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %bEndpointAddress.i60 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress.i60, align 1
  %49 = and i8 %48, 15
  %and.i61 = zext i8 %49 to i32
  %50 = load i32, ptr %2, align 8
  %shl.i62 = shl i32 %50, 8
  %shl1.i63 = shl nuw nsw i32 %and.i61, 15
  %or.i64 = or i32 %shl.i62, %shl1.i63
  %or15 = or i32 %or.i64, -1073741696
  %data_in_pipe = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 10
  %51 = ptrtoint ptr %data_in_pipe to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or15, ptr %data_in_pipe, align 4
  %52 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx33.i, align 4
  %bEndpointAddress.i65 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %bEndpointAddress.i65 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bEndpointAddress.i65, align 1
  %56 = and i8 %55, 15
  %and.i66 = zext i8 %56 to i32
  %57 = load i32, ptr %2, align 8
  %shl.i67 = shl i32 %57, 8
  %shl1.i68 = shl nuw nsw i32 %and.i66, 15
  %or.i69 = or i32 %shl.i67, %shl1.i68
  %or20 = or i32 %or.i69, -1073741824
  %data_out_pipe = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 11
  %58 = ptrtoint ptr %data_out_pipe to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or20, ptr %data_out_pipe, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 4
  %59 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %60)
  %cmp = icmp ult i32 %60, 5
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %qdepth = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 6
  %61 = ptrtoint ptr %qdepth to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 32, ptr %qdepth, align 4
  %use_streams = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 12
  %62 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load = load i8, ptr %use_streams, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %use_streams, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call24 = call i32 @usb_alloc_streams(ptr noundef %4, ptr noundef %arrayidx27.i, i32 noundef 3, i32 noundef 256, i32 noundef 3072) #9
  %qdepth25 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 6
  %63 = ptrtoint ptr %qdepth25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call24, ptr %qdepth25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp27 = icmp slt i32 %call24, 0
  br i1 %cmp27, label %if.else.cleanup_crit_edge, label %if.end30

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %use_streams31 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 12
  %64 = ptrtoint ptr %use_streams31 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load32 = load i8, ptr %use_streams31, align 4
  %bf.set34 = or i8 %bf.load32, -128
  store i8 %bf.set34, ptr %use_streams31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.else.cleanup_crit_edge, %if.then21, %lor.lhs.false32.i.cleanup_crit_edge, %lor.lhs.false29.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.else.cleanup_crit_edge ], [ 0, %if.end30 ], [ 0, %if.then21 ], [ -19, %lor.lhs.false29.i.cleanup_crit_edge ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ -19, %for.end.i.cleanup_crit_edge ], [ -19, %lor.lhs.false32.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eps) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_adjust_quirks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %device.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %host_self_blocked.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %host_self_blocked.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %host_self_blocked.i, align 8
  %9 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.uas_queuecommand_lck.exit_crit_edge

entry.uas_queuecommand_lck.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %flags2.i = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags2.i, align 4
  %and.i = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.do.body14.i_crit_edge, label %land.lhs.true.i

if.end.i.do.body14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cmnd4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %12 = ptrtoint ptr %cmnd4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmnd4.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %15, label %land.lhs.true.i.do.body14.i_crit_edge [
    i8 -95, label %land.lhs.true.i.if.then11.i_crit_edge
    i8 -123, label %land.lhs.true.i.if.then11.i_crit_edge14
  ]

land.lhs.true.i.if.then11.i_crit_edge14:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true.i.if.then11.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true.i.do.body14.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.i

if.then11.i:                                      ; preds = %land.lhs.true.i.if.then11.i_crit_edge, %land.lhs.true.i.if.then11.i_crit_edge14
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %17 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sense_buffer.i, align 4
  %19 = call ptr @memcpy(ptr %18, ptr @usb_stor_sense_invalidCDB, i32 18)
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %20 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %uas_queuecommand_lck.exit

do.body14.i:                                      ; preds = %land.lhs.true.i.do.body14.i_crit_edge, %if.end.i.do.body14.i_crit_edge
  %lock.i = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 14
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %resetting.i = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resetting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not.i = icmp eq i32 %22, 0
  br i1 %tobool22.not.i, label %for.cond.preheader.i, label %if.then23.i

for.cond.preheader.i:                             ; preds = %do.body14.i
  %qdepth.i = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %qdepth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qdepth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25117.i = icmp sgt i32 %24, 0
  br i1 %cmp25117.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then23.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %25 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %26, -16711681
  %or.i.i = or i32 %and.i.i, 458752
  store i32 %or.i.i, ptr %result.i.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %zombie.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %idx.0118.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.uas_dev_info, ptr %5, i32 0, i32 13, i32 %idx.0118.i
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx28.i, align 4
  %tobool29.not.i = icmp eq ptr %28, null
  br i1 %tobool29.not.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.0118.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.if.then35.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then35.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %idx.0118.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa.i, i32 %24)
  %cmp33.i = icmp eq i32 %idx.0.lcssa.i, %24
  br i1 %cmp33.i, label %for.end.i.if.then35.i_crit_edge, label %if.end37.i

for.end.i.if.then35.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.then35.i:                                      ; preds = %for.end.i.if.then35.i_crit_edge, %for.inc.i.if.then35.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call17.i) #9
  br label %uas_queuecommand_lck.exit

if.end37.i:                                       ; preds = %for.end.i
  %29 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 2
  %30 = call ptr @memset(ptr %29, i32 0, i32 12)
  %add.i = add nuw i32 %idx.0.lcssa.i, 1
  %uas_tag.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 1
  %31 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %uas_tag.i, align 4
  %32 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 194, ptr %SCp.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %33 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sc_data_direction.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %34, label %if.end37.i.sw.epilog.i_crit_edge [
    i32 2, label %if.end37.i.sw.epilog.sink.split.i_crit_edge
    i32 0, label %sw.bb39.i
    i32 1, label %if.end37.i.sw.bb42.i_crit_edge
  ]

if.end37.i.sw.bb42.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42.i

if.end37.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end37.i.sw.epilog.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 206, ptr %SCp.i, align 4
  br label %sw.bb42.i

sw.bb42.i:                                        ; preds = %sw.bb39.i, %if.end37.i.sw.bb42.i_crit_edge
  %37 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %SCp.i, align 4
  %or44.i = or i32 %38, 48
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb42.i, %if.end37.i.sw.epilog.sink.split.i_crit_edge
  %or44.sink.i = phi i32 [ %or44.i, %sw.bb42.i ], [ 206, %if.end37.i.sw.epilog.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or44.sink.i, ptr %SCp.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end37.i.sw.epilog.i_crit_edge
  %use_streams.i = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 12
  %40 = ptrtoint ptr %use_streams.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load45.i = load i8, ptr %use_streams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i)
  %tobool48.not.i = icmp sgt i8 %bf.load45.i, -1
  br i1 %tobool48.not.i, label %if.then49.i, label %sw.epilog.i.if.end52.i_crit_edge

sw.epilog.i.if.end52.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then49.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %SCp.i, align 4
  %and51.i = and i32 %42, -41
  store i32 %and51.i, ptr %SCp.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %sw.epilog.i.if.end52.i_crit_edge
  %call53.i = tail call fastcc i32 @uas_submit_urbs(ptr noundef %cmd, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool58.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool58.not.i, label %if.end52.i.if.end66.i_crit_edge, label %if.then59.i

if.end52.i.if.end66.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.then59.i:                                      ; preds = %if.end52.i
  %43 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %SCp.i, align 4
  %and61.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end65.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call17.i) #9
  br label %uas_queuecommand_lck.exit

if.end65.i:                                       ; preds = %if.then59.i
  %45 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i, align 4
  %hostdata.i.i = getelementptr inbounds %struct.scsi_device, ptr %46, i32 0, i32 21
  %47 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hostdata.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %49 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i, label %if.end65.i.uas_add_work.exit.i_crit_edge, label %land.rhs.i.i

if.end65.i.uas_add_work.exit.i_crit_edge:         ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_add_work.exit.i

land.rhs.i.i:                                     ; preds = %if.end65.i
  %dep_map.i.i = getelementptr inbounds %struct.uas_dev_info, ptr %48, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.uas_add_work.exit.i_crit_edge, !prof !189

land.rhs.i.i.uas_add_work.exit.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_add_work.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 148, i32 noundef 9, ptr noundef null) #9
  br label %uas_add_work.exit.i

uas_add_work.exit.i:                              ; preds = %do.end.i.i, %land.rhs.i.i.uas_add_work.exit.i_crit_edge, %if.end65.i.uas_add_work.exit.i_crit_edge
  %50 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %SCp.i, align 4
  %or.i116.i = or i32 %51, 4096
  store i32 %or.i116.i, ptr %SCp.i, align 4
  %52 = load ptr, ptr @workqueue, align 4
  %work.i.i = getelementptr inbounds %struct.uas_dev_info, ptr %48, i32 0, i32 15
  %call.i29.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %work.i.i) #9
  br label %if.end66.i

if.end66.i:                                       ; preds = %uas_add_work.exit.i, %if.end52.i.if.end66.i_crit_edge
  %arrayidx68.i = getelementptr %struct.uas_dev_info, ptr %5, i32 0, i32 13, i32 %idx.0.lcssa.i
  %53 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cmd, ptr %arrayidx68.i, align 4
  br label %zombie.i

zombie.i:                                         ; preds = %if.end66.i, %if.then23.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call17.i) #9
  br label %uas_queuecommand_lck.exit

uas_queuecommand_lck.exit:                        ; preds = %zombie.i, %if.then63.i, %if.then35.i, %if.then11.i, %entry.uas_queuecommand_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then11.i ], [ 0, %zombie.i ], [ 4182, %if.then35.i ], [ 4182, %if.then63.i ], [ 4182, %entry.uas_queuecommand_lck.exit_crit_edge ]
  %54 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %call2) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_eh_abort_handler(ptr noundef %cmnd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %lock = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %uas_tag.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uas_tag.i, align 4
  %6 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SCp, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.45, ptr @.str.44
  %and3.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.45, ptr @.str.46
  %and7.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.45, ptr @.str.47
  %and11.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.45, ptr @.str.48
  %and15.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.45, ptr @.str.49
  %and19.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.45, ptr @.str.50
  %and23.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.45, ptr @.str.51
  %and27.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.45, ptr @.str.52
  %and31.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.45, ptr @.str.53
  %and35.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.45, ptr @.str.54
  %and39.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.45, ptr @.str.55
  %and43.i = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, ptr @.str.45, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.38, ptr noundef %cmnd, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.uas_eh_abort_handler, i32 noundef 0, i32 noundef %5, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i, ptr noundef nonnull %cond25.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond41.i, ptr noundef nonnull %cond45.i) #9
  tail call void @scsi_print_command(ptr noundef %cmnd) #9
  %8 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SCp, align 4
  %or = or i32 %9, 2048
  store i32 %or, ptr %SCp, align 4
  %10 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uas_tag.i, align 4
  %sub = add i32 %11, -1
  %arrayidx = getelementptr %struct.uas_dev_info, ptr %3, i32 0, i32 13, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %13 = load i32, ptr %SCp, align 4
  %and = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data_in_urb7 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 3
  %14 = ptrtoint ptr %data_in_urb7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_in_urb7, align 4
  %call8 = tail call ptr @usb_get_urb(ptr noundef %15) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data_in_urb.0 = phi ptr [ %call8, %if.then ], [ null, %entry.if.end_crit_edge ]
  %16 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %SCp, align 4
  %and10 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data_out_urb13 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 4
  %18 = ptrtoint ptr %data_out_urb13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_out_urb13, align 4
  %call14 = tail call ptr @usb_get_urb(ptr noundef %19) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %data_out_urb.0 = phi ptr [ %call14, %if.then12 ], [ null, %if.end.if.end15_crit_edge ]
  %tobool.not.i37 = icmp eq ptr %cmnd, null
  br i1 %tobool.not.i37, label %if.end15.uas_free_unsubmitted_urbs.exit_crit_edge, label %if.end.i

if.end15.uas_free_unsubmitted_urbs.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_free_unsubmitted_urbs.exit

if.end.i:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %SCp, align 4
  %and.i39 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool1.not.i = icmp eq i32 %and.i39, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_urb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 2
  %22 = ptrtoint ptr %cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %23) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %24 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %SCp, align 4
  %and5.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_in_urb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 3
  %26 = ptrtoint ptr %data_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %27) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end3.i.if.end8.i_crit_edge
  %28 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %SCp, align 4
  %and10.i = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end8.i.uas_free_unsubmitted_urbs.exit_crit_edge

if.end8.i.uas_free_unsubmitted_urbs.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_free_unsubmitted_urbs.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_out_urb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 4
  %30 = ptrtoint ptr %data_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data_out_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %31) #9
  br label %uas_free_unsubmitted_urbs.exit

uas_free_unsubmitted_urbs.exit:                   ; preds = %if.then12.i, %if.end8.i.uas_free_unsubmitted_urbs.exit_crit_edge, %if.end15.uas_free_unsubmitted_urbs.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %tobool17.not = icmp eq ptr %data_in_urb.0, null
  br i1 %tobool17.not, label %uas_free_unsubmitted_urbs.exit.if.end19_crit_edge, label %if.then18

uas_free_unsubmitted_urbs.exit.if.end19_crit_edge: ; preds = %uas_free_unsubmitted_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %uas_free_unsubmitted_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %data_in_urb.0) #9
  tail call void @usb_free_urb(ptr noundef nonnull %data_in_urb.0) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %uas_free_unsubmitted_urbs.exit.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %data_out_urb.0, null
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %data_out_urb.0) #9
  tail call void @usb_free_urb(ptr noundef nonnull %data_out_urb.0) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  ret i32 8195
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_eh_device_reset_handler(ptr nocapture noundef readonly %cmnd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %udev1 = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call = tail call i32 @usb_lock_device_for_reset(ptr noundef %5, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %shost_gendev6 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  br i1 %tobool.not, label %do.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %shost_gendev6, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call) #12
  br label %cleanup

do.end4:                                          ; preds = %entry
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.38, ptr noundef %shost_gendev6, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #12
  %lock = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 14
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %resetting = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %resetting to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %resetting, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  %cmd_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %cmd_urbs) #9
  %sense_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %sense_urbs) #9
  %data_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %data_urbs) #9
  tail call fastcc void @uas_zap_pending(ptr noundef %3, i32 noundef 8)
  %call16 = tail call i32 @usb_reset_device(ptr noundef %5) #9
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %11 = ptrtoint ptr %resetting to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %resetting, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #9
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool33.not = icmp eq i32 %call16, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %shost_gendev45 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  br i1 %tobool33.not, label %do.end43, label %do.end37

do.end37:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.38, ptr noundef %shost_gendev45, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef %call16) #12
  br label %cleanup

do.end43:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.38, ptr noundef %shost_gendev45, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end37, %do.end
  %retval.0 = phi i32 [ 8195, %do.end ], [ 8195, %do.end37 ], [ 8194, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_slave_alloc(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %hostdata1 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hostdata, ptr %hostdata1, align 8
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %3 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_update_dma_alignment(ptr noundef %4, i32 noundef 511) #9
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end8.sink.split_crit_edge

entry.if.end8.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.sink.split

if.else:                                          ; preds = %entry
  %and4 = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.else.if.end8.sink.split_crit_edge

if.else.if.end8.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.sink.split

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.sink.split:                               ; preds = %if.else.if.end8.sink.split_crit_edge, %entry.if.end8.sink.split_crit_edge
  %.sink15 = phi i32 [ 64, %entry.if.end8.sink.split_crit_edge ], [ 240, %if.else.if.end8.sink.split_crit_edge ]
  %7 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %8, i32 noundef %.sink15) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_slave_configure(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %flags = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %no_report_opcodes = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %4 = ptrtoint ptr %no_report_opcodes to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %no_report_opcodes, align 4
  %bf.set = or i64 %bf.load, 35184372088832
  store i64 %bf.set, ptr %no_report_opcodes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and2 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %broken_fua = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %7 = ptrtoint ptr %broken_fua to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load5 = load i64, ptr %broken_fua, align 4
  %bf.set7 = or i64 %bf.load5, 1048576
  store i64 %bf.set7, ptr %broken_fua, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and10 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end22_crit_edge, label %if.then12

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %skip_ms_page_3f = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %10 = ptrtoint ptr %skip_ms_page_3f to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load13 = load i64, ptr %skip_ms_page_3f, align 4
  %bf.set21 = or i64 %bf.load13, 6597073960960
  store i64 %bf.set21, ptr %skip_ms_page_3f, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.end8.if.end22_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and24 = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end30_crit_edge, label %if.then26

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %no_read_capacity_16 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %13 = ptrtoint ptr %no_read_capacity_16 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load27 = load i64, ptr %no_read_capacity_16, align 4
  %bf.set29 = or i64 %bf.load27, 67108864
  store i64 %bf.set29, ptr %no_read_capacity_16, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and32 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end38_crit_edge, label %if.then34

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %no_write_same = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %16 = ptrtoint ptr %no_write_same to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load35 = load i64, ptr %no_write_same, align 4
  %bf.set37 = or i64 %bf.load35, 17592186044416
  store i64 %bf.set37, ptr %no_write_same, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end30.if.end38_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and40 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end46_crit_edge, label %if.then42

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %fix_capacity = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %19 = ptrtoint ptr %fix_capacity to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load43 = load i64, ptr %fix_capacity, align 4
  %bf.set45 = or i64 %bf.load43, 2147483648
  store i64 %bf.set45, ptr %fix_capacity, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and48 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end54_crit_edge, label %if.then50

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %guess_capacity = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %22 = ptrtoint ptr %guess_capacity to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load51 = load i64, ptr %guess_capacity, align 4
  %bf.set53 = or i64 %bf.load51, 1073741824
  store i64 %bf.set53, ptr %guess_capacity, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end46.if.end54_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and56 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end63_crit_edge, label %if.then58

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %skip_ms_page_3f59 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %25 = ptrtoint ptr %skip_ms_page_3f59 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load60 = load i64, ptr %skip_ms_page_3f59, align 4
  %bf.set62 = or i64 %bf.load60, 2199023255552
  store i64 %bf.set62, ptr %skip_ms_page_3f59, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end54.if.end63_crit_edge
  %qdepth = getelementptr inbounds %struct.uas_dev_info, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %qdepth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qdepth, align 4
  %sub = add i32 %27, -2
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %sub) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uas_target_alloc(ptr nocapture noundef %starget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 13, i32 13, i32 1, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %if.then

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #11
  %no_report_luns = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 7
  %6 = ptrtoint ptr %no_report_luns to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %no_report_luns, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %no_report_luns, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uas_submit_urbs(ptr noundef %cmnd, ptr noundef %devinfo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !189

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 565, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %SCp, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end.if.end32_crit_edge, label %if.then25

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then25:                                        ; preds = %if.end
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostdata.i, align 8
  %udev1.i.i = getelementptr inbounds %struct.uas_dev_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %udev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev1.i.i, align 4
  %call.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then25.cleanup_crit_edge, label %if.end.i.i

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 112) #13
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge, label %if.end5.i.i

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %status_pipe.i.i = getelementptr inbounds %struct.uas_dev_info, ptr %6, i32 0, i32 9
  %10 = ptrtoint ptr %status_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_pipe.i.i, align 4
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i.i, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 112, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @uas_stat_cmplt, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %15, ptr %context4.i.i.i, align 4
  %use_streams.i.i = getelementptr inbounds %struct.uas_dev_info, ptr %6, i32 0, i32 12
  %22 = ptrtoint ptr %use_streams.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %use_streams.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool6.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.end.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end.i_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %uas_tag.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %23 = ptrtoint ptr %uas_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uas_tag.i.i, align 4
  %stream_id.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %stream_id.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %stream_id.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i.i, %if.end5.i.i.if.end.i_crit_edge
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_flags.i.i, align 4
  %or.i.i = or i32 %27, 256
  store i32 %or.i.i, ptr %transfer_flags.i.i, align 4
  %sense_urbs.i = getelementptr inbounds %struct.uas_dev_info, ptr %6, i32 0, i32 3
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i.i, ptr noundef %sense_urbs.i) #9
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i.i, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end29, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i.i) #9
  tail call fastcc void @uas_log_cmd_state(ptr noundef %cmnd, ptr noundef nonnull @.str.27, i32 noundef %call1.i) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then3.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %SCp, align 4
  %and31 = and i32 %29, -3
  store i32 %and31, ptr %SCp, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end.if.end32_crit_edge
  %30 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %SCp, align 4
  %and34 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end44_crit_edge, label %if.then36

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then36:                                        ; preds = %if.end32
  %udev1.i = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 1
  %32 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev1.i, align 4
  %call.i171 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %sdb2.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17
  %tobool.not.i = icmp eq ptr %call.i171, null
  br i1 %tobool.not.i, label %uas_alloc_data_urb.exit.thread, label %if.end.i172

uas_alloc_data_urb.exit.thread:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %data_in_urb220 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 3
  %34 = ptrtoint ptr %data_in_urb220 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %data_in_urb220, align 4
  br label %cleanup

if.end.i172:                                      ; preds = %if.then36
  %data_in_pipe.i = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 10
  %35 = ptrtoint ptr %data_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond.i = load i32, ptr %data_in_pipe.i, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @uas_data_cmplt, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cmnd, ptr %context4.i.i, align 4
  %use_streams.i = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 12
  %44 = ptrtoint ptr %use_streams.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %use_streams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.end.i172.if.end5.i_crit_edge, label %if.then4.i

if.end.i172.if.end5.i_crit_edge:                  ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #11
  %uas_tag.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %45 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %uas_tag.i, align 4
  %stream_id.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 11
  %47 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %stream_id.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i172.if.end5.i_crit_edge
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 12
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %sg_tablesize.i = getelementptr inbounds %struct.usb_bus, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg_tablesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool6.not.i = icmp eq i32 %51, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end41_crit_edge, label %cond.true7.i

if.end5.i.if.end41_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

cond.true7.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17, i32 0, i32 1
  %52 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nents.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %cond.true7.i, %if.end5.i.if.end41_crit_edge
  %cond10.i = phi i32 [ %53, %cond.true7.i ], [ 0, %if.end5.i.if.end41_crit_edge ]
  %num_sgs.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 18
  %54 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond10.i, ptr %num_sgs.i, align 4
  %55 = ptrtoint ptr %sdb2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdb2.i, align 4
  %sg.i = getelementptr inbounds %struct.urb, ptr %call.i171, i32 0, i32 16
  %57 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %sg.i, align 4
  %data_in_urb = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 3
  %58 = ptrtoint ptr %data_in_urb to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i171, ptr %data_in_urb, align 4
  %59 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %SCp, align 4
  %and43 = and i32 %60, -5
  store i32 %and43, ptr %SCp, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.end32.if.end44_crit_edge
  %61 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %SCp, align 4
  %and46 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end59_crit_edge, label %if.then48

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then48:                                        ; preds = %if.end44
  %data_in_urb49 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 3
  %63 = ptrtoint ptr %data_in_urb49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data_in_urb49, align 4
  %data_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef %64, ptr noundef %data_urbs) #9
  %65 = ptrtoint ptr %data_in_urb49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data_in_urb49, align 4
  %call51 = tail call i32 @usb_submit_urb(ptr noundef %66, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %data_in_urb49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data_in_urb49, align 4
  tail call void @usb_unanchor_urb(ptr noundef %68) #9
  tail call fastcc void @uas_log_cmd_state(ptr noundef %cmnd, ptr noundef nonnull @.str.24, i32 noundef %call51)
  br label %cleanup

if.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %SCp, align 4
  %and57 = and i32 %70, -521
  %or = or i32 %and57, 512
  store i32 %or, ptr %SCp, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end44.if.end59_crit_edge
  %71 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %SCp, align 4
  %and61 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end71_crit_edge, label %if.then63

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then63:                                        ; preds = %if.end59
  %udev1.i173 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 1
  %73 = ptrtoint ptr %udev1.i173 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udev1.i173, align 4
  %call.i174 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %sdb2.i175 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17
  %tobool.not.i176 = icmp eq ptr %call.i174, null
  br i1 %tobool.not.i176, label %uas_alloc_data_urb.exit204.thread, label %if.end.i190

uas_alloc_data_urb.exit204.thread:                ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %data_out_urb221 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 4
  %75 = ptrtoint ptr %data_out_urb221 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %data_out_urb221, align 4
  br label %cleanup

if.end.i190:                                      ; preds = %if.then63
  %data_out_pipe.i178 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 11
  %76 = ptrtoint ptr %data_out_pipe.i178 to i32
  call void @__asan_load4_noabort(i32 %76)
  %cond.i179 = load i32, ptr %data_out_pipe.i178, align 4
  %length.i180 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17, i32 1
  %77 = ptrtoint ptr %length.i180 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i180, align 4
  %dev1.i.i181 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 8
  %79 = ptrtoint ptr %dev1.i.i181 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %74, ptr %dev1.i.i181, align 4
  %pipe2.i.i182 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 10
  %80 = ptrtoint ptr %pipe2.i.i182 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond.i179, ptr %pipe2.i.i182, align 4
  %transfer_buffer3.i.i183 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 14
  %81 = ptrtoint ptr %transfer_buffer3.i.i183 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %transfer_buffer3.i.i183, align 4
  %transfer_buffer_length.i.i184 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 19
  %82 = ptrtoint ptr %transfer_buffer_length.i.i184 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %78, ptr %transfer_buffer_length.i.i184, align 4
  %complete.i.i185 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 28
  %83 = ptrtoint ptr %complete.i.i185 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @uas_data_cmplt, ptr %complete.i.i185, align 4
  %context4.i.i186 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 27
  %84 = ptrtoint ptr %context4.i.i186 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %cmnd, ptr %context4.i.i186, align 4
  %use_streams.i187 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 12
  %85 = ptrtoint ptr %use_streams.i187 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i188 = load i8, ptr %use_streams.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i188)
  %tobool3.not.i189 = icmp sgt i8 %bf.load.i188, -1
  br i1 %tobool3.not.i189, label %if.end.i190.if.end5.i197_crit_edge, label %if.then4.i193

if.end.i190.if.end5.i197_crit_edge:               ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i197

if.then4.i193:                                    ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #11
  %uas_tag.i191 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %86 = ptrtoint ptr %uas_tag.i191 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %uas_tag.i191, align 4
  %stream_id.i192 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 11
  %88 = ptrtoint ptr %stream_id.i192 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %stream_id.i192, align 4
  br label %if.end5.i197

if.end5.i197:                                     ; preds = %if.then4.i193, %if.end.i190.if.end5.i197_crit_edge
  %bus.i194 = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 12
  %89 = ptrtoint ptr %bus.i194 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus.i194, align 8
  %sg_tablesize.i195 = getelementptr inbounds %struct.usb_bus, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %sg_tablesize.i195 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sg_tablesize.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool6.not.i196 = icmp eq i32 %92, 0
  br i1 %tobool6.not.i196, label %if.end5.i197.if.end68_crit_edge, label %cond.true7.i199

if.end5.i197.if.end68_crit_edge:                  ; preds = %if.end5.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

cond.true7.i199:                                  ; preds = %if.end5.i197
  call void @__sanitizer_cov_trace_pc() #11
  %nents.i198 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 17, i32 0, i32 1
  %93 = ptrtoint ptr %nents.i198 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nents.i198, align 4
  br label %if.end68

if.end68:                                         ; preds = %cond.true7.i199, %if.end5.i197.if.end68_crit_edge
  %cond10.i200 = phi i32 [ %94, %cond.true7.i199 ], [ 0, %if.end5.i197.if.end68_crit_edge ]
  %num_sgs.i201 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 18
  %95 = ptrtoint ptr %num_sgs.i201 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cond10.i200, ptr %num_sgs.i201, align 4
  %96 = ptrtoint ptr %sdb2.i175 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sdb2.i175, align 4
  %sg.i202 = getelementptr inbounds %struct.urb, ptr %call.i174, i32 0, i32 16
  %98 = ptrtoint ptr %sg.i202 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %sg.i202, align 4
  %data_out_urb = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 4
  %99 = ptrtoint ptr %data_out_urb to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i174, ptr %data_out_urb, align 4
  %100 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %SCp, align 4
  %and70 = and i32 %101, -17
  store i32 %and70, ptr %SCp, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %if.end59.if.end71_crit_edge
  %102 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %SCp, align 4
  %and73 = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end71.if.end88_crit_edge, label %if.then75

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then75:                                        ; preds = %if.end71
  %data_out_urb76 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 4
  %104 = ptrtoint ptr %data_out_urb76 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data_out_urb76, align 4
  %data_urbs77 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef %105, ptr noundef %data_urbs77) #9
  %106 = ptrtoint ptr %data_out_urb76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data_out_urb76, align 4
  %call79 = tail call i32 @usb_submit_urb(ptr noundef %107, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %data_out_urb76 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data_out_urb76, align 4
  tail call void @usb_unanchor_urb(ptr noundef %109) #9
  tail call fastcc void @uas_log_cmd_state(ptr noundef %cmnd, ptr noundef nonnull @.str.25, i32 noundef %call79)
  br label %cleanup

if.end83:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %SCp, align 4
  %and85 = and i32 %111, -1057
  %or87 = or i32 %and85, 1024
  store i32 %or87, ptr %SCp, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end83, %if.end71.if.end88_crit_edge
  %112 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %SCp, align 4
  %and90 = and i32 %113, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end100_crit_edge, label %if.then92

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then92:                                        ; preds = %if.end88
  %udev1.i205 = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 1
  %114 = ptrtoint ptr %udev1.i205 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %udev1.i205, align 4
  %device.i206 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %116 = ptrtoint ptr %device.i206 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device.i206, align 4
  %call.i207 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i208 = icmp eq ptr %call.i207, null
  br i1 %tobool.not.i208, label %if.then92.uas_alloc_cmd_urb.exit.thread_crit_edge, label %if.end.i209

if.then92.uas_alloc_cmd_urb.exit.thread_crit_edge: ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_alloc_cmd_urb.exit.thread

if.end.i209:                                      ; preds = %if.then92
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 14
  %118 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %119 to i32
  %120 = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 16) #9
  %add.i = add nsw i32 %120, -13
  %and.i = and i32 %add.i, -4
  %add5.i = add nuw nsw i32 %and.i, 32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i, i32 noundef 2848) #14
  %tobool7.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i, label %free.i, label %if.end97

free.i:                                           ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_urb(ptr noundef nonnull %call.i207) #9
  br label %uas_alloc_cmd_urb.exit.thread

uas_alloc_cmd_urb.exit.thread:                    ; preds = %free.i, %if.then92.uas_alloc_cmd_urb.exit.thread_crit_edge
  %cmd_urb223 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 2
  %121 = ptrtoint ptr %cmd_urb223 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %cmd_urb223, align 4
  br label %cleanup

if.end97:                                         ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %call9.i.i.i, align 128
  %uas_tag.i210 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %123 = ptrtoint ptr %uas_tag.i210 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %uas_tag.i210, align 4
  %conv10.i = trunc i32 %124 to i16
  %tag.i = getelementptr inbounds %struct.command_iu, ptr %call9.i.i.i, i32 0, i32 2
  %125 = ptrtoint ptr %tag.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv10.i, ptr %tag.i, align 2
  %prio_attr.i = getelementptr inbounds %struct.command_iu, ptr %call9.i.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %prio_attr.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %prio_attr.i, align 4
  %conv11.i = trunc i32 %and.i to i8
  %len12.i = getelementptr inbounds %struct.command_iu, ptr %call9.i.i.i, i32 0, i32 5
  %127 = ptrtoint ptr %len12.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv11.i, ptr %len12.i, align 2
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %117, i32 0, i32 18
  %128 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %lun.i, align 8
  %lun13.i = getelementptr inbounds %struct.command_iu, ptr %call9.i.i.i, i32 0, i32 7
  tail call void @int_to_scsilun(i64 noundef %129, ptr noundef %lun13.i) #9
  %cdb.i = getelementptr inbounds %struct.command_iu, ptr %call9.i.i.i, i32 0, i32 8
  %cmnd14.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 16
  %130 = ptrtoint ptr %cmnd14.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cmnd14.i, align 4
  %132 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %cmd_len.i, align 4
  %conv16.i = zext i16 %133 to i32
  %134 = call ptr @memcpy(ptr %cdb.i, ptr %131, i32 %conv16.i)
  %cmd_pipe.i = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 8
  %135 = ptrtoint ptr %cmd_pipe.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cmd_pipe.i, align 4
  %dev1.i.i211 = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 8
  %137 = ptrtoint ptr %dev1.i.i211 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %115, ptr %dev1.i.i211, align 4
  %pipe2.i.i212 = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 10
  %138 = ptrtoint ptr %pipe2.i.i212 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %136, ptr %pipe2.i.i212, align 4
  %transfer_buffer3.i.i213 = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 14
  %139 = ptrtoint ptr %transfer_buffer3.i.i213 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call9.i.i.i, ptr %transfer_buffer3.i.i213, align 4
  %transfer_buffer_length.i.i214 = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 19
  %140 = ptrtoint ptr %transfer_buffer_length.i.i214 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add5.i, ptr %transfer_buffer_length.i.i214, align 4
  %complete.i.i215 = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 28
  %141 = ptrtoint ptr %complete.i.i215 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @uas_cmd_cmplt, ptr %complete.i.i215, align 4
  %context4.i.i216 = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 27
  %142 = ptrtoint ptr %context4.i.i216 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %context4.i.i216, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i207, i32 0, i32 13
  %143 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %144, 256
  store i32 %or.i, ptr %transfer_flags.i, align 4
  %cmd_urb = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 2
  %145 = ptrtoint ptr %cmd_urb to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i207, ptr %cmd_urb, align 4
  %146 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %SCp, align 4
  %and99 = and i32 %147, -65
  store i32 %and99, ptr %SCp, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end97, %if.end88.if.end100_crit_edge
  %148 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %SCp, align 4
  %and102 = and i32 %149, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.cleanup_crit_edge, label %if.then104

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then104:                                       ; preds = %if.end100
  %cmd_urb105 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 2
  %150 = ptrtoint ptr %cmd_urb105 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cmd_urb105, align 4
  %cmd_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 2
  tail call void @usb_anchor_urb(ptr noundef %151, ptr noundef %cmd_urbs) #9
  %152 = ptrtoint ptr %cmd_urb105 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cmd_urb105, align 4
  %call107 = tail call i32 @usb_submit_urb(ptr noundef %153, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end111, label %if.then109

if.then109:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %cmd_urb105 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cmd_urb105, align 4
  tail call void @usb_unanchor_urb(ptr noundef %155) #9
  tail call fastcc void @uas_log_cmd_state(ptr noundef %cmnd, ptr noundef nonnull @.str.26, i32 noundef %call107)
  br label %cleanup

if.end111:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %cmd_urb105 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %cmd_urb105, align 4
  %157 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %SCp, align 4
  %and114 = and i32 %158, -385
  %or116 = or i32 %and114, 256
  store i32 %or116, ptr %SCp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.then109, %if.end100.cleanup_crit_edge, %uas_alloc_cmd_urb.exit.thread, %if.then81, %uas_alloc_data_urb.exit204.thread, %if.then53, %uas_alloc_data_urb.exit.thread, %cleanup.sink.split.i, %if.then25.cleanup_crit_edge
  %retval.0 = phi i32 [ 4182, %if.then53 ], [ 4182, %if.then81 ], [ 4182, %if.then109 ], [ 0, %if.end111 ], [ 0, %if.end100.cleanup_crit_edge ], [ 4182, %uas_alloc_data_urb.exit.thread ], [ 4182, %uas_alloc_data_urb.exit204.thread ], [ 4182, %uas_alloc_cmd_urb.exit.thread ], [ 4182, %if.then25.cleanup_crit_edge ], [ 4182, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uas_log_cmd_state(ptr noundef %cmnd, ptr noundef %prefix, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %status)
  %cmp = icmp eq i32 %status, -19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  %uas_tag = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %0 = ptrtoint ptr %uas_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uas_tag, align 4
  %2 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SCp, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.45, ptr @.str.44
  %and3 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.45, ptr @.str.46
  %and7 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.45, ptr @.str.47
  %and11 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.45, ptr @.str.48
  %and15 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.45, ptr @.str.49
  %and19 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.45, ptr @.str.50
  %and23 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.45, ptr @.str.51
  %and27 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond29 = select i1 %tobool28.not, ptr @.str.45, ptr @.str.52
  %and31 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.45, ptr @.str.53
  %and35 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, ptr @.str.45, ptr @.str.54
  %and39 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, ptr @.str.45, ptr @.str.55
  %and43 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond45 = select i1 %tobool44.not, ptr @.str.45, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.38, ptr noundef %cmnd, ptr noundef nonnull @.str.43, ptr noundef %prefix, i32 noundef %status, i32 noundef %1, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, ptr noundef nonnull %cond9, ptr noundef nonnull %cond13, ptr noundef nonnull %cond17, ptr noundef nonnull %cond21, ptr noundef nonnull %cond25, ptr noundef nonnull %cond29, ptr noundef nonnull %cond33, ptr noundef nonnull %cond37, ptr noundef nonnull %cond41, ptr noundef nonnull %cond45) #9
  tail call void @scsi_print_command(ptr noundef %cmnd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_stat_cmplt(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %resetting = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 4
  %6 = ptrtoint ptr %resetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %5, label %do.end18 [
    i32 0, label %if.end21
    i32 -2, label %if.end.out_crit_edge
    i32 -104, label %if.end.out_crit_edge142
    i32 -108, label %if.end.out_crit_edge143
  ]

if.end.out_crit_edge143:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge142:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.28, i32 noundef %5) #12
  br label %out

if.end21:                                         ; preds = %if.end
  %tag = getelementptr inbounds %struct.iu, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tag, align 2
  %conv23 = zext i16 %12 to i32
  %sub = add nsw i32 %conv23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp24 = icmp ugt i32 %sub, 255
  br i1 %cmp24, label %if.end21.do.end31_crit_edge, label %lor.lhs.false

if.end21.do.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

lor.lhs.false:                                    ; preds = %if.end21
  %cmnd26 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 4, i32 7
  %arrayidx = getelementptr [256 x ptr], ptr %cmnd26, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %lor.lhs.false.do.end31_crit_edge, label %if.end34

lor.lhs.false.do.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false.do.end31_crit_edge, %if.end21.do.end31_crit_edge
  %dev32 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev32, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.32, i32 noundef %conv23) #12
  br label %out

if.end34:                                         ; preds = %lor.lhs.false
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22
  %17 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %SCp, align 4
  %and = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %uas_tag.i = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 1
  %19 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uas_tag.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.45, ptr @.str.44
  %and3.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.45, ptr @.str.46
  %and7.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.45, ptr @.str.47
  %and11.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.45, ptr @.str.48
  %and15.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.45, ptr @.str.49
  %and19.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.45, ptr @.str.50
  %and23.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.45, ptr @.str.51
  %and31.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.45, ptr @.str.53
  %and35.i = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.45, ptr @.str.54
  %and39.i = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.45, ptr @.str.55
  %and43.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, ptr @.str.45, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %14, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %20, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i, ptr noundef nonnull %cond25.i, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond41.i, ptr noundef nonnull %cond45.i) #9
  tail call void @scsi_print_command(ptr noundef nonnull %14) #9
  br label %out

if.end39:                                         ; preds = %if.end34
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %22, label %sw.default [
    i8 3, label %sw.bb
    i8 6, label %sw.bb52
    i8 7, label %sw.bb61
    i8 4, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.end39
  tail call fastcc void @uas_sense(ptr noundef %urb, ptr noundef nonnull %14)
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 24
  %24 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp41.not = icmp eq i32 %25, 0
  br i1 %cmp41.not, label %sw.bb.if.end48_crit_edge, label %if.then43

sw.bb.if.end48_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %data_in_urb44 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 3
  %26 = ptrtoint ptr %data_in_urb44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data_in_urb44, align 4
  %call45 = tail call ptr @usb_get_urb(ptr noundef %27) #9
  %data_out_urb46 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 4
  %28 = ptrtoint ptr %data_out_urb46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_out_urb46, align 4
  %call47 = tail call ptr @usb_get_urb(ptr noundef %29) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %sw.bb.if.end48_crit_edge
  %data_in_urb.0 = phi ptr [ %call45, %if.then43 ], [ null, %sw.bb.if.end48_crit_edge ]
  %data_out_urb.0 = phi ptr [ %call47, %if.then43 ], [ null, %sw.bb.if.end48_crit_edge ]
  %30 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %SCp, align 4
  %and50 = and i32 %31, -257
  store i32 %and50, ptr %SCp, align 4
  %32 = tail call fastcc i32 @uas_try_complete(ptr noundef nonnull %14)
  br label %out

sw.bb52:                                          ; preds = %if.end39
  %data_in_urb53 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 3
  %33 = ptrtoint ptr %data_in_urb53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data_in_urb53, align 4
  %tobool54.not = icmp ne ptr %34, null
  %and57 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %or.cond = select i1 %tobool54.not, i1 %tobool58.not, i1 false
  br i1 %or.cond, label %if.end60, label %if.then59

if.then59:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef nonnull %14, ptr noundef nonnull @.str.35, i32 noundef 0)
  br label %out

if.end60:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uas_xfer_data(ptr noundef nonnull %14, i32 noundef 8)
  br label %out

sw.bb61:                                          ; preds = %if.end39
  %data_out_urb62 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 4
  %35 = ptrtoint ptr %data_out_urb62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data_out_urb62, align 4
  %tobool63.not = icmp ne ptr %36, null
  %and66 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond141 = select i1 %tobool63.not, i1 %tobool67.not, i1 false
  br i1 %or.cond141, label %if.end69, label %if.then68

if.then68:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef nonnull %14, ptr noundef nonnull @.str.36, i32 noundef 0)
  br label %out

if.end69:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uas_xfer_data(ptr noundef nonnull %14, i32 noundef 32)
  br label %out

sw.bb70:                                          ; preds = %if.end39
  %and72 = and i32 %18, -257
  %37 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and72, ptr %SCp, align 4
  %call73 = tail call fastcc zeroext i1 @uas_evaluate_response_iu(ptr noundef %1, ptr noundef nonnull %14)
  br i1 %call73, label %sw.bb70.if.end80_crit_edge, label %if.then75

sw.bb70.if.end80_crit_edge:                       ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then75:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  %data_in_urb76 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 3
  %38 = ptrtoint ptr %data_in_urb76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data_in_urb76, align 4
  %call77 = tail call ptr @usb_get_urb(ptr noundef %39) #9
  %data_out_urb78 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 4
  %40 = ptrtoint ptr %data_out_urb78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data_out_urb78, align 4
  %call79 = tail call ptr @usb_get_urb(ptr noundef %41) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %sw.bb70.if.end80_crit_edge
  %data_in_urb.1 = phi ptr [ null, %sw.bb70.if.end80_crit_edge ], [ %call77, %if.then75 ]
  %data_out_urb.1 = phi ptr [ null, %sw.bb70.if.end80_crit_edge ], [ %call79, %if.then75 ]
  %42 = tail call fastcc i32 @uas_try_complete(ptr noundef nonnull %14)
  br label %out

sw.default:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %conv40 = zext i8 %22 to i32
  tail call fastcc void @uas_log_cmd_state(ptr noundef nonnull %14, ptr noundef nonnull @.str.37, i32 noundef %conv40)
  br label %out

out:                                              ; preds = %sw.default, %if.end80, %if.end69, %if.then68, %if.end60, %if.then59, %if.end48, %if.then38, %do.end31, %do.end18, %if.end.out_crit_edge, %if.end.out_crit_edge142, %if.end.out_crit_edge143, %entry.out_crit_edge
  %data_in_urb.2 = phi ptr [ null, %entry.out_crit_edge ], [ null, %do.end18 ], [ null, %do.end31 ], [ null, %sw.default ], [ %data_in_urb.1, %if.end80 ], [ null, %if.then68 ], [ null, %if.end69 ], [ null, %if.then59 ], [ null, %if.end60 ], [ %data_in_urb.0, %if.end48 ], [ null, %if.then38 ], [ null, %if.end.out_crit_edge ], [ null, %if.end.out_crit_edge142 ], [ null, %if.end.out_crit_edge143 ]
  %data_out_urb.2 = phi ptr [ null, %entry.out_crit_edge ], [ null, %do.end18 ], [ null, %do.end31 ], [ null, %sw.default ], [ %data_out_urb.1, %if.end80 ], [ null, %if.then68 ], [ null, %if.end69 ], [ null, %if.then59 ], [ null, %if.end60 ], [ %data_out_urb.0, %if.end48 ], [ null, %if.then38 ], [ null, %if.end.out_crit_edge ], [ null, %if.end.out_crit_edge142 ], [ null, %if.end.out_crit_edge143 ]
  tail call void @usb_free_urb(ptr noundef %urb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %tobool85.not = icmp eq ptr %data_in_urb.2, null
  br i1 %tobool85.not, label %out.if.end88_crit_edge, label %if.then86

out.if.end88_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %data_in_urb.2) #9
  tail call void @usb_free_urb(ptr noundef nonnull %data_in_urb.2) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %out.if.end88_crit_edge
  %tobool89.not = icmp eq ptr %data_out_urb.2, null
  br i1 %tobool89.not, label %if.end88.if.end92_crit_edge, label %if.then90

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %data_out_urb.2) #9
  tail call void @usb_free_urb(ptr noundef nonnull %data_out_urb.2) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end88.if.end92_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uas_sense(ptr nocapture noundef readonly %urb, ptr nocapture noundef %cmnd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ugt i32 %5, 16
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %len1 = getelementptr inbounds %struct.sense_iu, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len1, align 2
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp3.not = icmp eq i32 %add, %5
  br i1 %cmp3.not, label %if.then.if.end14_crit_edge, label %if.then5

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.umin.i32(i32 %add, i32 %5)
  %sub = add nsw i32 %8, -16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.38, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.uas_sense, i32 noundef %5, i32 noundef %conv, i32 noundef %sub) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.then.if.end14_crit_edge
  %len.0 = phi i32 [ %sub, %if.then5 ], [ %conv, %if.then.if.end14_crit_edge ]
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 21
  %9 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sense_buffer, align 4
  %sense = getelementptr inbounds %struct.sense_iu, ptr %1, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %10, ptr %sense, i32 %len.0)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry.if.end15_crit_edge
  %status = getelementptr inbounds %struct.sense_iu, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  %conv16 = zext i8 %13 to i32
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %14 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv16, ptr %result, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uas_try_complete(ptr noundef %cmnd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.uas_dev_info, ptr %3, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !189

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 251, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %SCp, align 4
  %and = and i32 %6, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %uas_tag = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %uas_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uas_tag, align 4
  %sub = add i32 %8, -1
  %arrayidx = getelementptr %struct.uas_dev_info, ptr %3, i32 0, i32 13, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %cmnd, null
  br i1 %tobool.not.i, label %if.end26.uas_free_unsubmitted_urbs.exit_crit_edge, label %if.end.i

if.end26.uas_free_unsubmitted_urbs.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_free_unsubmitted_urbs.exit

if.end.i:                                         ; preds = %if.end26
  %10 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %SCp, align 4
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_urb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 2
  %12 = ptrtoint ptr %cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %14 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %SCp, align 4
  %and5.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_in_urb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 3
  %16 = ptrtoint ptr %data_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end3.i.if.end8.i_crit_edge
  %18 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %SCp, align 4
  %and10.i = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end8.i.uas_free_unsubmitted_urbs.exit_crit_edge

if.end8.i.uas_free_unsubmitted_urbs.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_free_unsubmitted_urbs.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_out_urb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22, i32 4
  %20 = ptrtoint ptr %data_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_out_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #9
  br label %uas_free_unsubmitted_urbs.exit

uas_free_unsubmitted_urbs.exit:                   ; preds = %if.then12.i, %if.end8.i.uas_free_unsubmitted_urbs.exit_crit_edge, %if.end26.uas_free_unsubmitted_urbs.exit_crit_edge
  tail call void @scsi_done(ptr noundef %cmnd) #9
  br label %cleanup

cleanup:                                          ; preds = %uas_free_unsubmitted_urbs.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %uas_free_unsubmitted_urbs.exit ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uas_xfer_data(ptr noundef %cmnd, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 22
  %0 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SCp, align 4
  %or = or i32 %1, %direction
  %or1 = or i32 %or, 2
  store i32 %or1, ptr %SCp, align 4
  %device = getelementptr %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %call = tail call fastcc i32 @uas_submit_urbs(ptr noundef %cmnd, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then.uas_add_work.exit_crit_edge, label %land.rhs.i

if.then.uas_add_work.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_add_work.exit

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.uas_add_work.exit_crit_edge, !prof !189

land.rhs.i.uas_add_work.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_add_work.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 148, i32 noundef 9, ptr noundef null) #9
  br label %uas_add_work.exit

uas_add_work.exit:                                ; preds = %do.end.i, %land.rhs.i.uas_add_work.exit_crit_edge, %if.then.uas_add_work.exit_crit_edge
  %11 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %SCp, align 4
  %or.i = or i32 %12, 4096
  store i32 %or.i, ptr %SCp, align 4
  %13 = load ptr, ptr @workqueue, align 4
  %work.i = getelementptr inbounds %struct.uas_dev_info, ptr %9, i32 0, i32 15
  %call.i29.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work.i) #9
  br label %if.end

if.end:                                           ; preds = %uas_add_work.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @uas_evaluate_response_iu(ptr nocapture noundef readonly %riu, ptr noundef %cmnd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %response_code1 = getelementptr inbounds %struct.response_iu, ptr %riu, i32 0, i32 4
  %0 = ptrtoint ptr %response_code1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %response_code1, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %1, label %sw.default [
    i8 9, label %sw.bb
    i8 8, label %sw.bb2
    i8 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %3 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result.i, align 4
  %and.i = and i32 %4, -16711681
  %or.i = or i32 %and.i, 262144
  store i32 %or.i, ptr %result.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %result.i13 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %5 = ptrtoint ptr %result.i13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result.i13, align 4
  %and.i14 = and i32 %6, -16711681
  store i32 %and.i14, ptr %result.i13, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %result.i15 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %7 = ptrtoint ptr %result.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %result.i15, align 4
  %and.i16 = and i32 %8, -16711681
  %or.i17 = or i32 %and.i16, 1048576
  store i32 %or.i17, ptr %result.i15, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  tail call fastcc void @uas_log_cmd_state(ptr noundef %cmnd, ptr noundef nonnull @.str.40, i32 noundef %conv)
  %result.i18 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 24
  %9 = ptrtoint ptr %result.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result.i18, align 4
  %and.i19 = and i32 %10, -16711681
  %or.i20 = or i32 %and.i19, 458752
  store i32 %or.i20, ptr %result.i18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp eq i8 %1, 8
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_data_cmplt(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %lock = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 14
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %data_in_urb = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 3
  %8 = ptrtoint ptr %data_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_in_urb, align 4
  %cmp7 = icmp eq ptr %9, %urb
  br i1 %cmp7, label %entry.if.end16.sink.split_crit_edge, label %if.else

entry.if.end16.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split

if.else:                                          ; preds = %entry
  %data_out_urb = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 4
  %10 = ptrtoint ptr %data_out_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_out_urb, align 4
  %cmp10 = icmp eq ptr %11, %urb
  br i1 %cmp10, label %if.else.if.end16.sink.split_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.else.if.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.else.if.end16.sink.split_crit_edge, %entry.if.end16.sink.split_crit_edge
  %.sink66 = phi i32 [ -513, %entry.if.end16.sink.split_crit_edge ], [ -1025, %if.else.if.end16.sink.split_crit_edge ]
  %data_out_urb.sink = phi ptr [ %data_in_urb, %entry.if.end16.sink.split_crit_edge ], [ %data_out_urb, %if.else.if.end16.sink.split_crit_edge ]
  %12 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %SCp, align 4
  %and14 = and i32 %13, %.sink66
  store i32 %and14, ptr %SCp, align 4
  %14 = ptrtoint ptr %data_out_urb.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %data_out_urb.sink, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %resetting = getelementptr inbounds %struct.uas_dev_info, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %resetting to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end18, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end18:                                         ; preds = %if.end16
  %17 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %SCp, align 4
  %and20 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %uas_tag.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 1
  %19 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uas_tag.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.45, ptr @.str.44
  %and3.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.45, ptr @.str.46
  %and7.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.45, ptr @.str.47
  %and11.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.45, ptr @.str.48
  %and15.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.45, ptr @.str.49
  %and19.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.45, ptr @.str.50
  %and27.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.45, ptr @.str.52
  %and31.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.45, ptr @.str.53
  %and35.i = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.45, ptr @.str.54
  %and39.i = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.45, ptr @.str.55
  %and43.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, ptr @.str.45, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.38, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %20, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond41.i, ptr noundef nonnull %cond45.i) #9
  tail call void @scsi_print_command(ptr noundef %1) #9
  br label %out

if.end23:                                         ; preds = %if.end18
  %21 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %7, label %if.then33 [
    i32 0, label %if.else35
    i32 -2, label %if.end23.if.end34_crit_edge
    i32 -104, label %if.end23.if.end34_crit_edge67
    i32 -108, label %if.end23.if.end34_crit_edge68
  ]

if.end23.if.end34_crit_edge68:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end23.if.end34_crit_edge67:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uas_log_cmd_state(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %7)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end23.if.end34_crit_edge, %if.end23.if.end34_crit_edge67, %if.end23.if.end34_crit_edge68
  %length = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  br label %if.end37

if.else35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %length36 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %length36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length36, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  %sub = sub i32 %25, %27
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.end34
  %sub.sink = phi i32 [ %sub, %if.else35 ], [ %23, %if.end34 ]
  %resid_len.i65 = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %resid_len.i65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.sink, ptr %resid_len.i65, align 4
  %29 = tail call fastcc i32 @uas_try_complete(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end37, %if.then22, %if.end16.out_crit_edge
  tail call void @usb_free_urb(ptr noundef %urb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uas_cmd_cmplt(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usb_free_urb(ptr noundef %urb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uas_zap_pending(ptr noundef %devinfo, i32 noundef %result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %qdepth = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 6
  %0 = ptrtoint ptr %qdepth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qdepth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp551 = icmp sgt i32 %1, 0
  br i1 %cmp551, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shl = shl i32 %result, 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uas_dev_info, ptr %devinfo, i32 0, i32 13, i32 %i.052
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22
  %uas_tag.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %uas_tag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uas_tag.i, align 4
  %6 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SCp, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.45, ptr @.str.44
  %and3.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.45, ptr @.str.46
  %and7.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.45, ptr @.str.47
  %and11.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.45, ptr @.str.48
  %and15.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.45, ptr @.str.49
  %and19.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.45, ptr @.str.50
  %and23.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.45, ptr @.str.51
  %and27.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.45, ptr @.str.52
  %and31.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.45, ptr @.str.53
  %and35.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.45, ptr @.str.54
  %and39.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.45, ptr @.str.55
  %and43.i = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, ptr @.str.45, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %3, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.uas_zap_pending, i32 noundef 0, i32 noundef %5, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i, ptr noundef nonnull %cond25.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond41.i, ptr noundef nonnull %cond45.i) #9
  tail call void @scsi_print_command(ptr noundef nonnull %3) #9
  %8 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SCp, align 4
  %and = and i32 %9, -257
  store i32 %and, ptr %SCp, align 4
  %result10 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %result10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %result10, align 4
  %call11 = tail call fastcc i32 @uas_try_complete(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end.for.inc_crit_edge, label %do.end25, !prof !190

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 172, i32 noundef 9, ptr noundef null) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %11 = ptrtoint ptr %qdepth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qdepth, align 4
  %cmp5 = icmp slt i32 %inc, %12
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_alloc_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_free_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uas_wait_for_pending_cmnds(ptr noundef %devinfo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %work = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 15
  %call22 = tail call zeroext i1 @flush_work(ptr noundef %work) #9
  %sense_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 3
  %call123 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %sense_urbs, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp24 = icmp eq i32 %call123, 0
  br i1 %cmp24, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %data_urbs = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 4
  %add = add i32 %0, 500
  %lock.i = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 14
  %qdepth.i = getelementptr inbounds %struct.uas_dev_info, ptr %devinfo, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %uas_cmnd_list_empty.exit.if.end_crit_edge, %if.end.lr.ph
  %call2 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %data_urbs, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %do.cond

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond:                                          ; preds = %if.end5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %2 = ptrtoint ptr %qdepth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qdepth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp513.i = icmp sgt i32 %3, 0
  br i1 %cmp513.i, label %do.cond.for.body.i_crit_edge, label %do.cond.uas_cmnd_list_empty.exit.thread_crit_edge

do.cond.uas_cmnd_list_empty.exit.thread_crit_edge: ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_cmnd_list_empty.exit.thread

do.cond.for.body.i_crit_edge:                     ; preds = %do.cond
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.uas_cmnd_list_empty.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.uas_cmnd_list_empty.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uas_cmnd_list_empty.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.cond.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.cond.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.uas_dev_info, ptr %devinfo, i32 0, i32 13, i32 %i.014.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.cond.i, label %uas_cmnd_list_empty.exit

uas_cmnd_list_empty.exit.thread:                  ; preds = %for.cond.i.uas_cmnd_list_empty.exit.thread_crit_edge, %do.cond.uas_cmnd_list_empty.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %cleanup

uas_cmnd_list_empty.exit:                         ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #9
  %call1 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %sense_urbs, i32 noundef 5000) #9
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %uas_cmnd_list_empty.exit.cleanup_crit_edge, label %uas_cmnd_list_empty.exit.if.end_crit_edge

uas_cmnd_list_empty.exit.if.end_crit_edge:        ; preds = %uas_cmnd_list_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

uas_cmnd_list_empty.exit.cleanup_crit_edge:       ; preds = %uas_cmnd_list_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %uas_cmnd_list_empty.exit.cleanup_crit_edge, %uas_cmnd_list_empty.exit.thread, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %uas_cmnd_list_empty.exit.thread ], [ -62, %entry.cleanup_crit_edge ], [ -62, %if.end5.cleanup_crit_edge ], [ -62, %if.end.cleanup_crit_edge ], [ -62, %uas_cmnd_list_empty.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__initcall__kmod_uas__295_1279_uas_init6, !1, !"__initcall__kmod_uas__295_1279_uas_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/uas.c", i32 1279, i32 1}
!2 = !{ptr @__exitcall_uas_exit, !3, !"__exitcall_uas_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/uas.c", i32 1280, i32 1}
!4 = !{ptr @__UNIQUE_ID_file296, !5, !"__UNIQUE_ID_file296", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/uas.c", i32 1282, i32 1}
!6 = !{ptr @__UNIQUE_ID_license297, !5, !"__UNIQUE_ID_license297", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns298, !8, !"__UNIQUE_ID_import_ns298", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/uas.c", i32 1283, i32 1}
!9 = !{ptr @__UNIQUE_ID_author299, !10, !"__UNIQUE_ID_author299", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/uas.c", i32 1284, i32 1}
!11 = !{ptr @workqueue, !12, !"workqueue", i1 false, i1 false}
!12 = !{!"../drivers/usb/storage/uas.c", i32 95, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/storage/uas.c", i32 1244, i32 10}
!15 = !{ptr @uas_driver, !16, !"uas_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/storage/uas.c", i32 1243, i32 26}
!17 = !{ptr @uas_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/storage/uas.c", i32 1022, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @uas_probe.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/uas.c", i32 1023, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @uas_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/uas.c", i32 1024, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/uas-detect.h", i32 122, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @uas_use_uas_driver._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @uas_use_uas_driver._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/uas-detect.h", i32 128, i32 3}
!36 = !{ptr @uas_use_uas_driver._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @uas_use_uas_driver._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/uas-detect.h", i32 131, i32 3}
!40 = !{ptr @uas_use_uas_driver._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @uas_use_uas_driver._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/uas-detect.h", i32 137, i32 3}
!44 = !{ptr @uas_use_uas_driver._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @uas_use_uas_driver._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/uas-detect.h", i32 140, i32 3}
!48 = !{ptr @uas_use_uas_driver._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @uas_use_uas_driver._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @uas_host_template, !51, !"uas_host_template", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/uas.c", i32 901, i32 34}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/uas.c", i32 565, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/uas.c", i32 586, i32 28}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/uas.c", i32 606, i32 28}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/uas.c", i32 625, i32 28}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/storage/uas.c", i32 551, i32 27}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/uas.c", i32 320, i32 4}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @uas_stat_cmplt._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @uas_stat_cmplt._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/uas.c", i32 326, i32 3}
!70 = !{ptr @uas_stat_cmplt._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @uas_stat_cmplt._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/storage/uas.c", i32 335, i32 27}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/uas.c", i32 353, i32 28}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/uas.c", i32 361, i32 28}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/uas.c", i32 377, i32 27}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/uas.c", i32 188, i32 4}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @__func__.uas_sense, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/uas.c", i32 291, i32 27}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/uas.c", i32 418, i32 27}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/uas.c", i32 424, i32 28}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/uas.c", i32 430, i32 25}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/storage/uas.c", i32 210, i32 7}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/storage/uas.c", i32 212, i32 45}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/storage/uas.c", i32 212, i32 56}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/storage/uas.c", i32 213, i32 45}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/storage/uas.c", i32 214, i32 45}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/storage/uas.c", i32 215, i32 45}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/storage/uas.c", i32 216, i32 45}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/storage/uas.c", i32 217, i32 45}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/storage/uas.c", i32 218, i32 45}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/storage/uas.c", i32 219, i32 45}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/storage/uas.c", i32 220, i32 45}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/storage/uas.c", i32 221, i32 45}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/storage/uas.c", i32 222, i32 45}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/storage/uas.c", i32 223, i32 45}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/storage/uas.c", i32 439, i32 3}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @uas_cmd_cmplt._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @uas_cmd_cmplt._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @__func__.uas_eh_abort_handler, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/storage/uas.c", i32 741, i32 26}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/storage/uas.c", i32 779, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @uas_eh_device_reset_handler._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @uas_eh_device_reset_handler._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/storage/uas.c", i32 784, i32 2}
!134 = !{ptr @uas_eh_device_reset_handler._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @uas_eh_device_reset_handler._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/storage/uas.c", i32 804, i32 3}
!138 = !{ptr @uas_eh_device_reset_handler._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @uas_eh_device_reset_handler._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/storage/uas.c", i32 809, i32 2}
!142 = !{ptr @uas_eh_device_reset_handler._entry.67, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @uas_eh_device_reset_handler._entry_ptr.69, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @__func__.uas_zap_pending, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/storage/uas.c", i32 167, i32 27}
!146 = !{ptr @init_usb_anchor.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!148 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @init_usb_anchor.__key.71, !150, !"__key", i1 false, i1 false}
!150 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!151 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/storage/uas.c", i32 137, i32 2}
!154 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @uas_scan_work.__UNIQUE_ID_ddebug290, !153, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/storage/uas.c", i32 139, i32 2}
!158 = !{ptr @uas_scan_work.__UNIQUE_ID_ddebug291, !157, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/storage/uas.c", i32 1161, i32 3}
!161 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @uas_suspend._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @uas_suspend._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/storage/uas.c", i32 1182, i32 3}
!166 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @uas_reset_resume._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @uas_reset_resume._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/storage/uas.c", i32 1119, i32 3}
!171 = !{ptr @uas_pre_reset._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @uas_pre_reset._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/storage/uas.c", i32 1141, i32 3}
!175 = !{ptr @uas_post_reset._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @uas_post_reset._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @uas_usb_ids, !178, !"uas_usb_ids", i1 false, i1 false}
!178 = !{!"../drivers/usb/storage/uas.c", i32 921, i32 29}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{i64 2148305156, i64 2148305161, i64 2148305174, i64 2148305218, i64 2148305252, i64 2148305273}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{!"branch_weights", i32 2000, i32 1}
