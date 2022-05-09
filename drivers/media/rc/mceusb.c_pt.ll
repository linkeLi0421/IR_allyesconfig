; ModuleID = '/llk/IR_all_yes/drivers/media/rc/mceusb.c_pt.bc'
source_filename = "../drivers/media/rc/mceusb.c"
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
%struct.atomic_t = type { i32 }
%struct.mceusb_model = type { i8, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mceusb_dev = type { ptr, i8, i8, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, i8, i8, %struct.anon.72, i32, i8, [128 x i8], [64 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.work_struct, i32 }
%struct.anon.72 = type { i8, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.ir_raw_event = type { %union.anon.74, i8, i8 }
%union.anon.74 = type { i32 }

@__initcall__kmod_mceusb__296_1899_mceusb_dev_driver_init6 = internal global ptr @mceusb_dev_driver_init, section ".initcall6.init", align 4
@mceusb_dev_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @mceusb_dev_probe, ptr @mceusb_dev_disconnect, ptr null, ptr @mceusb_dev_suspend, ptr @mceusb_dev_resume, ptr @mceusb_dev_resume, ptr null, ptr null, ptr @mceusb_dev_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mceusb_dev_driver_exit = internal global ptr @mceusb_dev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [85 x i8] c"mceusb.description=Windows Media Center Ed. eHome Infrared Transceiver device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [46 x i8] c"mceusb.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [36 x i8] c"mceusb.file=drivers/media/rc/mceusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [19 x i8] c"mceusb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mceusb\00", [25 x i8] zeroinitializer }, align 32
@mceusb_dev_table = internal constant { [69 x %struct.usb_device_id], [392 x i8] } { [69 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1118, i16 109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1137, i16 1544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 1548, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1137, i16 1549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 1551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 1555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 2069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 3034, i16 353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1545, i16 797, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 1545, i16 802, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1545, i16 820, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1545, i16 824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1545, i16 851, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 1545, i16 855, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 5216, i16 -28336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4872, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1308, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4219, i16 12297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1006, i16 9473, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6020, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 6020, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 6020, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 6020, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 6020, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 6020, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 6045, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6493, i16 28674, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5385, i16 -28094, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 -26621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8171, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8170, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8169, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5242, i16 -8126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6452, i16 20840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 6452, i16 1538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6452, i16 1794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4121, i16 3896, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4024, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6235, i16 12320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6235, i16 12418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1259, i16 -8188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4186, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 1394, i16 22689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 1394, i16 22693, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 9622, i16 -32760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9622, i16 -32746, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9622, i16 -32702, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20175, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20167, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8211, i16 601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 8211, i16 606, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 1011, i16 148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7040, i16 -11342, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 5620, i16 309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id zeroinitializer], [392 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mceusb_dev_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/rc/mceusb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s called\00", [22 x i8] zeroinitializer }, align 32
@mceusb_model = internal constant { [14 x %struct.mceusb_model], [72 x i8] } { [14 x %struct.mceusb_model] [%struct.mceusb_model { i8 64, i32 2, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 -112, i32 2, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 48, i32 2, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 52, i32 2, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 80, i32 1, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 80, i32 2, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 0, i32 2, i32 0, ptr null, ptr @.str.25 }, %struct.mceusb_model { i8 8, i32 0, i32 0, ptr null, ptr @.str.25 }, %struct.mceusb_model { i8 64, i32 2, i32 2, ptr null, ptr null }, %struct.mceusb_model { i8 64, i32 2, i32 0, ptr @.str.26, ptr null }, %struct.mceusb_model { i8 72, i32 0, i32 0, ptr null, ptr null }, %struct.mceusb_model { i8 8, i32 0, i32 0, ptr null, ptr @.str.27 }, %struct.mceusb_model { i8 8, i32 0, i32 0, ptr @.str.28, ptr @.str.29 }, %struct.mceusb_model { i8 8, i32 0, i32 0, ptr @.str.30, ptr @.str.31 }], [72 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"acceptable bulk inbound endpoint found\0A\00", [56 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"acceptable interrupt inbound endpoint found\0A\00", [51 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"acceptable bulk outbound endpoint found\0A\00", [55 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"acceptable interrupt outbound endpoint found\0A\00", [50 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"required endpoints not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&ir->kevent)\00", [33 x i8] zeroinitializer }, align 32
@mceusb_dev_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Flushing receive buffers\00", [39 x i8] zeroinitializer }, align 32
@mceusb_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1800, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to flush buffers: %d\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mceusb_dev_probe._entry_ptr = internal global ptr @mceusb_dev_probe._entry, section ".printk_index", align 4
@mceusb_dev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1825, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Registered %s with mce emulator interface version %x\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mceusb_dev_probe._entry_ptr.18 = internal global ptr @mceusb_dev_probe._entry.15, section ".printk_index", align 4
@mceusb_dev_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1828, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%x tx ports (0x%x cabled) and %x rx sensors (0x%x active)\00", [38 x i8] zeroinitializer }, align 32
@mceusb_dev_probe._entry_ptr.21 = internal global ptr @mceusb_dev_probe._entry.19, section ".printk_index", align 4
@mceusb_dev_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 1843, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: device setup failed!\00", [39 x i8] zeroinitializer }, align 32
@mceusb_dev_probe._entry_ptr.24 = internal global ptr @mceusb_dev_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Conexant Hybrid TV (cx231xx) MCE IR\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rc-tivo\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Conexant Hybrid TV (cx231xx) MCE IR no TX\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-msi-digivox-iii\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Evromedia USB Full Hybrid Full HD\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-astrometa-t2hybrid\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Astrometa T2Hybrid\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mceusb_deferred_kevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1532, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kevent handler called (flags 0x%lx)\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mceusb_deferred_kevent\00", [41 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr = internal global ptr @mceusb_deferred_kevent._entry, section ".printk_index", align 4
@mceusb_deferred_kevent._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1535, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"kevent handler canceled pending USB Reset Device\00", [47 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr.37 = internal global ptr @mceusb_deferred_kevent._entry.35, section ".printk_index", align 4
@mceusb_deferred_kevent._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 1542, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx clear halt status = %d\00", [38 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr.40 = internal global ptr @mceusb_deferred_kevent._entry.38, section ".printk_index", align 4
@mceusb_deferred_kevent._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 1549, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"stuck RX HALT state requires USB Reset Device to clear\00", [41 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr.43 = internal global ptr @mceusb_deferred_kevent._entry.41, section ".printk_index", align 4
@mceusb_deferred_kevent._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 1562, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx unhalt submit urb error = %d\00", [32 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr.46 = internal global ptr @mceusb_deferred_kevent._entry.44, section ".printk_index", align 4
@mceusb_deferred_kevent._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 1568, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx clear halt status = %d\00", [38 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr.49 = internal global ptr @mceusb_deferred_kevent._entry.47, section ".printk_index", align 4
@mceusb_deferred_kevent._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.2, i32 1575, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"stuck TX HALT state requires USB Reset Device to clear\00", [41 x i8] zeroinitializer }, align 32
@mceusb_deferred_kevent._entry_ptr.52 = internal global ptr @mceusb_deferred_kevent._entry.50, section ".printk_index", align 4
@mceusb_init_rc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1597, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"remote dev allocation failed\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mceusb_init_rc_dev\00", [45 x i8] zeroinitializer }, align 32
@mceusb_init_rc_dev._entry_ptr = internal global ptr @mceusb_init_rc_dev._entry, section ".printk_index", align 4
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s (%04x:%04x)\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Media Center Ed. eHome Infrared Remote Transceiver\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-pinnacle-pctv-hd\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-rc6-mce\00", [21 x i8] zeroinitializer }, align 32
@mceusb_init_rc_dev._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.2, i32 1655, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"remote dev registration failed\00", [33 x i8] zeroinitializer }, align 32
@mceusb_init_rc_dev._entry_ptr.62 = internal global ptr @mceusb_init_rc_dev._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@GET_RX_TIMEOUT = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\9F\0D", [30 x i8] zeroinitializer }, align 32
@DEVICE_RESUME = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\FF\AA", [29 x i8] zeroinitializer }, align 32
@mce_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 825, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: mce write couldn't allocate urb\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mce_write\00", [22 x i8] zeroinitializer }, align 32
@mce_write._entry_ptr = internal global ptr @mce_write._entry, section ".printk_index", align 4
@mce_write._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 849, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: mce write submit urb error = %d\00", [57 x i8] zeroinitializer }, align 32
@mce_write._entry_ptr.68 = internal global ptr @mce_write._entry.66, section ".printk_index", align 4
@mce_write._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 859, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error: mce write timed out (expire = %lu (%dms))\00", [47 x i8] zeroinitializer }, align 32
@mce_write._entry_ptr.71 = internal global ptr @mce_write._entry.69, section ".printk_index", align 4
@mce_write._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.2, i32 881, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: mce write urb status = %d (TX HALT)\00", [53 x i8] zeroinitializer }, align 32
@mce_write._entry_ptr.74 = internal global ptr @mce_write._entry.72, section ".printk_index", align 4
@mce_write._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.2, i32 887, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: mce write urb status = %d\00", [63 x i8] zeroinitializer }, align 32
@mce_write._entry_ptr.77 = internal global ptr @mce_write._entry.75, section ".printk_index", align 4
@mce_write.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.78, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"tx done status = %d (wait = %lu, expire = %lu (%dms), urb->actual_length = %d, urb->status = %d)\00", [63 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mceusb_dev_printdata\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%cx data[%d]: %*ph (len=%d sz=%d)\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Request\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Got\00", [28 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.83, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MCE gen 1 header\00", [47 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.84, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"End of raw IR data\00", [45 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.85, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Raw IR data, %d pulse/space samples\00", [60 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.86, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device resume requested\00", [40 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.87, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown command 0x%02x 0x%02x\00", [34 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.88, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Emulator interface version %x\00", [34 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.89, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Get hw/sw rev?\00", [17 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.90, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw/sw rev %*ph\00", [17 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.86, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mceusb_dev_printdata.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.91, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Illegal PORT_SYS command\00", [39 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.92, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Wake version, proto: 0x%02x, payload: 0x%02x, address: 0x%02x, version: 0x%02x\00", [49 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.93, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TX port %d: blaster is%s connected\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.96, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Attempting to flash LED\00", [40 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.87, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mceusb_dev_printdata.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.97, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"End of signal\00", [18 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.98, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Ping\00", [27 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.99, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resp to 9f 05 of 0x%02x 0x%02x\00", [33 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.100, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: no carrier\00", [17 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.101, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s carrier of %u Hz (period %uus)\00", [62 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.102, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Get carrier mode and freq\00", [38 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.103, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s transmit blaster mask of 0x%02x\00", [61 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.104, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s receive timeout of %d ms\00", [36 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.105, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Get receive timeout\00", [44 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.106, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Get transmit blaster mask\00", [38 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.107, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s %s-range receive sensor in use\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.110, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Get receive sensor\00", [45 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.111, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX carrier cycle count: %d\00", [37 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.112, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Num TX ports: %x, num RX ports: %x\00", [61 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.113, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Illegal PORT_IR command\00", [40 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.114, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IR TX timeout (TX buffer underrun)\00", [61 x i8] zeroinitializer }, align 32
@mceusb_dev_printdata.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.87, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mceusb_defer_kevent.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mceusb_defer_kevent\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"kevent %d dropped pending USB Reset Device\00", [53 x i8] zeroinitializer }, align 32
@mceusb_defer_kevent.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.118, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kevent %d already scheduled\00", [36 x i8] zeroinitializer }, align 32
@mceusb_defer_kevent.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.119, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kevent %d scheduled\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mceusb_set_tx_carrier.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mceusb_set_tx_carrier\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disabling carrier modulation\00", [35 x i8] zeroinitializer }, align 32
@mceusb_set_tx_carrier.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.122, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"requesting %u HZ carrier\00", [39 x i8] zeroinitializer }, align 32
@mceusb_set_rx_wideband.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mceusb_set_rx_wideband\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"select %s-range receive sensor\00", [33 x i8] zeroinitializer }, align 32
@__const.mceusb_set_rx_carrier_report.cmdbuf = private unnamed_addr constant [3 x i8] c"\9F\14\00", align 1
@mceusb_set_rx_carrier_report.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 1, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mceusb_set_rx_carrier_report\00", [35 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s short-range receiver carrier reporting\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@mceusb_dev_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1396, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: urb status = %d (RX HALT)\00", [63 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mceusb_dev_recv\00", [16 x i8] zeroinitializer }, align 32
@mceusb_dev_recv._entry_ptr = internal global ptr @mceusb_dev_recv._entry, section ".printk_index", align 4
@mceusb_dev_recv._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 1401, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error: urb status = %d\00", [41 x i8] zeroinitializer }, align 32
@mceusb_dev_recv._entry_ptr.133 = internal global ptr @mceusb_dev_recv._entry.131, section ".printk_index", align 4
@mceusb_process_ir_data.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.135, i8 1, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mceusb_process_ir_data\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nonsensical irdata %02x with duration 0\00", [56 x i8] zeroinitializer }, align 32
@mceusb_process_ir_data.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.136, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Storing %s %u us (%02x)\00", [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@mceusb_process_ir_data.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.139, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"processed IR data\00", [46 x i8] zeroinitializer }, align 32
@mceusb_handle_command.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.2, ptr @.str.141, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mceusb_handle_command\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"RX carrier frequency %u Hz (pulse count = %u, cycles = %u, duration = %u, rx2 = %u)\00", [44 x i8] zeroinitializer }, align 32
@mceusb_handle_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 1248, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s-range (0x%x) receiver active\00", [32 x i8] zeroinitializer }, align 32
@mceusb_handle_command._entry_ptr = internal global ptr @mceusb_handle_command._entry, section ".printk_index", align 4
@GET_EMVER = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\22", [30 x i8] zeroinitializer }, align 32
@mceusb_gen1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1423, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: memory allocation failed!\00", [34 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mceusb_gen1_init\00", [47 x i8] zeroinitializer }, align 32
@mceusb_gen1_init._entry_ptr = internal global ptr @mceusb_gen1_init._entry, section ".printk_index", align 4
@mceusb_gen1_init.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set address - ret = %d\00", [41 x i8] zeroinitializer }, align 32
@mceusb_gen1_init.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.146, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"set address - data[0] = %d, data[1] = %d\00", [55 x i8] zeroinitializer }, align 32
@mceusb_gen1_init.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.147, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set feature - ret = %d\00", [41 x i8] zeroinitializer }, align 32
@mceusb_gen1_init.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.148, i8 1, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set char length - retB = %d\00", [36 x i8] zeroinitializer }, align 32
@mceusb_gen1_init.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.149, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set handshake  - retC = %d\00", [37 x i8] zeroinitializer }, align 32
@GET_REVISION = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\0B", [30 x i8] zeroinitializer }, align 32
@GET_WAKEVERSION = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\18", [30 x i8] zeroinitializer }, align 32
@GET_UNKNOWN2 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\9F\05", [30 x i8] zeroinitializer }, align 32
@__const.mceusb_get_parameters.cmdbuf = private unnamed_addr constant [3 x i8] c"\FF\11\00", align 1
@GET_NUM_PORTS = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\9F\16", [30 x i8] zeroinitializer }, align 32
@GET_CARRIER_FREQ = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\9F\07", [30 x i8] zeroinitializer }, align 32
@GET_TX_BITMASK = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\9F\13", [30 x i8] zeroinitializer }, align 32
@GET_RX_SENSOR = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\9F\15", [30 x i8] zeroinitializer }, align 32
@FLASH_LED = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF#", [30 x i8] zeroinitializer }, align 32
@mceusb_dev_disconnect.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.2, ptr @.str.3, i8 1, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mceusb_dev_disconnect\00", [42 x i8] zeroinitializer }, align 32
@mceusb_dev_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 1875, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mceusb_dev_suspend\00", [45 x i8] zeroinitializer }, align 32
@mceusb_dev_suspend._entry_ptr = internal global ptr @mceusb_dev_suspend._entry, section ".printk_index", align 4
@mceusb_dev_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1883, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mceusb_dev_resume\00", [46 x i8] zeroinitializer }, align 32
@mceusb_dev_resume._entry_ptr = internal global ptr @mceusb_dev_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.157 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 159, i64 255]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.160 = internal global [9 x i64] [i64 7, i64 8, i64 11, i64 17, i64 24, i64 34, i64 35, i64 170, i64 254]
@__sancov_gen_cov_switch_values.161 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 3, i64 4, i64 6, i64 7, i64 8, i64 12, i64 13, i64 19, i64 20, i64 21, i64 22, i64 129, i64 254]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 159, i64 255]
@__sancov_gen_cov_switch_values.164 = internal global [9 x i64] [i64 7, i64 8, i64 11, i64 17, i64 23, i64 24, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.165 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 4, i64 6, i64 8, i64 12, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 8, i64 159, i64 255]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 8, i64 17, i64 34, i64 254]
@__sancov_gen_cov_switch_values.168 = internal global [9 x i64] [i64 7, i64 8, i64 8, i64 12, i64 20, i64 21, i64 22, i64 129, i64 254]
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"mceusb_dev_driver\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1889, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1899, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"mceusb_dev_table\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 282, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1683, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"mceusb_model\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 208, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1703, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1707, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1714, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1718, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1723, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1773, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1779, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1797, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1800, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1824, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1826, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1843, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 249, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 267, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 258, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 273, i32 13 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 271, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 278, i32 13 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 276, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1531, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1535, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1542, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1548, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1561, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1568, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1574, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1597, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1601, i32 39 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1604, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1642, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1645, i32 18 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1648, i32 18 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1655, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 912, i32 31 }
@___asan_gen_.349 = private unnamed_addr constant [15 x i8] c"GET_RX_TIMEOUT\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 534, i32 13 }
@___asan_gen_.352 = private unnamed_addr constant [14 x i8] c"DEVICE_RESUME\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 526, i32 13 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 825, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 849, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 858, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 880, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 886, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 891, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 608, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 612, i32 16 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 612, i32 28 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 620, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 628, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 630, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 646, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 648, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 655, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 660, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 662, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 669, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 673, i32 5 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 679, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 683, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 694, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 697, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 700, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 705, i32 5 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 716, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 720, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 723, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 730, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 734, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 737, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 740, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 746, i32 5 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 748, i32 5 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 754, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 758, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 761, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 87, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 786, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 792, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 794, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1047, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1058, i32 5 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1104, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1130, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1395, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1401, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1293, i32 5 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1303, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1362, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1233, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1247, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant [10 x i8] c"GET_EMVER\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 529, i32 13 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1423, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1434, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1435, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1443, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1449, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1455, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [13 x i8] c"GET_REVISION\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 528, i32 13 }
@___asan_gen_.619 = private unnamed_addr constant [16 x i8] c"GET_WAKEVERSION\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 530, i32 13 }
@___asan_gen_.622 = private unnamed_addr constant [13 x i8] c"GET_UNKNOWN2\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 532, i32 13 }
@___asan_gen_.625 = private unnamed_addr constant [14 x i8] c"GET_NUM_PORTS\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 535, i32 13 }
@___asan_gen_.628 = private unnamed_addr constant [17 x i8] c"GET_CARRIER_FREQ\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 533, i32 13 }
@___asan_gen_.631 = private unnamed_addr constant [15 x i8] c"GET_TX_BITMASK\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 536, i32 13 }
@___asan_gen_.634 = private unnamed_addr constant [14 x i8] c"GET_RX_SENSOR\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 537, i32 13 }
@___asan_gen_.637 = private unnamed_addr constant [10 x i8] c"FLASH_LED\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 531, i32 13 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1854, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1875, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.659 = private constant [29 x i8] c"../drivers/media/rc/mceusb.c\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1883, i32 2 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_mceusb_dev_driver_exit, ptr @__initcall__kmod_mceusb__296_1899_mceusb_dev_driver_init6, ptr @mce_write._entry, ptr @mce_write._entry.66, ptr @mce_write._entry.69, ptr @mce_write._entry.72, ptr @mce_write._entry.75, ptr @mce_write._entry_ptr, ptr @mce_write._entry_ptr.68, ptr @mce_write._entry_ptr.71, ptr @mce_write._entry_ptr.74, ptr @mce_write._entry_ptr.77, ptr @mceusb_deferred_kevent._entry, ptr @mceusb_deferred_kevent._entry.35, ptr @mceusb_deferred_kevent._entry.38, ptr @mceusb_deferred_kevent._entry.41, ptr @mceusb_deferred_kevent._entry.44, ptr @mceusb_deferred_kevent._entry.47, ptr @mceusb_deferred_kevent._entry.50, ptr @mceusb_deferred_kevent._entry_ptr, ptr @mceusb_deferred_kevent._entry_ptr.37, ptr @mceusb_deferred_kevent._entry_ptr.40, ptr @mceusb_deferred_kevent._entry_ptr.43, ptr @mceusb_deferred_kevent._entry_ptr.46, ptr @mceusb_deferred_kevent._entry_ptr.49, ptr @mceusb_deferred_kevent._entry_ptr.52, ptr @mceusb_dev_driver_exit, ptr @mceusb_dev_probe._entry, ptr @mceusb_dev_probe._entry.15, ptr @mceusb_dev_probe._entry.19, ptr @mceusb_dev_probe._entry.22, ptr @mceusb_dev_probe._entry_ptr, ptr @mceusb_dev_probe._entry_ptr.18, ptr @mceusb_dev_probe._entry_ptr.21, ptr @mceusb_dev_probe._entry_ptr.24, ptr @mceusb_dev_recv._entry, ptr @mceusb_dev_recv._entry.131, ptr @mceusb_dev_recv._entry_ptr, ptr @mceusb_dev_recv._entry_ptr.133, ptr @mceusb_dev_resume._entry, ptr @mceusb_dev_resume._entry_ptr, ptr @mceusb_dev_suspend._entry, ptr @mceusb_dev_suspend._entry_ptr, ptr @mceusb_gen1_init._entry, ptr @mceusb_gen1_init._entry_ptr, ptr @mceusb_handle_command._entry, ptr @mceusb_handle_command._entry_ptr, ptr @mceusb_init_rc_dev._entry, ptr @mceusb_init_rc_dev._entry.60, ptr @mceusb_init_rc_dev._entry_ptr, ptr @mceusb_init_rc_dev._entry_ptr.62, ptr @mceusb_dev_driver, ptr @.str, ptr @mceusb_dev_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mceusb_model, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mceusb_dev_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @GET_RX_TIMEOUT, ptr @DEVICE_RESUME, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @init_completion.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @GET_EMVER, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @GET_REVISION, ptr @GET_WAKEVERSION, ptr @GET_UNKNOWN2, ptr @GET_NUM_PORTS, ptr @GET_CARRIER_FREQ, ptr @GET_TX_BITMASK, ptr @GET_RX_SENSOR, ptr @FLASH_LED, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154], section "llvm.metadata"
@0 = internal global [164 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_table to i32), i32 1656, i32 2048, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_model to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_deferred_kevent._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_init_rc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_init_rc_dev._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_RX_TIMEOUT to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DEVICE_RESUME to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mce_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mce_write._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mce_write._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mce_write._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mce_write._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_recv._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_handle_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_EMVER to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_gen1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_REVISION to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_WAKEVERSION to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_UNKNOWN2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_NUM_PORTS to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_CARRIER_FREQ to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_TX_BITMASK to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GET_RX_SENSOR to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FLASH_LED to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mceusb_dev_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_dev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mceusb_dev_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mceusb_dev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @mceusb_dev_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_dev_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %buf = alloca [63 x i8], align 1
  %name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 63)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %name) #11
  %3 = call ptr @memset(ptr %name, i32 0, i32 128)
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %arrayidx = getelementptr [14 x %struct.mceusb_model], ptr @mceusb_model, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %arrayidx, align 4
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  %ir_intfnum21 = getelementptr [14 x %struct.mceusb_model], ptr @mceusb_model, i32 0, i32 %5, i32 2
  %10 = ptrtoint ptr %ir_intfnum21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ir_intfnum21, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp.not = icmp eq i32 %11, %conv
  br i1 %cmp.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp27580.not = icmp eq i8 %15, 0
  br i1 %cmp27580.not, label %for.cond.preheader.do.body128_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body128_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %7, i32 0, i32 3
  %dev70 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ep_in.0583 = phi ptr [ null, %for.body.lr.ph ], [ %ep_in.1, %for.inc.for.body_crit_edge ]
  %ep_out.0582 = phi ptr [ null, %for.body.lr.ph ], [ %ep_out.1, %for.inc.for.body_crit_edge ]
  %i.0581 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endpoint, align 4
  %arrayidx29 = getelementptr %struct.usb_host_endpoint, ptr %17, i32 %i.0581
  %cmp31 = icmp eq ptr %ep_in.0583, null
  br i1 %cmp31, label %if.then33, label %for.body.if.end76_crit_edge

for.body.if.end76_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then33:                                        ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc578 = trunc i8 %19 to i2
  %20 = zext i2 %trunc578 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc578, label %if.then33.if.end76_crit_edge [
    i2 -2, label %usb_endpoint_is_bulk_in.exit
    i2 -1, label %usb_endpoint_is_int_in.exit
  ]

if.then33.if.end76_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

usb_endpoint_is_bulk_in.exit:                     ; preds = %if.then33
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool35.not = icmp sgt i8 %22, -1
  br i1 %tobool35.not, label %usb_endpoint_is_bulk_in.exit.if.end76_crit_edge, label %if.then36

usb_endpoint_is_bulk_in.exit.if.end76_crit_edge:  ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then36:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then49)) #11
          to label %if.end76 [label %if.then49], !srcloc !379

if.then49:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev70, ptr noundef nonnull @.str.4) #11
  br label %if.end76

usb_endpoint_is_int_in.exit:                      ; preds = %if.then33
  %bEndpointAddress.i.i527 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i527 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i527, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool55.not = icmp sgt i8 %24, -1
  br i1 %tobool55.not, label %usb_endpoint_is_int_in.exit.if.end76_crit_edge, label %if.then56

usb_endpoint_is_int_in.exit.if.end76_crit_edge:   ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then56:                                        ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 5
  %25 = ptrtoint ptr %bInterval to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %bInterval, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then69)) #11
          to label %if.end76 [label %if.then69], !srcloc !379

if.then69:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev70, ptr noundef nonnull @.str.5) #11
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.then56, %usb_endpoint_is_int_in.exit.if.end76_crit_edge, %if.then49, %if.then36, %usb_endpoint_is_bulk_in.exit.if.end76_crit_edge, %if.then33.if.end76_crit_edge, %for.body.if.end76_crit_edge
  %ep_in.1 = phi ptr [ %arrayidx29, %if.then49 ], [ %arrayidx29, %if.then69 ], [ null, %usb_endpoint_is_int_in.exit.if.end76_crit_edge ], [ %ep_in.0583, %for.body.if.end76_crit_edge ], [ %arrayidx29, %if.then36 ], [ %arrayidx29, %if.then56 ], [ null, %usb_endpoint_is_bulk_in.exit.if.end76_crit_edge ], [ null, %if.then33.if.end76_crit_edge ]
  %cmp77 = icmp eq ptr %ep_out.0582, null
  br i1 %cmp77, label %if.then79, label %if.end76.for.inc_crit_edge

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then79:                                        ; preds = %if.end76
  %bmAttributes.i.i530 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 3
  %26 = ptrtoint ptr %bmAttributes.i.i530 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bmAttributes.i.i530, align 1
  %trunc = trunc i8 %27 to i2
  %28 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.155)
  switch i2 %trunc, label %if.then79.for.inc_crit_edge [
    i2 -2, label %usb_endpoint_is_bulk_out.exit
    i2 -1, label %usb_endpoint_is_int_out.exit
  ]

if.then79.for.inc_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %if.then79
  %bEndpointAddress.i.i532 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 2
  %29 = ptrtoint ptr %bEndpointAddress.i.i532 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEndpointAddress.i.i532, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool81.not = icmp slt i8 %30, 0
  br i1 %tobool81.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %if.then82

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then82:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then95)) #11
          to label %for.inc [label %if.then95], !srcloc !379

if.then95:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev70, ptr noundef nonnull @.str.6) #11
  br label %for.inc

usb_endpoint_is_int_out.exit:                     ; preds = %if.then79
  %bEndpointAddress.i.i536 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 2
  %31 = ptrtoint ptr %bEndpointAddress.i.i536 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEndpointAddress.i.i536, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool102.not = icmp slt i8 %32, 0
  br i1 %tobool102.not, label %usb_endpoint_is_int_out.exit.for.inc_crit_edge, label %if.then103

usb_endpoint_is_int_out.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_int_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then103:                                       ; preds = %usb_endpoint_is_int_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bInterval104 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx29, i32 0, i32 5
  %33 = ptrtoint ptr %bInterval104 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %bInterval104, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then117)) #11
          to label %for.inc [label %if.then117], !srcloc !379

if.then117:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev70, ptr noundef nonnull @.str.7) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then117, %if.then103, %usb_endpoint_is_int_out.exit.for.inc_crit_edge, %if.then95, %if.then82, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %if.then79.for.inc_crit_edge, %if.end76.for.inc_crit_edge
  %ep_out.1 = phi ptr [ %arrayidx29, %if.then95 ], [ %arrayidx29, %if.then117 ], [ null, %usb_endpoint_is_int_out.exit.for.inc_crit_edge ], [ %ep_out.0582, %if.end76.for.inc_crit_edge ], [ %arrayidx29, %if.then82 ], [ %arrayidx29, %if.then103 ], [ null, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge ], [ null, %if.then79.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0581, 1
  %34 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNumEndpoints, align 4
  %conv26 = zext i8 %35 to i32
  %cmp27 = icmp ult i32 %inc, %conv26
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool125.not = icmp eq ptr %ep_in.1, null
  %tobool126.not = icmp eq ptr %ep_out.1, null
  %or.cond = select i1 %tobool125.not, i1 true, i1 %tobool126.not
  br i1 %or.cond, label %for.end.do.body128_crit_edge, label %if.end145

for.end.do.body128_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

do.body128:                                       ; preds = %for.end.do.body128_crit_edge, %for.cond.preheader.do.body128_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then140)) #11
          to label %cleanup [label %if.then140], !srcloc !379

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  %dev141 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev141, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end145:                                        ; preds = %for.end
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_in.1, i32 0, i32 3
  %36 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bmAttributes.i, align 1
  %38 = and i8 %37, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp.i.not = icmp eq i8 %38, 3
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_in.1, i32 0, i32 2
  %39 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bEndpointAddress, align 1
  %conv149 = zext i8 %40 to i32
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %42, 8
  %shl1.i = shl nuw nsw i32 %conv149, 15
  %or.i = or i32 %shl1.i, %shl.i
  %. = select i1 %cmp.i.not, i32 1073741952, i32 -1073741696
  %or157 = or i32 %or.i, %.
  %43 = lshr i32 %or.i, 15
  %and.i = and i32 %43, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i, i32 0, i32 21, i32 %and.i
  %44 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %45, null
  br i1 %tobool59.not.i, label %if.end145.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end145.usb_maxpacket.exit_crit_edge:           ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %48 = and i16 %47, -249
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #11
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end145.usb_maxpacket.exit_crit_edge
  %retval.0.i542 = phi i16 [ %49, %if.end61.i ], [ 0, %if.end145.usb_maxpacket.exit_crit_edge ]
  %conv163 = zext i16 %retval.0.i542 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 332) #14
  %tobool165.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool165.not, label %usb_maxpacket.exit.do.end361_crit_edge, label %if.end167

usb_maxpacket.exit.do.end361_crit_edge:           ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end361

if.end167:                                        ; preds = %usb_maxpacket.exit
  %pipe_in = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %pipe_in to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or157, ptr %pipe_in, align 8
  %dma_in = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 12
  %call168 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %conv163, i32 noundef 3264, ptr noundef %dma_in) #11
  %buf_in = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %buf_in to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call168, ptr %buf_in, align 4
  %tobool170.not = icmp eq ptr %call168, null
  br i1 %tobool170.not, label %if.end167.buf_in_alloc_fail_crit_edge, label %if.end172

if.end167.buf_in_alloc_fail_crit_edge:            ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %buf_in_alloc_fail

if.end172:                                        ; preds = %if.end167
  %call173 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %urb_in = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %urb_in to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call173, ptr %urb_in, align 4
  %tobool175.not = icmp eq ptr %call173, null
  br i1 %tobool175.not, label %if.end172.urb_in_alloc_fail_crit_edge, label %if.end177

if.end172.urb_in_alloc_fail_crit_edge:            ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %urb_in_alloc_fail

if.end177:                                        ; preds = %if.end172
  %usbintf = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %usbintf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %intf, ptr %usbintf, align 8
  %call178 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #11
  %usbdev = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call178, ptr %usbdev, align 4
  %dev179 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev180 = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %dev180 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev179, ptr %dev180, align 8
  %len_in = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %len_in to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv163, ptr %len_in, align 8
  %flags = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load183 = load i8, ptr %flags, align 8
  %59 = lshr i8 %bf.load, 2
  %bf.shl = and i8 %59, 32
  %bf.clear184 = and i8 %bf.load183, -113
  %60 = shl i8 %bf.load, 2
  %bf.shl190 = and i8 %60, 64
  %61 = shl i8 %bf.load, 1
  %bf.shl202 = and i8 %61, 16
  %bf.set = or i8 %bf.shl190, %bf.shl
  %bf.set192 = or i8 %bf.set, %bf.shl202
  %bf.set204 = or i8 %bf.set192, %bf.clear184
  store i8 %bf.set204, ptr %flags, align 8
  %rx2 = getelementptr [14 x %struct.mceusb_model], ptr @mceusb_model, i32 0, i32 %5, i32 1
  %62 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx2, align 4
  %rx2208 = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 16, i32 1
  %64 = ptrtoint ptr %rx2208 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rx2208, align 4
  %model209 = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 21
  %65 = ptrtoint ptr %model209 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %5, ptr %model209, align 8
  %usb_ep_out = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %usb_ep_out to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ep_out.1, ptr %usb_ep_out, align 4
  %bmAttributes.i543 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_out.1, i32 0, i32 3
  %67 = ptrtoint ptr %bmAttributes.i543 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bmAttributes.i543, align 1
  %69 = and i8 %68, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp.i544.not = icmp eq i8 %69, 3
  %bEndpointAddress214 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_out.1, i32 0, i32 2
  %70 = ptrtoint ptr %bEndpointAddress214 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bEndpointAddress214, align 1
  %conv215 = zext i8 %71 to i32
  %72 = ptrtoint ptr %call178 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call178, align 8
  %shl.i546 = shl i32 %73, 8
  %shl1.i547 = shl nuw nsw i32 %conv215, 15
  %or.i548 = or i32 %shl1.i547, %shl.i546
  %.592 = select i1 %cmp.i544.not, i32 1073741824, i32 -1073741824
  %or223 = or i32 %or.i548, %.592
  %74 = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or223, ptr %74, align 8
  %iManufacturer = getelementptr i8, ptr %1, i32 942
  %76 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %iManufacturer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool227.not = icmp eq i8 %77, 0
  br i1 %tobool227.not, label %if.end177.if.end238_crit_edge, label %land.lhs.true

if.end177.if.end238_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end238

land.lhs.true:                                    ; preds = %if.end177
  %conv226 = zext i8 %77 to i32
  %call231 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv226, ptr noundef nonnull %buf, i32 noundef 63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232 = icmp sgt i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %land.lhs.true.if.end238_crit_edge

land.lhs.true.if.end238_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end238

if.then234:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call237 = call i32 @strscpy(ptr noundef nonnull %name, ptr noundef nonnull %buf, i32 noundef 128) #11
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %land.lhs.true.if.end238_crit_edge, %if.end177.if.end238_crit_edge
  %iProduct = getelementptr i8, ptr %1, i32 943
  %78 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %iProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool241.not = icmp eq i8 %79, 0
  br i1 %tobool241.not, label %if.end238.do.body259_crit_edge, label %land.lhs.true242

if.end238.do.body259_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body259

land.lhs.true242:                                 ; preds = %if.end238
  %conv240 = zext i8 %79 to i32
  %call247 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv240, ptr noundef nonnull %buf, i32 noundef 63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %cmp248 = icmp sgt i32 %call247, 0
  br i1 %cmp248, label %if.then250, label %land.lhs.true242.do.body259_crit_edge

land.lhs.true242.do.body259_crit_edge:            ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body259

if.then250:                                       ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #13
  %call253 = call i32 @strlen(ptr noundef nonnull %name) #15
  %add.ptr = getelementptr i8, ptr %name, i32 %call253
  %sub = sub i32 128, %call253
  %call257 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.9, ptr noundef nonnull %buf)
  br label %do.body259

do.body259:                                       ; preds = %if.then250, %land.lhs.true242.do.body259_crit_edge, %if.end238.do.body259_crit_edge
  %kevent = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 31
  call void @__init_work(ptr noundef %kevent, i32 noundef 0) #11
  %80 = ptrtoint ptr %kevent to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %kevent, align 4
  %lockdep_map = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 31, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @mceusb_dev_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry263 = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 31, i32 1
  %81 = ptrtoint ptr %entry263 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry263, ptr %entry263, align 8
  %prev.i = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 31, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry263, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 31, i32 2
  %83 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mceusb_deferred_kevent, ptr %func, align 8
  %call267 = call fastcc ptr @mceusb_init_rc_dev(ptr noundef nonnull %call7.i.i)
  %84 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call267, ptr %call7.i.i, align 8
  %tobool269.not = icmp eq ptr %call267, null
  br i1 %tobool269.not, label %rc_dev_fail, label %if.end271

if.end271:                                        ; preds = %do.body259
  %85 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bmAttributes.i, align 1
  %87 = and i8 %86, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %87)
  %cmp.i553.not = icmp eq i8 %87, 3
  %88 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %urb_in, align 4
  %90 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buf_in, align 4
  br i1 %cmp.i553.not, label %if.then274, label %if.else279

if.then274:                                       ; preds = %if.end271
  %bInterval277 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_in.1, i32 0, i32 5
  %92 = ptrtoint ptr %bInterval277 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bInterval277, align 1
  %conv278 = zext i8 %93 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 8
  %94 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 10
  %95 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or157, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 14
  %96 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %91, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 19
  %97 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv163, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 28
  %98 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @mceusb_dev_recv, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 27
  %99 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %100 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i555 = icmp eq i32 %101, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %101)
  %cmp6.i = icmp ugt i32 %101, 4
  %or.cond.i = or i1 %cmp.i555, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.then274.usb_fill_int_urb.exit_crit_edge

if.then274.usb_fill_int_urb.exit_crit_edge:       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  %102 = call i32 @llvm.smax.i32(i32 %conv278, i32 1) #11
  %103 = call i32 @llvm.umin.i32(i32 %102, i32 16) #11
  %sub.i = add nsw i32 %103, -1
  %shl.i556 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.then274.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i556, %if.then.i ], [ %conv278, %if.then274.usb_fill_int_urb.exit_crit_edge ]
  %104 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 25
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %interval.sink.i, ptr %104, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 23
  %106 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end282

if.else279:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i557 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 8
  %107 = ptrtoint ptr %dev1.i557 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr.i, ptr %dev1.i557, align 4
  %pipe2.i558 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 10
  %108 = ptrtoint ptr %pipe2.i558 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or157, ptr %pipe2.i558, align 4
  %transfer_buffer3.i559 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 14
  %109 = ptrtoint ptr %transfer_buffer3.i559 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %91, ptr %transfer_buffer3.i559, align 4
  %transfer_buffer_length.i560 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 19
  %110 = ptrtoint ptr %transfer_buffer_length.i560 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv163, ptr %transfer_buffer_length.i560, align 4
  %complete.i561 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 28
  %111 = ptrtoint ptr %complete.i561 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @mceusb_dev_recv, ptr %complete.i561, align 4
  %context4.i562 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 27
  %112 = ptrtoint ptr %context4.i562 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i, ptr %context4.i562, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.else279, %usb_fill_int_urb.exit
  %113 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma_in, align 4
  %115 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %urb_in, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %116, i32 0, i32 15
  %117 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %114, ptr %transfer_dma, align 4
  %118 = load ptr, ptr %urb_in, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %118, i32 0, i32 13
  %119 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %transfer_flags, align 4
  %or286 = or i32 %120, 4
  store i32 %or286, ptr %transfer_flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_probe, %if.then299)) #11
          to label %do.end303 [label %if.then299], !srcloc !379

if.then299:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev179, ptr noundef nonnull @.str.11) #11
  br label %do.end303

do.end303:                                        ; preds = %if.then299, %if.end282
  %121 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %urb_in, align 4
  %call305 = call i32 @usb_submit_urb(ptr noundef %122, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %do.end303.if.end312_crit_edge, label %do.end310

do.end303.if.end312_crit_edge:                    ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end312

do.end310:                                        ; preds = %do.end303
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.12, i32 noundef %call305) #16
  br label %if.end312

if.end312:                                        ; preds = %do.end310, %do.end303.if.end312_crit_edge
  call fastcc void @mceusb_get_emulator_version(ptr noundef nonnull %call7.i.i)
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load314 = load i8, ptr %flags, align 8
  %124 = and i8 %bf.load314, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool318.not = icmp eq i8 %124, 0
  br i1 %tobool318.not, label %if.else320, label %if.then319

if.then319:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mceusb_gen1_init(ptr noundef nonnull %call7.i.i)
  br label %if.end324

if.else320:                                       ; preds = %if.end312
  br i1 %tobool5.not, label %if.then322, label %if.else320.if.end324_crit_edge

if.else320.if.end324_crit_edge:                   ; preds = %if.else320
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end324

if.then322:                                       ; preds = %if.else320
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mceusb_gen2_init(ptr noundef nonnull %call7.i.i)
  br label %if.end324

if.end324:                                        ; preds = %if.then322, %if.else320.if.end324_crit_edge, %if.then319
  call fastcc void @mceusb_get_parameters(ptr noundef nonnull %call7.i.i)
  call fastcc void @mceusb_flash_led(ptr noundef nonnull %call7.i.i)
  %125 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load326 = load i8, ptr %flags, align 8
  %126 = and i8 %bf.load326, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool330.not = icmp eq i8 %126, 0
  br i1 %tobool330.not, label %if.then331, label %if.end324.if.end334_crit_edge

if.end324.if.end334_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334

if.then331:                                       ; preds = %if.end324
  %127 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call7.i.i, align 8
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %128, i32 0, i32 24
  %129 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv.i, align 4
  %num_txports.i = getelementptr inbounds %struct.mceusb_dev, ptr %130, i32 0, i32 24
  %131 = ptrtoint ptr %num_txports.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %num_txports.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %.not = icmp eq i8 %132, 1
  br i1 %.not, label %if.then331.if.end334_crit_edge, label %if.end.i

if.then331.if.end334_crit_edge:                   ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334

if.end.i:                                         ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.mceusb_dev, ptr %130, i32 0, i32 16
  %133 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %134 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool4.not.i = icmp eq i8 %134, 0
  %conv6.sink.i = select i1 %tobool4.not.i, i8 6, i8 3
  %tx_mask.i = getelementptr inbounds %struct.mceusb_dev, ptr %130, i32 0, i32 18
  %135 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv6.sink.i, ptr %tx_mask.i, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.end.i, %if.then331.if.end334_crit_edge, %if.end324.if.end334_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %136 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %137 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev180, align 8
  call void @device_set_wakeup_capable(ptr noundef %138, i1 noundef zeroext true) #11
  %139 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev180, align 8
  %call337 = call i32 @device_set_wakeup_enable(ptr noundef %140, i1 noundef zeroext true) #11
  %emver = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 23
  %141 = ptrtoint ptr %emver to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %emver, align 1
  %conv343 = zext i8 %142 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev179, ptr noundef nonnull @.str.16, ptr noundef nonnull %name, i32 noundef %conv343) #16
  %num_txports = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 24
  %143 = ptrtoint ptr %num_txports to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %num_txports, align 2
  %conv348 = zext i8 %144 to i32
  %txports_cabled = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 26
  %145 = ptrtoint ptr %txports_cabled to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %txports_cabled, align 8
  %conv349 = zext i8 %146 to i32
  %num_rxports = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 25
  %147 = ptrtoint ptr %num_rxports to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %num_rxports, align 1
  %conv350 = zext i8 %148 to i32
  %rxports_active = getelementptr inbounds %struct.mceusb_dev, ptr %call7.i.i, i32 0, i32 27
  %149 = ptrtoint ptr %rxports_active to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %rxports_active, align 1
  %conv351 = zext i8 %150 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev179, ptr noundef nonnull @.str.20, i32 noundef %conv348, i32 noundef %conv349, i32 noundef %conv350, i32 noundef %conv351) #16
  br label %cleanup

rc_dev_fail:                                      ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #13
  %call353 = call zeroext i1 @cancel_work_sync(ptr noundef %kevent) #11
  %151 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usbdev, align 4
  call void @usb_put_dev(ptr noundef %152) #11
  %153 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %urb_in, align 4
  call void @usb_kill_urb(ptr noundef %154) #11
  %155 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %urb_in, align 4
  call void @usb_free_urb(ptr noundef %156) #11
  br label %urb_in_alloc_fail

urb_in_alloc_fail:                                ; preds = %rc_dev_fail, %if.end172.urb_in_alloc_fail_crit_edge
  %157 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %buf_in, align 4
  %159 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dma_in, align 4
  call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %conv163, ptr noundef %158, i32 noundef %160) #11
  br label %buf_in_alloc_fail

buf_in_alloc_fail:                                ; preds = %urb_in_alloc_fail, %if.end167.buf_in_alloc_fail_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end361

do.end361:                                        ; preds = %buf_in_alloc_fail, %usb_maxpacket.exit.do.end361_crit_edge
  %dev362 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev362, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end361, %if.end334, %if.then140, %do.body128, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end334 ], [ -12, %do.end361 ], [ -19, %do.end.cleanup_crit_edge ], [ -19, %if.then140 ], [ -19, %do.body128 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mceusb_dev_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_disconnect.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_disconnect, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_disconnect.__UNIQUE_ID_ddebug295, ptr noundef %dev5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.150) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %usbdev = getelementptr inbounds %struct.mceusb_dev, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %usbdev, align 4
  %kevent = getelementptr inbounds %struct.mceusb_dev, ptr %3, i32 0, i32 31
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %kevent) #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @rc_unregister_device(ptr noundef %7) #11
  %urb_in = getelementptr inbounds %struct.mceusb_dev, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #11
  %10 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_in, align 4
  tail call void @usb_free_urb(ptr noundef %11) #11
  %len_in = getelementptr inbounds %struct.mceusb_dev, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %len_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len_in, align 4
  %buf_in = getelementptr inbounds %struct.mceusb_dev, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_in, align 4
  %dma_in = getelementptr inbounds %struct.mceusb_dev, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_in, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %13, ptr noundef %15, i32 noundef %17) #11
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_dev_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.151) #16
  %urb_in = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_dev_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.153) #16
  %urb_in = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb_in, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mceusb_deferred_kevent(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -276
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %kevent_flags = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kevent_flags, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %3) #16
  %4 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kevent_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %kevent_flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end.if.end35_crit_edge, label %if.then9

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then9:                                         ; preds = %if.end
  %urb_in = getelementptr i8, ptr %work, i32 -264
  %11 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb_in, align 4
  %call10 = tail call i32 @usb_unlink_urb(ptr noundef %12) #11
  %usbdev = getelementptr i8, ptr %work, i32 -272
  %13 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usbdev, align 4
  %pipe_in = getelementptr i8, ptr %work, i32 -260
  %15 = ptrtoint ptr %pipe_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe_in, align 4
  %call11 = tail call i32 @usb_clear_halt(ptr noundef %14, i32 noundef %16) #11
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.39, i32 noundef %call11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end19, label %if.end24

do.end19:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.42) #16
  %usbintf = getelementptr i8, ptr %work, i32 -268
  %21 = ptrtoint ptr %usbintf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usbintf, align 4
  tail call void @usb_queue_reset_device(ptr noundef %22) #11
  tail call void @_set_bit(i32 noundef 31, ptr noundef %kevent_flags) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %kevent_flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %kevent_flags) #11
  br label %cleanup

if.end24:                                         ; preds = %if.then9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %kevent_flags) #11
  %23 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urb_in, align 4
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end24.if.end35_crit_edge

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.45, i32 noundef %call27) #16
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %if.end24.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %27 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %kevent_flags, align 4
  %and1.i92 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i92)
  %tobool38.not = icmp eq i32 %and1.i92, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.then39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  %usbdev40 = getelementptr i8, ptr %work, i32 -272
  %29 = ptrtoint ptr %usbdev40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usbdev40, align 4
  %pipe_out = getelementptr i8, ptr %work, i32 -252
  %31 = ptrtoint ptr %pipe_out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pipe_out, align 4
  %call41 = tail call i32 @usb_clear_halt(ptr noundef %30, i32 noundef %32) #11
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.48, i32 noundef %call41) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp46 = icmp slt i32 %call41, 0
  br i1 %cmp46, label %do.end50, label %if.end56

do.end50:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.51) #16
  %usbintf52 = getelementptr i8, ptr %work, i32 -268
  %37 = ptrtoint ptr %usbintf52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usbintf52, align 4
  tail call void @usb_queue_reset_device(ptr noundef %38) #11
  tail call void @_set_bit(i32 noundef 31, ptr noundef %kevent_flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %kevent_flags) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %kevent_flags) #11
  br label %cleanup

if.end56:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %kevent_flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end50, %if.end35.cleanup_crit_edge, %do.end19, %do.end4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mceusb_init_rc_dev(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usbdev = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 4
  %0 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbdev, align 4
  %dev1 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @rc_allocate_device(i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 19
  %model = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 21
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  %6 = and i32 %5, 1073741823
  %7 = lshr i32 1855, %6
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.not = icmp eq i32 %8, 0
  br i1 %tobool3.not.not, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name2 = getelementptr [14 x %struct.mceusb_model], ptr @mceusb_model, i32 0, i32 %5, i32 4
  %9 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ @.str.56, %if.end.cond.end_crit_edge ]
  %11 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbdev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 16, i32 7
  %13 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idVendor, align 8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 16, i32 8
  %16 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idProduct, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv10 = zext i16 %18 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 128, ptr noundef nonnull @.str.55, ptr noundef %cond, i32 noundef %conv, i32 noundef %conv10)
  %19 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usbdev, align 4
  %phys = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 20
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.63, ptr noundef %24, ptr noundef %devpath.i) #11
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %26 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %phys, ptr %input_phys, align 4
  %27 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usbdev, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 7
  %30 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idVendor.i, align 8
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 8
  %34 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %idProduct.i, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #11
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 9
  %38 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bcdDevice.i, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #11
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %41 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %version.i, align 2
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %3, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 24
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ir, ptr %priv, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 16
  %44 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 130023420, ptr %allowed_protocols, align 8
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 37
  %45 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 50, ptr %rx_resolution, align 8
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 35
  %46 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 50, ptr %min_timeout, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 34
  %47 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 100000, ptr %timeout, align 4
  %48 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %model, align 4
  %arrayidx22 = getelementptr [14 x %struct.mceusb_model], ptr @mceusb_model, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %arrayidx22, align 4
  %51 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool23.not = icmp eq i8 %51, 0
  br i1 %tobool23.not, label %if.then24, label %cond.end.if.end27_crit_edge

cond.end.if.end27_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then24:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 60
  %52 = ptrtoint ptr %s_timeout to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mceusb_set_timeout, ptr %s_timeout, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %cond.end.if.end27_crit_edge
  %.sink = phi i32 [ 1250000, %if.then24 ], [ 100000, %cond.end.if.end27_crit_edge ]
  %53 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 36
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %53, align 4
  %flags = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 16
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load28 = load i8, ptr %flags, align 4
  %56 = and i8 %bf.load28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool32.not = icmp eq i8 %56, 0
  br i1 %tobool32.not, label %if.then33, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %s_tx_mask = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 50
  %57 = ptrtoint ptr %s_tx_mask to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mceusb_set_tx_mask, ptr %s_tx_mask, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 51
  %58 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @mceusb_set_tx_carrier, ptr %s_tx_carrier, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 54
  %59 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mceusb_tx_ir, ptr %tx_ir, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end27.if.end34_crit_edge
  %rx2 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 16, i32 1
  %60 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not = icmp eq i32 %61, 0
  br i1 %cmp.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %s_wideband_receiver = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 56
  %62 = ptrtoint ptr %s_wideband_receiver to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mceusb_set_rx_wideband, ptr %s_wideband_receiver, align 8
  %s_carrier_report = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 57
  %63 = ptrtoint ptr %s_carrier_report to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mceusb_set_rx_carrier_report, ptr %s_carrier_report, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %64 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str, ptr %driver_name, align 8
  %idVendor40 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 7
  %65 = ptrtoint ptr %idVendor40 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %idVendor40, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4896, i16 %66)
  %switch.selectcmp = icmp eq i16 %66, 4896
  %switch.select = select i1 %switch.selectcmp, ptr @.str.58, ptr @.str.59
  call void @__sanitizer_cov_trace_const_cmp2(i16 16416, i16 %66)
  %switch.selectcmp111 = icmp eq i16 %66, 16416
  %switch.select112 = select i1 %switch.selectcmp111, ptr @.str.57, ptr %switch.select
  %map_name44 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %67 = ptrtoint ptr %map_name44 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %switch.select112, ptr %map_name44, align 4
  %68 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %model, align 4
  %70 = and i32 %69, 1073741823
  %71 = lshr i32 3583, %70
  %72 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool47.not.not = icmp eq i32 %72, 0
  br i1 %tobool47.not.not, label %if.then48, label %if.end38.if.end53_crit_edge

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %rc_map = getelementptr [14 x %struct.mceusb_model], ptr @mceusb_model, i32 0, i32 %69, i32 3
  %73 = ptrtoint ptr %rc_map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rc_map, align 4
  %map_name52 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %75 = ptrtoint ptr %map_name52 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %map_name52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end38.if.end53_crit_edge
  %call54 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.out_crit_edge, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end53.out_crit_edge, %entry.out_crit_edge
  %.str.61.sink = phi ptr [ @.str.53, %entry.out_crit_edge ], [ @.str.61, %if.end53.out_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.61.sink) #16
  tail call void @rc_free_device(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end53.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %call, %if.end53.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mceusb_dev_recv(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @usb_unlink_urb(ptr noundef nonnull %urb) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %3, label %do.end10 [
    i32 0, label %sw.bb
    i32 -104, label %if.end3.sw.bb4_crit_edge
    i32 -2, label %if.end3.sw.bb4_crit_edge27
    i32 -84, label %if.end3.sw.bb4_crit_edge28
    i32 -71, label %if.end3.sw.bb4_crit_edge29
    i32 -108, label %if.end3.sw.bb4_crit_edge30
    i32 -32, label %do.end
  ]

if.end3.sw.bb4_crit_edge30:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end3.sw.bb4_crit_edge29:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end3.sw.bb4_crit_edge28:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end3.sw.bb4_crit_edge27:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end3.sw.bb4_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  tail call fastcc void @mceusb_process_ir_data(ptr noundef nonnull %1, i32 noundef %6)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3.sw.bb4_crit_edge, %if.end3.sw.bb4_crit_edge27, %if.end3.sw.bb4_crit_edge28, %if.end3.sw.bb4_crit_edge29, %if.end3.sw.bb4_crit_edge30
  %call5 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %urb) #11
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.129, i32 noundef -32) #16
  tail call fastcc void @mceusb_defer_kevent(ptr noundef nonnull %1, i32 noundef 1)
  br label %cleanup

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.132, i32 noundef %3) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %sw.bb
  %call13 = tail call i32 @usb_submit_urb(ptr noundef nonnull %urb, i32 noundef 2592) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb4, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_get_emulator_version(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %emver = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 23
  %0 = ptrtoint ptr %emver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %emver, align 1
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %1 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.mce_command_out.exit_crit_edge, label %if.then.i

entry.mce_command_out.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %entry.mce_command_out.exit_crit_edge
  %call2.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_EMVER, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_gen1_init(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %usbdev = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 4
  %3 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usbdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or4, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 3000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_gen1_init, %if.then11)) #11
          to label %do.body15 [label %if.then11], !srcloc !379

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_gen1_init.__UNIQUE_ID_ddebug283, ptr noundef %1, ptr noundef nonnull @.str.145, i32 noundef %call5) #11
  br label %do.body15

do.body15:                                        ; preds = %if.then11, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_gen1_init, %if.then27)) #11
          to label %do.end32 [label %if.then27], !srcloc !379

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %8 to i32
  %arrayidx28 = getelementptr i8, ptr %call7.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_gen1_init.__UNIQUE_ID_ddebug284, ptr noundef %1, ptr noundef nonnull @.str.146, i32 noundef %conv, i32 noundef %conv29) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body15
  %11 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i132 = shl i32 %14, 8
  %or36 = or i32 %shl.i132, -2147483648
  %call37 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or36, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext -16306, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 3000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_gen1_init, %if.then50)) #11
          to label %do.end53 [label %if.then50], !srcloc !379

if.then50:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_gen1_init.__UNIQUE_ID_ddebug285, ptr noundef %1, ptr noundef nonnull @.str.147, i32 noundef %call37) #11
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.end32
  %15 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usbdev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i133 = shl i32 %18, 8
  %or57 = or i32 %shl.i133, -2147483648
  %call58 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or57, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 2056, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 3000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_gen1_init, %if.then71)) #11
          to label %do.end74 [label %if.then71], !srcloc !379

if.then71:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_gen1_init.__UNIQUE_ID_ddebug286, ptr noundef %1, ptr noundef nonnull @.str.148, i32 noundef %call58) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.end53
  %19 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usbdev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i134 = shl i32 %22, 8
  %or78 = or i32 %shl.i134, -2147483648
  %call79 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or78, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef null, i16 noundef zeroext 0, i32 noundef 3000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_gen1_init, %if.then92)) #11
          to label %do.end95 [label %if.then92], !srcloc !379

if.then92:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_gen1_init.__UNIQUE_ID_ddebug287, ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef %call79) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.end74
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %23 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %do.end95.mce_command_out.exit_crit_edge, label %if.then.i

do.end95.mce_command_out.exit_crit_edge:          ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %do.end95.mce_command_out.exit_crit_edge
  %call2.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  %26 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i136 = icmp eq i8 %27, 0
  br i1 %tobool.not.i136, label %mce_command_out.exit.mce_command_out.exit140_crit_edge, label %if.then.i138

mce_command_out.exit.mce_command_out.exit140_crit_edge: ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit140

if.then.i138:                                     ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %need_reset.i, align 4
  %call.i137 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit140

mce_command_out.exit140:                          ; preds = %if.then.i138, %mce_command_out.exit.mce_command_out.exit140_crit_edge
  %call2.i139 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_REVISION, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %mce_command_out.exit140, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_gen2_init(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %0 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.mce_command_out.exit_crit_edge, label %if.then.i

entry.mce_command_out.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %entry.mce_command_out.exit_crit_edge
  %call2.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  %3 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i4 = icmp eq i8 %4, 0
  br i1 %tobool.not.i4, label %mce_command_out.exit.mce_command_out.exit8_crit_edge, label %if.then.i6

mce_command_out.exit.mce_command_out.exit8_crit_edge: ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit8

if.then.i6:                                       ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %need_reset.i, align 4
  %call.i5 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit8

mce_command_out.exit8:                            ; preds = %if.then.i6, %mce_command_out.exit.mce_command_out.exit8_crit_edge
  %call2.i7 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_WAKEVERSION, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  %6 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i10 = icmp eq i8 %7, 0
  br i1 %tobool.not.i10, label %mce_command_out.exit8.mce_command_out.exit14_crit_edge, label %if.then.i12

mce_command_out.exit8.mce_command_out.exit14_crit_edge: ; preds = %mce_command_out.exit8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit14

if.then.i12:                                      ; preds = %mce_command_out.exit8
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %need_reset.i, align 4
  %call.i11 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit14

mce_command_out.exit14:                           ; preds = %if.then.i12, %mce_command_out.exit8.mce_command_out.exit14_crit_edge
  %call2.i13 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_UNKNOWN2, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_get_parameters(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  %cmdbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmdbuf) #11
  %0 = call ptr @memcpy(ptr %cmdbuf, ptr @__const.mceusb_get_parameters.cmdbuf, i32 3)
  %num_txports = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 24
  %1 = ptrtoint ptr %num_txports to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %num_txports, align 2
  %num_rxports = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 25
  %2 = ptrtoint ptr %num_rxports to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %num_rxports, align 1
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %3 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.mce_command_out.exit_crit_edge, label %if.then.i

entry.mce_command_out.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %entry.mce_command_out.exit_crit_edge
  %call2.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_NUM_PORTS, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  %6 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i20 = icmp eq i8 %7, 0
  br i1 %tobool.not.i20, label %mce_command_out.exit.mce_command_out.exit24_crit_edge, label %if.then.i22

mce_command_out.exit.mce_command_out.exit24_crit_edge: ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit24

if.then.i22:                                      ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %need_reset.i, align 4
  %call.i21 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit24

mce_command_out.exit24:                           ; preds = %if.then.i22, %mce_command_out.exit.mce_command_out.exit24_crit_edge
  %call2.i23 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_CARRIER_FREQ, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  %9 = ptrtoint ptr %num_txports to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_txports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %mce_command_out.exit24.if.end_crit_edge, label %land.lhs.true

mce_command_out.exit24.if.end_crit_edge:          ; preds = %mce_command_out.exit24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %mce_command_out.exit24
  %flags = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 16
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %flags, align 4
  %12 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i26 = icmp eq i8 %14, 0
  br i1 %tobool.not.i26, label %if.then.mce_command_out.exit30_crit_edge, label %if.then.i28

if.then.mce_command_out.exit30_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit30

if.then.i28:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %need_reset.i, align 4
  %call.i27 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit30

mce_command_out.exit30:                           ; preds = %if.then.i28, %if.then.mce_command_out.exit30_crit_edge
  %call2.i29 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_TX_BITMASK, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %if.end

if.end:                                           ; preds = %mce_command_out.exit30, %land.lhs.true.if.end_crit_edge, %mce_command_out.exit24.if.end_crit_edge
  %16 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i32 = icmp eq i8 %17, 0
  br i1 %tobool.not.i32, label %if.end.mce_command_out.exit36_crit_edge, label %if.then.i34

if.end.mce_command_out.exit36_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit36

if.then.i34:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %need_reset.i, align 4
  %call.i33 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit36

mce_command_out.exit36:                           ; preds = %if.then.i34, %if.end.mce_command_out.exit36_crit_edge
  %call2.i35 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_RX_TIMEOUT, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  %19 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i38 = icmp eq i8 %20, 0
  br i1 %tobool.not.i38, label %mce_command_out.exit36.mce_command_out.exit42_crit_edge, label %if.then.i40

mce_command_out.exit36.mce_command_out.exit42_crit_edge: ; preds = %mce_command_out.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit42

if.then.i40:                                      ; preds = %mce_command_out.exit36
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %need_reset.i, align 4
  %call.i39 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit42

mce_command_out.exit42:                           ; preds = %if.then.i40, %mce_command_out.exit36.mce_command_out.exit42_crit_edge
  %call2.i41 = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @GET_RX_SENSOR, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  %22 = ptrtoint ptr %num_txports to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_txports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50.not = icmp eq i8 %23, 0
  br i1 %cmp50.not, label %mce_command_out.exit42.for.end_crit_edge, label %for.body.lr.ph

mce_command_out.exit42.for.end_crit_edge:         ; preds = %mce_command_out.exit42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %mce_command_out.exit42
  %arrayidx = getelementptr inbounds [3 x i8], ptr %cmdbuf, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mce_command_out.exit48.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mce_command_out.exit48.for.body_crit_edge ]
  %conv6 = trunc i32 %i.051 to i8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i44 = icmp eq i8 %26, 0
  br i1 %tobool.not.i44, label %for.body.mce_command_out.exit48_crit_edge, label %if.then.i46

for.body.mce_command_out.exit48_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit48

if.then.i46:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %need_reset.i, align 4
  %call.i45 = call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit48

mce_command_out.exit48:                           ; preds = %if.then.i46, %for.body.mce_command_out.exit48_crit_edge
  %call2.i47 = call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull %cmdbuf, i32 noundef 3) #11
  call void @msleep(i32 noundef 10) #11
  %inc = add nuw nsw i32 %i.051, 1
  %28 = ptrtoint ptr %num_txports to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_txports, align 2
  %conv4 = zext i8 %29 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %mce_command_out.exit48.for.body_crit_edge, label %mce_command_out.exit48.for.end_crit_edge

mce_command_out.exit48.for.end_crit_edge:         ; preds = %mce_command_out.exit48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

mce_command_out.exit48.for.body_crit_edge:        ; preds = %mce_command_out.exit48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %mce_command_out.exit48.for.end_crit_edge, %mce_command_out.exit42.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmdbuf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_flash_led(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %emver = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 23
  %0 = ptrtoint ptr %emver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %emver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %2 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.mce_command_out.exit_crit_edge, label %if.then.i

if.end.mce_command_out.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %if.end.mce_command_out.exit_crit_edge
  %call2.i = tail call fastcc i32 @mce_write(ptr noundef %ir, ptr noundef nonnull @FLASH_LED, i32 noundef 2) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %return

return:                                           ; preds = %mce_command_out.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mceusb_set_tx_mask(ptr nocapture noundef readonly %dev, i32 noundef %mask) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %num_txports = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %num_txports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_txports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %narrow = select i1 %tobool.not, i8 2, i8 %3
  %spec.select = zext i8 %narrow to i32
  %mask.highbits = lshr i32 %mask, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.highbits)
  %cmp.not = icmp eq i32 %mask.highbits, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %flags, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %conv6 = trunc i32 %mask to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mask)
  %cmp7.not = icmp eq i32 %mask, 3
  %mask.tr = trunc i32 %mask to i8
  %6 = shl i8 %mask.tr, 1
  %phi.cast = xor i8 %6, 6
  %cond12 = select i1 %cmp7.not, i8 6, i8 %phi.cast
  %conv6.sink = select i1 %tobool4.not, i8 %cond12, i8 %conv6
  %tx_mask = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %tx_mask to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6.sink, ptr %tx_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_set_timeout(ptr nocapture noundef readonly %dev, i32 noundef %timeout) #2 align 64 {
entry:
  %cmdbuf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmdbuf) #11
  %0 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1626603520, ptr %cmdbuf, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %add = add i32 %timeout, 25
  %div1 = udiv i32 %add, 50
  %shr = lshr i32 %div1, 8
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr inbounds [4 x i8], ptr %cmdbuf, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx, align 2
  %conv2 = trunc i32 %div1 to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %cmdbuf, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %arrayidx3, align 1
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %2, i32 0, i32 22
  %5 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.mce_command_out.exit_crit_edge, label %if.then.i

entry.mce_command_out.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %2, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %entry.mce_command_out.exit_crit_edge
  %call2.i = call fastcc i32 @mce_write(ptr noundef %2, ptr noundef nonnull %cmdbuf, i32 noundef 4) #11
  call void @msleep(i32 noundef 10) #11
  %8 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i8 = icmp eq i8 %9, 0
  br i1 %tobool.not.i8, label %mce_command_out.exit.mce_command_out.exit12_crit_edge, label %if.then.i10

mce_command_out.exit.mce_command_out.exit12_crit_edge: ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit12

if.then.i10:                                      ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %need_reset.i, align 4
  %call.i9 = call fastcc i32 @mce_write(ptr noundef %2, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit12

mce_command_out.exit12:                           ; preds = %if.then.i10, %mce_command_out.exit.mce_command_out.exit12_crit_edge
  %call2.i11 = call fastcc i32 @mce_write(ptr noundef %2, ptr noundef nonnull @GET_RX_TIMEOUT, i32 noundef 2) #11
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdbuf) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_set_tx_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #2 align 64 {
entry:
  %cmdbuf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmdbuf) #11
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1626996736, ptr %cmdbuf, align 4
  %carrier1 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %carrier1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %carrier1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %carrier)
  %cmp.not = icmp eq i32 %4, %carrier
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carrier)
  %cmp2 = icmp eq i32 %carrier, 0
  br i1 %cmp2, label %if.then3, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 39062, i32 %carrier)
  %cmp12 = icmp ugt i32 %carrier, 39062
  br i1 %cmp12, label %for.body.preheader.if.then13_crit_edge, label %for.inc

for.body.preheader.if.then13_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then3:                                         ; preds = %if.then
  %5 = ptrtoint ptr %carrier1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %carrier1, align 4
  %arrayidx = getelementptr inbounds [4 x i8], ptr %cmdbuf, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx, align 2
  %arrayidx5 = getelementptr inbounds [4 x i8], ptr %cmdbuf, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %arrayidx5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_set_tx_carrier.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_set_tx_carrier, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !379

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_set_tx_carrier.__UNIQUE_ID_ddebug275, ptr noundef %9, ptr noundef nonnull @.str.121) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then3
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.end.cleanup.sink.split_crit_edge, label %do.end.cleanup.sink.split.sink.split_crit_edge

do.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then13:                                        ; preds = %for.inc.2.if.then13_crit_edge, %for.inc.1.if.then13_crit_edge, %for.inc.if.then13_crit_edge, %for.body.preheader.if.then13_crit_edge
  %prescaler.069.lcssa = phi i8 [ 0, %for.body.preheader.if.then13_crit_edge ], [ 1, %for.inc.if.then13_crit_edge ], [ 2, %for.inc.1.if.then13_crit_edge ], [ 3, %for.inc.2.if.then13_crit_edge ]
  %.pn = phi i32 [ 10000000, %for.body.preheader.if.then13_crit_edge ], [ 2500000, %for.inc.if.then13_crit_edge ], [ 625000, %for.inc.1.if.then13_crit_edge ], [ 156250, %for.inc.2.if.then13_crit_edge ]
  %div.lcssa = udiv i32 %.pn, %carrier
  %12 = ptrtoint ptr %carrier1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %carrier, ptr %carrier1, align 4
  %arrayidx15 = getelementptr inbounds [4 x i8], ptr %cmdbuf, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %prescaler.069.lcssa, ptr %arrayidx15, align 2
  %conv16 = trunc i32 %div.lcssa to i8
  %arrayidx17 = getelementptr inbounds [4 x i8], ptr %cmdbuf, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16, ptr %arrayidx17, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_set_tx_carrier.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_set_tx_carrier, %if.then30)) #11
          to label %do.end34 [label %if.then30], !srcloc !379

if.then30:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %dev31 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_set_tx_carrier.__UNIQUE_ID_ddebug276, ptr noundef %16, ptr noundef nonnull @.str.122, i32 noundef %carrier) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %if.then13
  %need_reset.i60 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %need_reset.i60 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_reset.i60, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i61 = icmp eq i8 %18, 0
  br i1 %tobool.not.i61, label %do.end34.cleanup.sink.split_crit_edge, label %do.end34.cleanup.sink.split.sink.split_crit_edge

do.end34.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

do.end34.cleanup.sink.split_crit_edge:            ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 9765, i32 %carrier)
  %cmp12.1 = icmp ugt i32 %carrier, 9765
  br i1 %cmp12.1, label %for.inc.if.then13_crit_edge, label %for.inc.1

for.inc.if.then13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2441, i32 %carrier)
  %cmp12.2 = icmp ugt i32 %carrier, 2441
  br i1 %cmp12.2, label %for.inc.1.if.then13_crit_edge, label %for.inc.2

for.inc.1.if.then13_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 610, i32 %carrier)
  %cmp12.3 = icmp ugt i32 %carrier, 610
  br i1 %cmp12.3, label %for.inc.2.if.then13_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.2.if.then13_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

cleanup.sink.split.sink.split:                    ; preds = %do.end34.cleanup.sink.split.sink.split_crit_edge, %do.end.cleanup.sink.split.sink.split_crit_edge
  %need_reset.i60.sink = phi ptr [ %need_reset.i, %do.end.cleanup.sink.split.sink.split_crit_edge ], [ %need_reset.i60, %do.end34.cleanup.sink.split.sink.split_crit_edge ]
  %19 = ptrtoint ptr %need_reset.i60.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %need_reset.i60.sink, align 4
  %call.i62 = tail call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.end34.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %call2.i64 = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %cmdbuf, i32 noundef 4) #11
  call void @msleep(i32 noundef 10) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_tx_ir(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %txbuf, i32 noundef %count) #2 align 64 {
entry:
  %cmdbuf = alloca [3 x i8], align 2
  %irbuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmdbuf) #11
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -24824, ptr %cmdbuf, align 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %irbuf) #11
  %3 = call ptr @memset(ptr %irbuf, i32 255, i32 128)
  %tx_mask = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_mask, align 4
  %arrayidx = getelementptr inbounds [3 x i8], ptr %cmdbuf, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx, align 2
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.mce_command_out.exit_crit_edge, label %if.then.i

entry.mce_command_out.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %entry.mce_command_out.exit_crit_edge
  %call2.i = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %cmdbuf, i32 noundef 3) #11
  call void @msleep(i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp111.not = icmp eq i32 %count, 0
  br i1 %cmp111.not, label %mce_command_out.exit.if.end53_crit_edge, label %mce_command_out.exit.for.body_crit_edge

mce_command_out.exit.for.body_crit_edge:          ; preds = %mce_command_out.exit
  br label %for.body

mce_command_out.exit.if.end53_crit_edge:          ; preds = %mce_command_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mce_command_out.exit.for.body_crit_edge
  %i.0113 = phi i32 [ %inc42, %for.inc.for.body_crit_edge ], [ 0, %mce_command_out.exit.for.body_crit_edge ]
  %ircount.0112 = phi i32 [ %ircount.1.lcssa, %for.inc.for.body_crit_edge ], [ 0, %mce_command_out.exit.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %txbuf, i32 %i.0113
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %11)
  %12 = icmp ult i32 %11, 50
  br i1 %12, label %for.body.for.inc_crit_edge, label %while.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %div = udiv i32 %11, 50
  %i.0.tr = trunc i32 %i.0113 to i8
  %13 = xor i8 %i.0.tr, -1
  %14 = shl i8 %13, 7
  br label %while.body

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %while.body.lr.ph
  %irsample.0110 = phi i32 [ %div, %while.body.lr.ph ], [ %irsample.1, %if.end41.while.body_crit_edge ]
  %ircount.1109 = phi i32 [ %ircount.0112, %while.body.lr.ph ], [ %ircount.4, %if.end41.while.body_crit_edge ]
  %rem = srem i32 %ircount.1109, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %ircount.1109)
  %cmp4 = icmp sgt i32 %ircount.1109, 126
  br i1 %cmp4, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.then
  %call = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %irbuf, i32 noundef %ircount.1109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %ircount.2 = phi i32 [ %ircount.1109, %if.then.if.end9_crit_edge ], [ 0, %if.then5.if.end9_crit_edge ]
  %inc = add nsw i32 %ircount.2, 1
  %arrayidx10 = getelementptr [128 x i8], ptr %irbuf, i32 0, i32 %ircount.2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -98, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %while.body.if.end11_crit_edge
  %ircount.3 = phi i32 [ %inc, %if.end9 ], [ %ircount.1109, %while.body.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %irsample.0110)
  %cmp12 = icmp ult i32 %irsample.0110, 128
  %conv = trunc i32 %irsample.0110 to i8
  %sub = add i32 %irsample.0110, -127
  %.sink = select i1 %cmp12, i8 %conv, i8 127
  %irsample.1 = select i1 %cmp12, i32 0, i32 %sub
  %16 = getelementptr [128 x i8], ptr %irbuf, i32 0, i32 %ircount.3
  %conv19 = or i8 %.sink, %14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv19, ptr %16, align 1
  %inc20 = add i32 %ircount.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc20)
  %cmp21 = icmp sgt i32 %inc20, 127
  br i1 %cmp21, label %if.then23, label %if.end11.if.end41_crit_edge

if.end11.if.end41_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then23:                                        ; preds = %if.end11
  %rem24105 = urem i32 %inc20, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem24105)
  %cmp25.not = icmp eq i32 %rem24105, 0
  br i1 %cmp25.not, label %if.then23.if.end34_crit_edge, label %if.then27

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %sub29 = sub nuw nsw i32 %inc20, %rem24105
  %arrayidx30 = getelementptr [128 x i8], ptr %irbuf, i32 0, i32 %sub29
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30, align 1
  %20 = trunc i32 %rem24105 to i8
  %21 = add nuw nsw i8 %20, -31
  %conv33 = add i8 %21, %19
  store i8 %conv33, ptr %arrayidx30, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.then23.if.end34_crit_edge
  %call36 = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %irbuf, i32 noundef %inc20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end34.cleanup_crit_edge, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end34.if.end41_crit_edge, %if.end11.if.end41_crit_edge
  %ircount.4 = phi i32 [ %inc20, %if.end11.if.end41_crit_edge ], [ 0, %if.end34.if.end41_crit_edge ]
  %cmp2.not = icmp eq i32 %irsample.1, 0
  br i1 %cmp2.not, label %if.end41.for.inc_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end41.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ircount.1.lcssa = phi i32 [ %ircount.0112, %for.body.for.inc_crit_edge ], [ %ircount.4, %if.end41.for.inc_crit_edge ]
  %inc42 = add nuw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc42, %count
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %rem43 = srem i32 %ircount.1.lcssa, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem43)
  %cmp44 = icmp sgt i32 %rem43, 0
  br i1 %cmp44, label %if.then46, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub48 = sub i32 %ircount.1.lcssa, %rem43
  %arrayidx49 = getelementptr [128 x i8], ptr %irbuf, i32 0, i32 %sub48
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx49, align 1
  %24 = trunc i32 %rem43 to i8
  %25 = add nuw nsw i8 %24, -31
  %conv52 = add i8 %25, %23
  store i8 %conv52, ptr %arrayidx49, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %for.end.if.end53_crit_edge, %mce_command_out.exit.if.end53_crit_edge
  %ircount.0.lcssa119 = phi i32 [ %ircount.1.lcssa, %if.then46 ], [ %ircount.1.lcssa, %for.end.if.end53_crit_edge ], [ 0, %mce_command_out.exit.if.end53_crit_edge ]
  %inc54 = add i32 %ircount.0.lcssa119, 1
  %arrayidx55 = getelementptr [128 x i8], ptr %irbuf, i32 0, i32 %ircount.0.lcssa119
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %arrayidx55, align 1
  %call57 = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %irbuf, i32 noundef %inc54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  %call57.count = select i1 %cmp58, i32 %call57, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end34.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57.count, %if.end53 ], [ %call36, %if.end34.cleanup_crit_edge ], [ %call, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %irbuf) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmdbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_set_rx_wideband(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  %cmdbuf = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmdbuf) #11
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -24812, ptr %cmdbuf, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_set_rx_wideband.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_set_rx_wideband, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool4.not, ptr @.str.109, ptr @.str.108
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_set_rx_wideband.__UNIQUE_ID_ddebug277, ptr noundef %4, ptr noundef nonnull @.str.124, ptr noundef nonnull %cond) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  %not.tobool5.not = xor i1 %tobool5.not, true
  %spec.select = zext i1 %not.tobool5.not to i8
  %spec.select16 = select i1 %tobool5.not, i8 1, i8 2
  %5 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %5, align 1
  %7 = getelementptr inbounds [3 x i8], ptr %cmdbuf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select16, ptr %7, align 2
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.mce_command_out.exit_crit_edge, label %if.then.i

do.end.mce_command_out.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mce_command_out.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %need_reset.i, align 4
  %call.i = tail call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %mce_command_out.exit

mce_command_out.exit:                             ; preds = %if.then.i, %do.end.mce_command_out.exit_crit_edge
  %call2.i = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %cmdbuf, i32 noundef 3) #11
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmdbuf) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mceusb_set_rx_carrier_report(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  %cmdbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmdbuf) #11
  %2 = call ptr @memcpy(ptr %cmdbuf, ptr @__const.mceusb_set_rx_carrier_report.cmdbuf, i32 3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_set_rx_carrier_report.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_set_rx_carrier_report, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool4.not, ptr @.str.128, ptr @.str.127
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_set_rx_carrier_report.__UNIQUE_ID_ddebug278, ptr noundef %4, ptr noundef nonnull @.str.126, ptr noundef nonnull %cond) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  %carrier_report_enabled10 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 1
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %5 = ptrtoint ptr %carrier_report_enabled10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %carrier_report_enabled10, align 4
  %learning_active = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %learning_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %learning_active, align 2, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.then8, label %if.then6.if.end18_crit_edge

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then8:                                         ; preds = %if.then6
  %arrayidx = getelementptr inbounds [3 x i8], ptr %cmdbuf, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx, align 1
  %need_reset.i = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %need_reset.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then8.if.end18.sink.split_crit_edge, label %if.then8.if.end18.sink.split.sink.split_crit_edge

if.then8.if.end18.sink.split.sink.split_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.sink.split

if.then8.if.end18.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split

if.else:                                          ; preds = %do.end
  %11 = ptrtoint ptr %carrier_report_enabled10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %carrier_report_enabled10, align 4
  %learning_active11 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %learning_active11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %learning_active11, align 2, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.else.if.end18_crit_edge, label %land.lhs.true

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.else
  %wideband_rx_enabled = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %wideband_rx_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wideband_rx_enabled, align 1, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  %arrayidx15 = getelementptr inbounds [3 x i8], ptr %cmdbuf, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx15, align 1
  %need_reset.i27 = getelementptr inbounds %struct.mceusb_dev, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %need_reset.i27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_reset.i27, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i28 = icmp eq i8 %18, 0
  br i1 %tobool.not.i28, label %if.then14.if.end18.sink.split_crit_edge, label %if.then14.if.end18.sink.split.sink.split_crit_edge

if.then14.if.end18.sink.split.sink.split_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.sink.split

if.then14.if.end18.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split

if.end18.sink.split.sink.split:                   ; preds = %if.then14.if.end18.sink.split.sink.split_crit_edge, %if.then8.if.end18.sink.split.sink.split_crit_edge
  %need_reset.i27.sink = phi ptr [ %need_reset.i, %if.then8.if.end18.sink.split.sink.split_crit_edge ], [ %need_reset.i27, %if.then14.if.end18.sink.split.sink.split_crit_edge ]
  %19 = ptrtoint ptr %need_reset.i27.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %need_reset.i27.sink, align 4
  %call.i29 = tail call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull @DEVICE_RESUME, i32 noundef 3) #11
  tail call void @msleep(i32 noundef 10) #11
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.end18.sink.split.sink.split, %if.then14.if.end18.sink.split_crit_edge, %if.then8.if.end18.sink.split_crit_edge
  %call2.i31 = call fastcc i32 @mce_write(ptr noundef %1, ptr noundef nonnull %cmdbuf, i32 noundef 3) #11
  call void @msleep(i32 noundef 10) #11
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %land.lhs.true.if.end18_crit_edge, %if.else.if.end18_crit_edge, %if.then6.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmdbuf) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mce_write(ptr noundef %ir, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %tx_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tx_done) #11
  %2 = getelementptr inbounds i8, ptr %tx_done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  tail call fastcc void @mceusb_dev_printdata(ptr noundef %ir, ptr noundef %data, i32 noundef %size, i32 noundef 0, i32 noundef %size, i1 noundef zeroext true)
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end8.i, !prof !381

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64) #16
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #17
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i
  %4 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %tx_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @init_completion.__key) #11
  %usb_ep_out = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 8
  %5 = ptrtoint ptr %usb_ep_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_ep_out, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmAttributes.i, align 1
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i121.not = icmp eq i8 %9, 3
  %usbdev = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 4
  %10 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usbdev, align 4
  %pipe_out = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 9
  %12 = ptrtoint ptr %pipe_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe_out, align 4
  br i1 %cmp.i121.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 5
  %14 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterval, align 1
  %conv = zext i8 %15 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mce_write_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tx_done, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i122 = icmp eq i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp6.i = icmp ugt i32 %23, 4
  %or.cond.i = or i1 %cmp.i122, %cmp6.i
  br i1 %or.cond.i, label %if.then.i123, label %if.then11.usb_fill_int_urb.exit_crit_edge

if.then11.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i123:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %24 = call i32 @llvm.smax.i32(i32 %conv, i32 1) #11
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 16) #11
  %sub.i = add nsw i32 %25, -1
  %shl.i = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i123, %if.then11.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i, %if.then.i123 ], [ %conv, %if.then11.usb_fill_int_urb.exit_crit_edge ]
  %26 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 25
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %interval.sink.i, ptr %26, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 23
  %28 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i125 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i125 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %11, ptr %dev1.i125, align 4
  %pipe2.i126 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i126 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %13, ptr %pipe2.i126, align 4
  %transfer_buffer3.i127 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i127 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i, ptr %transfer_buffer3.i127, align 4
  %transfer_buffer_length.i128 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i128 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %size, ptr %transfer_buffer_length.i128, align 4
  %complete.i129 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i129 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mce_write_callback, ptr %complete.i129, align 4
  %context4.i130 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %34 = ptrtoint ptr %context4.i130 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx_done, ptr %context4.i130, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %usb_fill_int_urb.exit
  %35 = call ptr @memcpy(ptr %call9.i, ptr %data, i32 %size)
  %call16 = call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef %call16) #16
  call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @usb_free_urb(ptr noundef nonnull %call) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call24 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tx_done, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end29, label %if.else32

do.end29:                                         ; preds = %if.end22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef 100, i32 noundef 1000) #16
  call void @usb_kill_urb(ptr noundef nonnull %call) #11
  %status = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 12
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %37)
  %cmp = icmp eq i32 %37, -2
  br i1 %cmp, label %do.end29.if.end38_crit_edge, label %do.end29.if.end34_crit_edge

do.end29.if.end34_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end29.if.end38_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.else32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %status33 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 12
  %38 = ptrtoint ptr %status33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %do.end29.if.end34_crit_edge
  %ret.0 = phi i32 [ %39, %if.else32 ], [ %37, %do.end29.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp35 = icmp sgt i32 %ret.0, -1
  br i1 %cmp35, label %if.then37, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 20
  %40 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual_length, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge, %do.end29.if.end38_crit_edge
  %ret.1 = phi i32 [ %41, %if.then37 ], [ %ret.0, %if.end34.if.end38_crit_edge ], [ -110, %do.end29.if.end38_crit_edge ]
  %status39 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 12
  %42 = ptrtoint ptr %status39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status39, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %43, label %do.end48 [
    i32 0, label %if.end38.do.body51_crit_edge
    i32 -104, label %if.end38.do.body51_crit_edge137
    i32 -2, label %if.end38.do.body51_crit_edge138
    i32 -84, label %if.end38.do.body51_crit_edge139
    i32 -108, label %if.end38.do.body51_crit_edge140
    i32 -32, label %do.end43
  ]

if.end38.do.body51_crit_edge140:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

if.end38.do.body51_crit_edge139:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

if.end38.do.body51_crit_edge138:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

if.end38.do.body51_crit_edge137:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

if.end38.do.body51_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.73, i32 noundef -32) #16
  call fastcc void @mceusb_defer_kevent(ptr noundef %ir, i32 noundef 0)
  br label %do.body51

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.76, i32 noundef %43) #16
  br label %do.body51

do.body51:                                        ; preds = %do.end48, %do.end43, %if.end38.do.body51_crit_edge, %if.end38.do.body51_crit_edge137, %if.end38.do.body51_crit_edge138, %if.end38.do.body51_crit_edge139, %if.end38.do.body51_crit_edge140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mce_write.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mce_write, %if.then60)) #11
          to label %do.end65 [label %if.then60], !srcloc !379

if.then60:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length61 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 20
  %49 = ptrtoint ptr %actual_length61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %actual_length61, align 4
  %51 = ptrtoint ptr %status39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mce_write.__UNIQUE_ID_ddebug274, ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %ret.1, i32 noundef %call24, i32 noundef 100, i32 noundef 1000, i32 noundef %50, i32 noundef %52) #11
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body51
  call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @usb_free_urb(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.end21, %if.then7, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call16, %do.end21 ], [ %ret.1, %do.end65 ], [ -12, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tx_done) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_dev_printdata(ptr nocapture noundef readonly %ir, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %offset, i32 noundef %len, i1 noundef zeroext %out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp = icmp sgt i32 %offset, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_len, i32 %offset)
  %cmp2.not = icmp sgt i32 %buf_len, %offset
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !379

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %out, i32 116, i32 114
  %sub = sub i32 %buf_len, %offset
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %cond, i32 noundef %offset, i32 noundef %2, ptr noundef %add.ptr, i32 noundef %len, i32 noundef %buf_len) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %cond13 = select i1 %out, ptr @.str.81, ptr @.str.82
  %arrayidx = getelementptr i8, ptr %buf, i32 %offset
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %add = add nuw nsw i32 %offset, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %buf_len)
  %cmp14 = icmp slt i32 %add, %buf_len
  br i1 %cmp14, label %cond.true15, label %do.end.cond.end19_crit_edge

do.end.cond.end19_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end19

cond.true15:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx17 = getelementptr i8, ptr %buf, i32 %add
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx17, align 1
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true15, %do.end.cond.end19_crit_edge
  %cond20 = phi i8 [ %6, %cond.true15 ], [ 0, %do.end.cond.end19_crit_edge ]
  %add.ptr23 = getelementptr i8, ptr %arrayidx, i32 2
  %flags = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 16
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %flags, align 4
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  %brmerge = or i1 %tobool24.not, %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool27.not = icmp ne i32 %offset, 0
  %9 = or i1 %tobool27.not, %brmerge
  br i1 %9, label %if.end45, label %do.body29

do.body29:                                        ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then41)) #11
          to label %cleanup [label %if.then41], !srcloc !379

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.83) #11
  br label %cleanup

if.end45:                                         ; preds = %cond.end19
  %conv46 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %4)
  %cmp47.not = icmp ne i8 %4, -97
  %and = and i32 %conv46, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %cmp51 = icmp eq i32 %and, 128
  %or.cond806 = select i1 %cmp47.not, i1 %cmp51, i1 false
  br i1 %or.cond806, label %if.then53, label %if.end93

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %4)
  %cmp55 = icmp eq i8 %4, -128
  br i1 %cmp55, label %do.body58, label %do.body74

do.body58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then70)) #11
          to label %cleanup [label %if.then70], !srcloc !379

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.84) #11
  br label %cleanup

do.body74:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then86)) #11
          to label %cleanup [label %if.then86], !srcloc !379

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  %and88 = and i32 %conv46, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug242, ptr noundef %1, ptr noundef nonnull @.str.85, i32 noundef %and88) #11
  br label %cleanup

if.end93:                                         ; preds = %if.end45
  %add94 = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %buf_len)
  %cmp95 = icmp sgt i32 %add94, %buf_len
  br i1 %cmp95, label %if.end93.cleanup_crit_edge, label %if.end98

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %10 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %4, label %if.end98.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 -1, label %sw.bb150
    i8 -97, label %sw.bb338
  ]

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end98
  %conv100 = zext i8 %cond20 to i32
  %11 = zext i8 %cond20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %cond20, label %sw.bb.do.body131_crit_edge [
    i8 0, label %sw.bb.cleanup_crit_edge
    i8 -1, label %land.lhs.true108
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.do.body131_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body131

land.lhs.true108:                                 ; preds = %sw.bb
  %12 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %13)
  %cmp111 = icmp eq i8 %13, -86
  br i1 %cmp111, label %do.body114, label %land.lhs.true108.do.body131_crit_edge

land.lhs.true108.do.body131_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body131

do.body114:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then126)) #11
          to label %cleanup [label %if.then126], !srcloc !379

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.86) #11
  br label %cleanup

do.body131:                                       ; preds = %land.lhs.true108.do.body131_crit_edge, %sw.bb.do.body131_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then143)) #11
          to label %cleanup [label %if.then143], !srcloc !379

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef 0, i32 noundef %conv100) #11
  br label %cleanup

sw.bb150:                                         ; preds = %if.end98
  %conv151 = zext i8 %cond20 to i32
  %14 = zext i8 %cond20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %cond20, label %do.body320 [
    i8 34, label %sw.bb152
    i8 11, label %sw.bb174
    i8 -86, label %do.body215
    i8 -2, label %do.body232
    i8 24, label %sw.bb248
    i8 17, label %sw.bb276
    i8 35, label %do.body304
  ]

sw.bb152:                                         ; preds = %sw.bb150
  br i1 %out, label %sw.bb152.cleanup_crit_edge, label %do.body155

sw.bb152.cleanup_crit_edge:                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body155:                                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then167)) #11
          to label %cleanup [label %if.then167], !srcloc !379

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr23, align 1
  %conv169 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug245, ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef %conv169) #11
  br label %cleanup

sw.bb174:                                         ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp175 = icmp eq i32 %len, 2
  br i1 %cmp175, label %do.body178, label %do.body195

do.body178:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then190)) #11
          to label %cleanup [label %if.then190], !srcloc !379

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.89) #11
  br label %cleanup

do.body195:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then207)) #11
          to label %cleanup [label %if.then207], !srcloc !379

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #13
  %add208 = add nuw i32 %offset, 2
  %arrayidx209 = getelementptr i8, ptr %buf, i32 %add208
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %arrayidx209) #11
  br label %cleanup

do.body215:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then227)) #11
          to label %cleanup [label %if.then227], !srcloc !379

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug248, ptr noundef %1, ptr noundef nonnull @.str.86) #11
  br label %cleanup

do.body232:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then244)) #11
          to label %cleanup [label %if.then244], !srcloc !379

if.then244:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug249, ptr noundef %1, ptr noundef nonnull @.str.91) #11
  br label %cleanup

sw.bb248:                                         ; preds = %sw.bb150
  br i1 %out, label %sw.bb248.cleanup_crit_edge, label %do.body251

sw.bb248.cleanup_crit_edge:                       ; preds = %sw.bb248
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body251:                                       ; preds = %sw.bb248
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then263)) #11
          to label %cleanup [label %if.then263], !srcloc !379

if.then263:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr23, align 1
  %conv265 = zext i8 %18 to i32
  %arrayidx266 = getelementptr i8, ptr %add.ptr23, i32 1
  %19 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %20 to i32
  %arrayidx268 = getelementptr i8, ptr %add.ptr23, i32 2
  %21 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx268, align 1
  %conv269 = zext i8 %22 to i32
  %arrayidx270 = getelementptr i8, ptr %add.ptr23, i32 3
  %23 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx270, align 1
  %conv271 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug250, ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %conv265, i32 noundef %conv267, i32 noundef %conv269, i32 noundef %conv271) #11
  br label %cleanup

sw.bb276:                                         ; preds = %sw.bb150
  br i1 %out, label %sw.bb276.cleanup_crit_edge, label %do.body279

sw.bb276.cleanup_crit_edge:                       ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body279:                                       ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then291)) #11
          to label %cleanup [label %if.then291], !srcloc !379

if.then291:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr23, align 1
  %conv293 = zext i8 %26 to i32
  %add294 = add nuw nsw i32 %conv293, 1
  %arrayidx295 = getelementptr i8, ptr %add.ptr23, i32 3
  %27 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool297.not = icmp eq i8 %28, 0
  %cond298 = select i1 %tobool297.not, ptr @.str.95, ptr @.str.94
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug251, ptr noundef %1, ptr noundef nonnull @.str.93, i32 noundef %add294, ptr noundef nonnull %cond298) #11
  br label %cleanup

do.body304:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then316)) #11
          to label %cleanup [label %if.then316], !srcloc !379

if.then316:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug252, ptr noundef %1, ptr noundef nonnull @.str.96) #11
  br label %cleanup

do.body320:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then332)) #11
          to label %cleanup [label %if.then332], !srcloc !379

if.then332:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug253, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef 255, i32 noundef %conv151) #11
  br label %cleanup

sw.bb338:                                         ; preds = %if.end98
  %conv339 = zext i8 %cond20 to i32
  %29 = zext i8 %cond20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %cond20, label %do.body672 [
    i8 1, label %do.body341
    i8 3, label %do.body358
    i8 4, label %do.body375
    i8 6, label %sw.bb395
    i8 7, label %do.body455
    i8 8, label %do.body472
    i8 12, label %sw.bb490
    i8 13, label %do.body515
    i8 19, label %do.body532
    i8 20, label %do.body549
    i8 21, label %sw.bb570
    i8 22, label %sw.bb613
    i8 -2, label %do.body638
    i8 -127, label %do.body655
  ]

do.body341:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then353)) #11
          to label %cleanup [label %if.then353], !srcloc !379

if.then353:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug254, ptr noundef %1, ptr noundef nonnull @.str.97) #11
  br label %cleanup

do.body358:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then370)) #11
          to label %cleanup [label %if.then370], !srcloc !379

if.then370:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug255, ptr noundef %1, ptr noundef nonnull @.str.98) #11
  br label %cleanup

do.body375:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then387)) #11
          to label %cleanup [label %if.then387], !srcloc !379

if.then387:                                       ; preds = %do.body375
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr23, align 1
  %conv389 = zext i8 %31 to i32
  %arrayidx390 = getelementptr i8, ptr %add.ptr23, i32 1
  %32 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx390, align 1
  %conv391 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug256, ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %conv389, i32 noundef %conv391) #11
  br label %cleanup

sw.bb395:                                         ; preds = %sw.bb338
  %34 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool397.not = icmp eq i8 %35, 0
  br i1 %tobool397.not, label %land.lhs.true398, label %if.end418

land.lhs.true398:                                 ; preds = %sw.bb395
  %arrayidx399 = getelementptr i8, ptr %add.ptr23, i32 1
  %36 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx399, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool400.not = icmp eq i8 %37, 0
  br i1 %tobool400.not, label %do.body402, label %land.lhs.true398.if.end424_crit_edge

land.lhs.true398.if.end424_crit_edge:             ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

do.body402:                                       ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then414)) #11
          to label %cleanup [label %if.then414], !srcloc !379

if.then414:                                       ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug257, ptr noundef %1, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond13) #11
  br label %cleanup

if.end418:                                        ; preds = %sw.bb395
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp421 = icmp ugt i8 %35, 8
  br i1 %cmp421, label %if.end418.cleanup_crit_edge, label %if.end418.if.end424_crit_edge

if.end418.if.end424_crit_edge:                    ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

if.end418.cleanup_crit_edge:                      ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end424:                                        ; preds = %if.end418.if.end424_crit_edge, %land.lhs.true398.if.end424_crit_edge
  %conv420 = zext i8 %35 to i32
  %mul = shl nuw nsw i32 %conv420, 1
  %arrayidx427 = getelementptr i8, ptr %add.ptr23, i32 1
  %38 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx427, align 1
  %conv428 = zext i8 %39 to i32
  %add429 = add nuw nsw i32 %conv428, 1
  %mul430 = shl nuw nsw i32 %add429, %mul
  %add432 = add nuw nsw i32 %mul430, 5
  %div433 = udiv i32 %add432, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mul430)
  %40 = icmp ult i32 %mul430, 5
  br i1 %40, label %if.end424.cleanup_crit_edge, label %if.end436

if.end424.cleanup_crit_edge:                      ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end436:                                        ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then450)) #11
          to label %cleanup [label %if.then450], !srcloc !379

if.then450:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #13
  %div437 = udiv i32 1000000, %div433
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond13, i32 noundef %div437, i32 noundef %div433) #11
  br label %cleanup

do.body455:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then467)) #11
          to label %cleanup [label %if.then467], !srcloc !379

if.then467:                                       ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug259, ptr noundef %1, ptr noundef nonnull @.str.102) #11
  br label %cleanup

do.body472:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then484)) #11
          to label %cleanup [label %if.then484], !srcloc !379

if.then484:                                       ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr23, align 1
  %conv486 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug260, ptr noundef %1, ptr noundef nonnull @.str.103, ptr noundef nonnull %cond13, i32 noundef %conv486) #11
  br label %cleanup

sw.bb490:                                         ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr23, align 1
  %arrayidx494 = getelementptr i8, ptr %add.ptr23, i32 1
  %45 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx494, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then510)) #11
          to label %cleanup [label %if.then510], !srcloc !379

if.then510:                                       ; preds = %sw.bb490
  call void @__sanitizer_cov_trace_pc() #13
  %conv492 = zext i8 %44 to i32
  %shl493 = shl nuw nsw i32 %conv492, 8
  %conv495 = zext i8 %46 to i32
  %or = or i32 %shl493, %conv495
  %div497 = udiv i32 %or, 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug261, ptr noundef %1, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond13, i32 noundef %div497) #11
  br label %cleanup

do.body515:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then527)) #11
          to label %cleanup [label %if.then527], !srcloc !379

if.then527:                                       ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug262, ptr noundef %1, ptr noundef nonnull @.str.105) #11
  br label %cleanup

do.body532:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then544)) #11
          to label %cleanup [label %if.then544], !srcloc !379

if.then544:                                       ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug263, ptr noundef %1, ptr noundef nonnull @.str.106) #11
  br label %cleanup

do.body549:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then561)) #11
          to label %cleanup [label %if.then561], !srcloc !379

if.then561:                                       ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp564 = icmp eq i8 %48, 2
  %cond566 = select i1 %cmp564, ptr @.str.108, ptr @.str.109
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug264, ptr noundef %1, ptr noundef nonnull @.str.107, ptr noundef nonnull %cond13, ptr noundef nonnull %cond566) #11
  br label %cleanup

sw.bb570:                                         ; preds = %sw.bb338
  br i1 %out, label %do.body573, label %do.body590

do.body573:                                       ; preds = %sw.bb570
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then585)) #11
          to label %cleanup [label %if.then585], !srcloc !379

if.then585:                                       ; preds = %do.body573
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.110) #11
  br label %cleanup

do.body590:                                       ; preds = %sw.bb570
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then602)) #11
          to label %cleanup [label %if.then602], !srcloc !379

if.then602:                                       ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr23, align 1
  %conv604 = zext i8 %50 to i32
  %shl605 = shl nuw nsw i32 %conv604, 8
  %arrayidx606 = getelementptr i8, ptr %add.ptr23, i32 1
  %51 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx606, align 1
  %conv607 = zext i8 %52 to i32
  %or608 = or i32 %shl605, %conv607
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug266, ptr noundef %1, ptr noundef nonnull @.str.111, i32 noundef %or608) #11
  br label %cleanup

sw.bb613:                                         ; preds = %sw.bb338
  br i1 %out, label %sw.bb613.cleanup_crit_edge, label %do.body617

sw.bb613.cleanup_crit_edge:                       ; preds = %sw.bb613
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body617:                                       ; preds = %sw.bb613
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then629)) #11
          to label %cleanup [label %if.then629], !srcloc !379

if.then629:                                       ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr23, align 1
  %conv631 = zext i8 %54 to i32
  %arrayidx632 = getelementptr i8, ptr %add.ptr23, i32 1
  %55 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx632, align 1
  %conv633 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug267, ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef %conv631, i32 noundef %conv633) #11
  br label %cleanup

do.body638:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then650)) #11
          to label %cleanup [label %if.then650], !srcloc !379

if.then650:                                       ; preds = %do.body638
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug268, ptr noundef %1, ptr noundef nonnull @.str.113) #11
  br label %cleanup

do.body655:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then667)) #11
          to label %cleanup [label %if.then667], !srcloc !379

if.then667:                                       ; preds = %do.body655
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug269, ptr noundef %1, ptr noundef nonnull @.str.114) #11
  br label %cleanup

do.body672:                                       ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_dev_printdata, %if.then684)) #11
          to label %cleanup [label %if.then684], !srcloc !379

if.then684:                                       ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_dev_printdata.__UNIQUE_ID_ddebug270, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef 159, i32 noundef %conv339) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then684, %do.body672, %if.then667, %do.body655, %if.then650, %do.body638, %if.then629, %do.body617, %sw.bb613.cleanup_crit_edge, %if.then602, %do.body590, %if.then585, %do.body573, %if.then561, %do.body549, %if.then544, %do.body532, %if.then527, %do.body515, %if.then510, %sw.bb490, %if.then484, %do.body472, %if.then467, %do.body455, %if.then450, %if.end436, %if.end424.cleanup_crit_edge, %if.end418.cleanup_crit_edge, %if.then414, %do.body402, %if.then387, %do.body375, %if.then370, %do.body358, %if.then353, %do.body341, %if.then332, %do.body320, %if.then316, %do.body304, %if.then291, %do.body279, %sw.bb276.cleanup_crit_edge, %if.then263, %do.body251, %sw.bb248.cleanup_crit_edge, %if.then244, %do.body232, %if.then227, %do.body215, %if.then207, %do.body195, %if.then190, %do.body178, %if.then167, %do.body155, %sw.bb152.cleanup_crit_edge, %if.then143, %do.body131, %if.then126, %do.body114, %sw.bb.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.then86, %do.body74, %if.then70, %do.body58, %if.then41, %do.body29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mce_write_callback(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %1) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_defer_kevent(ptr noundef %ir, i32 noundef %kevent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kevent_flags = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 32
  tail call void @_set_bit(i32 noundef %kevent, ptr noundef %kevent_flags) #11
  %0 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kevent_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_defer_kevent.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_defer_kevent, %if.then6)) #11
          to label %if.end43 [label %if.then6], !srcloc !379

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_defer_kevent.__UNIQUE_ID_ddebug271, ptr noundef %3, ptr noundef nonnull @.str.117, i32 noundef %kevent) #11
  br label %if.end43

if.end7:                                          ; preds = %entry
  %kevent8 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %kevent8) #11
  br i1 %call.i.i, label %do.body27, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_defer_kevent.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_defer_kevent, %if.then23)) #11
          to label %if.end43 [label %if.then23], !srcloc !379

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %dev24 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %5 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_defer_kevent.__UNIQUE_ID_ddebug272, ptr noundef %6, ptr noundef nonnull @.str.118, i32 noundef %kevent) #11
  br label %if.end43

do.body27:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_defer_kevent.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_defer_kevent, %if.then39)) #11
          to label %if.end43 [label %if.then39], !srcloc !379

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %dev40 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %7 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_defer_kevent.__UNIQUE_ID_ddebug273, ptr noundef %8, ptr noundef nonnull @.str.119, i32 noundef %kevent) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.body27, %if.then23, %do.body11, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_process_ir_data(ptr noundef %ir, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 8
  %ev = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #11
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  %flags = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %flags, align 4
  %2 = lshr i8 %bf.load, 4
  %3 = and i8 %2, 2
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %buf_len)
  %cmp.not = icmp slt i32 %4, %buf_len
  br i1 %cmp.not, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %parser_state = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 13
  %buf_in91 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 10
  %cmd93 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 14
  %rem110 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 15
  %pulse_tunit139 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 29
  %pulse_count140 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 30
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %dev71 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %event.0.off0272 = phi i1 [ false, %for.body.lr.ph ], [ %event.3.off0, %for.inc.for.body_crit_edge ]
  %i.0269 = phi i32 [ %4, %for.body.lr.ph ], [ %inc150, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %parser_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %parser_state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %6, label %for.body.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
    i32 2, label %sw.bb87
    i32 0, label %sw.bb90
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %8 = ptrtoint ptr %cmd93 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd93, align 4
  %10 = ptrtoint ptr %buf_in91 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf_in91, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %i.0269
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %9, label %sw.bb.mceusb_cmd_datasize.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 -1, label %sw.bb3.i
    i8 -97, label %sw.bb9.i
  ]

sw.bb.mceusb_cmd_datasize.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %mceusb_cmd_datasize.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.i = icmp eq i8 %13, -1
  %spec.select.i = zext i1 %cmp.i to i32
  br label %mceusb_cmd_datasize.exit

sw.bb3.i:                                         ; preds = %sw.bb
  %15 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.164)
  switch i8 %13, label %sw.bb3.i.mceusb_cmd_datasize.exit_crit_edge [
    i8 17, label %sw.bb5.i
    i8 24, label %sw.bb6.i
    i8 11, label %sw.bb7.i
    i8 32, label %sw.bb3.i.sw.bb8.i_crit_edge
    i8 23, label %sw.bb3.i.sw.bb8.i_crit_edge273
    i8 33, label %sw.bb3.i.sw.bb8.i_crit_edge274
    i8 34, label %sw.bb3.i.sw.bb8.i_crit_edge275
  ]

sw.bb3.i.sw.bb8.i_crit_edge275:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

sw.bb3.i.sw.bb8.i_crit_edge274:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

sw.bb3.i.sw.bb8.i_crit_edge273:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

sw.bb3.i.sw.bb8.i_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

sw.bb3.i.mceusb_cmd_datasize.exit_crit_edge:      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mceusb_cmd_datasize.exit

sw.bb5.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mceusb_cmd_datasize.exit

sw.bb6.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mceusb_cmd_datasize.exit

sw.bb7.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mceusb_cmd_datasize.exit

sw.bb8.i:                                         ; preds = %sw.bb3.i.sw.bb8.i_crit_edge, %sw.bb3.i.sw.bb8.i_crit_edge273, %sw.bb3.i.sw.bb8.i_crit_edge274, %sw.bb3.i.sw.bb8.i_crit_edge275
  br label %mceusb_cmd_datasize.exit

sw.bb9.i:                                         ; preds = %sw.bb
  %16 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %13, label %sw.bb9.i.mceusb_cmd_datasize.exit_crit_edge [
    i8 4, label %sw.bb9.i.sw.bb11.i_crit_edge
    i8 6, label %sw.bb9.i.sw.bb11.i_crit_edge276
    i8 12, label %sw.bb9.i.sw.bb11.i_crit_edge277
    i8 21, label %sw.bb9.i.sw.bb11.i_crit_edge278
    i8 22, label %sw.bb9.i.sw.bb11.i_crit_edge279
    i8 1, label %sw.bb9.i.sw.bb12.i_crit_edge
    i8 8, label %sw.bb9.i.sw.bb12.i_crit_edge280
    i8 20, label %sw.bb9.i.sw.bb12.i_crit_edge281
  ]

sw.bb9.i.sw.bb12.i_crit_edge281:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.bb9.i.sw.bb12.i_crit_edge280:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.bb9.i.sw.bb12.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.bb9.i.sw.bb11.i_crit_edge279:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb9.i.sw.bb11.i_crit_edge278:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb9.i.sw.bb11.i_crit_edge277:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb9.i.sw.bb11.i_crit_edge276:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb9.i.sw.bb11.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb9.i.mceusb_cmd_datasize.exit_crit_edge:      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mceusb_cmd_datasize.exit

sw.bb11.i:                                        ; preds = %sw.bb9.i.sw.bb11.i_crit_edge, %sw.bb9.i.sw.bb11.i_crit_edge276, %sw.bb9.i.sw.bb11.i_crit_edge277, %sw.bb9.i.sw.bb11.i_crit_edge278, %sw.bb9.i.sw.bb11.i_crit_edge279
  br label %mceusb_cmd_datasize.exit

sw.bb12.i:                                        ; preds = %sw.bb9.i.sw.bb12.i_crit_edge, %sw.bb9.i.sw.bb12.i_crit_edge280, %sw.bb9.i.sw.bb12.i_crit_edge281
  br label %mceusb_cmd_datasize.exit

mceusb_cmd_datasize.exit:                         ; preds = %sw.bb12.i, %sw.bb11.i, %sw.bb9.i.mceusb_cmd_datasize.exit_crit_edge, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb3.i.mceusb_cmd_datasize.exit_crit_edge, %sw.bb.i, %sw.bb.mceusb_cmd_datasize.exit_crit_edge
  %datasize.0.i = phi i32 [ 0, %sw.bb.mceusb_cmd_datasize.exit_crit_edge ], [ 0, %sw.bb9.i.mceusb_cmd_datasize.exit_crit_edge ], [ 1, %sw.bb12.i ], [ 2, %sw.bb11.i ], [ 0, %sw.bb3.i.mceusb_cmd_datasize.exit_crit_edge ], [ 1, %sw.bb8.i ], [ 4, %sw.bb7.i ], [ 4, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ %spec.select.i, %sw.bb.i ]
  %conv = trunc i32 %datasize.0.i to i8
  %17 = ptrtoint ptr %rem110 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %rem110, align 1
  %sub = add nsw i32 %i.0269, -1
  %add = add nuw nsw i32 %datasize.0.i, 2
  call fastcc void @mceusb_dev_printdata(ptr noundef %ir, ptr noundef %11, i32 noundef %buf_len, i32 noundef %sub, i32 noundef %add, i1 noundef zeroext false)
  %18 = ptrtoint ptr %rem110 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rem110, align 1
  %conv8 = zext i8 %19 to i32
  %add9 = add nuw i32 %i.0269, %conv8
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %buf_len)
  %cmp10 = icmp slt i32 %add9, %buf_len
  br i1 %cmp10, label %if.then12, label %mceusb_cmd_datasize.exit.if.end16_crit_edge

mceusb_cmd_datasize.exit.if.end16_crit_edge:      ; preds = %mceusb_cmd_datasize.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %mceusb_cmd_datasize.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %buf_in91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf_in91, align 4
  %arrayidx15 = getelementptr i8, ptr %21, i32 %sub
  call fastcc void @mceusb_handle_command(ptr noundef %ir, ptr noundef %arrayidx15)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %mceusb_cmd_datasize.exit.if.end16_crit_edge
  %22 = ptrtoint ptr %parser_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %parser_state, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  %23 = ptrtoint ptr %rem110 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rem110, align 1
  %dec = add i8 %24, -1
  store i8 %dec, ptr %rem110, align 1
  %25 = ptrtoint ptr %buf_in91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf_in91, align 4
  %arrayidx21 = getelementptr i8, ptr %26, i32 %i.0269
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx21, align 1
  %.lobit = and i8 %28, -128
  %29 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load25 = load i8, ptr %pulse, align 1
  %bf.clear26 = and i8 %bf.load25, 127
  %bf.set = or i8 %bf.clear26, %.lobit
  store i8 %bf.set, ptr %pulse, align 1
  %30 = load i8, ptr %arrayidx21, align 1
  %31 = and i8 %30, 127
  %and30 = zext i8 %31 to i32
  %32 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and30, ptr %rawir, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %do.body, label %if.end49, !prof !381

do.body:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_process_ir_data.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_process_ir_data, %if.then44)) #11
          to label %sw.epilog [label %if.then44], !srcloc !379

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev71, align 4
  %35 = ptrtoint ptr %buf_in91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf_in91, align 4
  %arrayidx46 = getelementptr i8, ptr %36, i32 %i.0269
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %38 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_process_ir_data.__UNIQUE_ID_ddebug280, ptr noundef %34, ptr noundef nonnull @.str.135, i32 noundef %conv47) #11
  br label %sw.epilog

if.end49:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set)
  %tobool54.not = icmp sgt i8 %bf.set, -1
  br i1 %tobool54.not, label %if.end49.if.end57_crit_edge, label %if.then55

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %pulse_tunit139 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pulse_tunit139, align 4
  %add56 = add i32 %40, %and30
  store i32 %add56, ptr %pulse_tunit139, align 4
  %41 = ptrtoint ptr %pulse_count140 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pulse_count140, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %pulse_count140, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end49.if.end57_crit_edge
  %mul = mul nuw nsw i32 %and30, 50
  %43 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %rawir, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_process_ir_data.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_process_ir_data, %if.then70)) #11
          to label %do.end82 [label %if.then70], !srcloc !379

if.then70:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev71, align 4
  %46 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load73 = load i8, ptr %pulse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73)
  %tobool76.not = icmp sgt i8 %bf.load73, -1
  %cond = select i1 %tobool76.not, ptr @.str.138, ptr @.str.137
  %47 = ptrtoint ptr %rawir to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rawir, align 8
  %49 = ptrtoint ptr %buf_in91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf_in91, align 4
  %arrayidx78 = getelementptr i8, ptr %50, i32 %i.0269
  %51 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %52 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_process_ir_data.__UNIQUE_ID_ddebug281, ptr noundef %45, ptr noundef nonnull @.str.136, ptr noundef nonnull %cond, i32 noundef %48, i32 noundef %conv79) #11
  br label %do.end82

do.end82:                                         ; preds = %if.then70, %if.end57
  %53 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ir, align 4
  %call83 = call i32 @ir_raw_event_store_with_filter(ptr noundef %54, ptr noundef nonnull %rawir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp ne i32 %call83, 0
  %spec.select = select i1 %tobool84.not, i1 true, i1 %event.0.off0272
  br label %sw.epilog

sw.bb87:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %rem110 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rem110, align 1
  %dec89 = add i8 %56, -1
  store i8 %dec89, ptr %rem110, align 1
  br label %sw.epilog

sw.bb90:                                          ; preds = %for.body
  %57 = ptrtoint ptr %buf_in91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf_in91, align 4
  %arrayidx92 = getelementptr i8, ptr %58, i32 %i.0269
  %59 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx92, align 1
  %61 = ptrtoint ptr %cmd93 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %cmd93, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %60)
  %cmp96 = icmp ne i8 %60, -97
  %62 = and i8 %60, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %62)
  %cmp101.not = icmp eq i8 %62, -128
  %or.cond = and i1 %cmp96, %cmp101.not
  br i1 %or.cond, label %if.end105, label %sw.bb90.for.inc.sink.split_crit_edge

sw.bb90.for.inc.sink.split_crit_edge:             ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.end105:                                        ; preds = %sw.bb90
  %and108 = and i8 %60, 31
  %63 = ptrtoint ptr %rem110 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %and108, ptr %rem110, align 1
  %narrow = add nuw nsw i8 %and108, 1
  %add114 = zext i8 %narrow to i32
  call fastcc void @mceusb_dev_printdata(ptr noundef %ir, ptr noundef %58, i32 noundef %buf_len, i32 noundef %i.0269, i32 noundef %add114, i1 noundef zeroext false)
  %64 = ptrtoint ptr %rem110 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rem110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool116.not = icmp eq i8 %65, 0
  br i1 %tobool116.not, label %if.else, label %if.then117

if.then117:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %parser_state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %parser_state, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #11
  %67 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 -4291821569, ptr %ev, align 8, !annotation !382
  %68 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ir, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %69, i32 0, i32 34
  %70 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %timeout, align 4
  store i32 %71, ptr %ev, align 8
  %call135 = call i32 @ir_raw_event_store_with_filter(ptr noundef %69, ptr noundef nonnull %ev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp ne i32 %call135, 0
  %spec.select258 = select i1 %tobool136.not, i1 true, i1 %event.0.off0272
  %72 = ptrtoint ptr %pulse_tunit139 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %pulse_tunit139, align 4
  %73 = ptrtoint ptr %pulse_count140 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %pulse_count140, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then117, %sw.bb87, %do.end82, %if.then44, %do.body, %if.end16, %for.body.sw.epilog_crit_edge
  %event.2.off0 = phi i1 [ %event.0.off0272, %for.body.sw.epilog_crit_edge ], [ %event.0.off0272, %if.then117 ], [ %spec.select258, %if.else ], [ %event.0.off0272, %sw.bb87 ], [ %event.0.off0272, %if.then44 ], [ %event.0.off0272, %if.end16 ], [ %spec.select, %do.end82 ], [ %event.0.off0272, %do.body ]
  %74 = ptrtoint ptr %parser_state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %parser_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp143.not = icmp eq i32 %75, 0
  br i1 %cmp143.not, label %sw.epilog.for.inc_crit_edge, label %land.lhs.true

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %sw.epilog
  %76 = ptrtoint ptr %rem110 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rem110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool146.not = icmp eq i8 %77, 0
  br i1 %tobool146.not, label %land.lhs.true.for.inc.sink.split_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.for.inc.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %land.lhs.true.for.inc.sink.split_crit_edge, %sw.bb90.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb90.for.inc.sink.split_crit_edge ], [ 0, %land.lhs.true.for.inc.sink.split_crit_edge ]
  %event.3.off0.ph = phi i1 [ %event.0.off0272, %sw.bb90.for.inc.sink.split_crit_edge ], [ %event.2.off0, %land.lhs.true.for.inc.sink.split_crit_edge ]
  %78 = ptrtoint ptr %parser_state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink, ptr %parser_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %event.3.off0 = phi i1 [ %event.2.off0, %land.lhs.true.for.inc_crit_edge ], [ %event.2.off0, %sw.epilog.for.inc_crit_edge ], [ %event.3.off0.ph, %for.inc.sink.split ]
  %inc150 = add nuw nsw i32 %i.0269, 1
  %cmp3 = icmp slt i32 %inc150, %buf_len
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %79 = ptrtoint ptr %parser_state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %parser_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp152.not = icmp eq i32 %80, 3
  br i1 %cmp152.not, label %lor.lhs.false154, label %for.end.if.then157_crit_edge

for.end.if.then157_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then157

lor.lhs.false154:                                 ; preds = %for.end
  %81 = ptrtoint ptr %rem110 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rem110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool156.not = icmp eq i8 %82, 0
  br i1 %tobool156.not, label %lor.lhs.false154.if.then157_crit_edge, label %lor.lhs.false154.if.end159_crit_edge

lor.lhs.false154.if.end159_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

lor.lhs.false154.if.then157_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then157

if.then157:                                       ; preds = %lor.lhs.false154.if.then157_crit_edge, %for.end.if.then157_crit_edge
  %83 = ptrtoint ptr %parser_state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %parser_state, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %lor.lhs.false154.if.end159_crit_edge
  br i1 %event.3.off0, label %do.body162, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body162:                                       ; preds = %if.end159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_process_ir_data.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_process_ir_data, %if.then174)) #11
          to label %do.end178 [label %if.then174], !srcloc !379

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev71, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_process_ir_data.__UNIQUE_ID_ddebug282, ptr noundef %85, ptr noundef nonnull @.str.139) #11
  br label %do.end178

do.end178:                                        ; preds = %if.then174, %do.body162
  %86 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ir, align 4
  call void @ir_raw_event_handle(ptr noundef %87) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %if.end159.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mceusb_handle_command(ptr nocapture noundef %ir, ptr nocapture noundef readonly %buf_in) unnamed_addr #2 align 64 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf_in, align 1
  %arrayidx1 = getelementptr i8, ptr %buf_in, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %buf_in, i32 2
  %arrayidx3 = getelementptr i8, ptr %buf_in, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #11
  %4 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %rawir, align 8
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 -1, label %if.then
    i8 -97, label %if.end24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %3, label %if.then.cleanup_crit_edge [
    i8 17, label %sw.bb
    i8 34, label %sw.bb17
    i8 -2, label %sw.bb18
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %arrayidx6 = getelementptr i8, ptr %buf_in, i32 5
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp8 = icmp eq i8 %8, 0
  br i1 %cmp8, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp11 = icmp ult i8 %10, 8
  br i1 %cmp11, label %if.then13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 1, %conv10
  %txports_cabled = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 26
  %11 = ptrtoint ptr %txports_cabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %txports_cabled, align 4
  %13 = trunc i32 %shl to i8
  %conv16 = or i8 %12, %13
  store i8 %conv16, ptr %txports_cabled, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2, align 1
  %emver = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 23
  %16 = ptrtoint ptr %emver to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %emver, align 1
  br label %cleanup

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %need_reset = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %17 = ptrtoint ptr %need_reset to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %need_reset, align 4
  br label %cleanup

if.end24:                                         ; preds = %entry
  %18 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %3, label %if.end24.cleanup_crit_edge [
    i8 12, label %sw.bb26
    i8 22, label %sw.bb31
    i8 21, label %sw.bb32
    i8 8, label %sw.bb61
    i8 20, label %sw.bb62
    i8 -2, label %if.end24.sw.bb84_crit_edge
    i8 -127, label %if.end24.sw.bb84_crit_edge137
  ]

if.end24.sw.bb84_crit_edge137:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb84

if.end24.sw.bb84_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb84

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb26:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2, align 1
  %conv27 = zext i8 %20 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3, align 1
  %conv29 = zext i8 %22 to i32
  %or30 = or i32 %shl28, %conv29
  %mul = mul nuw nsw i32 %or30, 50
  %23 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ir, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %24, i32 0, i32 34
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %timeout, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2, align 1
  %num_txports = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 24
  %28 = ptrtoint ptr %num_txports to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %num_txports, align 2
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3, align 1
  %num_rxports = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 25
  %31 = ptrtoint ptr %num_rxports to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %num_rxports, align 1
  br label %cleanup

sw.bb32:                                          ; preds = %if.end24
  %carrier_report_enabled = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 1
  %32 = ptrtoint ptr %carrier_report_enabled to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %carrier_report_enabled, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %sw.bb32.cleanup_crit_edge, label %land.lhs.true34

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true34:                                  ; preds = %sw.bb32
  %learning_active = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 28
  %34 = ptrtoint ptr %learning_active to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %learning_active, align 2, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool35.not = icmp eq i8 %35, 0
  br i1 %tobool35.not, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true37

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %pulse_tunit = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 29
  %36 = ptrtoint ptr %pulse_tunit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pulse_tunit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp38.not = icmp eq i32 %37, 0
  br i1 %cmp38.not, label %land.lhs.true37.cleanup_crit_edge, label %if.then40

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %land.lhs.true37
  %38 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2, align 1
  %conv41 = zext i8 %39 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %40 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3, align 1
  %conv43 = zext i8 %41 to i32
  %or44 = or i32 %shl42, %conv43
  %rx2 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 16, i32 1
  %42 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp45 = icmp eq i32 %43, 2
  br i1 %cmp45, label %cond.true, label %if.then40.cond.end_crit_edge

if.then40.cond.end_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %pulse_count = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 30
  %44 = ptrtoint ptr %pulse_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pulse_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then40.cond.end_crit_edge
  %cond = phi i32 [ %45, %cond.true ], [ 0, %if.then40.cond.end_crit_edge ]
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %46 = ptrtoint ptr %carrier_report to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %carrier_report, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %carrier_report, align 1
  %add = add i32 %cond, %or44
  %mul47 = mul i32 %add, 20000
  %div = udiv i32 %mul47, %37
  %47 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div, ptr %rawir, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mceusb_handle_command.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mceusb_handle_command, %if.then52)) #11
          to label %do.end [label %if.then52], !srcloc !379

if.then52:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %rawir to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rawir, align 8
  %pulse_count53 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 30
  %52 = ptrtoint ptr %pulse_count53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pulse_count53, align 4
  %54 = ptrtoint ptr %pulse_tunit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pulse_tunit, align 4
  %56 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mceusb_handle_command.__UNIQUE_ID_ddebug279, ptr noundef %49, ptr noundef nonnull @.str.141, i32 noundef %51, i32 noundef %53, i32 noundef %or44, i32 noundef %55, i32 noundef %57) #11
  br label %do.end

do.end:                                           ; preds = %if.then52, %cond.end
  %58 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ir, align 4
  %call59 = call i32 @ir_raw_event_store(ptr noundef %59, ptr noundef nonnull %rawir) #11
  br label %cleanup

sw.bb61:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx2, align 1
  %tx_mask = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 18
  %62 = ptrtoint ptr %tx_mask to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tx_mask, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end24
  %63 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx2, align 1
  %65 = and i8 %64, 2
  %learning_active66 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 28
  %.lobit = lshr exact i8 %65, 1
  %66 = ptrtoint ptr %learning_active66 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.lobit, ptr %learning_active66, align 2
  %rxports_active = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 27
  %67 = ptrtoint ptr %rxports_active to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rxports_active, align 1
  %69 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %69)
  %cmp70.not = icmp eq i8 %68, %69
  br i1 %cmp70.not, label %sw.bb62.cleanup_crit_edge, label %do.end75

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end75:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #13
  %conv69 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp64.not = icmp eq i8 %65, 0
  %dev76 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 3
  %70 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev76, align 4
  %cond80 = select i1 %cmp64.not, ptr @.str.109, ptr @.str.108
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.142, ptr noundef nonnull %cond80, i32 noundef %conv69) #16
  %72 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx2, align 1
  %74 = ptrtoint ptr %rxports_active to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %rxports_active, align 1
  br label %cleanup

sw.bb84:                                          ; preds = %if.end24.sw.bb84_crit_edge, %if.end24.sw.bb84_crit_edge137
  %need_reset85 = getelementptr inbounds %struct.mceusb_dev, ptr %ir, i32 0, i32 22
  %75 = ptrtoint ptr %need_reset85 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %need_reset85, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb84, %do.end75, %sw.bb62.cleanup_crit_edge, %sw.bb61, %do.end, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %sw.bb31, %sw.bb26, %if.end24.cleanup_crit_edge, %sw.bb18, %sw.bb17, %if.then13, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !271, !273, !274, !275, !277, !278, !280, !281, !282, !284, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !311, !312, !313, !315, !316, !317, !319, !321, !322, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !358, !360, !361, !362, !363, !365, !366, !367, !368}
!llvm.module.flags = !{!370, !371, !372, !373, !374, !375, !376, !377}
!llvm.ident = !{!378}

!0 = !{ptr @__initcall__kmod_mceusb__296_1899_mceusb_dev_driver_init6, !1, !"__initcall__kmod_mceusb__296_1899_mceusb_dev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/mceusb.c", i32 1899, i32 1}
!2 = !{ptr @__exitcall_mceusb_dev_driver_exit, !1, !"__exitcall_mceusb_dev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/mceusb.c", i32 1901, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/mceusb.c", i32 1902, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/mceusb.c", i32 1903, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mceusb_dev_driver, !12, !"mceusb_dev_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/mceusb.c", i32 1889, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/mceusb.c", i32 1683, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug288, !14, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/mceusb.c", i32 1703, i32 5}
!20 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug289, !19, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/mceusb.c", i32 1707, i32 5}
!23 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug290, !22, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/mceusb.c", i32 1714, i32 5}
!26 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug291, !25, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/mceusb.c", i32 1718, i32 5}
!29 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug292, !28, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/mceusb.c", i32 1723, i32 3}
!32 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug293, !31, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/mceusb.c", i32 1773, i32 5}
!35 = !{ptr @mceusb_dev_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/mceusb.c", i32 1779, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/mceusb.c", i32 1797, i32 2}
!40 = !{ptr @mceusb_dev_probe.__UNIQUE_ID_ddebug294, !39, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/mceusb.c", i32 1800, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mceusb_dev_probe._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @mceusb_dev_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/mceusb.c", i32 1824, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mceusb_dev_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mceusb_dev_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/rc/mceusb.c", i32 1826, i32 2}
!54 = !{ptr @mceusb_dev_probe._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mceusb_dev_probe._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/mceusb.c", i32 1843, i32 2}
!58 = !{ptr @mceusb_dev_probe._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mceusb_dev_probe._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/mceusb.c", i32 249, i32 11}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/mceusb.c", i32 267, i32 13}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/rc/mceusb.c", i32 258, i32 11}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/mceusb.c", i32 273, i32 13}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/mceusb.c", i32 271, i32 11}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/rc/mceusb.c", i32 278, i32 13}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/mceusb.c", i32 276, i32 11}
!74 = !{ptr @mceusb_model, !75, !"mceusb_model", i1 false, i1 false}
!75 = !{!"../drivers/media/rc/mceusb.c", i32 208, i32 34}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/rc/mceusb.c", i32 1531, i32 2}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mceusb_deferred_kevent._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mceusb_deferred_kevent._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/rc/mceusb.c", i32 1535, i32 3}
!85 = !{ptr @mceusb_deferred_kevent._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mceusb_deferred_kevent._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/rc/mceusb.c", i32 1542, i32 3}
!89 = !{ptr @mceusb_deferred_kevent._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mceusb_deferred_kevent._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/rc/mceusb.c", i32 1548, i32 4}
!93 = !{ptr @mceusb_deferred_kevent._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mceusb_deferred_kevent._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/rc/mceusb.c", i32 1561, i32 4}
!97 = !{ptr @mceusb_deferred_kevent._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mceusb_deferred_kevent._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/rc/mceusb.c", i32 1568, i32 3}
!101 = !{ptr @mceusb_deferred_kevent._entry.47, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mceusb_deferred_kevent._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/rc/mceusb.c", i32 1574, i32 4}
!105 = !{ptr @mceusb_deferred_kevent._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mceusb_deferred_kevent._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/rc/mceusb.c", i32 1597, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mceusb_init_rc_dev._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @mceusb_init_rc_dev._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/rc/mceusb.c", i32 1601, i32 39}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/rc/mceusb.c", i32 1604, i32 4}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/rc/mceusb.c", i32 1642, i32 18}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/rc/mceusb.c", i32 1645, i32 18}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/rc/mceusb.c", i32 1648, i32 18}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/rc/mceusb.c", i32 1655, i32 3}
!124 = !{ptr @mceusb_init_rc_dev._entry.60, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mceusb_init_rc_dev._entry_ptr.62, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/usb.h", i32 912, i32 31}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/rc/mceusb.c", i32 825, i32 3}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mce_write._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mce_write._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/rc/mceusb.c", i32 849, i32 3}
!135 = !{ptr @mce_write._entry.66, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @mce_write._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/rc/mceusb.c", i32 858, i32 3}
!139 = !{ptr @mce_write._entry.69, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @mce_write._entry_ptr.71, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/rc/mceusb.c", i32 880, i32 3}
!143 = !{ptr @mce_write._entry.72, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @mce_write._entry_ptr.74, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/rc/mceusb.c", i32 886, i32 3}
!147 = !{ptr @mce_write._entry.75, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mce_write._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/rc/mceusb.c", i32 891, i32 2}
!151 = !{ptr @mce_write.__UNIQUE_ID_ddebug274, !150, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/rc/mceusb.c", i32 608, i32 2}
!154 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug237, !153, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/rc/mceusb.c", i32 612, i32 16}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/rc/mceusb.c", i32 612, i32 28}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/rc/mceusb.c", i32 620, i32 3}
!162 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug240, !161, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/rc/mceusb.c", i32 628, i32 4}
!165 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug241, !164, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/rc/mceusb.c", i32 630, i32 4}
!168 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug242, !167, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/rc/mceusb.c", i32 646, i32 4}
!171 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug243, !170, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/rc/mceusb.c", i32 648, i32 4}
!174 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug244, !173, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/rc/mceusb.c", i32 655, i32 5}
!177 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug245, !176, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/rc/mceusb.c", i32 660, i32 5}
!180 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug246, !179, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/rc/mceusb.c", i32 662, i32 5}
!183 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug247, !182, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!184 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug248, !185, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!185 = !{!"../drivers/media/rc/mceusb.c", i32 666, i32 4}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/rc/mceusb.c", i32 669, i32 4}
!188 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug249, !187, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/rc/mceusb.c", i32 673, i32 5}
!191 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug250, !190, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/rc/mceusb.c", i32 679, i32 5}
!194 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug251, !193, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!195 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/rc/mceusb.c", i32 683, i32 4}
!199 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug252, !198, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!200 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug253, !201, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!201 = !{!"../drivers/media/rc/mceusb.c", i32 686, i32 4}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/rc/mceusb.c", i32 694, i32 4}
!204 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug254, !203, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/rc/mceusb.c", i32 697, i32 4}
!207 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug255, !206, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/rc/mceusb.c", i32 700, i32 4}
!210 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug256, !209, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/rc/mceusb.c", i32 705, i32 5}
!213 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug257, !212, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/rc/mceusb.c", i32 716, i32 4}
!216 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug258, !215, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/rc/mceusb.c", i32 720, i32 4}
!219 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug259, !218, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/rc/mceusb.c", i32 723, i32 4}
!222 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug260, !221, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/rc/mceusb.c", i32 730, i32 4}
!225 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug261, !224, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/rc/mceusb.c", i32 734, i32 4}
!228 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug262, !227, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/rc/mceusb.c", i32 737, i32 4}
!231 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug263, !230, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/rc/mceusb.c", i32 740, i32 4}
!234 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug264, !233, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!235 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/rc/mceusb.c", i32 746, i32 5}
!239 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug265, !238, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/rc/mceusb.c", i32 748, i32 5}
!242 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug266, !241, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/rc/mceusb.c", i32 754, i32 4}
!245 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug267, !244, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!246 = !{ptr @.str.113, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/rc/mceusb.c", i32 758, i32 4}
!248 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug268, !247, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/rc/mceusb.c", i32 761, i32 4}
!251 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug269, !250, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!252 = !{ptr @mceusb_dev_printdata.__UNIQUE_ID_ddebug270, !253, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!253 = !{!"../drivers/media/rc/mceusb.c", i32 764, i32 4}
!254 = !{ptr @init_completion.__key, !255, !"__key", i1 false, i1 false}
!255 = !{!"../include/linux/completion.h", i32 87, i32 2}
!256 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/rc/mceusb.c", i32 786, i32 3}
!259 = !{ptr @.str.117, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @mceusb_defer_kevent.__UNIQUE_ID_ddebug271, !258, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!261 = !{ptr @.str.118, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/rc/mceusb.c", i32 792, i32 3}
!263 = !{ptr @mceusb_defer_kevent.__UNIQUE_ID_ddebug272, !262, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!264 = !{ptr @.str.119, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/rc/mceusb.c", i32 794, i32 3}
!266 = !{ptr @mceusb_defer_kevent.__UNIQUE_ID_ddebug273, !265, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!267 = !{ptr @DEVICE_RESUME, !268, !"DEVICE_RESUME", i1 false, i1 false}
!268 = !{!"../drivers/media/rc/mceusb.c", i32 526, i32 13}
!269 = !{ptr @GET_RX_TIMEOUT, !270, !"GET_RX_TIMEOUT", i1 false, i1 false}
!270 = !{!"../drivers/media/rc/mceusb.c", i32 534, i32 13}
!271 = !{ptr @.str.120, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/rc/mceusb.c", i32 1047, i32 4}
!273 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @mceusb_set_tx_carrier.__UNIQUE_ID_ddebug275, !272, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!275 = !{ptr @.str.122, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/rc/mceusb.c", i32 1058, i32 5}
!277 = !{ptr @mceusb_set_tx_carrier.__UNIQUE_ID_ddebug276, !276, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!278 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/rc/mceusb.c", i32 1104, i32 2}
!280 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @mceusb_set_rx_wideband.__UNIQUE_ID_ddebug277, !279, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/rc/mceusb.c", i32 1130, i32 2}
!284 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @mceusb_set_rx_carrier_report.__UNIQUE_ID_ddebug278, !283, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!286 = !{ptr @.str.127, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.128, !283, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.129, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/rc/mceusb.c", i32 1395, i32 3}
!290 = !{ptr @.str.130, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @mceusb_dev_recv._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @mceusb_dev_recv._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/rc/mceusb.c", i32 1401, i32 3}
!295 = !{ptr @mceusb_dev_recv._entry.131, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @mceusb_dev_recv._entry_ptr.133, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/rc/mceusb.c", i32 1293, i32 5}
!299 = !{ptr @.str.135, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @mceusb_process_ir_data.__UNIQUE_ID_ddebug280, !298, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/rc/mceusb.c", i32 1303, i32 4}
!303 = !{ptr @mceusb_process_ir_data.__UNIQUE_ID_ddebug281, !302, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!304 = !{ptr @.str.137, !302, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.138, !302, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.139, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/rc/mceusb.c", i32 1362, i32 3}
!308 = !{ptr @mceusb_process_ir_data.__UNIQUE_ID_ddebug282, !307, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!309 = !{ptr @.str.140, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/rc/mceusb.c", i32 1233, i32 4}
!311 = !{ptr @.str.141, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @mceusb_handle_command.__UNIQUE_ID_ddebug279, !310, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!313 = !{ptr @.str.142, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/rc/mceusb.c", i32 1247, i32 4}
!315 = !{ptr @mceusb_handle_command._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @mceusb_handle_command._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @GET_EMVER, !318, !"GET_EMVER", i1 false, i1 false}
!318 = !{!"../drivers/media/rc/mceusb.c", i32 529, i32 13}
!319 = !{ptr @.str.143, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/rc/mceusb.c", i32 1423, i32 3}
!321 = !{ptr @.str.144, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @mceusb_gen1_init._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @mceusb_gen1_init._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.145, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/rc/mceusb.c", i32 1434, i32 2}
!326 = !{ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug283, !325, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/rc/mceusb.c", i32 1435, i32 2}
!329 = !{ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug284, !328, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!330 = !{ptr @.str.147, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/rc/mceusb.c", i32 1443, i32 2}
!332 = !{ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug285, !331, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!333 = !{ptr @.str.148, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/rc/mceusb.c", i32 1449, i32 2}
!335 = !{ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug286, !334, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!336 = !{ptr @.str.149, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/rc/mceusb.c", i32 1455, i32 2}
!338 = !{ptr @mceusb_gen1_init.__UNIQUE_ID_ddebug287, !337, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!339 = !{ptr @GET_REVISION, !340, !"GET_REVISION", i1 false, i1 false}
!340 = !{!"../drivers/media/rc/mceusb.c", i32 528, i32 13}
!341 = !{ptr @GET_WAKEVERSION, !342, !"GET_WAKEVERSION", i1 false, i1 false}
!342 = !{!"../drivers/media/rc/mceusb.c", i32 530, i32 13}
!343 = !{ptr @GET_UNKNOWN2, !344, !"GET_UNKNOWN2", i1 false, i1 false}
!344 = !{!"../drivers/media/rc/mceusb.c", i32 532, i32 13}
!345 = !{ptr @GET_NUM_PORTS, !346, !"GET_NUM_PORTS", i1 false, i1 false}
!346 = !{!"../drivers/media/rc/mceusb.c", i32 535, i32 13}
!347 = !{ptr @GET_CARRIER_FREQ, !348, !"GET_CARRIER_FREQ", i1 false, i1 false}
!348 = !{!"../drivers/media/rc/mceusb.c", i32 533, i32 13}
!349 = !{ptr @GET_TX_BITMASK, !350, !"GET_TX_BITMASK", i1 false, i1 false}
!350 = !{!"../drivers/media/rc/mceusb.c", i32 536, i32 13}
!351 = !{ptr @GET_RX_SENSOR, !352, !"GET_RX_SENSOR", i1 false, i1 false}
!352 = !{!"../drivers/media/rc/mceusb.c", i32 537, i32 13}
!353 = !{ptr @FLASH_LED, !354, !"FLASH_LED", i1 false, i1 false}
!354 = !{!"../drivers/media/rc/mceusb.c", i32 531, i32 13}
!355 = !{ptr @.str.150, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/rc/mceusb.c", i32 1854, i32 2}
!357 = !{ptr @mceusb_dev_disconnect.__UNIQUE_ID_ddebug295, !356, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!358 = !{ptr @.str.151, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/rc/mceusb.c", i32 1875, i32 2}
!360 = !{ptr @.str.152, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @mceusb_dev_suspend._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @mceusb_dev_suspend._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.153, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/rc/mceusb.c", i32 1883, i32 2}
!365 = !{ptr @.str.154, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @mceusb_dev_resume._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @mceusb_dev_resume._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @mceusb_dev_table, !369, !"mceusb_dev_table", i1 false, i1 false}
!369 = !{!"../drivers/media/rc/mceusb.c", i32 282, i32 35}
!370 = !{i32 1, !"wchar_size", i32 2}
!371 = !{i32 1, !"min_enum_size", i32 4}
!372 = !{i32 8, !"branch-target-enforcement", i32 0}
!373 = !{i32 8, !"sign-return-address", i32 0}
!374 = !{i32 8, !"sign-return-address-all", i32 0}
!375 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!376 = !{i32 7, !"uwtable", i32 1}
!377 = !{i32 7, !"frame-pointer", i32 2}
!378 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!379 = !{i64 2148330549, i64 2148330554, i64 2148330567, i64 2148330611, i64 2148330645, i64 2148330666}
!380 = !{i8 0, i8 2}
!381 = !{!"branch_weights", i32 1, i32 2000}
!382 = !{!"auto-init"}
