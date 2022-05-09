; ModuleID = '/llk/IR_all_yes/drivers/media/usb/siano/smsusb.c_pt.bc'
source_filename = "../drivers/media/usb/siano/smsusb.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sms_board = type { i32, ptr, [12 x ptr], %struct.sms_board_gpio_cfg, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.sms_board_gpio_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.smsusb_device_t = type { ptr, ptr, [10 x %struct.smsusb_urb_t], i32, i32, i8, i8, i32 }
%struct.smsusb_urb_t = type { %struct.list_head, ptr, ptr, %struct.urb, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.smsdevice_params_t = type { ptr, ptr, i32, i32, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.smscore_device_t = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, i32, i32, ptr, i32, i16, %struct.ir_t, i8, i32, ptr }
%struct.ir_t = type { ptr, [40 x i8], [32 x i8], ptr, i32, i32 }
%struct.sms_msg_hdr = type { i16, i8, i8, i16, i16 }
%struct.smscore_buffer_t = type { %struct.list_head, i32, i32, ptr, i32, i32 }

@__initcall__kmod_smsusb__253_723_smsusb_driver_init6 = internal global ptr @smsusb_driver_init, section ".initcall6.init", align 4
@smsusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @smsusb_probe, ptr @smsusb_disconnect, ptr null, ptr @smsusb_suspend, ptr @smsusb_resume, ptr null, ptr null, ptr null, ptr @smsusb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_smsusb_driver_exit = internal global ptr @smsusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description254 = internal constant [59 x i8] c"smsusb.description=Driver for the Siano SMS1xxx USB dongle\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [61 x i8] c"smsusb.author=Siano Mobile Silicon, INC. (uris@siano-ms.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [43 x i8] c"smsusb.file=drivers/media/usb/siano/smsusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [19 x i8] c"smsusb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smsusb\00", [25 x i8] zeroinitializer }, align 32
@smsusb_id_table = internal constant { [43 x %struct.usb_device_id], [280 x i8] } { [43 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6271, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 6271, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 6271, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 6271, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 6271, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 8256, i16 5888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 8256, i16 6144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 8256, i16 6145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 8256, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 8256, i16 8202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8217, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21776, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -2656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 6271, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 6271, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 6271, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 6271, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 6271, i16 1280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 17 }, %struct.usb_device_id { i16 3, i16 6271, i16 1536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 18 }, %struct.usb_device_id { i16 3, i16 6271, i16 1792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 20 }, %struct.usb_device_id { i16 3, i16 6271, i16 2048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 19 }, %struct.usb_device_id { i16 3, i16 6610, i16 134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 6610, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 15 }, %struct.usb_device_id { i16 3, i16 12917, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 18 }, %struct.usb_device_id { i16 3, i16 8211, i16 599, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 21 }, %struct.usb_device_id zeroinitializer], [280 x i8] zeroinitializer }, align 32
@smsusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:%s: board id=%lu, interface number %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smsusb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/siano/smsusb.c\00", [63 x i8] zeroinitializer }, align 32
@smsusb_probe._entry_ptr = internal global ptr @smsusb_probe._entry, section ".printk_index", align 4
@smsusb_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"interface %d won't be used. Expecting interface %d to popup\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%s: interface %d won't be used. Expecting interface %d to popup\0A\00", [60 x i8] zeroinitializer }, align 32
@smsusb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%s: usb_set_interface failed, rc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@smsusb_probe._entry_ptr.8 = internal global ptr @smsusb_probe._entry.6, section ".printk_index", align 4
@smsusb_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smsusb_probe %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%s: smsusb_probe %d\0A\00", [40 x i8] zeroinitializer }, align 32
@smsusb_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"endpoint %d %02x %02x %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%s: endpoint %d %02x %02x %d\0A\00", [63 x i8] zeroinitializer }, align 32
@smsusb_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rom interface 0 is not used\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%s: rom interface 0 is not used\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb\\%d-%s\00", [22 x i8] zeroinitializer }, align 32
@smsusb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s:%s: stellar device in cold state was found at %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@smsusb_probe._entry_ptr.18 = internal global ptr @smsusb_probe._entry.16, section ".printk_index", align 4
@smsusb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:%s: stellar device now in warm state\0A\00", [53 x i8] zeroinitializer }, align 32
@smsusb_probe._entry_ptr.21 = internal global ptr @smsusb_probe._entry.19, section ".printk_index", align 4
@smsusb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s:%s: Failed to put stellar in warm state. Error: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@smsusb_probe._entry_ptr.24 = internal global ptr @smsusb_probe._entry.22, section ".printk_index", align 4
@smsusb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:%s: Device initialized with return code %d\0A\00", [47 x i8] zeroinitializer }, align 32
@smsusb_probe._entry_ptr.27 = internal global ptr @smsusb_probe._entry.25, section ".printk_index", align 4
@smsusb1_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%s: invalid firmware id specified %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smsusb1_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@smsusb1_load_firmware._entry_ptr = internal global ptr @smsusb1_load_firmware._entry, section ".printk_index", align 4
@smsusb1_load_firmware._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014%s:%s: failed to open '%s' mode %d, trying again with default firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@smsusb1_load_firmware._entry_ptr.32 = internal global ptr @smsusb1_load_firmware._entry.30, section ".printk_index", align 4
@smsusb1_fw_lkup = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [44 x i8] zeroinitializer }, align 32
@smsusb1_load_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s:%s: failed to open '%s' mode %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smsusb1_load_firmware._entry_ptr.35 = internal global ptr @smsusb1_load_firmware._entry.33, section ".printk_index", align 4
@smsusb1_load_firmware.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.36, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sent %zu(%d) bytes, rc %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%s: sent %zu(%d) bytes, rc %d\0A\00", [62 x i8] zeroinitializer }, align 32
@smsusb1_load_firmware._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str.3, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%s: failed to allocate firmware buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@smsusb1_load_firmware._entry_ptr.40 = internal global ptr @smsusb1_load_firmware._entry.38, section ".printk_index", align 4
@smsusb1_load_firmware.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.41, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read FW %s, size=%zu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%s: read FW %s, size=%zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvbt_stellar_usb.inp\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvbh_stellar_usb.inp\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tdmb_stellar_usb.inp\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvbt_bda_stellar_usb.inp\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smsusb_init_device.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsusb_init_device\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_ep = %02x, out_ep = %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%s: in_ep = %02x, out_ep = %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@smsusb_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.3, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%s: Unspecified sms device type!\0A\00", [57 x i8] zeroinitializer }, align 32
@smsusb_init_device._entry_ptr = internal global ptr @smsusb_init_device._entry, section ".printk_index", align 4
@smsusb_init_device._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s:%s: smscore_register_device(...) failed, rc %d\0A\00", [43 x i8] zeroinitializer }, align 32
@smsusb_init_device._entry_ptr.54 = internal global ptr @smsusb_init_device._entry.52, section ".printk_index", align 4
@smsusb_init_device.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.55, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"smsusb_start_streaming(...).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%s: smsusb_start_streaming(...).\0A\00", [59 x i8] zeroinitializer }, align 32
@smsusb_init_device._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.3, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%s: smsusb_start_streaming(...) failed\0A\00", [51 x i8] zeroinitializer }, align 32
@smsusb_init_device._entry_ptr.59 = internal global ptr @smsusb_init_device._entry.57, section ".printk_index", align 4
@smsusb_init_device._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.48, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%s: smscore_start_device(...) failed\0A\00", [53 x i8] zeroinitializer }, align 32
@smsusb_init_device._entry_ptr.62 = internal global ptr @smsusb_init_device._entry.60, section ".printk_index", align 4
@smsusb_init_device.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.63, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device 0x%p created\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%s: device 0x%p created\0A\00", [36 x i8] zeroinitializer }, align 32
@smsusb_term_device.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsusb_term_device\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device 0x%p destroyed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%s: device 0x%p destroyed\0A\00", [34 x i8] zeroinitializer }, align 32
@smsusb1_setmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.68, ptr @.str.3, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsusb1_setmode\00", [16 x i8] zeroinitializer }, align 32
@smsusb1_setmode._entry_ptr = internal global ptr @smsusb1_setmode._entry, section ".printk_index", align 4
@smsusb1_detectmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s:%s: product string not found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsusb1_detectmode\00", [45 x i8] zeroinitializer }, align 32
@smsusb1_detectmode._entry_ptr = internal global ptr @smsusb1_detectmode._entry, section ".printk_index", align 4
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVBH\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BDA\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVBT\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TDMB\00", [27 x i8] zeroinitializer }, align 32
@smsusb1_detectmode.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.75, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d \22%s\22\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%s: %d \22%s\22\0A\00", [16 x i8] zeroinitializer }, align 32
@smsusb_sendrequest.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsusb_sendrequest\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Device not active yet\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%s: Device not active yet\0A\00", [34 x i8] zeroinitializer }, align 32
@smsusb_sendrequest.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.80, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sending %s(%d) size: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%s: sending %s(%d) size: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@siano_media_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:%s: media controller created\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"siano_media_device_register\00", [36 x i8] zeroinitializer }, align 32
@siano_media_device_register._entry_ptr = internal global ptr @siano_media_device_register._entry, section ".printk_index", align 4
@smsusb_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s:%s: smsusb_submit_urb(...) failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smsusb_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@smsusb_start_streaming._entry_ptr = internal global ptr @smsusb_start_streaming._entry, section ".printk_index", align 4
@smsusb_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s:%s: smscore_getbuffer(...) returned NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smsusb_submit_urb\00", [46 x i8] zeroinitializer }, align 32
@smsusb_submit_urb._entry_ptr = internal global ptr @smsusb_submit_urb._entry, section ".printk_index", align 4
@smsusb_onresponse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s:%s: error, urb status %d (-ESHUTDOWN), %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smsusb_onresponse\00", [46 x i8] zeroinitializer }, align 32
@smsusb_onresponse._entry_ptr = internal global ptr @smsusb_onresponse._entry, section ".printk_index", align 4
@smsusb_onresponse._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s:%s: invalid response msglen %d offset %d size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@smsusb_onresponse._entry_ptr.93 = internal global ptr @smsusb_onresponse._entry.91, section ".printk_index", align 4
@smsusb_onresponse.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.94, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"received %s(%d) size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%s: received %s(%d) size: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@smsusb_onresponse._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.90, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s:%s: invalid response msglen %d actual %d\0A\00", [49 x i8] zeroinitializer }, align 32
@smsusb_onresponse._entry_ptr.98 = internal global ptr @smsusb_onresponse._entry.96, section ".printk_index", align 4
@smsusb_onresponse._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.90, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s:%s: error, urb status %d, %d bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@smsusb_onresponse._entry_ptr.101 = internal global ptr @smsusb_onresponse._entry.99, section ".printk_index", align 4
@smsusb_onresponse.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&surb->wq)\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@smsusb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s  Entering status %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsusb_suspend\00", [17 x i8] zeroinitializer }, align 32
@smsusb_suspend._entry_ptr = internal global ptr @smsusb_suspend._entry, section ".printk_index", align 4
@smsusb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s  Entering.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsusb_resume\00", [18 x i8] zeroinitializer }, align 32
@smsusb_resume._entry_ptr = internal global ptr @smsusb_resume._entry, section ".printk_index", align 4
@smsusb_resume._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016endpoint %d %02x %02x %d\0A\00", [36 x i8] zeroinitializer }, align 32
@smsusb_resume._entry_ptr.109 = internal global ptr @smsusb_resume._entry.107, section ".printk_index", align 4
@smsusb_resume._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s usb_set_interface failed, rc %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smsusb_resume._entry_ptr.112 = internal global ptr @smsusb_resume._entry.110, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"smsusb_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 713, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 723, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"smsusb_id_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 620, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 503, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 509, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 520, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 525, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 528, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 542, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 549, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 551, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 559, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 561, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 569, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 259, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 267, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"smsusb1_fw_lkup\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 234, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 273, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 287, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 291, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 294, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 235, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 236, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 237, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 238, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 239, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 416, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 432, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 455, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 474, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 477, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 486, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 491, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 349, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 329, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 310, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 311, i32 36 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 313, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 315, i32 34 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 317, i32 34 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 320, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 213, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 221, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 912, i32 31 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 378, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 197, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 157, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 92, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 114, i32 6 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 128, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 137, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 141, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 146, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 582, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 595, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 600, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [36 x i8] c"../drivers/media/usb/siano/smsusb.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 610, i32 4 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_smsusb_driver_exit, ptr @__initcall__kmod_smsusb__253_723_smsusb_driver_init6, ptr @siano_media_device_register._entry, ptr @siano_media_device_register._entry_ptr, ptr @smsusb1_detectmode._entry, ptr @smsusb1_detectmode._entry_ptr, ptr @smsusb1_load_firmware._entry, ptr @smsusb1_load_firmware._entry.30, ptr @smsusb1_load_firmware._entry.33, ptr @smsusb1_load_firmware._entry.38, ptr @smsusb1_load_firmware._entry_ptr, ptr @smsusb1_load_firmware._entry_ptr.32, ptr @smsusb1_load_firmware._entry_ptr.35, ptr @smsusb1_load_firmware._entry_ptr.40, ptr @smsusb1_setmode._entry, ptr @smsusb1_setmode._entry_ptr, ptr @smsusb_driver_exit, ptr @smsusb_init_device._entry, ptr @smsusb_init_device._entry.52, ptr @smsusb_init_device._entry.57, ptr @smsusb_init_device._entry.60, ptr @smsusb_init_device._entry_ptr, ptr @smsusb_init_device._entry_ptr.54, ptr @smsusb_init_device._entry_ptr.59, ptr @smsusb_init_device._entry_ptr.62, ptr @smsusb_onresponse._entry, ptr @smsusb_onresponse._entry.91, ptr @smsusb_onresponse._entry.96, ptr @smsusb_onresponse._entry.99, ptr @smsusb_onresponse._entry_ptr, ptr @smsusb_onresponse._entry_ptr.101, ptr @smsusb_onresponse._entry_ptr.93, ptr @smsusb_onresponse._entry_ptr.98, ptr @smsusb_probe._entry, ptr @smsusb_probe._entry.16, ptr @smsusb_probe._entry.19, ptr @smsusb_probe._entry.22, ptr @smsusb_probe._entry.25, ptr @smsusb_probe._entry.6, ptr @smsusb_probe._entry_ptr, ptr @smsusb_probe._entry_ptr.18, ptr @smsusb_probe._entry_ptr.21, ptr @smsusb_probe._entry_ptr.24, ptr @smsusb_probe._entry_ptr.27, ptr @smsusb_probe._entry_ptr.8, ptr @smsusb_resume._entry, ptr @smsusb_resume._entry.107, ptr @smsusb_resume._entry.110, ptr @smsusb_resume._entry_ptr, ptr @smsusb_resume._entry_ptr.109, ptr @smsusb_resume._entry_ptr.112, ptr @smsusb_start_streaming._entry, ptr @smsusb_start_streaming._entry_ptr, ptr @smsusb_submit_urb._entry, ptr @smsusb_submit_urb._entry_ptr, ptr @smsusb_suspend._entry, ptr @smsusb_suspend._entry_ptr, ptr @smsusb_driver, ptr @.str, ptr @smsusb_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @smsusb1_fw_lkup, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @smsusb_onresponse.__key, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_id_table to i32), i32 1032, i32 1312, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_load_firmware._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_fw_lkup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_load_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_load_firmware._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_init_device._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_init_device._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_init_device._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_setmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb1_detectmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siano_media_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_onresponse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_onresponse._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_onresponse._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_onresponse._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_onresponse.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_resume._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsusb_resume._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @smsusb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smsusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @smsusb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsusb_probe(ptr nocapture noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %devpath = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %devpath) #10
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = call ptr @memset(ptr %devpath, i32 255, i32 32)
  %3 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_info, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %8 to i32
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %4, i32 noundef %conv) #13
  %9 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_info, align 4
  %call3 = tail call ptr @sms_get_board(i32 noundef %10) #10
  %intf_num = getelementptr inbounds %struct.sms_board, ptr %call3, i32 0, i32 10
  %11 = ptrtoint ptr %intf_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %intf_num, align 4
  %13 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber7 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber7, align 2
  %conv8 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %16)
  %cmp.not = icmp eq i8 %12, %16
  br i1 %cmp.not, label %if.end26, label %do.body10

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_probe, %if.then15)) #10
          to label %cleanup [label %if.then15], !srcloc !228

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber18 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bInterfaceNumber18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterfaceNumber18, align 2
  %conv19 = zext i8 %20 to i32
  %21 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_info, align 4
  %call21 = tail call ptr @sms_get_board(i32 noundef %22) #10
  %intf_num22 = getelementptr inbounds %struct.sms_board, ptr %call21, i32 0, i32 10
  %23 = ptrtoint ptr %intf_num22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %intf_num22, align 4
  %conv23 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_probe.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %conv19, i32 noundef %conv23) #10
  br label %cleanup

if.end26:                                         ; preds = %entry
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %25 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp27 = icmp ugt i32 %26, 1
  br i1 %cmp27, label %if.then29, label %if.end26.do.body45_crit_edge

if.end26.do.body45_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.then29:                                        ; preds = %if.end26
  %call34 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv8, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.then29.do.body45_crit_edge

if.then29.do.body45_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

do.end40:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %call34) #13
  br label %cleanup

do.body45:                                        ; preds = %if.then29.do.body45_crit_edge, %if.end26.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_probe, %if.then57)) #10
          to label %do.end64 [label %if.then57], !srcloc !228

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber60 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %bInterfaceNumber60 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceNumber60, align 2
  %conv61 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_probe.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %conv61) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45
  %31 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints259 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %bNumEndpoints259 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bNumEndpoints259, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp68261.not = icmp eq i8 %34, 0
  br i1 %cmp68261.not, label %do.end64.for.end_crit_edge, label %do.end64.do.body70_crit_edge

do.end64.do.body70_crit_edge:                     ; preds = %do.end64
  br label %do.body70

do.end64.for.end_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body70:                                        ; preds = %do.end98.do.body70_crit_edge, %do.end64.do.body70_crit_edge
  %i.0262 = phi i32 [ %inc, %do.end98.do.body70_crit_edge ], [ 0, %do.end64.do.body70_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_probe, %if.then82)) #10
          to label %do.end98 [label %if.then82], !srcloc !228

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %i.0262
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %39 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bEndpointAddress, align 2
  %conv85 = zext i8 %40 to i32
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %41 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bmAttributes, align 1
  %conv90 = zext i8 %42 to i32
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %43 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %wMaxPacketSize, align 4
  %conv95 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_probe.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %i.0262, i32 noundef %conv85, i32 noundef %conv90, i32 noundef %conv95) #10
  br label %do.end98

do.end98:                                         ; preds = %if.then82, %do.body70
  %45 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_altsetting, align 4
  %endpoint100 = getelementptr inbounds %struct.usb_host_interface, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %endpoint100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %endpoint100, align 4
  %bEndpointAddress103 = getelementptr %struct.usb_host_endpoint, ptr %48, i32 %i.0262, i32 0, i32 2
  %49 = ptrtoint ptr %bEndpointAddress103 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bEndpointAddress103, align 2
  %conv104 = zext i8 %50 to i32
  %and = and i32 %conv104, 128
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 8
  %shl.i252 = shl i32 %52, 8
  %shl1.i253 = shl nuw nsw i32 %conv104, 15
  %or.i254 = or i32 %shl1.i253, %shl.i252
  %53 = or i32 %and, -1073741824
  %or114 = or i32 %or.i254, %53
  %call115 = tail call i32 @usb_clear_halt(ptr noundef %add.ptr.i, i32 noundef %or114) #10
  %inc = add nuw nsw i32 %i.0262, 1
  %54 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bNumEndpoints, align 4
  %conv67 = zext i8 %57 to i32
  %cmp68 = icmp ult i32 %inc, %conv67
  br i1 %cmp68, label %do.end98.do.body70_crit_edge, label %do.end98.for.end_crit_edge

do.end98.for.end_crit_edge:                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end98.do.body70_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

for.end:                                          ; preds = %do.end98.for.end_crit_edge, %do.end64.for.end_crit_edge
  %.lcssa = phi ptr [ %32, %do.end64.for.end_crit_edge ], [ %55, %do.end98.for.end_crit_edge ]
  %actconfig = getelementptr i8, ptr %1, i32 956
  %58 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bNumInterfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp128 = icmp eq i8 %61, 2
  br i1 %cmp128, label %land.lhs.true, label %for.end.if.end153_crit_edge

for.end.if.end153_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

land.lhs.true:                                    ; preds = %for.end
  %bInterfaceNumber132 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %.lcssa, i32 0, i32 2
  %62 = ptrtoint ptr %bInterfaceNumber132 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bInterfaceNumber132, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp134 = icmp eq i8 %63, 0
  br i1 %cmp134, label %do.body137, label %land.lhs.true.if.end153_crit_edge

land.lhs.true.if.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

do.body137:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_probe, %if.then149)) #10
          to label %cleanup [label %if.then149], !srcloc !228

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_probe.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end153:                                        ; preds = %land.lhs.true.if.end153_crit_edge, %for.end.if.end153_crit_edge
  %64 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %65)
  %cmp155 = icmp eq i32 %65, 13
  br i1 %cmp155, label %if.then157, label %if.else185

if.then157:                                       ; preds = %if.end153
  %bus = getelementptr i8, ptr %1, i32 -64
  %66 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %busnum, align 4
  %devpath158 = getelementptr i8, ptr %1, i32 -124
  %call160 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devpath, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %69, ptr noundef %devpath158)
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull %devpath) #13
  %call168 = call i32 @smscore_registry_getmode(ptr noundef nonnull %devpath) #10
  %70 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %driver_info, align 4
  %call170 = call fastcc i32 @smsusb1_load_firmware(ptr noundef %add.ptr.i, i32 noundef %call168, i32 noundef %71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %do.end175, label %do.end181

do.end175:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  br label %cleanup

do.end181:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %call170) #13
  br label %cleanup

if.else185:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %call187 = tail call fastcc i32 @smsusb_init_device(ptr noundef %intf, i32 noundef %65)
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %call187) #13
  %72 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %driver_info, align 4
  %call195 = tail call i32 @sms_board_load_modules(i32 noundef %73) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else185, %do.end181, %do.end175, %if.then149, %do.body137, %do.end40, %if.then15, %do.body10
  %retval.0 = phi i32 [ %call34, %do.end40 ], [ %call187, %if.else185 ], [ -19, %if.then15 ], [ -19, %if.then149 ], [ %call170, %do.end181 ], [ 0, %do.end175 ], [ -19, %do.body10 ], [ -19, %do.body137 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %devpath) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsusb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.smsusb_term_device.exit_crit_edge, label %if.then.i

entry.smsusb_term_device.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %smsusb_term_device.exit

if.then.i:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state.i, align 4
  tail call fastcc void @smsusb_stop_streaming(ptr noundef nonnull %1) #10
  %coredev.i = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %coredev.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.then.i.do.body.i_crit_edge, label %if.then2.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @smscore_unregister_device(ptr noundef nonnull %4) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.then.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_term_device.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_disconnect, %if.then8.i)) #10
          to label %do.end.i [label %if.then8.i], !srcloc !228

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_term_device.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65, ptr noundef nonnull %1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %smsusb_term_device.exit

smsusb_term_device.exit:                          ; preds = %do.end.i, %entry.smsusb_term_device.exit_crit_edge
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsusb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %msg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg.coerce.fca.0.extract = extractvalue [1 x i32] %msg.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef %msg.coerce.fca.0.extract) #13
  %state = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state, align 4
  tail call fastcc void @smsusb_stop_streaming(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsusb_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #13
  %in_ep = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_ep, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %7, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or4 = or i32 %or.i, -1073741696
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %add.ptr.i, i32 noundef %or4) #10
  %out_ep = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %out_ep to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %out_ep, align 1
  %conv6 = zext i8 %9 to i32
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  %shl.i69 = shl i32 %11, 8
  %shl1.i70 = shl nuw nsw i32 %conv6, 15
  %or.i71 = or i32 %shl1.i70, %shl.i69
  %or8 = or i32 %or.i71, -1073741824
  %call9 = tail call i32 @usb_clear_halt(ptr noundef %add.ptr.i, i32 noundef %or8) #10
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints72 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %bNumEndpoints72 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bNumEndpoints72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp74.not = icmp eq i8 %15, 0
  br i1 %cmp74.not, label %entry.for.end_crit_edge, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  br label %do.end14

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end14:                                         ; preds = %do.end14.do.end14_crit_edge, %entry.do.end14_crit_edge
  %16 = phi ptr [ %26, %do.end14.do.end14_crit_edge ], [ %13, %entry.do.end14_crit_edge ]
  %i.075 = phi i32 [ %inc, %do.end14.do.end14_crit_edge ], [ 0, %entry.do.end14_crit_edge ]
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %18, i32 %i.075
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 2
  %conv18 = zext i8 %20 to i32
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bmAttributes, align 1
  %conv23 = zext i8 %22 to i32
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %wMaxPacketSize, align 4
  %conv28 = zext i16 %24 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %i.075, i32 noundef %conv18, i32 noundef %conv23, i32 noundef %conv28) #13
  %inc = add nuw nsw i32 %i.075, 1
  %25 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bNumEndpoints, align 4
  %conv10 = zext i8 %28 to i32
  %cmp = icmp ult i32 %inc, %conv10
  br i1 %cmp, label %do.end14.do.end14_crit_edge, label %do.end14.for.end_crit_edge

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end14.do.end14_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

for.end:                                          ; preds = %do.end14.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %13, %entry.for.end_crit_edge ], [ %26, %do.end14.for.end_crit_edge ]
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %29 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp30.not = icmp eq i32 %30, 0
  br i1 %cmp30.not, label %for.end.if.end44_crit_edge, label %if.then

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then:                                          ; preds = %for.end
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %.lcssa, i32 0, i32 2
  %31 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bInterfaceNumber, align 2
  %conv34 = zext i8 %32 to i32
  %call35 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv34, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end41, label %if.then.if.end44_crit_edge

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end41:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.106, i32 noundef %call35) #13
  br label %cleanup

if.end44:                                         ; preds = %if.then.if.end44_crit_edge, %for.end.if.end44_crit_edge
  %call45 = tail call fastcc i32 @smsusb_start_streaming(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end41
  %retval.0 = phi i32 [ %call35, %do.end41 ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sms_get_board(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsusb1_load_firmware(ptr noundef %udev, i32 noundef %id, i32 noundef %board_id) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #10
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dummy, align 4, !annotation !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @sms_get_board(i32 noundef %board_id) #10
  %default_mode = getelementptr inbounds %struct.sms_board, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %default_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %default_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id.addr.0 = phi i32 [ %3, %if.then ], [ %id, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %id.addr.0)
  %4 = icmp ugt i32 %id.addr.0, 4
  br i1 %4, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, i32 noundef %id.addr.0) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @sms_get_board(i32 noundef %board_id) #10
  %fw1.i = getelementptr inbounds %struct.sms_board, ptr %call.i, i32 0, i32 2
  %arrayidx.i = getelementptr ptr, ptr %fw1.i, i32 %id.addr.0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %cond.false.i, label %if.end5.sms_get_fw_name.exit_crit_edge

if.end5.sms_get_fw_name.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sms_get_fw_name.exit

cond.false.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i = getelementptr [5 x ptr], ptr @smsusb1_fw_lkup, i32 0, i32 %id.addr.0
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4.i, align 4
  br label %sms_get_fw_name.exit

sms_get_fw_name.exit:                             ; preds = %cond.false.i, %if.end5.sms_get_fw_name.exit_crit_edge
  %cond.i = phi ptr [ %8, %cond.false.i ], [ %6, %if.end5.sms_get_fw_name.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %call7 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %cond.i, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %sms_get_fw_name.exit.if.end8.i_crit_edge

sms_get_fw_name.exit.if.end8.i_crit_edge:         ; preds = %sms_get_fw_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end12:                                         ; preds = %sms_get_fw_name.exit
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, ptr noundef %cond.i, i32 noundef %id.addr.0) #13
  %arrayidx = getelementptr [5 x ptr], ptr @smsusb1_fw_lkup, i32 0, i32 %id.addr.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call16 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %10, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %do.end12.if.end8.i_crit_edge

do.end12.if.end8.i_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end21:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, ptr noundef %10, i32 noundef %id.addr.0) #13
  br label %cleanup

if.end8.i:                                        ; preds = %do.end12.if.end8.i_crit_edge, %sms_get_fw_name.exit.if.end8.i_crit_edge
  %fw_filename.0 = phi ptr [ %10, %do.end12.if.end8.i_crit_edge ], [ %cond.i, %sms_get_fw_name.exit.if.end8.i_crit_edge ]
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end45, label %if.then27

if.then27:                                        ; preds = %if.end8.i
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %21 = call ptr @memcpy(ptr %call9.i, ptr %18, i32 %20)
  %22 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %23, 8
  %or = or i32 %shl.i, -1073676288
  %24 = load i32, ptr %16, align 4
  %call31 = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or, ptr noundef nonnull %call9.i, i32 noundef %24, ptr noundef nonnull %dummy, i32 noundef 1000) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb1_load_firmware.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb1_load_firmware, %if.then38)) #10
          to label %do.end42 [label %if.then38], !srcloc !228

if.then38:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dummy, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb1_load_firmware.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, i32 noundef %28, i32 noundef %30, i32 noundef %call31) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %if.then27
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %do.body49

do.end45:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #13
  br label %do.body49

do.body49:                                        ; preds = %do.end45, %do.end42
  %rc.0 = phi i32 [ %call31, %do.end42 ], [ -12, %do.end45 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb1_load_firmware.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb1_load_firmware, %if.then61)) #10
          to label %do.end65 [label %if.then61], !srcloc !228

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb1_load_firmware.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, ptr noundef %fw_filename.0, i32 noundef %34) #10
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body49
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %36) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call16, %do.end21 ], [ %rc.0, %do.end65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_registry_getmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsusb_init_device(ptr nocapture noundef %intf, i32 noundef %board_id) unnamed_addr #2 align 64 {
entry:
  %params = alloca %struct.smsdevice_params_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1864) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %params, i32 0, i32 76)
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %state = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %7 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp201.not = icmp eq i8 %10, 0
  br i1 %cmp201.not, label %if.end.do.body_crit_edge, label %for.body.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %8, i32 0, i32 3
  %in_ep = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 5
  %out_ep = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.0203 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %align.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %align.1, %if.end12.for.body_crit_edge ]
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %12, i32 %i.0203
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool7.not = icmp sgt i8 %14, -1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %in_ep to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %in_ep, align 8
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wMaxPacketSize.i, align 1
  %18 = and i16 %17, -249
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #10
  %and.i = zext i16 %19 to i32
  %sub = add nsw i32 %and.i, -8
  br label %if.end12

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %out_ep to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %14, ptr %out_ep, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %align.1 = phi i32 [ %sub, %if.then8 ], [ %align.0202, %if.else ]
  %inc = add nuw nsw i32 %i.0203, 1
  %21 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.do.body_crit_edge

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %if.end.do.body_crit_edge
  %align.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %align.1, %if.end12.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_init_device.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_init_device, %if.then17)) #10
          to label %do.end [label %if.then17], !srcloc !228

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %in_ep18 = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %in_ep18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %in_ep18, align 8
  %conv19 = zext i8 %24 to i32
  %out_ep20 = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %out_ep20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %out_ep20, align 1
  %conv21 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_init_device.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, i32 noundef %conv19, i32 noundef %conv21) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %in_ep23 = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %in_ep23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %in_ep23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool24.not = icmp eq i8 %28, 0
  br i1 %tobool24.not, label %do.end.if.then30_crit_edge, label %lor.lhs.false

do.end.if.then30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lor.lhs.false:                                    ; preds = %do.end
  %out_ep25 = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %out_ep25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %out_ep25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align.0.lcssa)
  %cmp28 = icmp slt i32 %align.0.lcssa, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %cmp28
  br i1 %or.cond, label %lor.lhs.false.if.then30_crit_edge, label %if.end31

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %do.end.if.then30_crit_edge
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then30.smsusb_term_device.exit_crit_edge, label %if.then.i

if.then30.smsusb_term_device.exit_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %smsusb_term_device.exit

if.then.i:                                        ; preds = %if.then30
  %state.i = getelementptr inbounds %struct.smsusb_device_t, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state.i, align 4
  tail call fastcc void @smsusb_stop_streaming(ptr noundef nonnull %32) #10
  %coredev.i = getelementptr inbounds %struct.smsusb_device_t, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %coredev.i, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.then.i.do.body.i_crit_edge, label %if.then2.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @smscore_unregister_device(ptr noundef nonnull %35) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.then.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_term_device.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_init_device, %if.then8.i)) #10
          to label %do.end.i [label %if.then8.i], !srcloc !228

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_term_device.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65, ptr noundef nonnull %32) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i
  tail call void @kfree(ptr noundef nonnull %32) #10
  br label %smsusb_term_device.exit

smsusb_term_device.exit:                          ; preds = %do.end.i, %if.then30.smsusb_term_device.exit_crit_edge
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %call32 = tail call ptr @sms_get_board(i32 noundef %board_id) #10
  %37 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call32, align 4
  %device_type = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 12
  %39 = ptrtoint ptr %device_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %device_type, align 4
  %40 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.end31.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 -1, label %do.end37
  ]

if.end31.sw.default_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_size = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4096, ptr %buffer_size, align 4
  %setmode_handler = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 6
  %42 = ptrtoint ptr %setmode_handler to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @smsusb1_setmode, ptr %setmode_handler, align 4
  %detectmode_handler = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 7
  %43 = ptrtoint ptr %detectmode_handler to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @smsusb1_detectmode, ptr %detectmode_handler, align 4
  br label %sw.epilog

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #13
  br label %sw.default

sw.default:                                       ; preds = %do.end37, %if.end31.sw.default_crit_edge
  %buffer_size40 = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %buffer_size40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8192, ptr %buffer_size40, align 4
  %response_alignment = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %response_alignment to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %align.0.lcssa, ptr %response_alignment, align 8
  %flags = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 5
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %or = or i32 %47, 1
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  %dev42 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev42, ptr %params, align 4
  %usb_device = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 1
  %51 = ptrtoint ptr %usb_device to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %usb_device, align 4
  %buffer_size44 = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %buffer_size44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buffer_size44, align 4
  %buffer_size45 = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 2
  %54 = ptrtoint ptr %buffer_size45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %buffer_size45, align 4
  %num_buffers = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 3
  %55 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 50, ptr %num_buffers, align 4
  %sendrequest_handler = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 8
  %56 = ptrtoint ptr %sendrequest_handler to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @smsusb_sendrequest, ptr %sendrequest_handler, align 4
  %context = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 11
  %57 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %context, align 4
  %devpath = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 12
  %58 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devpath, i32 noundef 32, ptr noundef nonnull @.str.82, ptr noundef %61, ptr noundef %devpath.i) #10
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %call.i193 = tail call ptr @sms_get_board(i32 noundef %board_id) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 608) #15
  %tobool.not.i194 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i194, label %sw.epilog.siano_media_device_register.exit_crit_edge, label %if.end.i

sw.epilog.siano_media_device_register.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %siano_media_device_register.exit

if.end.i:                                         ; preds = %sw.epilog
  %name.i = getelementptr inbounds %struct.sms_board, ptr %call.i193, i32 0, i32 1
  %65 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name.i, align 4
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %63, ptr noundef %66, ptr noundef nonnull @.str) #10
  %call3.i = tail call i32 @__media_device_register(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.end.i195, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @media_device_cleanup(ptr noundef nonnull %call7.i.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %siano_media_device_register.exit

do.end.i195:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84) #13
  br label %siano_media_device_register.exit

siano_media_device_register.exit:                 ; preds = %do.end.i195, %if.then5.i, %sw.epilog.siano_media_device_register.exit_crit_edge
  %retval.0.i196 = phi ptr [ null, %if.then5.i ], [ %call7.i.i.i, %do.end.i195 ], [ null, %sw.epilog.siano_media_device_register.exit_crit_edge ]
  %coredev = getelementptr inbounds %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 1
  %call49 = call i32 @smscore_register_device(ptr noundef nonnull %params, ptr noundef %coredev, i32 noundef 0, ptr noundef %retval.0.i196) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end58

do.end55:                                         ; preds = %siano_media_device_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, i32 noundef %call49) #13
  call fastcc void @smsusb_term_device(ptr noundef %intf)
  call void @media_device_unregister(ptr noundef %retval.0.i196) #10
  call void @kfree(ptr noundef %retval.0.i196) #10
  br label %cleanup

if.end58:                                         ; preds = %siano_media_device_register.exit
  %67 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %coredev, align 4
  call void @smscore_set_board_id(ptr noundef %68, i32 noundef %board_id) #10
  %69 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %coredev, align 4
  %is_usb_device = getelementptr inbounds %struct.smscore_device_t, ptr %70, i32 0, i32 42
  %71 = ptrtoint ptr %is_usb_device to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %is_usb_device, align 4
  %dev66 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %72 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %dev66, align 4
  %urb = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  call void @usb_init_urb(ptr noundef %urb) #10
  %dev66.1 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 2
  %73 = ptrtoint ptr %dev66.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %dev66.1, align 4
  %urb.1 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 3
  call void @usb_init_urb(ptr noundef %urb.1) #10
  %dev66.2 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 2
  %74 = ptrtoint ptr %dev66.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %dev66.2, align 4
  %urb.2 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 3
  call void @usb_init_urb(ptr noundef %urb.2) #10
  %dev66.3 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 2
  %75 = ptrtoint ptr %dev66.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %dev66.3, align 4
  %urb.3 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 3
  call void @usb_init_urb(ptr noundef %urb.3) #10
  %dev66.4 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 2
  %76 = ptrtoint ptr %dev66.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %dev66.4, align 4
  %urb.4 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 3
  call void @usb_init_urb(ptr noundef %urb.4) #10
  %dev66.5 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 2
  %77 = ptrtoint ptr %dev66.5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i, ptr %dev66.5, align 4
  %urb.5 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 3
  call void @usb_init_urb(ptr noundef %urb.5) #10
  %dev66.6 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 2
  %78 = ptrtoint ptr %dev66.6 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %dev66.6, align 4
  %urb.6 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 3
  call void @usb_init_urb(ptr noundef %urb.6) #10
  %dev66.7 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 7, i32 2
  %79 = ptrtoint ptr %dev66.7 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %dev66.7, align 4
  %urb.7 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 7, i32 3
  call void @usb_init_urb(ptr noundef %urb.7) #10
  %dev66.8 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 2
  %80 = ptrtoint ptr %dev66.8 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i, ptr %dev66.8, align 4
  %urb.8 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 3
  call void @usb_init_urb(ptr noundef %urb.8) #10
  %dev66.9 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 2
  %81 = ptrtoint ptr %dev66.9 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %dev66.9, align 4
  %urb.9 = getelementptr %struct.smsusb_device_t, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 3
  call void @usb_init_urb(ptr noundef %urb.9) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_init_device.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_init_device, %if.then84)) #10
          to label %do.end87 [label %if.then84], !srcloc !228

if.then84:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_init_device.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %if.end58
  %call88 = call fastcc i32 @smsusb_start_streaming(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end94, label %if.end97

do.end94:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #13
  call fastcc void @smsusb_term_device(ptr noundef %intf)
  br label %cleanup

if.end97:                                         ; preds = %do.end87
  %82 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %state, align 4
  %83 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %coredev, align 4
  %call100 = call i32 @smscore_start_device(ptr noundef %84) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end106, label %do.body110

do.end106:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #13
  call fastcc void @smsusb_term_device(ptr noundef %intf)
  br label %cleanup

do.body110:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_init_device.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_init_device, %if.then122)) #10
          to label %cleanup [label %if.then122], !srcloc !228

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_init_device.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %do.body110, %do.end106, %do.end94, %do.end55, %smsusb_term_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %smsusb_term_device.exit ], [ %call49, %do.end55 ], [ %call88, %do.end94 ], [ %call100, %do.end106 ], [ -12, %entry.cleanup_crit_edge ], [ %call100, %if.then122 ], [ %call100, %do.body110 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sms_board_load_modules(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsusb_term_device(ptr nocapture noundef %intf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @smsusb_stop_streaming(ptr noundef nonnull %1)
  %coredev = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %coredev, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.do.body_crit_edge, label %if.then2

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @smscore_unregister_device(ptr noundef nonnull %4) #10
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_term_device.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_term_device, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !228

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_term_device.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65, ptr noundef nonnull %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsusb1_setmode(ptr nocapture noundef readonly %context, i32 noundef %mode) #2 align 64 {
entry:
  %msg = alloca %struct.sms_msg_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #10
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 196188106012491776, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %1 = icmp ugt i32 %mode, 4
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.68, i32 noundef %mode) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 @smsusb_sendrequest(ptr noundef %context, ptr noundef nonnull %msg, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsusb1_detectmode(ptr nocapture noundef readonly %context, ptr nocapture noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %product = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %product, align 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mode, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str, ptr noundef nonnull @.str.70) #13
  br label %do.body20

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @strstr(ptr noundef nonnull %3, ptr noundef nonnull @.str.71)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %mode, align 4
  br label %do.body20

if.else4:                                         ; preds = %if.else
  %call5 = tail call ptr @strstr(ptr noundef nonnull %3, ptr noundef nonnull @.str.72)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %mode, align 4
  br label %do.body20

if.else8:                                         ; preds = %if.else4
  %call9 = tail call ptr @strstr(ptr noundef nonnull %3, ptr noundef nonnull @.str.73)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode, align 4
  br label %do.body20

if.else12:                                        ; preds = %if.else8
  %call13 = tail call ptr @strstr(ptr noundef nonnull %3, ptr noundef nonnull @.str.74)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else12.do.body20_crit_edge, label %if.then15

if.else12.do.body20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %mode, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.then15, %if.else12.do.body20_crit_edge, %if.then11, %if.then7, %if.then3, %if.then
  %product_string.0 = phi ptr [ %3, %if.then3 ], [ %3, %if.then7 ], [ %3, %if.then11 ], [ %3, %if.then15 ], [ %3, %if.else12.do.body20_crit_edge ], [ @.str.46, %if.then ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb1_detectmode.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb1_detectmode, %if.then26)) #10
          to label %do.end29 [label %if.then26], !srcloc !228

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb1_detectmode.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str, ptr noundef nonnull @.str.70, i32 noundef %10, ptr noundef nonnull %product_string.0) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsusb_sendrequest(ptr nocapture noundef readonly %context, ptr noundef %buffer, i32 noundef %size) #2 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #10
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dummy, align 4, !annotation !229
  %state = getelementptr inbounds %struct.smsusb_device_t, ptr %context, i32 0, i32 7
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_sendrequest.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_sendrequest, %if.then3)) #10
          to label %cleanup [label %if.then3], !srcloc !228

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_sendrequest.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77) #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = tail call ptr @kmemdup(ptr noundef %buffer, i32 noundef %size, i32 noundef 3264) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.body9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body9:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_sendrequest.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_sendrequest, %if.then21)) #10
          to label %do.end28 [label %if.then21], !srcloc !228

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call5 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call5, align 2
  %conv = zext i16 %4 to i32
  %call22 = tail call ptr @smscore_translate_msg(i32 noundef %conv) #10
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call5, align 2
  %conv24 = zext i16 %6 to i32
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, ptr %call5, i32 0, i32 3
  %7 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %msg_length, align 2
  %conv25 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_sendrequest.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77, ptr noundef %call22, i32 noundef %conv24, i32 noundef %conv25) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %do.body9
  tail call void @smsendian_handle_tx_message(ptr noundef nonnull %call5) #10
  tail call void @smsendian_handle_message_header(ptr noundef nonnull %call5) #10
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or = or i32 %shl.i, -1073676288
  %call31 = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %or, ptr noundef nonnull %call5, i32 noundef %size, ptr noundef nonnull %dummy, i32 noundef 1000) #10
  call void @kfree(ptr noundef nonnull %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end4.cleanup_crit_edge, %if.then3, %do.body
  %retval.0 = phi i32 [ %call31, %do.end28 ], [ -2, %if.then3 ], [ -12, %if.end4.cleanup_crit_edge ], [ -2, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_set_board_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsusb_start_streaming(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev.i = getelementptr inbounds %struct.smsusb_device_t, ptr %dev, i32 0, i32 1
  %in_ep.i = getelementptr inbounds %struct.smsusb_device_t, ptr %dev, i32 0, i32 5
  %buffer_size.i = getelementptr inbounds %struct.smsusb_device_t, ptr %dev, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %smsusb_submit_urb.exit
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013
  %cb.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 1
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.smsusb_submit_urb.exit_crit_edge

for.body.smsusb_submit_urb.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %smsusb_submit_urb.exit

if.then.i:                                        ; preds = %for.body
  %2 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coredev.i, align 4
  %call.i = tail call ptr @smscore_getbuffer(ptr noundef %3) #10
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %cb.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %smsusb_submit_urb.exit.thread, label %if.then.i.smsusb_submit_urb.exit_crit_edge

if.then.i.smsusb_submit_urb.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smsusb_submit_urb.exit

smsusb_submit_urb.exit.thread:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.88) #13
  br label %do.end

smsusb_submit_urb.exit:                           ; preds = %if.then.i.smsusb_submit_urb.exit_crit_edge, %for.body.smsusb_submit_urb.exit_crit_edge
  %urb.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_ep.i, align 4
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %10, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or9.i = or i32 %or.i.i, -1073741696
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb.i, align 4
  %p.i = getelementptr inbounds %struct.smscore_buffer_t, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.i, align 4
  %15 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_size.i, align 4
  %dev1.i.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 8
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %6, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 10
  %18 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 28
  %21 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @smsusb_onresponse, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 27
  %22 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 %i.013, i32 3, i32 13
  %23 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_flags.i, align 4
  %or12.i = or i32 %24, 256
  store i32 %or12.i, ptr %transfer_flags.i, align 4
  %call14.i = tail call i32 @usb_submit_urb(ptr noundef %urb.i, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp1 = icmp slt i32 %call14.i, 0
  br i1 %cmp1, label %smsusb_submit_urb.exit.do.end_crit_edge, label %for.cond

smsusb_submit_urb.exit.do.end_crit_edge:          ; preds = %smsusb_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %smsusb_submit_urb.exit.do.end_crit_edge, %smsusb_submit_urb.exit.thread
  %retval.0.i10 = phi i32 [ -12, %smsusb_submit_urb.exit.thread ], [ %call14.i, %smsusb_submit_urb.exit.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86) #13
  tail call fastcc void @smsusb_stop_streaming(ptr noundef %dev)
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge
  %rc.1 = phi i32 [ %retval.0.i10, %do.end ], [ %call14.i, %for.cond.for.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_start_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsusb_stop_streaming(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev = getelementptr inbounds %struct.smsusb_device_t, ptr %dev, i32 0, i32 1
  %urb = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 0, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb) #10
  %cb = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %3, ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cb, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %urb.1 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 1, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.1) #10
  %cb.1 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 1, i32 1
  %5 = ptrtoint ptr %cb.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %8, ptr noundef nonnull %6) #10
  %9 = ptrtoint ptr %cb.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cb.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %urb.2 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 2, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.2) #10
  %cb.2 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %cb.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %13, ptr noundef nonnull %11) #10
  %14 = ptrtoint ptr %cb.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cb.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %urb.3 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 3, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.3) #10
  %cb.3 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %cb.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cb.3, align 4
  %tobool.not.3 = icmp eq ptr %16, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %18, ptr noundef nonnull %16) #10
  %19 = ptrtoint ptr %cb.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cb.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %urb.4 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 4, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.4) #10
  %cb.4 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 4, i32 1
  %20 = ptrtoint ptr %cb.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb.4, align 4
  %tobool.not.4 = icmp eq ptr %21, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %23, ptr noundef nonnull %21) #10
  %24 = ptrtoint ptr %cb.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cb.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %urb.5 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 5, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.5) #10
  %cb.5 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 5, i32 1
  %25 = ptrtoint ptr %cb.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cb.5, align 4
  %tobool.not.5 = icmp eq ptr %26, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %28, ptr noundef nonnull %26) #10
  %29 = ptrtoint ptr %cb.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cb.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %urb.6 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 6, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.6) #10
  %cb.6 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 6, i32 1
  %30 = ptrtoint ptr %cb.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb.6, align 4
  %tobool.not.6 = icmp eq ptr %31, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %33, ptr noundef nonnull %31) #10
  %34 = ptrtoint ptr %cb.6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cb.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %urb.7 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 7, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.7) #10
  %cb.7 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 7, i32 1
  %35 = ptrtoint ptr %cb.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb.7, align 4
  %tobool.not.7 = icmp eq ptr %36, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %38, ptr noundef nonnull %36) #10
  %39 = ptrtoint ptr %cb.7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %cb.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %urb.8 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 8, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.8) #10
  %cb.8 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 8, i32 1
  %40 = ptrtoint ptr %cb.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cb.8, align 4
  %tobool.not.8 = icmp eq ptr %41, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %43, ptr noundef nonnull %41) #10
  %44 = ptrtoint ptr %cb.8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %cb.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %urb.9 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 9, i32 3
  tail call void @usb_kill_urb(ptr noundef %urb.9) #10
  %cb.9 = getelementptr %struct.smsusb_device_t, ptr %dev, i32 0, i32 2, i32 9, i32 1
  %45 = ptrtoint ptr %cb.9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cb.9, align 4
  %tobool.not.9 = icmp eq ptr %46, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %48, ptr noundef nonnull %46) #10
  %49 = ptrtoint ptr %cb.9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %cb.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_putbuffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smscore_translate_msg(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsendian_handle_tx_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsendian_handle_message_header(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_device_usb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smscore_getbuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsusb_onresponse(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %5)
  %cmp = icmp eq i32 %5, -108
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef -108, i32 noundef %7) #13
  br label %cleanup96

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp4.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then7, label %do.end80

if.then7:                                         ; preds = %if.end
  %cb = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %p = getelementptr inbounds %struct.smscore_buffer_t, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  tail call void @smsendian_handle_message_header(ptr noundef %11) #10
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msg_length, align 2
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp9.not = icmp ult i32 %13, %conv
  br i1 %cmp9.not, label %do.end70, label %if.then11

if.then11:                                        ; preds = %if.then7
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb, align 4
  %size = getelementptr inbounds %struct.smscore_buffer_t, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %size, align 4
  %response_alignment = getelementptr inbounds %struct.smsusb_device_t, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %response_alignment to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %response_alignment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.then11.if.else_crit_edge, label %land.lhs.true15

if.then11.if.else_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true15:                                  ; preds = %if.then11
  %msg_flags = getelementptr inbounds %struct.sms_msg_hdr, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg_flags, align 2
  %conv16 = zext i16 %22 to i32
  %and = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %land.lhs.true15.if.else_crit_edge, label %if.then18

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true15
  %23 = lshr i32 %conv16, 8
  %and22 = and i32 %23, 3
  %add = add i32 %and22, %20
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb, align 4
  %offset = getelementptr inbounds %struct.smscore_buffer_t, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %offset, align 4
  %27 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %msg_length, align 2
  %conv25 = zext i16 %28 to i32
  %29 = load ptr, ptr %cb, align 4
  %offset27 = getelementptr inbounds %struct.smscore_buffer_t, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset27, align 4
  %add28 = add i32 %31, %conv25
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %33)
  %cmp30 = icmp ugt i32 %add28, %33
  br i1 %cmp30, label %do.end35, label %if.end43

do.end35:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %conv25, i32 noundef %31, i32 noundef %33) #13
  br label %do.body86

if.end43:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %11, i32 %31
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %11, align 2
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %add.ptr, align 1
  br label %do.body49

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %if.then11.if.else_crit_edge
  %37 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cb, align 4
  %offset47 = getelementptr inbounds %struct.smscore_buffer_t, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %offset47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %offset47, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.else, %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsusb_onresponse.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsusb_onresponse, %if.then55)) #10
          to label %do.end64 [label %if.then55], !srcloc !228

if.then55:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %11, align 2
  %conv56 = zext i16 %41 to i32
  %call57 = tail call ptr @smscore_translate_msg(i32 noundef %conv56) #10
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %11, align 2
  %conv59 = zext i16 %43 to i32
  %44 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %msg_length, align 2
  %conv61 = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsusb_onresponse.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, ptr noundef %call57, i32 noundef %conv59, i32 noundef %conv61) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then55, %do.body49
  tail call void @smsendian_handle_rx_message(ptr noundef %11) #10
  %coredev = getelementptr inbounds %struct.smsusb_device_t, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %coredev, align 4
  %48 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cb, align 4
  tail call void @smscore_onresponse(ptr noundef %47, ptr noundef %49) #10
  %50 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %cb, align 4
  br label %do.body86

do.end70:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %conv, i32 noundef %13) #13
  br label %do.body86

do.end80:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %5, i32 noundef %7) #13
  br label %do.body86

do.body86:                                        ; preds = %do.end80, %do.end70, %do.end64, %do.end35
  %wq = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 4
  tail call void @__init_work(ptr noundef %wq, i32 noundef 0) #10
  %51 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %wq, align 4
  %lockdep_map = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.102, ptr noundef nonnull @smsusb_onresponse.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry90 = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry90, ptr %entry90, align 4
  %prev.i = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 4, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry90, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smsusb_urb_t, ptr %1, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @do_submit_urb, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %55 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %wq) #10
  br label %cleanup96

cleanup96:                                        ; preds = %do.body86, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsendian_handle_rx_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_onresponse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_submit_urb(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -140
  %dev1 = getelementptr i8, ptr %work, i32 -128
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %cb.i = getelementptr i8, ptr %work, i32 -132
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %coredev.i = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coredev.i, align 4
  %call.i = tail call ptr @smscore_getbuffer(ptr noundef %5) #10
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %cb.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.88) #13
  br label %smsusb_submit_urb.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %urb.i = getelementptr i8, ptr %work, i32 -124
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %in_ep.i = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_ep.i, align 4
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %12, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or9.i = or i32 %or.i.i, -1073741696
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb.i, align 4
  %p.i = getelementptr inbounds %struct.smscore_buffer_t, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.smsusb_device_t, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size.i, align 4
  %dev1.i.i = getelementptr i8, ptr %work, i32 -84
  %19 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %8, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr i8, ptr %work, i32 -76
  %20 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr i8, ptr %work, i32 -60
  %21 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr i8, ptr %work, i32 -40
  %22 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr i8, ptr %work, i32 -4
  %23 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @smsusb_onresponse, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr i8, ptr %work, i32 -8
  %24 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr i8, ptr %work, i32 -64
  %25 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags.i, align 4
  %or12.i = or i32 %26, 256
  store i32 %or12.i, ptr %transfer_flags.i, align 4
  %call14.i = tail call i32 @usb_submit_urb(ptr noundef %urb.i, i32 noundef 2592) #10
  br label %smsusb_submit_urb.exit

smsusb_submit_urb.exit:                           ; preds = %if.end6.i, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !141, !143, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__initcall__kmod_smsusb__253_723_smsusb_driver_init6, !1, !"__initcall__kmod_smsusb__253_723_smsusb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/siano/smsusb.c", i32 723, i32 1}
!2 = !{ptr @__exitcall_smsusb_driver_exit, !1, !"__exitcall_smsusb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description254, !4, !"__UNIQUE_ID_description254", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/siano/smsusb.c", i32 725, i32 1}
!5 = !{ptr @__UNIQUE_ID_author255, !6, !"__UNIQUE_ID_author255", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/siano/smsusb.c", i32 726, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/siano/smsusb.c", i32 727, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @smsusb_driver, !12, !"smsusb_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/siano/smsusb.c", i32 713, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/siano/smsusb.c", i32 503, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @smsusb_probe._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @smsusb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/siano/smsusb.c", i32 509, i32 3}
!21 = !{ptr @smsusb_probe.__UNIQUE_ID_ddebug249, !20, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/siano/smsusb.c", i32 520, i32 4}
!25 = !{ptr @smsusb_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @smsusb_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/siano/smsusb.c", i32 525, i32 2}
!29 = !{ptr @smsusb_probe.__UNIQUE_ID_ddebug250, !28, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/siano/smsusb.c", i32 528, i32 3}
!33 = !{ptr @smsusb_probe.__UNIQUE_ID_ddebug251, !32, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/siano/smsusb.c", i32 542, i32 3}
!37 = !{ptr @smsusb_probe.__UNIQUE_ID_ddebug252, !36, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/siano/smsusb.c", i32 549, i32 38}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/siano/smsusb.c", i32 551, i32 3}
!43 = !{ptr @smsusb_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @smsusb_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/siano/smsusb.c", i32 559, i32 4}
!47 = !{ptr @smsusb_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @smsusb_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/siano/smsusb.c", i32 561, i32 4}
!51 = !{ptr @smsusb_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @smsusb_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/siano/smsusb.c", i32 569, i32 2}
!55 = !{ptr @smsusb_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @smsusb_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/siano/smsusb.c", i32 259, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @smsusb1_load_firmware._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @smsusb1_load_firmware._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/siano/smsusb.c", i32 267, i32 3}
!64 = !{ptr @smsusb1_load_firmware._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @smsusb1_load_firmware._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/siano/smsusb.c", i32 273, i32 4}
!68 = !{ptr @smsusb1_load_firmware._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @smsusb1_load_firmware._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/siano/smsusb.c", i32 287, i32 3}
!72 = !{ptr @smsusb1_load_firmware.__UNIQUE_ID_ddebug242, !71, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!73 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/siano/smsusb.c", i32 291, i32 3}
!76 = !{ptr @smsusb1_load_firmware._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @smsusb1_load_firmware._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/siano/smsusb.c", i32 294, i32 2}
!80 = !{ptr @smsusb1_load_firmware.__UNIQUE_ID_ddebug243, !79, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!81 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/siano/smsusb.c", i32 235, i32 2}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/siano/smsusb.c", i32 236, i32 2}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/siano/smsusb.c", i32 237, i32 2}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/siano/smsusb.c", i32 238, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/siano/smsusb.c", i32 239, i32 2}
!92 = !{ptr @smsusb1_fw_lkup, !93, !"smsusb1_fw_lkup", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/siano/smsusb.c", i32 234, i32 14}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/siano/smsusb.c", i32 416, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @smsusb_init_device.__UNIQUE_ID_ddebug246, !95, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!98 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/siano/smsusb.c", i32 432, i32 3}
!101 = !{ptr @smsusb_init_device._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @smsusb_init_device._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/siano/smsusb.c", i32 455, i32 3}
!105 = !{ptr @smsusb_init_device._entry.52, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @smsusb_init_device._entry_ptr.54, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/siano/smsusb.c", i32 474, i32 2}
!109 = !{ptr @smsusb_init_device.__UNIQUE_ID_ddebug247, !108, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!110 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/siano/smsusb.c", i32 477, i32 3}
!113 = !{ptr @smsusb_init_device._entry.57, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @smsusb_init_device._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/siano/smsusb.c", i32 486, i32 3}
!117 = !{ptr @smsusb_init_device._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @smsusb_init_device._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/siano/smsusb.c", i32 491, i32 2}
!121 = !{ptr @smsusb_init_device.__UNIQUE_ID_ddebug248, !120, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!122 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/siano/smsusb.c", i32 349, i32 3}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @smsusb_term_device.__UNIQUE_ID_ddebug245, !124, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!127 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/siano/smsusb.c", i32 329, i32 3}
!130 = !{ptr @smsusb1_setmode._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @smsusb1_setmode._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/siano/smsusb.c", i32 310, i32 3}
!134 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @smsusb1_detectmode._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @smsusb1_detectmode._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/siano/smsusb.c", i32 311, i32 36}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/siano/smsusb.c", i32 313, i32 34}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/siano/smsusb.c", i32 315, i32 34}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/siano/smsusb.c", i32 317, i32 34}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/siano/smsusb.c", i32 320, i32 2}
!147 = !{ptr @smsusb1_detectmode.__UNIQUE_ID_ddebug244, !146, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!148 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/siano/smsusb.c", i32 213, i32 3}
!151 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @smsusb_sendrequest.__UNIQUE_ID_ddebug240, !150, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!153 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/siano/smsusb.c", i32 221, i32 2}
!156 = !{ptr @smsusb_sendrequest.__UNIQUE_ID_ddebug241, !155, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!157 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../include/linux/usb.h", i32 912, i32 31}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/siano/smsusb.c", i32 378, i32 2}
!162 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @siano_media_device_register._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @siano_media_device_register._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/siano/smsusb.c", i32 197, i32 4}
!167 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @smsusb_start_streaming._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @smsusb_start_streaming._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/siano/smsusb.c", i32 157, i32 4}
!172 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @smsusb_submit_urb._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @smsusb_submit_urb._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.89, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/siano/smsusb.c", i32 92, i32 3}
!177 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @smsusb_onresponse._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @smsusb_onresponse._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/siano/smsusb.c", i32 114, i32 6}
!182 = !{ptr @smsusb_onresponse._entry.91, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @smsusb_onresponse._entry_ptr.93, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/siano/smsusb.c", i32 128, i32 4}
!186 = !{ptr @smsusb_onresponse.__UNIQUE_ID_ddebug239, !185, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!187 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/siano/smsusb.c", i32 137, i32 4}
!190 = !{ptr @smsusb_onresponse._entry.96, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @smsusb_onresponse._entry_ptr.98, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/siano/smsusb.c", i32 141, i32 3}
!194 = !{ptr @smsusb_onresponse._entry.99, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @smsusb_onresponse._entry_ptr.101, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @smsusb_onresponse.__key, !197, !"__key", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/siano/smsusb.c", i32 146, i32 2}
!198 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/siano/smsusb.c", i32 582, i32 2}
!201 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @smsusb_suspend._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @smsusb_suspend._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/siano/smsusb.c", i32 595, i32 2}
!206 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @smsusb_resume._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @smsusb_resume._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/siano/smsusb.c", i32 600, i32 3}
!211 = !{ptr @smsusb_resume._entry.107, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @smsusb_resume._entry_ptr.109, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/siano/smsusb.c", i32 610, i32 4}
!215 = !{ptr @smsusb_resume._entry.110, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @smsusb_resume._entry_ptr.112, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @smsusb_id_table, !218, !"smsusb_id_table", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/siano/smsusb.c", i32 620, i32 35}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{i64 2148332246, i64 2148332251, i64 2148332264, i64 2148332308, i64 2148332342, i64 2148332363}
!229 = !{!"auto-init"}
